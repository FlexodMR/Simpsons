//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


#include "context.hpp"
#include "display.hpp"
#include "texture.hpp"
#include "shaderdata.hpp"
#include "shader.hpp"
#include "toon2vertexshader.hpp"
#include "direct3d.hpp"

const float TOON_EDGE_MAP_DIM = 256.0f;
const float TOON_SHADE_MAP_DIM = 64.0f;

const float TOON_SHADE_BASE_LUMINANCE = 150.f;

pddiShadeTextureTable d3dToon2VertexShader::textureTable[] = 
{
    {PDDI_SP_BASETEX , SHADE_TEXTURE(SetTexture)},
    {PDDI_SP_NULL , NULL}
};

pddiShadeColourTable d3dToon2VertexShader::colourTable[] = 
{
    {PDDI_SP_DIFFUSE  , SHADE_COLOUR(SetDiffuse)},
    {PDDI_SP_NULL , NULL}
};

pddiShadeIntTable d3dToon2VertexShader::intTable[] =
{
    PDDID3D_STDSHADERPARAM_INT,
    {PDDI_SP_TOONSTYLE, SHADE_INT(SetToonStyle)},
    {PDDI_SP_TOONLEVEL, SHADE_INT(SetGradientLevel)},
    {PDDI_SP_NULL, NULL}
};

pddiShadeFloatTable d3dToon2VertexShader::floatTable[] =
{
    PDDID3D_STDSHADERPARAM_FLOAT,
    {PDDI_SP_TOONLINEWIDTH, SHADE_FLOAT(SetEdgeDelta)},
    {PDDI_SP_NULL, NULL}
};


//-----------------------------------------------------------------------------
//
// d3dToon2VertexShader::d3dToon2VertexShader
//
//-----------------------------------------------------------------------------
d3dToon2VertexShader::d3dToon2VertexShader(d3dContext* c) :
    d3dShader(c), alphaThreshold( 1.f ), gradLevel( 4 ), baseTex( NULL ),
    shadingMap( NULL ), silhoutteMap( NULL )
{
    shadingMap = silhoutteMap = 0;
    edgeDelta = 32;
}

d3dToon2VertexShader::~d3dToon2VertexShader()
{
    if( baseTex )
        baseTex->Release( );

    if( shadingMap )
        shadingMap->Release( );

    if( silhoutteMap )
        silhoutteMap->Release( );
}

//-----------------------------------------------------------------------------
//
// d3dToon2VertexShader::GetType
//
//-----------------------------------------------------------------------------
const char* d3dToon2VertexShader::GetType(void)
{
    static char type [] = "toon2";
    return type;
}

//-----------------------------------------------------------------------------
//
// d3dToon2VertexShader::GetPasses
//
//-----------------------------------------------------------------------------
int  d3dToon2VertexShader::GetPasses()
{
    return 1;
}

