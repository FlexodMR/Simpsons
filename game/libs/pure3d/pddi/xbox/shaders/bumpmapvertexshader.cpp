//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


#include "direct3d.hpp"
#include "context.hpp"
#include "display.hpp"
#include "texture.hpp"
#include "shaderdata.hpp"
#include "shader.hpp"
#include "bumpmapvertexshader.hpp"
#include "../psh/bumpmapshader.h"
#include "bumpmap_constants.h"


pddiShadeTextureTable d3dBumpMapVertexShader::textureTable[] = 
{
    {PDDI_SP_BASETEX, SHADE_TEXTURE(SetBaseTex)},
    {PDDI_SP_BUMPMAP, SHADE_TEXTURE(SetBumpMap)},
    {PDDI_SP_NULL, NULL}
};

pddiShadeIntTable d3dBumpMapVertexShader::intTable[] =         
{
    PDDID3D_STDSHADERPARAM_INT, 
    {PDDI_SP_BMSPECULAR, SHADE_INT(EnableSpecular)},        //puts bumpmapper into specular mode
    {PDDI_SP_NULL, NULL}
};

pddiShadeFloatTable d3dBumpMapVertexShader::floatTable[] = 
{
    PDDID3D_STDSHADERPARAM_FLOAT,
    {PDDI_SP_NULL , NULL}
};


pddiShadeColourTable d3dBumpMapVertexShader::colourTable[] = 
{
    PDDID3D_STDSHADERPARAM_COLOUR,
    {PDDI_SP_NULL , NULL}
};

//-----------------------------------------------------------------------------
//
// d3dBumpMapVertexShader::d3dBumpMapVertexShader
//
//-----------------------------------------------------------------------------
d3dBumpMapVertexShader::d3dBumpMapVertexShader(d3dContext* c) :
    d3dShader(c),
    m_bumpMap(NULL),
    m_baseTexture(NULL)
{
    m_bSpecularEnabled = false;
 

	LPDIRECT3DDEVICE8 d3d = c->GetDisplay()->GetD3DDevice();
	d3d->CreatePixelShader(&((D3DPIXELSHADERDEF_FILE*)bumpmapshaderPixelShaderTokens)->Psd,
        &m_hSpecDiffBumpMapPS );
}

d3dBumpMapVertexShader::~d3dBumpMapVertexShader()
{
    if (m_baseTexture)
        m_baseTexture->Release();
    if (m_bumpMap)
        m_bumpMap->Release();   
}

//-----------------------------------------------------------------------------
//
// d3dBumpMapVertexShader::GetType
//
//-----------------------------------------------------------------------------
const char* d3dBumpMapVertexShader::GetType(void)
{
    static char type [] = "bumpmap";
    return type;
}

//-----------------------------------------------------------------------------
//
// d3dBumpMapVertexShader::GetPasses
//
//-----------------------------------------------------------------------------
int  d3dBumpMapVertexShader::GetPasses()
{
    return 1;
}
///----------------------------------------------------------------------------
///			Load transformation related constant
///----------------------------------------------------------------------------
void d3dBumpMapVertexShader::LoadVSConstants( )
{
	//find the light, and set up the light constants
	LPDIRECT3DDEVICE8 pD3DDevice = context->GetDisplay()->GetD3DDevice();

    D3DLIGHT8 light0;

    float vDarkLight[ 4 ] = { 0.f, 0.f, 0.f, 0.f };

    int pick[4];
    context->PickVSLights(pick);	

    pD3DDevice->GetLight((pick[0] == -1) ? 0 : pick[0], &light0);            

	//set up all other constants: transform matrix, eye position etc.
    pddiMatrix matWorld, matView, matProj, matWV, matWVP, matWVPTranspose, matWorldTranspose, matWVInvert, matWInvert;
    pD3DDevice->GetTransform( D3DTS_WORLD, (D3DMATRIX*)&matWorld );
    pD3DDevice->GetTransform( D3DTS_VIEW, (D3DMATRIX*)&matView );
    pD3DDevice->GetTransform( D3DTS_PROJECTION, (D3DMATRIX*)&matProj );

    matWV.Mult(matWorld, matView);
    matWVP.MultFull(matWV,matProj);
    matWVPTranspose.Transpose(matWVP);
    matWorldTranspose.Transpose(matWorld);
	matWVInvert.Invert( matWV );
	matWInvert.Invert( matWorld );

	pddiVector4 origin( 0, 0, 0, 1 ), eye;
	pddiVector4 lightWorld( -light0.Direction.x, -light0.Direction.y, -light0.Direction.z, 0 ) , lightObject;

	//get the eye position in object space
	matWVInvert.Transform( origin, &eye );
	matWVInvert.Transform( lightWorld, &lightObject );

	pD3DDevice->SetVertexShaderConstant(  CV_LIGHT_DIRECTION_OBJECT, (pick[0] == -1) ? (D3DVECTOR *)&vDarkLight : (D3DVECTOR*)&lightObject,   1 );

	pD3DDevice->SetVertexShaderConstant( CV_WORLDVIEWPROJ_0, &matWVPTranspose, 4 );
	pD3DDevice->SetVertexShaderConstant( CV_WORLD_0, &matWorldTranspose, 4 );	
	pD3DDevice->SetVertexShaderConstant( CV_EYE_POS_OBJECT, &eye, 1 );

}

