//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


#include "context.hpp"
#include "device.hpp"
#include "display.hpp"
#include "util.hpp"
#include <d3d8.h>
#include <xgraphics.h>
#include "focusBlur.hpp"
#include <math.h>

#ifdef _XBOX
#include"psh/focus.h"
#include"psh/blur.h"
#endif

// Filters align to blurriest point in supersamples, on the 0.5 boundaries.
// This takes advantage of the bilinear filtering in the texture map lookup.
static FilterSample BoxFilter[] = {     // for 2x2 downsampling
    { 0.25f, -0.5f, -0.5f },
    { 0.25f,  0.5f, -0.5f },
    { 0.25f, -0.5f,  0.5f },
    { 0.25f,  0.5f,  0.5f },
};

static FilterSample BoxFilter2[] = {     // for 2x2 downsampling
    { 1.f/6.f, -2.5f, -1.5f },
    { 2.f/6.f,  2.5f, -1.5f },
    { 2.f/6.f, -2.5f,  1.5f },
    { 1.f/6.f,  2.5f,  1.5f },
};

static FilterSample YFilter[] = {       // 1221 4-tap filter in Y
    { 1.f/6.f, 0.f, -1.5f },
    { 2.f/6.f, 0.f, -0.5f },
    { 2.f/6.f, 0.f,  0.5f },
    { 1.f/6.f, 0.f,  1.5f },
};
static FilterSample XFilter[] = {       // 1221 4-tap filter in X
    { 1.f/6.f, -1.5f, 0.f },
    { 2.f/6.f, -0.5f, 0.f },
    { 2.f/6.f,  0.5f, 0.f },
    { 1.f/6.f,  1.5f, 0.f },
};
static FilterSample Y141Filter[] = {    // 141 3-tap filter in Y
    { 1.f/6.f, 0.f, -1.0f },
    { 4.f/6.f, 0.f,  0.0f },
    { 1.f/6.f, 0.f,  1.0f },
};
static FilterSample X141Filter[] = {        // 141 3-tap filter in X
    { 1.f/6.f, -1.0f, 0.f },
    { 4.f/6.f,  0.0f, 0.f },
    { 1.f/6.f,  1.0f, 0.f },
};

void CalculateDepthMapping(float fDepth0, float fDepth1, float *pfAlphaOffset, float *pfAlphaSlope,  float *pfBlueOffset, float *pfBlueSlope);
float FQuantizedDepth(float fDepth, float *pfAlpha, float *pfBlue);

const float maximumSlope = 16.f;

DWORD d3dExtFocusBlurEffect::m_dwBlurPixelShader = 0;
DWORD d3dExtFocusBlurEffect::m_dwFocusPixelShader = 0;


d3dExtFocusBlurEffect::d3dExtFocusBlurEffect( d3dContext *c )
:m_pContext( c ), m_fFocusNear( 0.f ), m_fFocusFar( 1.f )
{
    m_pBlurTexture = NULL;
    m_effectMode = EM_NONE;
}

d3dExtFocusBlurEffect::~d3dExtFocusBlurEffect( )
{
    if( m_pBlurTexture )
        m_pBlurTexture->Release( );
}

void d3dExtFocusBlurEffect::BeginFocusBlur( )
{
    if( !m_dwFocusPixelShader ){
        D3DPIXELSHADERDEF_FILE* foo = (D3DPIXELSHADERDEF_FILE*)focusPixelShaderTokens;
        m_pContext->GetDisplay()->GetD3DDevice()->CreatePixelShader(&foo->Psd, &m_dwFocusPixelShader );
    }

    if( !m_dwBlurPixelShader ){
        D3DPIXELSHADERDEF_FILE* foo = (D3DPIXELSHADERDEF_FILE*)blurPixelShaderTokens;
        m_pContext->GetDisplay()->GetD3DDevice()->CreatePixelShader(&foo->Psd, &m_dwBlurPixelShader );
    }
}

void d3dExtFocusBlurEffect::EndFocusBlur( )
{
}

void d3dExtFocusBlurEffect::SetFocusRange( float n, float f )
{

    n = n < 0.f ? 0.f : n;
    n = n > 1.f ? 1.f : n;

    f = f < 0.f ? 0 : f;
    f = f > 1.f ? 1.f : f;

    m_fFocusNear = n;
    m_fFocusFar = f;

}

void d3dExtFocusBlurEffect::CreateBlurryTexture( )
{

    LPDIRECT3DDEVICE8 pD3DDevice = m_pContext->GetDisplay()->GetD3DDevice();

    //create a texture which the same size, and format as back buffer
    LPDIRECT3DSURFACE8 backBuffer;
    pD3DDevice->GetBackBuffer( 0,D3DBACKBUFFER_TYPE_MONO,&backBuffer);
    D3DSURFACE_DESC descRenderTarget;
    backBuffer->GetDesc(&descRenderTarget);
    UINT Width = descRenderTarget.Width;
    UINT Height = descRenderTarget.Height;
    D3DFORMAT Format = descRenderTarget.Format;
    backBuffer->Release();

    pD3DDevice->CreateTexture( Width, Height, 1, D3DUSAGE_RENDERTARGET, Format, 0, &m_pBlurTexture );

    m_pBlurTexture->GetSurfaceLevel( 0, &backBuffer );
    backBuffer->GetDesc(&descRenderTarget);

 
}