void d3dToon2VertexShader::PreRender(void)
{

}
void d3dToon2VertexShader::LoadVSConstants(void)
{
    LPDIRECT3DDEVICE8 m_pd3dDevice = context->GetDisplay()->GetD3DDevice();

    // Some basic constants
    pddiVector4 eyePos = GetEyePos( );

    float vColor[ 4 ] = { shaderInfo.diffuse.Red( )/255.f, shaderInfo.diffuse.Green( )/255.f, shaderInfo.diffuse.Blue( )/255.f, 1.f};

    float vSize[ 4 ] = { TOON_EDGE_MAP_DIM, TOON_SHADE_MAP_DIM, 0.f, 0.f };

    float vConstant16[ 4 ] = { 0.f, 1.f, alphaThreshold, TOON_SHADE_MAP_DIM };


    // Vertex shader operations use transposed matrices
    pddiMatrix matWorld, matView, matProj, matWV, matWVP, matWVPTranspose, matWorldTranspose, matWorldIV, matWorldIT;
    m_pd3dDevice->GetTransform( D3DTS_WORLD, (D3DMATRIX*)&matWorld );
    m_pd3dDevice->GetTransform( D3DTS_VIEW, (D3DMATRIX*)&matView );
    m_pd3dDevice->GetTransform( D3DTS_PROJECTION, (D3DMATRIX*)&matProj );

  
    matWV.Mult(matWorld,matView);
    matWVP.Mult(matWV,matProj);
    matWVPTranspose.Transpose(matWVP);
	matWorldTranspose.Transpose(matWorld );

    matWorldIV.Invert( matWorld );
    matWorldIT.Invert( matWorldTranspose );

   
    m_pd3dDevice->SetVertexShaderConstant(  1, &eyePos, 1 );

    m_pd3dDevice->SetVertexShaderConstant(  2, &matWVPTranspose, 4 );    
	m_pd3dDevice->SetVertexShaderConstant(  6, &matWorldTranspose, 4 );
    m_pd3dDevice->SetVertexShaderConstant(  12, &matWorldTranspose, 4 );
    m_pd3dDevice->SetVertexShaderConstant(  16, &vConstant16, 1 );
    

    m_pd3dDevice->SetVertexShaderConstant(  10, &vColor, 1 );   

    m_pd3dDevice->SetVertexShaderConstant(  11, &vSize, 1 ); 

    // now set up the lights for the shader
    D3DLIGHT8 light0, light1, light2;
    d3dShaderInfo info;
    D3DCOLORVALUE black = {0,0,0,0};

    float vDarkLight[ 4 ] = { 0.f, 0.f, 0.f, 0.f };

    int pick[4];
    context->PickVSLights(pick);

    m_pd3dDevice->GetLight((pick[0] == -1) ? 0 : pick[0], &light0);
    m_pd3dDevice->GetLight((pick[1] == -1) ? 0 : pick[1], &light1);
    m_pd3dDevice->GetLight((pick[2] == -1) ? 0 : pick[2], &light2);

    GetShaderInfo(&info);

    // Set the vertex shader constants
   
    m_pd3dDevice->SetVertexShaderConstant(  17, (pick[0] == -1) ? (D3DVECTOR *)&vDarkLight : &light0.Direction,   1 );
    m_pd3dDevice->SetVertexShaderConstant(  18, (pick[1] == -1) ? (D3DVECTOR *)&vDarkLight : &light1.Direction,   1 );
    m_pd3dDevice->SetVertexShaderConstant(  19, (pick[1] == -1) ? (D3DVECTOR *)&vDarkLight : &light2.Direction,   1 );

}

void d3dToon2VertexShader::PostRender(void)
{
}

void d3dToon2VertexShader::SetPass(int pass)
{
	if( !silhoutteMap )
		CreateSilhoutteMap( );

	if( !shadingMap )
		CreateShadeMap( );

    d3d->SetTextures(3, baseTex, shadingMap, silhoutteMap );

    d3d->SetTextureCombine(0, D3DTOP_MODULATE, D3DTA_CURRENT, D3DTA_TEXTURE);
    d3d->SetTextureCombine(1, D3DTOP_MODULATE, D3DTA_CURRENT, D3DTA_TEXTURE);
    d3d->SetTextureCombine(2, D3DTOP_MODULATE, D3DTA_CURRENT, D3DTA_TEXTURE);
   

    d3d->SetTextureAddress(1, PDDI_UV_CLAMP);
    d3d->SetTextureFilter(1, PDDI_FILTER_MIPMAP);       //map to d3d point filter
  
    d3d->SetTextureAddress(2, PDDI_UV_CLAMP);
    d3d->SetTextureFilter(2, filterMode);
	d3d->SetTextureFilter(2, PDDI_FILTER_MIPMAP);       //map to d3d point filter

//    SetBlendMode( PDDI_BLEND_ALPHA );

    SetupShading();
    SetupAlphaBlend();

}


void d3dToon2VertexShader::CreateSilhoutteMap()
{

	//create the edge map once
	if( silhoutteMap )
		return;

    HRESULT d3dok;
    D3DSURFACE_DESC descBack;
 
    
    LPDIRECT3DTEXTURE8 d3dsilhoutteMap;  
    
    LPDIRECT3DDEVICE8 d3d = context->GetDisplay()->GetD3DDevice();
    
    // get format of back buffer
    IDirect3DSurface8* pBackBuffer = NULL;
    d3dok = d3d->GetBackBuffer(0, D3DBACKBUFFER_TYPE_MONO, &pBackBuffer);
    if (d3dok != D3D_OK)
        return;
    pBackBuffer->GetDesc(&descBack);
    pBackBuffer->Release();
    
    //create the silhoutteMap- 8x1 grid of interpolated normals, with origin at <0,0,-1>.

    d3dok = d3d->CreateTexture((unsigned int)TOON_EDGE_MAP_DIM, 1, 1, NULL, descBack.Format, D3DPOOL_MANAGED, &d3dsilhoutteMap);
    
    silhoutteMap = new d3dTexture(context, d3dsilhoutteMap);

    FillSilhoutteMap( );
}

