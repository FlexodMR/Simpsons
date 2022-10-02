//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


#include "context.hpp"
#include "display.hpp"
#include "texture.hpp"
#include "shaderdata.hpp"
#include "shader.hpp"
#include "toonvertexshader.hpp"
#include "direct3d.hpp"
#include <stdio.h>

const float TOON_SHADE_MAP_DIM = 64.0f;

const float TOON_SHADE_BASE_LUMINANCE = 10.f;

const float TOON_SILHOUTTE_WIDTH = 1.01f;

pddiShadeIntTable d3dToonVertexShader::intTable[] =
{
    PDDID3D_STDSHADERPARAM_INT,
    {PDDI_SP_ALPHATEST , SHADE_INT(EnableAlphaTest)},
    {PDDI_SP_ALPHACOMPARE , SHADE_INT(SetAlphaCompare)},
    {PDDI_SP_TOONSTYLE, SHADE_INT(SetToonStyle)},
    {PDDI_SP_TOONLEVEL, SHADE_INT(SetGradientLevel)},
    {PDDI_SP_NULL, NULL}
};

pddiShadeTextureTable d3dToonVertexShader::textureTable[] = 
{
    {PDDI_SP_BASETEX , SHADE_TEXTURE(SetTexture)},
    {PDDI_SP_NULL , NULL}
};

pddiShadeColourTable d3dToonVertexShader::colourTable[] = 
{
    {PDDI_SP_DIFFUSE  , SHADE_COLOUR(SetDiffuse)},
    {PDDI_SP_SILHOUETTE, SHADE_COLOUR(SetSilhoutte)},
    {PDDI_SP_NULL , NULL}
};

pddiShadeFloatTable d3dToonVertexShader::floatTable[] = 
{
    PDDID3D_STDSHADERPARAM_FLOAT, 
    {PDDI_SP_TOONLINEWIDTH,  SHADE_FLOAT(SetLineWidth)},
    {PDDI_SP_NULL , NULL}
};

//-----------------------------------------------------------------------------
//
// d3dToonVertexShader::d3dToonVertexShader
//
//-----------------------------------------------------------------------------
d3dToonVertexShader::d3dToonVertexShader(d3dContext* c) :
    d3dShader(c), style(TOON_DEFAULT), gradLevel( 4 ), baseTex( NULL ), shadeMap( NULL ),
    lineWidth( 0.008f )
    
{
    silhoutte.Set( 0, 0, 0, 0 );    
}

d3dToonVertexShader::~d3dToonVertexShader()
{
    if( baseTex )
        baseTex->Release( );

    if( shadeMap )
        shadeMap->Release( );
}

//-----------------------------------------------------------------------------
//
// d3dToonVertexShader::GetType
//
//-----------------------------------------------------------------------------
const char* d3dToonVertexShader::GetType(void)
{
    static char type [] = "toon";
    return type;
}

//-----------------------------------------------------------------------------
//
// d3dToonVertexShader::GetPasses
//
//-----------------------------------------------------------------------------
int  d3dToonVertexShader::GetPasses()
{

    if( style != TOON_NO_SILHOUETTE )
        return 2;
    else
        return 1;

}

void d3dToonVertexShader::PreRender(void)
{
   
}

void d3dToonVertexShader::PostRender(void)
{
    context->ResetCull();
}

void d3dToonVertexShader::LoadVSConstants( )
{
	if( !InSkinMode( ) ){
		LPDIRECT3DDEVICE8 m_pd3dDevice = context->GetDisplay()->GetD3DDevice();

        //set the transform matrix
        pddiMatrix matWorld, matView, matProj, matWV, matWVP, matWVPTranspose, matWorldTranspose, matWorldIV;
        m_pd3dDevice->GetTransform( D3DTS_WORLD, (D3DMATRIX*)&matWorld );
        m_pd3dDevice->GetTransform( D3DTS_VIEW, (D3DMATRIX*)&matView );
        m_pd3dDevice->GetTransform( D3DTS_PROJECTION, (D3DMATRIX*)&matProj );

        matWV.Mult(matWorld,matView);
        matWVP.MultFull(matWV,matProj);
        matWVPTranspose.Transpose(matWVP);
	    matWorldTranspose.Transpose(matWorld);

        matWorldIV.Invert( matWorld );

        m_pd3dDevice->SetVertexShaderConstant(  2, &matWVPTranspose, 4 );    
	    m_pd3dDevice->SetVertexShaderConstant(  6, &matWorldTranspose, 4 );   
	}
}

