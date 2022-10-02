//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


#include "context.hpp"
#include "display.hpp"
#include "texture.hpp"
#include "shaderdata.hpp"
#include "simpleshader.hpp"
#include "refractshader.hpp"
#include "direct3d.hpp"

static d3dSimpleShader* gSimpleShader;

pddiShadeColourTable d3dRefractVertexShader::colourTable[] = 
{
    PDDID3D_STDSHADERPARAM_COLOUR,
    { PDDI_SP_REFRACTCOLOUR,  SHADE_COLOUR( SetColour )},
    { PDDI_SP_NULL,     NULL }
};

pddiShadeTextureTable d3dRefractVertexShader::textureTable[] = 
{
    { PDDI_SP_BASETEX, SHADE_TEXTURE(SetBaseTexture) },
    { PDDI_SP_NULL,    NULL }
};

pddiShadeIntTable d3dRefractVertexShader::intTable[] = 
{
    PDDID3D_STDSHADERPARAM_INT,
    { PDDI_SP_NULL,         NULL }
};

pddiShadeFloatTable d3dRefractVertexShader::floatTable[] = 
{
    PDDID3D_STDSHADERPARAM_FLOAT,   
    { PDDI_SP_REFRACTINDEX, SHADE_FLOAT(SetBias) },    
    { PDDI_SP_REFRACTBLEND, SHADE_FLOAT(SetCrossfade) },    
};

d3dRefractVertexShader::d3dRefractVertexShader(d3dContext* c) :
    d3dShader(c),
    bias(10.0f),
    crossfade(1.0f),
    colour(255,255,255),
    baseTex(NULL),
    bbTex(NULL)
{ 
    bbTex = new d3dTexture( context, NULL );
    if( gSimpleShader == NULL )
    {
        gSimpleShader = new d3dSimpleShader( c );

    }
}

d3dRefractVertexShader::~d3dRefractVertexShader()
{
    if(baseTex)
        baseTex->Release();

    if( bbTex )
        bbTex->Release( );
}


const char* d3dRefractVertexShader::GetType(void)
{
    static char type [] = "refract";
    return type;
}

int  d3dRefractVertexShader::GetPasses()
{
    return 1;
}

bool firstRefractionHack = true;


void d3dRefractVertexShader::SetPass(int pass)
{
    // need to enable snapshot in init structure
    PDDIASSERT(context->GetDisplay()->GetSnapshotTexture());

    if(firstRefractionHack)
    {
        context->GetDisplay()->Snapshot();
        firstRefractionHack = false;
    }

    LPDIRECT3DTEXTURE8 snap = context->GetDisplay()->GetSnapshotTexture();
    bbTex->ChangeForgedTexture(snap);

    d3d->SetTextures( 3, baseTex, snap ? bbTex : NULL, NULL, NULL) ;
    
    pddiColour texFactor = colour;
    texFactor.SetAlpha(unsigned(crossfade * 255));

    d3d->SetTextureFactor(texFactor);

    d3d->SetTextureColourCombine(0, D3DTOP_MODULATE, D3DTA_CURRENT, D3DTA_TEXTURE);
    d3d->SetTextureAlphaCombine(0, D3DTOP_SELECTARG2, D3DTA_CURRENT, D3DTA_TFACTOR);
    d3d->SetTextureCombineResult(0, D3DTA_TEMP);

    SetupTextureSampling(0);

    d3d->SetTextureCombine(1, D3DTOP_MODULATE, D3DTA_TFACTOR, D3DTA_TEXTURE);
    d3d->SetTextureCoord(1, 1);
    d3d->SetTextureAddress(1, PDDI_UV_CLAMP);
    d3d->SetTextureFilter(1, filterMode);

    d3d->SetTextureCombine(2, D3DTOP_BLENDFACTORALPHA, D3DTA_CURRENT, D3DTA_TEMP);

    blendMode = PDDI_BLEND_NONE;
    alphaTest = false;

    SetupShading();
    SetupAlphaBlend();

}

//-------------------------------------------------------------------
void d3dRefractVertexShader::SetBaseTexture(pddiTexture* t)
{
    if(t)
        t->AddRef();

    if(baseTex)
        baseTex->Release();

    baseTex = (d3dTexture*)t;
}


