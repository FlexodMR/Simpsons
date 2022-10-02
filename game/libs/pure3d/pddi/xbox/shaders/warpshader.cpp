//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


#include "context.hpp"
#include "display.hpp"
#include "texture.hpp"
#include "shaderdata.hpp"
#include "warpshader.hpp"
#include "direct3d.hpp"

#define PI      3.1415926535f

pddiShadeColourTable d3dWarpShader::colourTable[] = 
{
    PDDID3D_STDSHADERPARAM_COLOUR,
    { PDDI_SP_NULL,     NULL }
};

pddiShadeTextureTable d3dWarpShader::textureTable[] = 
{
    { PDDI_SP_BASETEX, SHADE_TEXTURE(SetBaseTexture) },
    { PDDI_SP_NULL,    NULL }
};

pddiShadeIntTable d3dWarpShader::intTable[] = 
{
    PDDID3D_STDSHADERPARAM_INT,
    { PDDI_SP_NULL,         NULL }
};

pddiShadeFloatTable d3dWarpShader::floatTable[] = 
{
    PDDID3D_STDSHADERPARAM_FLOAT,
    { PDDI_SP_FREQUENCE, SHADE_FLOAT(SetFrequence)},
    { PDDI_SP_BIAS, SHADE_FLOAT(SetBias)},
    { PDDI_SP_NULL , NULL}
};

d3dWarpShader::d3dWarpShader(d3dContext* c) :
    d3dShader(c)
{ 
    baseTex = NULL;
    bias = PI/7.f;
}

d3dWarpShader::~d3dWarpShader()
{
    if(baseTex)
        baseTex->Release();
}


const char* d3dWarpShader::GetType(void)
{
    static char type [] = "reflect";
    return type;
}

int  d3dWarpShader::GetPasses()
{
    return 1;
}


void d3dWarpShader::SetPass(int pass)
{
    d3d->SetTextures(1, baseTex ) ;

    d3d->SetTextureCombine(0, D3DTOP_MODULATE, D3DTA_CURRENT, D3DTA_TEXTURE);
    d3d->SetTextureCombine(1, D3DTOP_MODULATE, D3DTA_CURRENT, D3DTA_TEXTURE);

    d3d->SetTextureCoord(0, 0);
    d3d->SetTextureTransform(0, D3DTTFF_DISABLE);
    d3d->SetTextureAddress(0, PDDI_UV_TILE);
    d3d->SetTextureFilter(0, filterMode);

  
    d3d->SetTextureAddress(1, PDDI_UV_CLAMP);
//   d3d->SetTextureAddress(1, PDDI_UV_TILE);
    d3d->SetTextureFilter(1, filterMode);

    SetupShading();
    SetupAlphaBlend();

}


//-------------------------------------------------------------------
void d3dWarpShader::SetBaseTexture(pddiTexture* t)
{
    if(t)
        t->AddRef();

    if(baseTex)
        baseTex->Release();

    baseTex = (d3dTexture*)t;
}


void d3dWarpShader::PreRender(void)
{
#ifdef _XBOX
    LPDIRECT3DDEVICE8 m_pd3dDevice = context->GetDisplay()->GetD3DDevice();

    // Some basic constants
    float vConstant0[4] = { frequence, 2.f, 0.f, 0.f };

    float vConstant1[4] = { bias, 0.f, 0.f, 0.f };

    float vColor[ 4 ] = { 0.f, 1.f, 0.5f, 0.f };

    float vTaylor[ 4 ] = { 1.f, 1.f/6.f, 1.f/120.f, 1.f/5040.f};

    float vConstant8[ 4 ] = { PI, 1.f/(2*PI), 2*PI, 0.5f };

    // Vertex shader operations use transposed matrices
    pddiMatrix matWorld, matView, matProj, matWV, matWVP, matWVPTranspose;
    m_pd3dDevice->GetTransform( D3DTS_WORLD, (D3DMATRIX*)&matWorld );
    m_pd3dDevice->GetTransform( D3DTS_VIEW, (D3DMATRIX*)&matView );
    m_pd3dDevice->GetTransform( D3DTS_PROJECTION, (D3DMATRIX*)&matProj );

    pddiMultMatrix(&matWorld,&matView,&matWV);
    pddiMultMatrix(&matWV,&matProj,&matWVP);
    pddiTransposeMatrix(&matWVP, &matWVPTranspose );


    m_pd3dDevice->SetVertexShaderConstant(  0, &vConstant0,    1 );    
    m_pd3dDevice->SetVertexShaderConstant(  1, &vConstant1, 1 );

    m_pd3dDevice->SetVertexShaderConstant(  2, &matWVPTranspose, 4 );    
    m_pd3dDevice->SetVertexShaderConstant(  7, &vTaylor, 1 );
    m_pd3dDevice->SetVertexShaderConstant(  8, &vConstant8, 1 );

    m_pd3dDevice->SetVertexShaderConstant(  14, &vColor, 4 );   

#endif
}

void d3dWarpShader::PostRender(void)
{
    // undo point sprite enabling
    LPDIRECT3DDEVICE8 d3d = context->GetDisplay()->GetD3DDevice();
    d3d->SetRenderState( D3DRS_POINTSPRITEENABLE, FALSE );
    d3d->SetRenderState( D3DRS_POINTSCALEENABLE,  FALSE );
}