void d3dExtFocusBlurEffect::BlurBlurryTexture( FilterSample fSample[ ], int filterSize )
{
    if( !m_pBlurTexture )
        CreateBlurryTexture( );

    LPDIRECT3DDEVICE8 pD3DDevice = m_pContext->GetDisplay()->GetD3DDevice();

   // Make D3DTexture wrapper around current render target
    LPDIRECT3DSURFACE8 pRenderTarget;
    pD3DDevice->GetRenderTarget(&pRenderTarget);
    D3DSURFACE_DESC descRenderTarget;
    pRenderTarget->GetDesc(&descRenderTarget);
    D3DTexture SourceTexture;
    ZeroMemory( &SourceTexture, sizeof(SourceTexture) );
    XGSetTextureHeader( descRenderTarget.Width, descRenderTarget.Height, 1, 0, descRenderTarget.Format, 0, &SourceTexture, pRenderTarget->Data, descRenderTarget.Width * 4);
    pRenderTarget->Release();

    

    //turn back back into a texture
    LPDIRECT3DSURFACE8 backBuffer = NULL;
    pD3DDevice->GetRenderTarget( &backBuffer );


    // Save current render target and depth buffer
    LPDIRECT3DSURFACE8 pZBuffer;    
    pD3DDevice->GetDepthStencilSurface(&pZBuffer);

    // Set destination as render target
    LPDIRECT3DSURFACE8 pSurface = NULL;
    m_pBlurTexture->GetSurfaceLevel(0, &pSurface);
    pD3DDevice->SetRenderTarget(pSurface, NULL);  // no depth-buffering
    pSurface->Release();


    // Get descriptions of source and destination
    D3DSURFACE_DESC descSrc;
    SourceTexture.GetLevelDesc( 0, &descSrc );
    D3DSURFACE_DESC descDst;
    m_pBlurTexture->GetLevelDesc(0, &descDst);

    // Setup rectangles if not specified on input
    RECT rectSrc = { 0, 0, descSrc.Width, descSrc.Height };    
    RECT rectDst = { 0, 0, descDst.Width, descDst.Height };
    
    // set render state for filtering
    pD3DDevice->SetRenderState(D3DRS_LIGHTING, FALSE);
    pD3DDevice->SetRenderState(D3DRS_FILLMODE, D3DFILL_SOLID);
    pD3DDevice->SetRenderState(D3DRS_ALPHATESTENABLE, FALSE);
    pD3DDevice->SetRenderState(D3DRS_ZENABLE, D3DZB_FALSE);
    pD3DDevice->SetRenderState(D3DRS_STENCILENABLE, FALSE);
    pD3DDevice->SetRenderState(D3DRS_FOGENABLE, FALSE);
    pD3DDevice->SetRenderState(D3DRS_ALPHABLENDENABLE, FALSE);    // on first rendering, copy new value over current render target contents
    pD3DDevice->SetRenderState(D3DRS_BLENDOP, D3DBLENDOP_ADD);    // setup subsequent renderings to add to previous value
    pD3DDevice->SetRenderState(D3DRS_SRCBLEND, D3DBLEND_ONE);
    pD3DDevice->SetRenderState(D3DRS_DESTBLEND, D3DBLEND_ONE);

    // set texture state
    UINT xx; // texture stage index
    for (xx = 0; xx < 4; xx++)
    {
        pD3DDevice->SetTexture(xx, &SourceTexture);  // use our source texture for all four stages
        pD3DDevice->SetTextureStageState(xx, D3DTSS_COLOROP, D3DTOP_DISABLE);
        pD3DDevice->SetTextureStageState(xx, D3DTSS_ALPHAOP, D3DTOP_DISABLE);
        pD3DDevice->SetTextureStageState(xx, D3DTSS_TEXTURETRANSFORMFLAGS, D3DTTFF_DISABLE);  // pass texture coords without transformation
        pD3DDevice->SetTextureStageState(xx, D3DTSS_TEXCOORDINDEX, xx); // each texture has different tex coords
        pD3DDevice->SetTextureStageState(xx, D3DTSS_ADDRESSU, D3DTADDRESS_CLAMP);
        pD3DDevice->SetTextureStageState(xx, D3DTSS_ADDRESSV, D3DTADDRESS_CLAMP);
        pD3DDevice->SetTextureStageState(xx, D3DTSS_MAXMIPLEVEL, 0);
        pD3DDevice->SetTextureStageState(xx, D3DTSS_MIPFILTER, D3DTEXF_POINT);
        pD3DDevice->SetTextureStageState(xx, D3DTSS_MINFILTER, D3DTEXF_LINEAR);
        pD3DDevice->SetTextureStageState(xx, D3DTSS_MAGFILTER, D3DTEXF_LINEAR);
        pD3DDevice->SetTextureStageState(xx, D3DTSS_COLORKEYOP, D3DTCOLORKEYOP_DISABLE);
        pD3DDevice->SetTextureStageState(xx, D3DTSS_COLORSIGN, 0);
        pD3DDevice->SetTextureStageState(xx, D3DTSS_ALPHAKILL, D3DTALPHAKILL_DISABLE);
    }
    
    pD3DDevice->SetPixelShader(m_dwBlurPixelShader);          // use blur pixel shader
    pD3DDevice->SetVertexShader(D3DFVF_XYZRHW|D3DFVF_TEX4);   // for screen-space texture-mapped quadrilateral

    // Prepare quadrilateral vertices
    float x0 = (float)rectDst.left - 0.5f;
    float y0 = (float)rectDst.top - 0.5f;
    float x1 = (float)rectDst.right - 0.5f;
    float y1 = (float)rectDst.bottom - 0.5f;
    struct quad {
        float x, y, z, w1;
        struct uv {
            float u, v;
        } tex[4];   // each texture has different offset
    } aQuad[4] =
      { //  X   Y     Z   1/W     u0  v0      u1  v1      u2  v2      u3  v3
          {x0, y0, 1.0f, 1.0f, }, // texture coords are set below
          {x1, y0, 1.0f, 1.0f, },
          {x0, y1, 1.0f, 1.0f, },
          {x1, y1, 1.0f, 1.0f, }
      };

    // Set rendering to just the destination rect
    pD3DDevice->SetScissors( 1, FALSE, (D3DRECT *)&rectDst );

    // Draw a quad for each block of 4 filter coefficients
    xx = 0; // current texture stage
    float fOffsetScaleX, fOffsetScaleY; // convert destination coords to source texture coords
    float u0, v0, u1, v1;   // base source UV rectangle
    if (XGIsSwizzledFormat(descSrc.Format))
    {
        float fWidthScale = 1.f / (float)descSrc.Width;
        float fHeightScale = 1.f / (float)descSrc.Height;
        fOffsetScaleX = (float)fWidthScale;
        fOffsetScaleY = (float)fHeightScale;
        u0 = (float)rectSrc.left * fWidthScale;
        v0 = (float)rectSrc.top * fHeightScale;
        u1 = (float)rectSrc.right * fWidthScale;
        v1 = (float)rectSrc.bottom * fHeightScale;
    }
    else
    {
        fOffsetScaleX = 1.f;
        fOffsetScaleY = 1.f;
        u0 = (float)rectSrc.left;
        v0 = (float)rectSrc.top;
        u1 = (float)rectSrc.right;
        v1 = (float)rectSrc.bottom;
    }


    D3DCOLOR filterWeights[4];
    DWORD rPSInput[4];
    for ( int iSample = 0; iSample < filterSize; iSample++)
    {
        // Set filter coefficients
        float fWeight = fSample[iSample].fWeight;

        if (fWeight < 0.f)
        {
            filterWeights[xx] = D3DXCOLOR(-fWeight, -fWeight, -fWeight, -fWeight);
            rPSInput[xx] = PS_INPUTMAPPING_SIGNED_NEGATE | ((xx % 2) ? PS_REGISTER_C1 : PS_REGISTER_C0);
        }
        else
        {
            filterWeights[xx] = D3DXCOLOR(fWeight, fWeight, fWeight, fWeight);
            rPSInput[xx] = PS_INPUTMAPPING_SIGNED_IDENTITY | ((xx % 2) ? PS_REGISTER_C1 : PS_REGISTER_C0);
        }

        // Align supersamples with center of destination pixels
        float fOffsetX = fSample[iSample].fOffsetX * fOffsetScaleX;
        float fOffsetY = fSample[iSample].fOffsetY * fOffsetScaleY;
        aQuad[0].tex[xx].u = u0 + fOffsetX;
        aQuad[0].tex[xx].v = v0 + fOffsetY;
        aQuad[1].tex[xx].u = u1 + fOffsetX;
        aQuad[1].tex[xx].v = v0 + fOffsetY;
        aQuad[2].tex[xx].u = u0 + fOffsetX;
        aQuad[2].tex[xx].v = v1 + fOffsetY;
        aQuad[3].tex[xx].u = u1 + fOffsetX;
        aQuad[3].tex[xx].v = v1 + fOffsetY;
        
        xx++; // Go to next stage
        if (xx == 4 || iSample == filterSize - 1)  // max texture stages or last sample
        {
            // zero out unused texture stage coefficients 
            // (only for last filter sample, when number of samples is not divisible by 4)
            for (; xx < 4; xx++)
            {
                pD3DDevice->SetTexture(xx, NULL);
                filterWeights[xx] = 0;
                rPSInput[xx] = PS_INPUTMAPPING_UNSIGNED_IDENTITY | PS_REGISTER_ZERO;
            }
        
            // Set coefficients
            pD3DDevice->SetRenderState(D3DRS_PSCONSTANT0_0, filterWeights[0] );
            pD3DDevice->SetRenderState(D3DRS_PSCONSTANT1_0, filterWeights[1] );
            pD3DDevice->SetRenderState(D3DRS_PSCONSTANT0_1, filterWeights[2] );
            pD3DDevice->SetRenderState(D3DRS_PSCONSTANT1_1, filterWeights[3] );

            // Remap coefficients to proper sign
            pD3DDevice->SetRenderState(
                D3DRS_PSRGBINPUTS0,
                PS_COMBINERINPUTS( rPSInput[0] | PS_CHANNEL_RGB,   PS_REGISTER_T0 | PS_CHANNEL_RGB   | PS_INPUTMAPPING_SIGNED_IDENTITY,
                                   rPSInput[1] | PS_CHANNEL_RGB,   PS_REGISTER_T1 | PS_CHANNEL_RGB   | PS_INPUTMAPPING_SIGNED_IDENTITY ) );
            pD3DDevice->SetRenderState(
                D3DRS_PSALPHAINPUTS0,
                PS_COMBINERINPUTS( rPSInput[0] | PS_CHANNEL_ALPHA, PS_REGISTER_T0 | PS_CHANNEL_ALPHA | PS_INPUTMAPPING_SIGNED_IDENTITY,
                                   rPSInput[1] | PS_CHANNEL_ALPHA, PS_REGISTER_T1 | PS_CHANNEL_ALPHA | PS_INPUTMAPPING_SIGNED_IDENTITY ) );
            pD3DDevice->SetRenderState(
                D3DRS_PSRGBINPUTS1,
                PS_COMBINERINPUTS( rPSInput[2] | PS_CHANNEL_RGB,   PS_REGISTER_T2 | PS_CHANNEL_RGB   | PS_INPUTMAPPING_SIGNED_IDENTITY,
                                   rPSInput[3] | PS_CHANNEL_RGB,   PS_REGISTER_T3 | PS_CHANNEL_RGB   | PS_INPUTMAPPING_SIGNED_IDENTITY ) );
            pD3DDevice->SetRenderState(
                D3DRS_PSALPHAINPUTS1,
                PS_COMBINERINPUTS( rPSInput[2] | PS_CHANNEL_ALPHA, PS_REGISTER_T2 | PS_CHANNEL_ALPHA | PS_INPUTMAPPING_SIGNED_IDENTITY,
                                   rPSInput[3] | PS_CHANNEL_ALPHA, PS_REGISTER_T3 | PS_CHANNEL_ALPHA | PS_INPUTMAPPING_SIGNED_IDENTITY ) );
            
            // draw the quad to filter the coefficients so far
            pD3DDevice->DrawPrimitiveUP(D3DPT_TRIANGLESTRIP, 2, aQuad, sizeof(quad)); // one quad blends 4 textures
            pD3DDevice->SetRenderState(D3DRS_ALPHABLENDENABLE, TRUE); // on subsequent renderings, add to what's in the render target 
            xx = 0;
        }
    }


    // clear texture stages
    for (xx=0; xx<4; xx++)
    {
        pD3DDevice->SetTexture(xx, NULL);
        pD3DDevice->SetTextureStageState(xx, D3DTSS_COLOROP, D3DTOP_DISABLE);
        pD3DDevice->SetTextureStageState(xx, D3DTSS_ALPHAOP, D3DTOP_DISABLE);
        pD3DDevice->SetTextureStageState(xx, D3DTSS_MIPMAPLODBIAS, 0);
    }

    // Restore render target and zbuffer
    pD3DDevice->SetRenderTarget( backBuffer, pZBuffer );
    if (backBuffer != NULL) 
        backBuffer->Release();

    if (pZBuffer != NULL) 
        pZBuffer->Release();    

    //restore back to fix-function shader
    pD3DDevice->SetPixelShader( 0 );

}

