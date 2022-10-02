/*===========================================================================
    $Workfile:: ddsurf.cpp           $
    $Revision:: 77                   $
    $Author:: Neall                  $
    25-Aug-97 Created by Neall

    PDDI DirectDraw surface, and display classes

    Copyright (c)1997, 1998, 1999 Radical Entertainment, Inc.
    All rights reserved.
===========================================================================*/
#include "display.hpp"
#include "util.hpp"
#include "../base/debug.hpp"

#include <math.h>
#include <stdio.h>

#include "../../../radcore/inc/radtime.hpp"

_int64 vBlankTime = 0;
_int64 lastSwap = 0;

void __cdecl VBlankCallback(D3DVBLANKDATA *pData)
{
    vBlankTime = radTimeGetMicroseconds64();
}

//------------------------------------------------------------------------
d3dDisplay::d3dDisplay(LPDIRECT3D8 d)
{
    d3d = d;
    d3dDevice = NULL;

    backBuffer = NULL;

    nColourBuffer = 2;
    bufferMask = PDDI_BUFFER_COLOUR;
    displayHeight = 0;
    displayWidth = 0;
    displayDepth = 0;
    reset = false;
    lockToVsync = false;
	m_ForceVSync = false;
    asyncSwap = true;

    gammaR = 1.0f;
    gammaG = 1.0f;
    gammaB = 1.0f;
    
    d3d->GetDeviceCaps(0, D3DDEVTYPE_HAL, &d3dCaps);
    
    snapshot = NULL;

    widescreen = false;
}


d3dDisplay::~d3dDisplay()
{
    if(d3dDevice)
    {
        d3dDevice->Release();
    }

    if(snapshot)
    {
        snapshot->Release();
    }
}

//------------------------------------------------------------------------
bool d3dDisplay::InitDisplay(int x, int y, int bpp)
{
    // check we are not trying to init to the same resolution
    if((x == displayWidth) &&  (y == displayHeight) && (bpp == displayDepth))
    {
        return true;
    }

    // fill in the relevent portions of the casced display init structure
    displayInit.xsize = x;
    displayInit.ysize = y;
    displayInit.bpp = bpp;

    // do the full init
    return InitDisplay(&displayInit);
}

// HDTV support stuff, blatently stonlen from XDK samples
// Only the hungarian notation has been changed to protect the innocent

typedef struct {
    int  width;
    int  height;
    bool progressive;
    bool widescreen;
} DISPLAY_MODE;

DISPLAY_MODE sDisplayModes[] =
{
//    Width  Height Progressive Widescreen
    {  1920,   1080,    FALSE,  TRUE },         // 1920x1080 interlaced 16x9 
    {  1280,    720,    TRUE,   TRUE },         // 1280x720 progressive 16x9
    {   720,    480,    TRUE,   TRUE },         // 720x480 progressive 16x9
    {   640,    480,    TRUE,   TRUE },         // 640x480 progressive 16x9
    {   720,    480,    FALSE,  TRUE },         // 720x480 interlaced 16x9
    {   640,    480,    FALSE,  TRUE },         // 640x480 interlaced 16x9
    //{   720,    480,    TRUE,   FALSE },        // 720x480 progressive 4x3
    {   640,    480,    TRUE,   FALSE },        // 640x480 progressive 4x3
    //{   720,    480,    FALSE,  FALSE },        // 720x480 interlaced 4x3
    {   640,    480,    FALSE,  FALSE },        // 640x480 interlaced 4x3
};

const unsigned NUM_MODES = ( sizeof( sDisplayModes) / sizeof( sDisplayModes[0] ) );


//-----------------------------------------------------------------------------
// Name: SupportsMode
//
// Desc: Returns true if we can support the given mode, based off the
//       currently plugged in AV pack and video flags
//-----------------------------------------------------------------------------
bool SupportsMode( unsigned mode )
{
    static unsigned flags = 0xffffffff;

    if(flags == 0xffffffff)
        flags = XGetVideoFlags();

    // Need to check for widescreen on 480 sDisplayModes[mode]s only - 
    // 720p and 1080i are by definition widescreen.
    if( sDisplayModes[mode].height == 480 && sDisplayModes[mode].widescreen && !(flags & XC_VIDEO_FLAGS_WIDESCREEN ) )
        return FALSE;

    // Explicit check for 480p
    if( sDisplayModes[mode].height == 480 && sDisplayModes[mode].progressive && !(flags & XC_VIDEO_FLAGS_HDTV_480p) )
        return FALSE;

    // Explicit check for 720p (only 720 sDisplayModes[mode])
    if( sDisplayModes[mode].height == 720 && !(flags & XC_VIDEO_FLAGS_HDTV_720p) )
        return FALSE;

    // Explicit check for 1080i (only 1080 sDisplayModes[mode])
    if( sDisplayModes[mode].height == 1080 && !(flags & XC_VIDEO_FLAGS_HDTV_1080i) )
        return FALSE;

    return TRUE;
}


