//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


#include "context.hpp"
#include "display.hpp"
#include "texture.hpp"
#include "shaderdata.hpp"
#include "shader.hpp"
#include "spheremapshader.hpp"
#include "direct3d.hpp"


pddiShadeTextureTable d3dSpheremapVertexShader::textureTable[] = 
{
    {PDDI_SP_BASETEX , SHADE_TEXTURE(SetTexture)},
    {PDDI_SP_REFLMAP , SHADE_TEXTURE(SetSphereMap)},
    {PDDI_SP_NULL , NULL}
};

pddiShadeColourTable d3dSpheremapVertexShader::colourTable[] = 
{
    PDDID3D_STDSHADERPARAM_COLOUR,
    {PDDI_SP_ENVBLEND , SHADE_COLOUR(SetEnvBlend)},
    {PDDI_SP_NULL , NULL}
};

pddiShadeIntTable d3dSpheremapVertexShader::intTable[] = 
{
    PDDID3D_STDSHADERPARAM_INT, 
    {PDDI_SP_NULL , NULL}
};

pddiShadeFloatTable d3dSpheremapVertexShader::floatTable[] = 
{
    PDDID3D_STDSHADERPARAM_FLOAT, 
    {PDDI_SP_NULL , NULL}
};

pddiShadeVectorTable d3dSpheremapVertexShader::vectorTable[] = 
{
	{PDDI_SP_ROTVEC, SHADE_VECTOR(SetRotVect)},
    {PDDI_SP_NULL , NULL}
};

//-----------------------------------------------------------------------------
//
// d3dSpheremapVertexShader::d3dSpheremapVertexShader
//
//-----------------------------------------------------------------------------
d3dSpheremapVertexShader::d3dSpheremapVertexShader(d3dContext* c) :
    d3dShader(c),
    texture(NULL),
    sphereMap(NULL),
    envBlend(128,128,128,128),
	rotVect( 0.f, 0.f, 0.f)
{
    //
}

d3dSpheremapVertexShader::~d3dSpheremapVertexShader()
{
    if(texture) texture->Release();
    if(sphereMap) sphereMap->Release();
}

//-----------------------------------------------------------------------------
//
// d3dSpheremapVertexShader::GetType
//
//-----------------------------------------------------------------------------
const char* d3dSpheremapVertexShader::GetType(void)
{
    static char type [] = "spheremap";
    return type;
}

//-----------------------------------------------------------------------------
//
// d3dSpheremapVertexShader::GetPasses
//
//-----------------------------------------------------------------------------
int  d3dSpheremapVertexShader::GetPasses()
{
    return 1;
}