void d3dToonVertexShader::SetPass(int pass)
{
	if( !shadeMap )
		CreateShadeMap( );

    LPDIRECT3DDEVICE8 m_pd3dDevice = context->GetDisplay()->GetD3DDevice();

    if( pass == 0 ){     //first pass
        float vColor[ 4 ] = { shaderInfo.diffuse.Red( )/255.f, shaderInfo.diffuse.Green( )/255.f, shaderInfo.diffuse.Blue( )/255.f, shaderInfo.diffuse.Alpha( )/255.f};
        float vSize[ 4 ] =  { 0, TOON_SHADE_MAP_DIM, 0.f, 0.f };
               
        if( style == TOON_SILHOUETTE_ONLY ){
            SetBlendMode( PDDI_BLEND_ALPHA );
            vColor[ 3 ] = 0.f;
        }

        LPDIRECT3DDEVICE8 m_pd3dDevice = context->GetDisplay()->GetD3DDevice();

        // now set up the lights for the shader
        D3DLIGHT8 light0, light1, light2;

        float vDarkLight[ 4 ] = { 0.f, 0.f, 0.f, 0.f };
        D3DCOLORVALUE vDarkColour = { 0.f, 0.f, 0.f, 0.f };

        int pick[4];
        context->PickVSLights(pick);

        m_pd3dDevice->GetLight((pick[0] == -1) ? 0 : pick[0], &light0);
        m_pd3dDevice->GetLight((pick[1] == -1) ? 0 : pick[1], &light1);
        m_pd3dDevice->GetLight((pick[2] == -1) ? 0 : pick[2], &light2);

            
        D3DCOLORVALUE colour0 = (pick[0] == -1) ? vDarkColour : light0.Diffuse;
        D3DCOLORVALUE colour1 = (pick[2] == -1) ? vDarkColour : light1.Diffuse;
        D3DCOLORVALUE colour2 = (pick[2] == -1) ? vDarkColour : light2.Diffuse;

        //caculate the colour intensity of the lights
        float intensity0 = 0.299f * colour0.r + 0.587f * colour0.g + 0.114f * colour0.b;
        float intensity1 = 0.299f * colour1.r + 0.587f * colour1.g + 0.114f * colour1.b;
        float intensity2 = 0.299f * colour2.r + 0.587f * colour2.g + 0.114f * colour2.b;

        float vIntensity[ 4 ] = { intensity0, intensity1, intensity2, 0.f };
        
        if( InSkinMode( ) ){
                       
            m_pd3dDevice->SetVertexShaderConstant(  92, &vColor, 1 );
            m_pd3dDevice->SetVertexShaderConstant(  93, &vSize, 1 );

            //set the light intensity 
            m_pd3dDevice->SetVertexShaderConstant(  94, &vIntensity, 1 );

        }
        else{

            //set the light for non-skin toon shader
            m_pd3dDevice->SetVertexShaderConstant(  12, (pick[0] == -1) ? (D3DVECTOR *)&vDarkLight : &light0.Direction,   1 );
            m_pd3dDevice->SetVertexShaderConstant(  13, (pick[1] == -1) ? (D3DVECTOR *)&vDarkLight : &light1.Direction,   1 );
            m_pd3dDevice->SetVertexShaderConstant(  14, (pick[2] == -1) ? (D3DVECTOR *)&vDarkLight : &light2.Direction,   1 );

            //set the light intensity 
            m_pd3dDevice->SetVertexShaderConstant(  15, &vIntensity, 1 );
            
            m_pd3dDevice->SetVertexShaderConstant(  10, &vColor, 1 );
            m_pd3dDevice->SetVertexShaderConstant(  11, &vSize, 1 );

        }

        d3d->SetTextures( 2, baseTex, shadeMap );
        //shadeMap->SetTexture( 0 );

        d3d->SetTextureCombine(0, D3DTOP_MODULATE, D3DTA_CURRENT, D3DTA_TEXTURE);
        d3d->SetTextureCombine(1, D3DTOP_MODULATE, D3DTA_CURRENT, D3DTA_TEXTURE);

       
		SetupTextureSampling( 0 );

        d3d->SetTextureAddress(1, PDDI_UV_CLAMP);
        d3d->SetTextureFilter(1, PDDI_FILTER_MIPMAP);       //map to d3d point filter

        m_pd3dDevice->SetRenderState( D3DRS_CULLMODE, D3DCULL_CCW  );
        m_pd3dDevice->SetRenderState( D3DRS_ZENABLE, true );

        SetupShading( );
        SetupAlphaBlend();

        
    }
    else{       //second pass draw the silouhete line
        float vSize[ 4 ] = { TOON_SHADE_MAP_DIM, 0.f, lineWidth, 0.f };
        float vColor[ 4 ] = { (float)silhoutte.Red( )/255.f, (float)silhoutte.Green( )/255.f, (float)silhoutte.Blue( )/255.f, 1.f };

        if( InSkinMode( ) ){
                           
            m_pd3dDevice->SetVertexShaderConstant(  92, &vColor, 1 );
            m_pd3dDevice->SetVertexShaderConstant(  93, &vSize, 1 );
        }
        else{
            m_pd3dDevice->SetVertexShaderConstant(  10, &vColor, 1 ); 
            m_pd3dDevice->SetVertexShaderConstant(  11, &vSize, 1 ); 
        }

        SetBlendMode( PDDI_BLEND_NONE );
        m_pd3dDevice->SetRenderState( D3DRS_CULLMODE, D3DCULL_CW  );
    }
}