void d3dExtFocusBlurEffect::DrawEffect( FilterMode fm )
{
    if( m_effectMode == EM_NONE ){
        LPDIRECT3DDEVICE8 pD3DDevice = m_pContext->GetDisplay()->GetD3DDevice();
        pD3DDevice->SetPixelShader( 0 );
        return;
    }
    else if( m_effectMode == EM_FOCUS || m_effectMode == EM_BLUR ){
        switch( fm ){
        case FM_BOX:
            BlurBlurryTexture( BoxFilter2, 4);
        break;

        case FM_Y4:
            BlurBlurryTexture( YFilter, 4);
        break;

        case FM_X4:
            BlurBlurryTexture( XFilter, 4);
        break;
        }

        if( m_effectMode == EM_FOCUS )
            DrawFocusRange( );
        else
            DrawBlurTexture( );
    }
}

//-----------------------------------------------------------------------------
// Name: DrawFocusRange
//
// Desc: Choose the focus range by mapping z to a focus value using pixel
//       shader arithmetic.  See media/shaders/focus.psh for more details.
//
//       High focus values leave the back-buffer unchanged.
//       Low focus values blend in the blurred texture computed by Blur().
//-----------------------------------------------------------------------------
void d3dExtFocusBlurEffect::DrawFocusRange()
{

 
    // Make a D3DTexture wrapper around the depth buffer surface
    D3DSURFACE_DESC desc;
    LPDIRECT3DSURFACE8 pZBuffer;

    LPDIRECT3DDEVICE8 pD3DDevice = m_pContext->GetDisplay()->GetD3DDevice();

 
    m_pContext->SetProjectionMode(PDDI_PROJECTION_DEVICE);


    pD3DDevice->GetDepthStencilSurface( &pZBuffer );
    pZBuffer->GetDesc(&desc);

    D3DTexture ZBufferTexture;
    ZeroMemory( &ZBufferTexture, sizeof(ZBufferTexture) );
    static D3DFORMAT fmtOverride = D3DFMT_LIN_A8B8G8R8;
    XGSetTextureHeader( desc.Width, desc.Height, 1, 0, fmtOverride, 0, &ZBufferTexture, pZBuffer->Data, desc.Width * 4);
    pZBuffer->Release();    

    // Get size of blur texture for setting texture coords of final blur
    D3DSURFACE_DESC descBlur;
    m_pBlurTexture->GetLevelDesc(0, &descBlur);
    float fOffsetX = 0.f;
    float fOffsetY = 0.5f / (float)descBlur.Height; // vertical blur
    struct VERTEX {
        D3DXVECTOR4 p;
        FLOAT tu0, tv0;
        FLOAT tu1, tv1;
    } v[4];
    v[0].p = D3DXVECTOR4( -0.5f,             -0.5f,              1.0f, 1.0f );
    v[1].p = D3DXVECTOR4( desc.Width - 0.5f, -0.5f,              1.0f, 1.0f );
    v[2].p = D3DXVECTOR4( -0.5f,             desc.Height - 0.5f, 1.0f, 1.0f );
    v[3].p = D3DXVECTOR4( desc.Width - 0.5f, desc.Height - 0.5f, 1.0f, 1.0f );
    v[0].tu0 = 0.0f;              v[0].tv0 = 0.0f;
    v[1].tu0 = (float)desc.Width; v[1].tv0 = 0.0f;
    v[2].tu0 = 0.0f;              v[2].tv0 = (float)desc.Height;
    v[3].tu0 = (float)desc.Width; v[3].tv0 = (float)desc.Height;
    v[0].tu1 = fOffsetX;                         v[0].tv1 = fOffsetY;
    v[1].tu1 = fOffsetX + (float)descBlur.Width; v[1].tv1 = fOffsetY;
    v[2].tu1 = fOffsetX;                         v[2].tv1 = fOffsetY + (float)descBlur.Height;
    v[3].tu1 = fOffsetX + (float)descBlur.Width; v[3].tv1 = fOffsetY + (float)descBlur.Height;
    
    // Set pixel shader state
    pD3DDevice->SetPixelShader( m_dwFocusPixelShader );
    float fAlphaOffset, fAlphaSlope, fBlueOffset, fBlueSlope;
    CalculateDepthMapping(m_fFocusNear, m_fFocusFar, &fAlphaOffset, &fAlphaSlope, &fBlueOffset, &fBlueSlope);
    float rfConstants[] = {
        0.f, 0.f, 0.f, m_fFocusNear,        // offset
        0.f, 0.f, 0.f, m_fFocusFar,         // 1x
        0.f, 0.f, 0.f, 0.f,                 // 4x
        0.f, 0.f, 0.f, 1.f,         // 16x
    };
    pD3DDevice->SetPixelShaderConstant( 0, rfConstants, 4 );
    
    // Set render state
    pD3DDevice->SetRenderState( D3DRS_ZENABLE, FALSE ); 
    pD3DDevice->SetRenderState( D3DRS_ALPHATESTENABLE, TRUE );
    pD3DDevice->SetRenderState( D3DRS_ALPHAREF, 0 );
    pD3DDevice->SetRenderState( D3DRS_ALPHAFUNC, D3DCMP_GREATER );
    pD3DDevice->SetRenderState( D3DRS_ALPHABLENDENABLE, TRUE );
    pD3DDevice->SetRenderState( D3DRS_SRCBLEND, D3DBLEND_SRCALPHA );
    pD3DDevice->SetRenderState( D3DRS_DESTBLEND, D3DBLEND_INVSRCALPHA );
    pD3DDevice->SetRenderState( D3DRS_FILLMODE, D3DFILL_SOLID);

    // Set texture state
    pD3DDevice->SetTexture( 0, &ZBufferTexture );
    pD3DDevice->SetTextureStageState( 0, D3DTSS_COLOROP, D3DTOP_SELECTARG1 );
    pD3DDevice->SetTextureStageState( 0, D3DTSS_COLORARG1, D3DTA_TEXTURE );
    pD3DDevice->SetTextureStageState( 0, D3DTSS_ALPHAOP, D3DTOP_SELECTARG1 );
    pD3DDevice->SetTextureStageState( 0, D3DTSS_ALPHAARG1, D3DTA_TEXTURE );
    pD3DDevice->SetTextureStageState( 0, D3DTSS_ADDRESSU, D3DTADDRESS_CLAMP );
    pD3DDevice->SetTextureStageState( 0, D3DTSS_ADDRESSV, D3DTADDRESS_CLAMP );
    static D3DTEXTUREFILTERTYPE dwMin0 = D3DTEXF_LINEAR;
    static D3DTEXTUREFILTERTYPE dwMag0 = D3DTEXF_LINEAR;
    pD3DDevice->SetTextureStageState( 0, D3DTSS_MINFILTER, dwMin0 );
    pD3DDevice->SetTextureStageState( 0, D3DTSS_MAGFILTER, dwMag0 );
    pD3DDevice->SetTexture( 1, m_pBlurTexture );
    pD3DDevice->SetTextureStageState( 1, D3DTSS_COLOROP, D3DTOP_SELECTARG1 );
    pD3DDevice->SetTextureStageState( 1, D3DTSS_COLORARG1, D3DTA_TEXTURE );
    pD3DDevice->SetTextureStageState( 1, D3DTSS_ALPHAOP, D3DTOP_SELECTARG1 );
    pD3DDevice->SetTextureStageState( 1, D3DTSS_ALPHAARG1, D3DTA_TEXTURE );
    pD3DDevice->SetTextureStageState( 1, D3DTSS_ADDRESSU, D3DTADDRESS_CLAMP );
    pD3DDevice->SetTextureStageState( 1, D3DTSS_ADDRESSV, D3DTADDRESS_CLAMP );
    static D3DTEXTUREFILTERTYPE dwMin1 = D3DTEXF_LINEAR;
    static D3DTEXTUREFILTERTYPE dwMag1 = D3DTEXF_LINEAR;
    pD3DDevice->SetTextureStageState( 1, D3DTSS_MINFILTER, dwMin1 );
    pD3DDevice->SetTextureStageState( 1, D3DTSS_MAGFILTER, dwMag1 );

    // Disable texture stages 2 and 3
    pD3DDevice->SetTexture( 2, NULL );
    pD3DDevice->SetTextureStageState( 2, D3DTSS_COLOROP, D3DTOP_DISABLE );
    pD3DDevice->SetTextureStageState( 2, D3DTSS_ALPHAOP, D3DTOP_DISABLE );
    pD3DDevice->SetTexture( 3, NULL );
    pD3DDevice->SetTextureStageState( 3, D3DTSS_COLOROP, D3DTOP_DISABLE );
    pD3DDevice->SetTextureStageState( 3, D3DTSS_ALPHAOP, D3DTOP_DISABLE );
    
    // Render the screen-aligned quadrilateral
    pD3DDevice->SetVertexShader( D3DFVF_XYZRHW|D3DFVF_TEX2 );
    pD3DDevice->DrawPrimitiveUP( D3DPT_QUADSTRIP, 1, v, sizeof(VERTEX) );

    // Reset render states
    pD3DDevice->SetRenderState( D3DRS_ALPHATESTENABLE, FALSE );
    pD3DDevice->SetRenderState( D3DRS_ALPHABLENDENABLE, FALSE );
    pD3DDevice->SetRenderState( D3DRS_ZENABLE, TRUE );
    pD3DDevice->SetTexture( 0, NULL );
    pD3DDevice->SetTexture( 1, NULL );
    pD3DDevice->SetTexture( 2, NULL );
    pD3DDevice->SetTexture( 3, NULL );   

    pD3DDevice->SetPixelShader( 0 );

    m_pContext->SetProjectionMode(PDDI_PROJECTION_PERSPECTIVE);
   
}

