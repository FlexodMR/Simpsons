/*===========================================================================
    File:            csrpshader.cpp
    Description:     Base Colour + Gloss Map + Reflection Map + Projected Texture
                     Shamelessly swiped from Chris Cudahy

    Copyright (c)2000,2001,2002 Radical Entertainment, Inc. All rights reserved.
===========================================================================*/

#include "context.hpp"
#include "display.hpp"
#include "texture.hpp"
#include "csrpshader.hpp"
#include "../psh/csrpshader.h"
#include "../psh/csrshader.h"
#include "direct3d.hpp"

pddiShadeColourTable d3dCSRPShader::colourTable[] = 
{
    {PDDI_SP_AMBIENT  , SHADE_COLOUR(SetAmbient)},
    {PDDI_SP_DIFFUSE  , SHADE_COLOUR(SetDiffuse)},
    {PDDI_SP_EMISSIVE , SHADE_COLOUR(SetEmissive)},
    {PDDI_SP_SPECULAR , SHADE_COLOUR(SetSpecular)},
    {PDDI_SP_NULL , NULL}
};

pddiShadeTextureTable d3dCSRPShader::textureTable[] = 
{
    {PDDI_SP_BASETEX,  SHADE_TEXTURE(SetBaseMap)},
    {PDDI_SP_SPECMAP,  SHADE_TEXTURE(SetSpecularMap)},
    {PDDI_SP_REFLMAP,  SHADE_TEXTURE(SetReflectionMap)},
    {PDDI_SP_NULL , NULL}
};

pddiShadeIntTable d3dCSRPShader::intTable[] = 
{
    {PDDI_SP_UVMODE ,    SHADE_INT(SetUVMode)},
    {PDDI_SP_BLENDMODE , SHADE_INT(SetBlendMode)},
    {PDDI_SP_ALPHATEST , SHADE_INT(EnableAlphaTest)},
    {PDDI_SP_ALPHACOMPARE , SHADE_INT(SetAlphaCompare)},
    {PDDI_SP_PROJID ,    SHADE_INT(SetProjectionId)},
    {PDDI_SP_NULL , NULL}
};

pddiShadeFloatTable d3dCSRPShader::floatTable[] = 
{
    {PDDI_SP_SHININESS , SHADE_FLOAT(SetShininess)},
    {PDDI_SP_NULL , NULL}
};


d3dCSRPShader::d3dCSRPShader(d3dContext* c, bool a) : d3dShader(c), allowProjection(a)
{ 
    context = c;

    uvMode = PDDI_UV_CLAMP;

    m_pBaseTexture = NULL;
    m_pSpecularMap = NULL;
    m_pReflectionMap = NULL;

    m_ProjectionId = 0;

    LPDIRECT3DDEVICE8 d3d = context->GetDisplay()->GetD3DDevice();
    if(allowProjection)
    {
        d3d->CreatePixelShader(&((D3DPIXELSHADERDEF_FILE*)csrpshaderPixelShaderTokens)->Psd,
            &m_CSRPPixelShaderHandle);
    }

    d3d->CreatePixelShader(&((D3DPIXELSHADERDEF_FILE*)csrshaderPixelShaderTokens)->Psd,
        &m_CSRPixelShaderHandle);
}

d3dCSRPShader::~d3dCSRPShader()
{
    if(m_pBaseTexture)
        m_pBaseTexture->Release();
    if(m_pSpecularMap)
        m_pSpecularMap->Release();
    if(m_pReflectionMap)
        m_pReflectionMap->Release();
}


const char* d3dCSRPShader::GetType(void)
{
   static char type [] = "CSPR";
   return type;
}

int  d3dCSRPShader::GetPasses()
{
   return 1;
}

void d3dCSRPShader::PreRender()
{
}

void d3dCSRPShader::PostRender()
{
    d3d->SetPixelShader(NULL);
}