void d3dSpheremapVertexShader::LoadVSConstants( )
{
    LPDIRECT3DDEVICE8 pD3DDevice = context->GetDisplay()->GetD3DDevice();
  
    // Some basic constants
    float vConstants0[4] = { 0, 1.0f, .5f, 2.f };
	float vConstants1[4] = { 0, 0, 1, 0 };

    D3DLIGHT8 light0, light1, light2;
    d3dShaderInfo info;

    int pick[4];
    context->PickVSLights(pick);

    pD3DDevice->GetLight((pick[0] == -1) ? 0 : pick[0], &light0);
    pD3DDevice->GetLight((pick[1] == -1) ? 0 : pick[1], &light1);
    pD3DDevice->GetLight((pick[2] == -1) ? 0 : pick[2], &light2);

    GetShaderInfo(&info);

    D3DCOLORVALUE specular, diffuse, emissive, ambient, ambientLight;
    D3DCOLORVALUE black = {0,0,0,0};

    d3dColourValue(info.specular, &specular);
    d3dColourValue(info.diffuse, &diffuse);
    d3dColourValue(info.emissive, &emissive);
    d3dColourValue(info.ambient, &ambient);
    d3dColourValue(context->GetAmbientLight(), &ambientLight);

    if(emissive.a == 0.0f)
    {
        emissive.a = diffuse.a;
        diffuse.a = 0.0f;
    }

    emissive.r += (ambient.r * ambientLight.r);
    emissive.g += (ambient.g * ambientLight.g);
    emissive.b += (ambient.b * ambientLight.b);
    emissive.a += (ambient.a * ambientLight.a);

    specular.a = info.shininess;

    // Set the vertex shader constants
    pD3DDevice->SetVertexShaderConstant(  0, &vConstants0,    1 );
	pD3DDevice->SetVertexShaderConstant(  1, &vConstants1,    1 );
    pD3DDevice->SetVertexShaderConstant(  14, &diffuse, 1 );
    pD3DDevice->SetVertexShaderConstant(  15, &specular, 1 );
    pD3DDevice->SetVertexShaderConstant(  16, &emissive,  1 );
    pD3DDevice->SetVertexShaderConstant(  17, &light0.Direction,   1 );
    pD3DDevice->SetVertexShaderConstant(  18, (pick[0] == -1) ? &black : &light0.Diffuse, 1 );
    pD3DDevice->SetVertexShaderConstant(  19, &light1.Direction,   1 );
    pD3DDevice->SetVertexShaderConstant(  20, (pick[1] == -1) ? &black : &light1.Diffuse, 1 );
    pD3DDevice->SetVertexShaderConstant(  21, &light2.Direction,   1 );
    pD3DDevice->SetVertexShaderConstant(  22, (pick[2] == -1) ? &black : &light2.Diffuse, 1 );

    //set up the vertex shader constants for transform matrix
    // Vertex shader operations use transposed matrices
    pddiMatrix matWorld, matView, matProj, matWV, matWVP, matWVPTranspose, matWVTranspose, matWorldTranspose, matWVInvert, matRotTranspose;

    pD3DDevice->GetTransform( D3DTS_WORLD, (D3DMATRIX*)&matWorld );
    pD3DDevice->GetTransform( D3DTS_VIEW, (D3DMATRIX*)&matView );
    pD3DDevice->GetTransform( D3DTS_PROJECTION, (D3DMATRIX*)&matProj );

	pddiMatrix rotMat;
	rotMat.Identity( );
	rotMat.FillRotateYZX( rotVect.x, rotVect.y, rotVect.z );	

    matWV.Mult( matWorld, matView );
    matWVP.MultFull( matWV,matProj );

    matWVPTranspose.Transpose( matWVP );
    matWVTranspose.Transpose( matWV );
	matWorldTranspose.Transpose( matWorld );
	matWVInvert.Invert( matWV );

	matRotTranspose.Transpose( rotMat );

	pddiVector4 origin( 0, 0, 0, 1 ), eye;

	matWVInvert.Transform( origin, &eye );

    pD3DDevice->SetVertexShaderConstant( 2, &matWVPTranspose, 4 ); 
	pD3DDevice->SetVertexShaderConstant( 6, &matWVTranspose, 4 );          
	pD3DDevice->SetVertexShaderConstant( 23, &matWorldTranspose, 4 );    
	pD3DDevice->SetVertexShaderConstant( 27, &eye, 1 );				//object space eye position	
	pD3DDevice->SetVertexShaderConstant( 28, &matRotTranspose, 4 );				

}
//-----------------------------------------------------------------------------
//
// 
//
//-----------------------------------------------------------------------------
void d3dSpheremapVertexShader::SetPass(int pass)
{
    d3d->SetTextures(2, texture, sphereMap);

    d3d->SetTextureFactor(envBlend);

	d3d->SetTextureCombine(0, D3DTOP_MODULATE, D3DTA_DIFFUSE, D3DTA_TEXTURE);
	d3d->SetTextureAddress( 0, uvMode  );
    d3d->SetTextureCombineResult(0, D3DTA_TEMP);
    SetupTextureSampling(0);

    d3d->SetTextureCombine(1, D3DTOP_MODULATE, D3DTA_TFACTOR, D3DTA_TEXTURE);    
    d3d->SetTextureAddress( 1, PDDI_UV_CLAMP );
    d3d->SetTextureFilter(1, filterMode);

	d3d->SetTextureColourCombine(2, D3DTOP_MODULATEALPHA_ADDCOLOR, D3DTA_TEMP, D3DTA_CURRENT);
	d3d->SetTextureAlphaCombine(2, D3DTOP_ADD, D3DTA_CURRENT, D3DTA_TEMP);

    SetupShading();
    SetupAlphaBlend();
}

void d3dSpheremapVertexShader::PreRender(void)
{
}

void d3dSpheremapVertexShader::PostRender(void)
{
    d3d->SetTextureCombineResult(0, D3DTA_DIFFUSE);
}

//-----------------------------------------------------------------------------
//
// d3dSpheremapVertexShader::SetTexture
//
//-----------------------------------------------------------------------------
void d3dSpheremapVertexShader::SetTexture(pddiTexture* t)
{
    if(t)
    {
        t->AddRef();
    }

    if(texture)
    {
        texture->Release();
    }

    texture = (d3dTexture*)t;
}

//-----------------------------------------------------------------------------
//
// d3dSpheremapVertexShader::SetsphereMap
//
//-----------------------------------------------------------------------------
void d3dSpheremapVertexShader::SetSphereMap(pddiTexture* t)
{
    if(t)
    {
        t->AddRef();
    }

    if(sphereMap)
    {
        sphereMap->Release();
    }

    sphereMap = (d3dTexture*)t;
}


//-------------------------------------------------------
void d3dSpheremapVertexShader::SetEnvBlend(pddiColour c) 
{
    envBlend = c;
}

//-------------------------------------------------------
void d3dSpheremapVertexShader::SetRotVect(const pddiVector & v) 
{
    rotVect = v;
}