void d3dExtFocusBlurEffect::DrawFocusRange_old()
{

 
    // Make a D3DTexture wrapper around the depth buffer surface
    D3DSURFACE_DESC desc;
    LPDIRECT3DSURFACE8 pZBuffer;

    LPDIRECT3DDEVICE8 pD3DDevice = m_pContext->GetDisplay()->GetD3DDevice();

 
    m_pContext->SetProjectionMode(PDDI_PROJECTION_DEVICE);


    pD3DDevice->GetDepthStencilSurface( &pZBuffer );
    pZBuffer->GetDesc(&desc);

    D3DTexture ZBufferTexture;
    ZeroMemory( &ZBufferTexture, sizeof(ZBufferTexture) );
    static D3DFORMAT fmtOverride = D3DFMT_LIN_A8B8G8R8;
    XGSetTextureHeader( desc.Width, desc.Height, 1, 0, fmtOverride, 0, &ZBufferTexture, pZBuffer->Data, desc.Width * 4);
    pZBuffer->Release();    

    // Get size of blur texture for setting texture coords of final blur
    D3DSURFACE_DESC descBlur;
    m_pBlurTexture->GetLevelDesc(0, &descBlur);
    float fOffsetX = 0.f;
    float fOffsetY = 0.5f / (float)descBlur.Height; // vertical blur
    struct VERTEX {
        D3DXVECTOR4 p;
        FLOAT tu0, tv0;
        FLOAT tu1, tv1;
    } v[4];
    v[0].p = D3DXVECTOR4( -0.5f,             -0.5f,              1.0f, 1.0f );
    v[1].p = D3DXVECTOR4( desc.Width - 0.5f, -0.5f,              1.0f, 1.0f );
    v[2].p = D3DXVECTOR4( -0.5f,             desc.Height - 0.5f, 1.0f, 1.0f );
    v[3].p = D3DXVECTOR4( desc.Width - 0.5f, desc.Height - 0.5f, 1.0f, 1.0f );
    v[0].tu0 = 0.0f;              v[0].tv0 = 0.0f;
    v[1].tu0 = (float)desc.Width; v[1].tv0 = 0.0f;
    v[2].tu0 = 0.0f;              v[2].tv0 = (float)desc.Height;
    v[3].tu0 = (float)desc.Width; v[3].tv0 = (float)desc.Height;
    v[0].tu1 = fOffsetX;                         v[0].tv1 = fOffsetY;
    v[1].tu1 = fOffsetX + (float)descBlur.Width; v[1].tv1 = fOffsetY;
    v[2].tu1 = fOffsetX;                         v[2].tv1 = fOffsetY + (float)descBlur.Height;
    v[3].tu1 = fOffsetX + (float)descBlur.Width; v[3].tv1 = fOffsetY + (float)descBlur.Height;
    
    // Set pixel shader state
    pD3DDevice->SetPixelShader( m_dwFocusPixelShader );
    float fAlphaOffset, fAlphaSlope, fBlueOffset, fBlueSlope;
    CalculateDepthMapping(m_fFocusNear, m_fFocusFar, &fAlphaOffset, &fAlphaSlope, &fBlueOffset, &fBlueSlope);
    float rfConstants[] = {
        0.f, 0.f, fBlueOffset, fAlphaOffset,        // offset
        0.f, 0.f, fBlueSlope, 0.f,                  // 1x
        0.f, 0.f, 0.f, 0.f,                         // 4x
        0.f, 0.f, 0.f, fAlphaSlope,                 // 16x
    };
    pD3DDevice->SetPixelShaderConstant( 0, rfConstants, 4 );
    
    // Set render state
    pD3DDevice->SetRenderState( D3DRS_ZENABLE, FALSE ); 
    pD3DDevice->SetRenderState( D3DRS_ALPHATESTENABLE, TRUE );
    pD3DDevice->SetRenderState( D3DRS_ALPHAREF, 0 );
    pD3DDevice->SetRenderState( D3DRS_ALPHAFUNC, D3DCMP_GREATER );
    pD3DDevice->SetRenderState( D3DRS_ALPHABLENDENABLE, TRUE );
    pD3DDevice->SetRenderState( D3DRS_SRCBLEND, D3DBLEND_SRCALPHA );
    pD3DDevice->SetRenderState( D3DRS_DESTBLEND, D3DBLEND_INVSRCALPHA );
    pD3DDevice->SetRenderState( D3DRS_FILLMODE, D3DFILL_SOLID);

    // Set texture state
    pD3DDevice->SetTexture( 0, &ZBufferTexture );
    pD3DDevice->SetTextureStageState( 0, D3DTSS_COLOROP, D3DTOP_SELECTARG1 );
    pD3DDevice->SetTextureStageState( 0, D3DTSS_COLORARG1, D3DTA_TEXTURE );
    pD3DDevice->SetTextureStageState( 0, D3DTSS_ALPHAOP, D3DTOP_SELECTARG1 );
    pD3DDevice->SetTextureStageState( 0, D3DTSS_ALPHAARG1, D3DTA_TEXTURE );
    pD3DDevice->SetTextureStageState( 0, D3DTSS_ADDRESSU, D3DTADDRESS_CLAMP );
    pD3DDevice->SetTextureStageState( 0, D3DTSS_ADDRESSV, D3DTADDRESS_CLAMP );
    static D3DTEXTUREFILTERTYPE dwMin0 = D3DTEXF_LINEAR;
    static D3DTEXTUREFILTERTYPE dwMag0 = D3DTEXF_LINEAR;
    pD3DDevice->SetTextureStageState( 0, D3DTSS_MINFILTER, dwMin0 );
    pD3DDevice->SetTextureStageState( 0, D3DTSS_MAGFILTER, dwMag0 );
    pD3DDevice->SetTexture( 1, m_pBlurTexture );
    pD3DDevice->SetTextureStageState( 1, D3DTSS_COLOROP, D3DTOP_SELECTARG1 );
    pD3DDevice->SetTextureStageState( 1, D3DTSS_COLORARG1, D3DTA_TEXTURE );
    pD3DDevice->SetTextureStageState( 1, D3DTSS_ALPHAOP, D3DTOP_SELECTARG1 );
    pD3DDevice->SetTextureStageState( 1, D3DTSS_ALPHAARG1, D3DTA_TEXTURE );
    pD3DDevice->SetTextureStageState( 1, D3DTSS_ADDRESSU, D3DTADDRESS_CLAMP );
    pD3DDevice->SetTextureStageState( 1, D3DTSS_ADDRESSV, D3DTADDRESS_CLAMP );
    static D3DTEXTUREFILTERTYPE dwMin1 = D3DTEXF_LINEAR;
    static D3DTEXTUREFILTERTYPE dwMag1 = D3DTEXF_LINEAR;
    pD3DDevice->SetTextureStageState( 1, D3DTSS_MINFILTER, dwMin1 );
    pD3DDevice->SetTextureStageState( 1, D3DTSS_MAGFILTER, dwMag1 );

    // Disable texture stages 2 and 3
    pD3DDevice->SetTexture( 2, NULL );
    pD3DDevice->SetTextureStageState( 2, D3DTSS_COLOROP, D3DTOP_DISABLE );
    pD3DDevice->SetTextureStageState( 2, D3DTSS_ALPHAOP, D3DTOP_DISABLE );
    pD3DDevice->SetTexture( 3, NULL );
    pD3DDevice->SetTextureStageState( 3, D3DTSS_COLOROP, D3DTOP_DISABLE );
    pD3DDevice->SetTextureStageState( 3, D3DTSS_ALPHAOP, D3DTOP_DISABLE );
    
    // Render the screen-aligned quadrilateral
    pD3DDevice->SetVertexShader( D3DFVF_XYZRHW|D3DFVF_TEX2 );
    pD3DDevice->DrawPrimitiveUP( D3DPT_QUADSTRIP, 1, v, sizeof(VERTEX) );

    // Reset render states
    pD3DDevice->SetRenderState( D3DRS_ALPHATESTENABLE, FALSE );
    pD3DDevice->SetRenderState( D3DRS_ALPHABLENDENABLE, FALSE );
    pD3DDevice->SetRenderState( D3DRS_ZENABLE, TRUE );
    pD3DDevice->SetTexture( 0, NULL );
    pD3DDevice->SetTexture( 1, NULL );
    pD3DDevice->SetTexture( 2, NULL );
    pD3DDevice->SetTexture( 3, NULL );   

    pD3DDevice->SetPixelShader( 0 );

    m_pContext->SetProjectionMode(PDDI_PROJECTION_PERSPECTIVE);
   
}