//-----------------------------------------------------------------------------
//
// 
//
//-----------------------------------------------------------------------------
void d3dBumpMapVertexShader::SetPass(int pass)
{
	//now set all vertex shader constants
    d3d->SetTextures(4, m_baseTexture, m_bumpMap, NULL, NULL );
    
    d3d->SetTextureCoord( 0, 0 );
	d3d->SetTextureCoord( 1, 1 );	

    d3d->SetTextureAddress(0, uvMode);
    d3d->SetTextureFilter(0, filterMode);

	d3d->SetTextureAddress(1, PDDI_UV_TILE);
    d3d->SetTextureFilter(1, filterMode);

	d3d->SetTextureAddress(2, PDDI_UV_CLAMP);
	d3d->SetTextureFilter(3, filterMode );

	d3d->SetTextureAddress(3, PDDI_UV_CLAMP);
	d3d->SetTextureFilter(3, filterMode );

	LPDIRECT3DDEVICE8 pD3DDevice = context->GetDisplay()->GetD3DDevice();

	// bump map texture stage
	pD3DDevice->SetTextureStageState(1, D3DTSS_ADDRESSU,	D3DTADDRESS_WRAP);
	pD3DDevice->SetTextureStageState(1, D3DTSS_ADDRESSV,	D3DTADDRESS_WRAP);
	pD3DDevice->SetTextureStageState(1, D3DTSS_ADDRESSW,	D3DTADDRESS_WRAP);
	pD3DDevice->SetRenderState( D3DRS_WRAP1, 0 );

	pD3DDevice->SetTextureStageState(2, D3DTSS_ADDRESSU,	D3DTADDRESS_CLAMP);
	pD3DDevice->SetTextureStageState(2, D3DTSS_ADDRESSV,	D3DTADDRESS_CLAMP);	
	pD3DDevice->SetTextureStageState(2, D3DTSS_ADDRESSW,	D3DTADDRESS_CLAMP);
	pD3DDevice->SetRenderState( D3DRS_WRAP2, 0);

	pD3DDevice->SetTextureStageState(3, D3DTSS_ADDRESSU,	D3DTADDRESS_CLAMP);
	pD3DDevice->SetTextureStageState(3, D3DTSS_ADDRESSV,	D3DTADDRESS_CLAMP);	
	pD3DDevice->SetTextureStageState(3, D3DTSS_ADDRESSW,	D3DTADDRESS_CLAMP);	


	// Need wrap for the sphere model - no dup verts in the sphere
	pD3DDevice->SetRenderState( D3DRS_WRAP3, 0);
}

//set this texture if you want to blend a base texture with the bump map
//(you probably do)
void d3dBumpMapVertexShader::SetBaseTex(pddiTexture* t)
{
    if (t)
    {
        t->AddRef();
    }
    if (m_baseTexture)
    {
        m_baseTexture->Release();
    }
    
    m_baseTexture = (d3dTexture*)t;
    
}


//SetBumpMap
void d3dBumpMapVertexShader::SetBumpMap(pddiTexture* t)
{
    if(t)
    {
        t->AddRef();
    }
    
    if(m_bumpMap)
    {
        m_bumpMap->Release();
    }
    
    m_bumpMap = (d3dTexture*)t;

}

void d3dBumpMapVertexShader::PreRender()
{
	d3d->SetPixelShader( m_hSpecDiffBumpMapPS );

	D3DLIGHT8 light0;

	LPDIRECT3DDEVICE8 pD3DDevice = context->GetDisplay()->GetD3DDevice();

    float vDarkLight[ 4 ] = { 0.f, 0.f, 0.f, 0.f };

    int pick[4];
    context->PickVSLights(pick);	
    pD3DDevice->GetLight((pick[0] == -1) ? 0 : pick[0], &light0);      

	//set pixel shader constant
	pD3DDevice->SetPixelShaderConstant( CP_DIFFUSE, D3DXVECTOR4(shaderInfo.diffuse.Red( )*light0.Diffuse.r/255.f, shaderInfo.diffuse.Green( )*light0.Diffuse.g/255.f, shaderInfo.diffuse.Blue( )*light0.Diffuse.b/255.f, 1.f), 1 );
	pD3DDevice->SetPixelShaderConstant( CP_SPECULAR, D3DXVECTOR4(shaderInfo.specular.Red( )*light0.Specular.r/255.f, shaderInfo.specular.Green( )*light0.Specular.g/255.f, shaderInfo.specular.Blue( )*light0.Specular.b/255.f, 1.f), 1 );


	pD3DDevice->SetVertexShaderConstant(CV_ZERO, D3DXVECTOR4(0.0f, 0.0f, 0.0f, 0.0f), 1);
	pD3DDevice->SetVertexShaderConstant(CV_ONE, D3DXVECTOR4(1.0f, 1.0f, 1.0f, 1.0f), 1);
	pD3DDevice->SetVertexShaderConstant(CV_HALF, D3DXVECTOR4(0.5f, 0.5f, 0.5f, 0.5f), 1);

	pD3DDevice->SetVertexShaderConstant(CV_BUMP_SCALE, D3DXVECTOR4(0.0f, 0.0f, 0.0f, 1.f), 1);

	if( m_bSpecularEnabled )
		pD3DDevice->SetVertexShaderConstant(CV_SPECULAR_ENABLED, D3DXVECTOR4(1.0f, 1.0f, 1.0f, 1.0f), 1);
	else
		pD3DDevice->SetVertexShaderConstant(CV_SPECULAR_ENABLED, D3DXVECTOR4(0.0f, 0.0f, 0.0f, 0.0f), 1);

}

void d3dBumpMapVertexShader::PostRender()
{
    d3d->SetPixelShader(NULL);
}