bool d3dDisplay::InitDisplay(const pddiDisplayInit* init)
{
    unsigned hdtvFlags = 0;
    displayInit = *init;

    if(displayInit.allowHDTV)
    {
        unsigned useMode = 0;
        bool done = false;

        while(!done && (useMode < NUM_MODES))
        {
            if(SupportsMode( useMode ) && 
            (sDisplayModes[useMode].height <= displayInit.ysize) &&
            (sDisplayModes[useMode].width <= displayInit.xsize) &&
            ((sDisplayModes[useMode].widescreen && displayInit.allowWidescreen) || !sDisplayModes[useMode].widescreen))
            {
                done = true;
                displayInit.xsize = sDisplayModes[useMode].width;
                displayInit.ysize = sDisplayModes[useMode].height;
                hdtvFlags = sDisplayModes[ useMode ].progressive ? D3DPRESENTFLAG_PROGRESSIVE : D3DPRESENTFLAG_INTERLACED;
                hdtvFlags |= sDisplayModes[ useMode ].widescreen ? D3DPRESENTFLAG_WIDESCREEN : 0;
                widescreen = sDisplayModes[ useMode ].widescreen;
            }
            else
            {
                useMode++;
            }
        }

        if(!done)
        {
            displayInit.xsize = 640;
            displayInit.ysize = 480;
        }
    }
    else
    {
        displayInit.xsize = 640;
        displayInit.ysize = 480;
    }
    
    int x = displayInit.xsize;
    int y = displayInit.ysize;
    int bpp = displayInit.bpp;
    int colourBufferCount = 1;
    unsigned bufMask = displayInit.bufferMask;
    unsigned antiAlias = displayInit.antiAlias | displayInit.preFilter;
    lockToVsync = displayInit.lockToVsync;
    asyncSwap = displayInit.asyncSwap;

    nColourBuffer = colourBufferCount;
    bufferMask = bufMask;
    displayDepth = bpp;
    displayWidth = x;
    displayHeight = y;

    colourBufferFormat = (displayDepth == 32) ? D3DFMT_A8R8G8B8 : D3DFMT_R5G6B5;
    if (displayDepth == 32)
    {
        depthBufferFormat = D3DFMT_D24S8;
    }
    else
    {
        depthBufferFormat = (bufferMask & PDDI_BUFFER_STENCIL) ? D3DFMT_D24S8 : D3DFMT_D16;
    }
    ZeroMemory( &d3dpp, sizeof(d3dpp) );
    d3dpp.Windowed               = false;
    d3dpp.SwapEffect             = D3DSWAPEFFECT_DISCARD;
    d3dpp.BackBufferCount        = nColourBuffer ;
    d3dpp.MultiSampleType        = D3DMULTISAMPLE_TYPE(antiAlias);
    d3dpp.EnableAutoDepthStencil = TRUE;
    d3dpp.AutoDepthStencilFormat = depthBufferFormat;
    d3dpp.hDeviceWindow          = NULL;
    d3dpp.BackBufferWidth        = displayWidth;
    d3dpp.BackBufferHeight       = displayHeight;
    d3dpp.BackBufferFormat       = colourBufferFormat;
    d3dpp.FullScreen_RefreshRateInHz = D3DPRESENT_RATE_DEFAULT;
    d3dpp.FullScreen_PresentationInterval = lockToVsync ? D3DPRESENT_INTERVAL_ONE : D3DPRESENT_INTERVAL_IMMEDIATE;
    d3dpp.Flags = hdtvFlags;

    if(d3dDevice)
    {
        int rc = d3dDevice->Reset(&d3dpp);
        reset = true;
    }
    else
    {
        unsigned int behavior = D3DCREATE_HARDWARE_VERTEXPROCESSING;// | D3DCREATE_PUREDEVICE;
        d3d->SetPushBufferSize(2048 * 1024, 16 * 1024);
        DDVERIFY(d3d->CreateDevice( 0, D3DDEVTYPE_HAL, NULL, behavior, &d3dpp, &d3dDevice ));
    }

    d3dDevice->GetGammaRamp(&initialGammaRamp);

    LPDIRECT3DSURFACE8 pRenderTarget;
    d3dDevice->GetRenderTarget(&pRenderTarget);
    D3DSURFACE_DESC descRenderTarget;
    pRenderTarget->GetDesc(&descRenderTarget);

    rtWidth = descRenderTarget.Width;
    rtHeight = descRenderTarget.Height;

    if(init->enableSnapshot)
    {
    
        DDVERIFY(d3dDevice->CreateTexture(descRenderTarget.Width, descRenderTarget.Height, 1, D3DUSAGE_RENDERTARGET, descRenderTarget.Format, D3DPOOL_DEFAULT, &snapshot));

        pRenderTarget->Release();
    }

    d3dDevice->SetVerticalBlankCallback(VBlankCallback);

    return d3dDevice != NULL;
}

bool d3dDisplay::HasReset(void)
{
    return reset;
}