void d3dExtFocusBlurEffect::DrawBlurTexture( )
{
    // Make a D3DTexture wrapper around the depth buffer surface
    D3DSURFACE_DESC desc;


    m_pBlurTexture->GetLevelDesc(0, &desc);
    
    struct VERTEX {
        D3DXVECTOR4 p;
        FLOAT tu0, tv0;
    } v[4];
    v[0].p = D3DXVECTOR4( -0.5f,             -0.5f,              1.0f, 1.0f );
    v[1].p = D3DXVECTOR4( desc.Width - 0.5f, -0.5f,              1.0f, 1.0f );
    v[2].p = D3DXVECTOR4( -0.5f,             desc.Height - 0.5f, 1.0f, 1.0f );
    v[3].p = D3DXVECTOR4( desc.Width - 0.5f, desc.Height - 0.5f, 1.0f, 1.0f );
    v[0].tu0 = 0.0f;              v[0].tv0 = 0.0f;
    v[1].tu0 = (float)desc.Width; v[1].tv0 = 0.0f;
    v[2].tu0 = 0.0f;              v[2].tv0 = (float)desc.Height;
    v[3].tu0 = (float)desc.Width; v[3].tv0 = (float)desc.Height;

    LPDIRECT3DDEVICE8 pD3DDevice = m_pContext->GetDisplay()->GetD3DDevice();

    pD3DDevice->SetPixelShader( 0 );

    // Set render state
    pD3DDevice->SetRenderState( D3DRS_ZENABLE, FALSE ); 
    pD3DDevice->SetRenderState( D3DRS_ALPHATESTENABLE, TRUE );
    pD3DDevice->SetRenderState( D3DRS_ALPHAREF, 0 );
    pD3DDevice->SetRenderState( D3DRS_ALPHAFUNC, D3DCMP_GREATER );
    pD3DDevice->SetRenderState( D3DRS_ALPHABLENDENABLE, TRUE );
    pD3DDevice->SetRenderState( D3DRS_SRCBLEND, D3DBLEND_ONE );
    pD3DDevice->SetRenderState( D3DRS_DESTBLEND, D3DBLEND_INVSRCALPHA );
    pD3DDevice->SetRenderState( D3DRS_FILLMODE, D3DFILL_SOLID);

    // Set texture state

    pD3DDevice->SetTexture( 0, m_pBlurTexture );
    pD3DDevice->SetTextureStageState( 0, D3DTSS_COLOROP, D3DTOP_SELECTARG1 );
    pD3DDevice->SetTextureStageState( 0, D3DTSS_COLORARG1, D3DTA_TEXTURE );
    pD3DDevice->SetTextureStageState( 0, D3DTSS_ALPHAOP, D3DTOP_SELECTARG1 );
    pD3DDevice->SetTextureStageState( 0, D3DTSS_ALPHAARG1, D3DTA_TEXTURE );
    pD3DDevice->SetTextureStageState( 0, D3DTSS_ADDRESSU, D3DTADDRESS_CLAMP );
    pD3DDevice->SetTextureStageState( 0, D3DTSS_ADDRESSV, D3DTADDRESS_CLAMP );
    static D3DTEXTUREFILTERTYPE dwMin1 = D3DTEXF_LINEAR;
    static D3DTEXTUREFILTERTYPE dwMag1 = D3DTEXF_LINEAR;
    pD3DDevice->SetTextureStageState( 0, D3DTSS_MINFILTER, dwMin1 );
    pD3DDevice->SetTextureStageState( 0, D3DTSS_MAGFILTER, dwMag1 );

    // Disable texture stages1, 2 and 3
    for( int i = 1; i < 4; ++i ){
        pD3DDevice->SetTexture( i, NULL );
        pD3DDevice->SetTextureStageState( i, D3DTSS_COLOROP, D3DTOP_DISABLE );
        pD3DDevice->SetTextureStageState( i, D3DTSS_ALPHAOP, D3DTOP_DISABLE );
 
    }
    // Render the screen-aligned quadrilateral
    pD3DDevice->SetVertexShader( D3DFVF_XYZRHW|D3DFVF_TEX1 );
    pD3DDevice->DrawPrimitiveUP( D3DPT_QUADSTRIP, 1, v, sizeof(VERTEX) );

    // Reset render states
    pD3DDevice->SetRenderState( D3DRS_ALPHATESTENABLE, FALSE );
    pD3DDevice->SetRenderState( D3DRS_ALPHABLENDENABLE, FALSE );
    pD3DDevice->SetRenderState( D3DRS_ZENABLE, TRUE );
    pD3DDevice->SetTexture( 0, NULL );
    pD3DDevice->SetTexture( 1, NULL );
    pD3DDevice->SetTexture( 2, NULL );
    pD3DDevice->SetTexture( 3, NULL );
    
}