void d3dToon2VertexShader::CreateShadeMap()
{

	//create the shade map once
	if( shadingMap )
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
    
    //create the shadingMap- 8x1 grid of interpolated normals, with origin at <0,0,-1>.

    d3dok = d3d->CreateTexture((unsigned int)TOON_SHADE_MAP_DIM, 1, 1, NULL, descBack.Format, D3DPOOL_MANAGED, &d3dShadeMap);
 
    shadingMap = new d3dTexture(context, d3dShadeMap);

    FillShadeMap( );
}


void d3dToon2VertexShader::SetToonStyle(int s)
{
    m_style = (ToonStyle)s;

    switch( s ){
    case TOON_DEFAULT:
    case TOON_DEPTH:
        alphaThreshold = 1.f;
    break;

    case TOON_SILHOUETTE:
        alphaThreshold = 0.05f;
    break; 
    }
}

//--
pddiVector4 d3dToon2VertexShader::GetEyePos( )
{
    pddiVector4 origin( 0.f, 0.f, 0.f, 1.f );
    LPDIRECT3DDEVICE8 m_pd3dDevice = context->GetDisplay()->GetD3DDevice();

    pddiMatrix matView, matWorld, matWV, matWVIV;
    
    m_pd3dDevice->GetTransform( D3DTS_WORLD, (D3DMATRIX*)&matWorld );
    m_pd3dDevice->GetTransform( D3DTS_VIEW, (D3DMATRIX*)&matView );
    

    matWV.Mult(matWorld,matView);
    matWVIV.Invert( matWV );
    pddiVector4 pos;
    matWVIV.Transform( origin, &pos );

    return pos;

}

//---
void d3dToon2VertexShader::SetGradientLevel( const int level )
{
    if( level != gradLevel ){
        gradLevel = level;

        //minimu gradLevel is 4
        gradLevel = gradLevel < 4 ? 4 : gradLevel;

        if( shadingMap )
            FillShadeMap( );
    }
}

//---
void d3dToon2VertexShader::SetEdgeDelta( float delta )
{
    int d = (int)(delta * TOON_EDGE_MAP_DIM);

    if( d != edgeDelta ){
        edgeDelta = d;

        //minimu gradLevel is 4
        edgeDelta = edgeDelta < 32 ? 32 : edgeDelta;
        edgeDelta = edgeDelta > 128 ? 128 : edgeDelta;

        if( shadingMap )
            FillShadeMap( );
    }
}

void d3dToon2VertexShader::FillShadeMap( )
{
    PDDIASSERT( shadingMap );

    LPDIRECT3DTEXTURE8 d3dShadeMap = shadingMap->GetForgedTexture( );
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

void d3dToon2VertexShader::FillSilhoutteMap( )
{
    PDDIASSERT( silhoutteMap );

    LPDIRECT3DTEXTURE8 d3dShadeMap = silhoutteMap->GetForgedTexture( );
    LPDIRECT3DDEVICE8 d3d = context->GetDisplay()->GetD3DDevice();
    
    D3DLOCKED_RECT  d3dlr;
    HRESULT d3dok;
    int i;

    d3dok = d3dShadeMap->LockRect(0, &d3dlr, NULL, NULL);
    PDDIASSERT(d3dok == D3D_OK);
    DWORD* pPixel = (DWORD*)d3dlr.pBits;
    PDDIASSERT(pPixel);

    for( i = 0; i < TOON_EDGE_MAP_DIM; i++ )
    {
        if( i < edgeDelta )
            *pPixel++ = 0;
        else
            *pPixel++ = 0xffffffff;        
    }
    
    d3dShadeMap->UnlockRect(0);
}

//--- base texture
void d3dToon2VertexShader::SetTexture(pddiTexture* t)
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