void d3dRefractVertexShader::LoadVSConstants( )
{
    LPDIRECT3DDEVICE8 pD3DDevice = context->GetDisplay()->GetD3DDevice();

    // Some basic constants

    float vConstant11[4] = { 640.f, 480.f, 1.0f, 1.0f };

    vConstant11[0] = (float)context->GetDisplay()->GetRenderTargetWidth();
    vConstant11[1] = (float)context->GetDisplay()->GetRenderTargetHeight();

    float scaledBiasX = bias * (((float)context->GetDisplay()->GetRenderTargetWidth()) / ((float)context->GetDisplay()->GetWidth()));
    float scaledBiasY = bias * (((float)context->GetDisplay()->GetRenderTargetHeight()) / ((float)context->GetDisplay()->GetHeight()));
    float vConstant12[4] = { scaledBiasX, scaledBiasY, 0.0f, 0.0f};
    float vConstant13[4] = { 0.5f, 0.5f, 0.5f, 0.5f };

    if( InSkinMode( ) ){
        pD3DDevice->SetVertexShaderConstant(  92, &vConstant12, 1 );
        pD3DDevice->SetVertexShaderConstant(  93, &vConstant13, 1 );    
        pD3DDevice->SetVertexShaderConstant(  94, &vConstant11, 1 ); 
    }
    else{
        // Vertex shader operations use transposed matrices
        pddiMatrix matWorld, matView, matProj, matWV, matWVP, matWVPTranspose, matWorldTranspose;
        pD3DDevice->GetTransform( D3DTS_WORLD, (D3DMATRIX*)&matWorld );
        pD3DDevice->GetTransform( D3DTS_VIEW, (D3DMATRIX*)&matView );
        pD3DDevice->GetTransform( D3DTS_PROJECTION, (D3DMATRIX*)&matProj );

        matWV.Mult(matWorld, matView);
        matWVP.MultFull(matWV,matProj);
        matWVPTranspose.Transpose(matWVP);
        matWorldTranspose.Transpose(matWorld);

        pD3DDevice->SetVertexShaderConstant( 2, &matWVPTranspose, 4 );    
        pD3DDevice->SetVertexShaderConstant( 6, &matWorldTranspose, 4 );    
      
        pD3DDevice->SetVertexShaderConstant(  11, &vConstant11, 1 );
        pD3DDevice->SetVertexShaderConstant(  12, &vConstant12, 1 );    
        pD3DDevice->SetVertexShaderConstant(  13, &vConstant13, 1 ); 

        // Some basic constants
        float constants[4] = {0,1.0f,256.0f,0.5f};
    
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
        pD3DDevice->SetVertexShaderConstant(  0, &constants,    1 );
        pD3DDevice->SetVertexShaderConstant(  14, &diffuse, 1 );
        pD3DDevice->SetVertexShaderConstant(  15, &specular, 1 );
        pD3DDevice->SetVertexShaderConstant(  16, &emissive,  1 );
        pD3DDevice->SetVertexShaderConstant(  17, &light0.Direction,   1 );
        pD3DDevice->SetVertexShaderConstant(  18, (pick[0] == -1) ? &black : &light0.Diffuse, 1 );
        pD3DDevice->SetVertexShaderConstant(  19, &light1.Direction,   1 );
        pD3DDevice->SetVertexShaderConstant(  20, (pick[1] == -1) ? &black : &light1.Diffuse, 1 );
        pD3DDevice->SetVertexShaderConstant(  21, &light2.Direction,   1 );
        pD3DDevice->SetVertexShaderConstant(  22, (pick[2] == -1) ? &black : &light2.Diffuse, 1 );
    }
}

void d3dRefractVertexShader::PreRender(void)
{

}

void d3dRefractVertexShader::PostRender(void)
{
    bbTex->ChangeForgedTexture( NULL );
    d3d->SetTextureCombineResult(0, D3DTA_DIFFUSE);
}

pddiBaseShader* d3dRefractVertexShader::CloneSimple()
{
    gSimpleShader->CopySettings( *this );
    return gSimpleShader;
}