void d3dCSRPShader::SetPass(int pass)
{
    PDDIASSERT(m_pBaseTexture);
    d3dTexture* projectionTexture = NULL;
    pddiMatrix projectionMatrix;

    // do all SetTexture stuff here
    bool projection = allowProjection && ((pddiExtGlobalProjectedTexture*)(context->GetExtension(PDDI_EXT_GLOBAL_PROJECTED_TEXTURE)))->GetProjection(m_ProjectionId, &projectionMatrix, (pddiTexture**)&projectionTexture );

    if(projection)
    {
        d3d->SetPixelShader(m_CSRPixelShaderHandle);
        d3d->SetTextures(4, m_pBaseTexture, m_pSpecularMap, m_pReflectionMap, projectionTexture);
    }
    else
    {
        //Fallback to the no projection shader when there is no valid projection texture
        d3d->SetPixelShader(m_CSRPPixelShaderHandle);
        d3d->SetTextures(3, m_pBaseTexture, m_pSpecularMap, m_pReflectionMap);
    }

    // do all SetTextureStageState stuff here
    //Setup colour
    SetupTextureSampling(0);

    //Setup specular colour
    SetupTextureSampling(1);

    //Setup spherical enviornment projection
    d3d->SetTextureCoord(2, D3DTSS_TCI_CAMERASPACEREFLECTIONVECTOR);
    d3d->SetTextureTransform(2, D3DTTFF_COUNT3 );
    d3d->SetTextureAddress(2, uvMode);
    d3d->SetTextureFilter(2, filterMode);
        
    D3DMATRIX m;
    m.m[0][0] = 0.5f; m.m[0][1] = 0.0f; m.m[0][2] = 0.0f; m.m[0][3] = 0.0f;
    m.m[1][0] = 0.0f; m.m[1][1] = 0.5f; m.m[1][2] = 0.0f; m.m[1][3] = 0.0f;
    m.m[2][0] = 0.0f; m.m[2][1] = 0.0f; m.m[2][2] = 0.0f; m.m[2][3] = 0.0f;
    m.m[3][0] = 0.5f; m.m[3][1] = 0.5f; m.m[3][2] = 0.0f; m.m[3][3] = 1.0f;
      context->LoadMatrix(PDDI_MATRIX_TEXTURE2, (pddiMatrix*)&m);

    //Setup projection
    if(projection)
    {
        d3d->SetTextureCoord(3, D3DTSS_TCI_CAMERASPACEREFLECTIONVECTOR);
        d3d->SetTextureTransform(3, D3DTTFF_COUNT3 );
        d3d->SetTextureAddress(3, uvMode);
        d3d->SetTextureFilter(3, filterMode);

        context->LoadMatrix(PDDI_MATRIX_TEXTURE3, &projectionMatrix);
    }

    // do SetMaterial stuff here. Note that this is not required, as GetShaderInfo
    // is called instead. We do it anyway, in case this shader is used with the fixed
    // pipe
    //We're modulating the specular colour with a map, so use full intensity 
    //white here.
    shaderInfo.specular.Set(255, 255, 255, 0);
    SetupShading();

    alphaTest = false;

    if(shaderInfo.diffuse.Alpha() != 0xff)
    {
        //Force alpha blending
        d3d->SetAlphaBlend(PDDI_BLEND_ALPHA);
    }
    else
    {
        SetupAlphaBlend();
    }
   
    // alpha testing
}


//-------------------------------------------------------------------
void d3dCSRPShader::SetBaseMap(pddiTexture* pTexture)
{
    if(pTexture)
        pTexture->AddRef();
    if(m_pBaseTexture)
        m_pBaseTexture->Release();

    m_pBaseTexture = (d3dTexture*)pTexture;
}
void d3dCSRPShader::SetSpecularMap(pddiTexture* pTexture)
{
    if(pTexture)
        pTexture->AddRef();
    if(m_pSpecularMap)
        m_pSpecularMap->Release();

    m_pSpecularMap = (d3dTexture*)pTexture;
}
void d3dCSRPShader::SetReflectionMap(pddiTexture* pTexture)
{
    if(pTexture)
        pTexture->AddRef();
    if(m_pReflectionMap)
        m_pReflectionMap->Release();

    m_pReflectionMap = (d3dTexture*)pTexture;
}


void d3dCSRPShader::SetProjectionId(int id)
{
    m_ProjectionId = id;
}