void d3dToonVertexShader::CreateShadeMap()
{

	//create the shade map once
	if( shadeMap )
		return;

    D3DSURFACE_DESC descBack;
    HRESULT d3dok;
  
    LPDIRECT3DTEXTURE8 d3dShadeMap;  
    
    LPDIRECT3DDEVICE8 d3d = context->GetDisplay()->GetD3DDevice();
    
    // get format of back buffer
    IDirect3DSurface8* pBackBuffer = NULL;
    d3dok = d3d->GetBackBuffer(0, D3DBACKBUFFER_TYPE_MONO, &pBackBuffer);
    if (d3dok != D3D_OK)
        return;
    pBackBuffer->GetDesc(&descBack);
    pBackBuffer->Release();
    
    //create the shadeMap- 8x1 grid of interpolated normals, with origin at <0,0,-1>.

    d3dok = d3d->CreateTexture((unsigned int)TOON_SHADE_MAP_DIM, 1, 1, NULL, descBack.Format, D3DPOOL_MANAGED, &d3dShadeMap);    
    shadeMap = new d3dTexture(context, d3dShadeMap);

    shadeMap->AddRef( );

    FillShadeMap( );
}

void d3dToonVertexShader::FillShadeMap( )
{
    PDDIASSERT( shadeMap );

    LPDIRECT3DTEXTURE8 d3dShadeMap = shadeMap->GetForgedTexture( );
    LPDIRECT3DDEVICE8 d3d = context->GetDisplay()->GetD3DDevice();
    
    D3DLOCKED_RECT  d3dlr;
    HRESULT d3dok;
    int i, j;

    d3dok = d3dShadeMap->LockRect(0, &d3dlr, NULL, NULL);
    PDDIASSERT(d3dok == D3D_OK);
    DWORD* pPixel = (DWORD*)d3dlr.pBits;
    PDDIASSERT(pPixel);


	float step = ( 255.f - TOON_SHADE_BASE_LUMINANCE) /( gradLevel );

    
	float value = TOON_SHADE_BASE_LUMINANCE;

    for( j = 0; j < gradLevel; ++j ){        
        for( i = 0; i < TOON_SHADE_MAP_DIM/gradLevel; i++ )
        {
		    char v = (char) value;
            *pPixel++ = ( (255<<24L) + (v<<16L) + (v<<8L) + v );            
        }
        value += step;
        if( j >= gradLevel - 2 )
            value = 255.f;
    }  
    
    d3dShadeMap->UnlockRect(0);
}

//--- toon style
void d3dToonVertexShader::SetToonStyle(int s)
{
    style = (ToonStyle)s;
}

//--- silhouette color
void d3dToonVertexShader::SetSilhoutte(pddiColour colour)
{
    
    silhoutte = colour;
}


//---
void d3dToonVertexShader::SetGradientLevel( const int level )
{
    if( level != gradLevel ){
        gradLevel = level;

        //minimu gradLevel is 4
        gradLevel = gradLevel < 2 ? 2 : gradLevel;

        if( shadeMap )
            FillShadeMap( );
    }
}

//--- base texture
void d3dToonVertexShader::SetTexture(pddiTexture* t)
{
    if(t)
    {
        t->AddRef();
    }

    if(baseTex)
    {
        baseTex->Release();
    }

    baseTex = (d3dTexture*)t;
}

void d3dToonVertexShader::SetLineWidth( float w )
{
    lineWidth = w;
}