//------------------------------------------------------------------------
void d3dDisplay::SwapBuffers(void)
{
    reset = false;

    if ( m_ForceVSync )
    {
        if(m_only60)
        {
            d3dDevice->BlockUntilIdle();

            if(lastSwap >= vBlankTime)
            {
                d3dDevice->BlockUntilVerticalBlank();
            }
        }
        else
        {
            d3dDevice->BlockUntilVerticalBlank();
        }
    }

    lastSwap = radTimeGetMicroseconds64();
    int rc = d3dDevice->Present(0,0,0,0);

    // swap is async by default, block if we don't want that
    if(!asyncSwap)
    {
        d3dDevice->BlockUntilIdle();
    }
}

//------------------------------------------------------------------------
unsigned d3dDisplay::Screenshot(pddiColour* buffer, int nBytes)
{
    pddiRect rect; 
    rect.top = 0;
    rect.left = 0;
    rect.bottom = displayHeight;
    rect.right = displayWidth;
    return Screenshot(buffer, nBytes, rect);
}

void d3dDisplay::Snapshot(void)
{
    if(snapshot)
    {
        LPDIRECT3DSURFACE8 renderTarget;
        LPDIRECT3DSURFACE8 snapshotSurface;
        d3dDevice->GetRenderTarget(&renderTarget);
        snapshot->GetSurfaceLevel(0, &snapshotSurface);

        d3dDevice->CopyRects(renderTarget, NULL, 0, snapshotSurface, NULL); 

        renderTarget->Release();
        snapshotSurface->Release();
    }
}

unsigned d3dDisplay::Screenshot(pddiColour* buffer, int nBytes, const pddiRect& rectangle, pddiBuffer source)
{

    // define the areas to copy
    POINT point = {0,0};
    RECT rect; 
    rect.top = rectangle.top;
    rect.left = rectangle.left;
    rect.bottom = rectangle.bottom;
    rect.right = rectangle.right;

    int width = rect.right - rect.left;
    int height = rect.bottom - rect.top;

    PDDIASSERT(nBytes >= width * height * 4);

    // create a temp destination buffer the size of the whole screen
    // it'll be in a fixed format we can copy easily
    LPDIRECT3DSURFACE8 dest;
    DDVERIFY( d3dDevice->CreateImageSurface( width, height, D3DFMT_LIN_A8R8G8B8, &dest ) );

    int sourceBuf;
    switch( source )
    {
        case PDDI_BUFFER_FRONT:
            sourceBuf = -1;
            break;
        case PDDI_BUFFER_BACK:
            sourceBuf = 0;
            break;
    }

    // grab the back buffer
    LPDIRECT3DSURFACE8 src;
    DDVERIFY( d3dDevice->GetBackBuffer( sourceBuf, D3DBACKBUFFER_TYPE_MONO, &src) );

    // suck the bits out of the back buffer
    HRESULT res = d3dDevice->CopyRects( src, &rect, 1, dest, &point );

    // copy the bits across to the supplied colour buffer
    D3DLOCKED_RECT lock;
    DDVERIFY( dest->LockRect( &lock, NULL, D3DLOCK_READONLY ) );

    unsigned char* scanline = (unsigned char*)lock.pBits;
    pddiColour* walk = buffer;

    for( int i = 0; i < height; i++ )
    {
        memcpy( walk, scanline, width * 4 );
        walk += width;
        scanline += lock.Pitch;
    }
    
    // clean up
    dest->UnlockRect();
    dest->Release();
    src->Release();

    return displayWidth*displayHeight*4;
}

//------------------------------------------------------------------------
unsigned d3dDisplay::GetFreeVideoMem()
{
    return 0; // TODO : remove
}

//------------------------------------------------------------------------
unsigned d3dDisplay::GetFreeTextureMem()
{
    return 0;//d3dDevice->GetAvailableTextureMem();
}

void d3dDisplay::GetGamma(float* r, float* g, float* b)
{
    *r = gammaR;
    *g = gammaG;
    *b = gammaB;
}

void d3dDisplay::SetGamma(float r, float g, float b)
{
    gammaR = r;
    gammaG = g;
    gammaB = b;

    D3DGAMMARAMP gamma;

    double igr = 1.0 / (double)r;
    double igg = 1.0 / (double)g;
    double igb = 1.0 / (double)b;

    const double n = 1.0 / 256.0;

    for(int i=0; i < 256; i++)
    {
        double gcr = pow((double)initialGammaRamp.red[i]   * n, igr);
        double gcg = pow((double)initialGammaRamp.green[i] * n, igg);
        double gcb = pow((double)initialGammaRamp.blue[i]  * n, igb);

        gamma.red[i] =   (BYTE)(256.0 * __min(1.0, gcr));
        gamma.green[i] = (BYTE)(256.0 * __min(1.0, gcg));
        gamma.blue[i] =  (BYTE)(256.0 * __min(1.0, gcb));
    }

    d3dDevice->SetGammaRamp(D3DSGR_CALIBRATE, &gamma);
}