//////////////////////////////////////////////////////////////////////
// Calculate offsets and slope to map given z range to 0,1 in
// the depth and focus pixel shaders.
//
void CalculateDepthMapping(float fDepth0,
                           float fDepth1,
                           float *pfAlphaOffset,
                           float *pfAlphaSlope, 
                           float *pfBlueOffset,
                           float *pfBlueSlope)
{
    // check range of args
    if (fDepth0 < 0.f) fDepth0 = 0.f;
    if (fDepth0 > 1.f) fDepth0 = 1.f;
    if (fDepth1 < 0.f) fDepth1 = 0.f;
    if (fDepth1 > 1.f) fDepth1 = 1.f;
    if (fDepth1 < fDepth0)
    {
        // swap depth to make fDepth0 <= fDepth1
        float t = fDepth1;
        fDepth1 = fDepth0;
        fDepth0 = t;
    }
    
    // calculate quantized values
    float fAlpha0, fBlue0;
    float fQuantizedDepth0 = FQuantizedDepth(fDepth0, &fAlpha0, &fBlue0);
    float fAlpha1, fBlue1;
    float fQuantizedDepth1 = FQuantizedDepth(fDepth1, &fAlpha1, &fBlue1);

    // calculate offset and slopes
    float fScale = 1.f / (fQuantizedDepth1 - fQuantizedDepth0);
    if (fScale > maximumSlope)
    {
        fScale = maximumSlope; // this is the steepest slope we can handle
        fDepth0 = 0.5f * (fDepth0 + fDepth1) - 0.5f / fScale; // move start so that peak is in middle of fDepth0 and fDepth1
        fDepth1 = fDepth0 + 1.f / fScale;
        fQuantizedDepth0 = FQuantizedDepth(fDepth0, &fAlpha0, &fBlue0);
        fQuantizedDepth1 = FQuantizedDepth(fDepth1, &fAlpha1, &fBlue1);
    }
    *pfAlphaOffset = fAlpha0;
    *pfAlphaSlope = fScale / maximumSlope;
    *pfBlueSlope = fScale * (1.f/255.f); // blue ramp adds more levels to the ramp

    // align peak of map to center by calculating the quantized alpha value
    /*
    *pfBlueOffset = 0.5f;   // zero biased up by 0.5f
    float fZeroDesired = (fQuantizedDepth0 - fDepth0) / (fDepth1 - fDepth0);
    float fZero = FUnitMap(fAlpha0, fBlue0, *pfAlphaOffset, *pfAlphaSlope, *pfBlueOffset, *pfBlueSlope);
    float fOneDesired = (fQuantizedDepth1 - fDepth0) / (fDepth1 - fDepth0);
    float fOne = FUnitMap(fAlpha1, fBlue1, *pfAlphaOffset, *pfAlphaSlope, *pfBlueOffset, *pfBlueSlope);
    *pfBlueOffset = 0.5f * (fZeroDesired-fZero + fOneDesired-fOne) + 0.5f;  // biased up by 0.5f
    */
    *pfBlueOffset = fBlue0;
}

float FQuantizedDepth(float fDepth, float *pfAlpha, float *pfBlue)
{
    float fDepth16 = fDepth * (float)(1 << 16);
    DWORD dwDepth16 = (DWORD)(fDepth16 /*+ 0.5f*/);
    *pfAlpha = (dwDepth16 >> 8) * (1.f / 255.f);
    *pfBlue = (dwDepth16 & 0xff) * (1.f / 255.f);
    return (float)dwDepth16 / (float)(1 << 16);
}
