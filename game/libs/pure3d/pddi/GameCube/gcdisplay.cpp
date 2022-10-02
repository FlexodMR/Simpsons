//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


#include <pddi/gamecube/gcdisplay.hpp>
#include <pddi/gamecube/gccon.hpp>
#include <pddi/gamecube/mallocaligned.hpp>
#include <pddi/base/debug.hpp>
#include <pddi/base/font.hpp>

#include <stdio.h>
#include <string.h>
#include <math.h>
#include <stdio.h>

#include <radmemory.hpp>

#include <dolphin.h>
#include <dolphin/vi.h>

#include <../../radcore/inc/radtime.hpp>

// Vertical Filters must total 64 for unity gain
static unsigned char FrameVFilter[7]   = { 2, 8, 12, 20, 12, 8, 2 };
static unsigned char FieldVFilter[7]   = { 2, 8, 12, 20, 12, 8, 2 };
static unsigned char FieldAAVFilter[7] = { 2, 8, 12, 20, 12, 8, 2 };

//static unsigned char FrameVFilter[7]   = { 4, 8, 12, 16, 12, 8, 4 }; // Nintendo default
//static unsigned char FieldAAVFilter[7] = { 4, 8, 12, 16, 12, 8, 4 }; // Nintendo default

static unsigned char NonAASamplePattern[12][2] = { { 6, 6 }, { 6, 6 }, { 6, 6 },   // Pixel 00
                                                   { 6, 6 }, { 6, 6 }, { 6, 6 },   // Pixel 01
                                                   { 6, 6 }, { 6, 6 }, { 6, 6 },   // Pixel 10
                                                   { 6, 6 }, { 6, 6 }, { 6, 6 } }; // Pixel 11

static unsigned char AASamplePattern[12][2] = { { 3, 2 }, {  9, 6 },  {  3, 10 },   // Pixel 00
                                                { 3, 2 }, {  9, 6 },  {  3, 10 },   // Pixel 01
                                                { 9, 2 }, {  3, 6 },  {  9, 10 },   // Pixel 10
                                                { 9, 2 }, {  3, 6 },  {  9, 10 } }; // Pixel 11

gcDisplay *gcDisplay::gCurrentDisplay = NULL;

//#define ENABLE_USB_SCREENSHOT  //Use this if you want to use the USB device for screen shots.
#ifdef ENABLE_USB_SCREENSHOT
#ifdef __cplusplus
extern "C" {
#endif

// access to the memory allocator of choice
typedef void*(*SCREENSHOTAllocator)   ( u32 size      );
typedef void (*SCREENSHOTDeallocator) ( void* block   );


void SCREENSHOTService( void* bufferXFB, 
						SCREENSHOTAllocator allocator, 
						SCREENSHOTDeallocator deallocator );


#ifdef __cplusplus
}
#endif

static void* MyAlloc( u32 size )
{
    void* memory = radMemoryAlloc(RADMEMORY_ALLOC_TEMP, size);
	return( memory );
}

static void MyFree( void* block )
{
	radMemoryFree(RADMEMORY_ALLOC_TEMP, block);
}
#endif

radTime64 vBlankTime = 0;
radTime64 lastSwap = 0;

void VBlankCallback(u32 retraceCount)
{
    vBlankTime = radTimeGetMicroseconds64();
}

//*******************************************
//
// Class gcDisplay
//
//
gcDisplay::gcDisplay()
{
    mContext = NULL;

    mFifo           = NULL;
    mFifoBuffer     = NULL;
    mFifoBufferSize = 0;

    mXFB      = NULL;
    mXFBSize  = 0;
    mResetXFB = false;

    mClearOnBlit = false;

    mDisplayWidth  = 0;
    mDisplayHeight = 0;
    mDestAlpha     = false;
    mPal           = false;
    mAntialiasing  = false;
    mProgressive   = false;
    mLockToVsync   = false;

    gCurrentDisplay = this;

	m_ForceVSync = false;
}

//*******************************************
//
// Class gcDisplay
//
//
gcDisplay::~gcDisplay()
{
    freealigned(mFifoBuffer);
    freealigned(mXFB);

    mContext = NULL;

    mFifo           = NULL;
    mFifoBuffer     = NULL;
    mFifoBufferSize = 0;

    mXFB      = NULL;
    mXFBSize  = 0;
    mResetXFB = false;

    mDisplayWidth  = 0;
    mDisplayHeight = 0;
    mDestAlpha     = false;
    mPal           = false;
    mAntialiasing  = false;
    mProgressive   = false;

}


//*******************************************
//
// Class gcDisplay
//
//
bool gcDisplay::InitDisplay(int x, int y, int bpp)
{

    bool initxfb = false;
//    if ((mDisplayWidth != x) || (mDisplayHeight != y)) initxfb = true;

    mDisplayWidth  = x;
    mDisplayHeight = y;

    return InitDisplayInternal(initxfb);
}


//*******************************************
//
// Class gcDisplay
//
//
bool gcDisplay::InitDisplay(const pddiDisplayInit *init)
{
    bool initxfb = false;

    if (init == NULL) return false;    

    if (init->xsize != mDisplayHeight) initxfb = true;

    mDisplayWidth  = init->xsize;
    mDisplayHeight = init->ysize;

    mDestAlpha    = ((init->bufferMask & PDDI_BUFFER_STENCIL) != 0);
    mPal          = init->pal;
    mFieldMode    = init->fieldmode;
    mAntialiasing = init->aa;
    mProgressive  = init->progressive;
    mLockToVsync  = init->lockToVsync;

    // GC cannot have antialiasing & destination alpha on at the same time
    if (mFieldMode) mDestAlpha = false;
    if (mDestAlpha) mAntialiasing = false;
	
    return InitDisplayInternal(initxfb);
}



bool gcDisplay::InitDisplayInternal(bool initxfb)
{
    if (mFifo == NULL)
    {
        mFifoBufferSize = 1024 * 256; // Must be a multiple of 32 bytes
        mFifoBuffer = (unsigned char *)mallocaligned(mFifoBufferSize, 32);
        mFifo = GXInit(mFifoBuffer, mFifoBufferSize);
    }

    int viHeight = mDisplayHeight * (mFieldMode ? 2 : 1);
    int xfbheight = (mPal ? 574 : 480) / (mFieldMode ? 2 : 1);

    if (initxfb)
    {
        VIInit();

        if ( mXFB != NULL )
        {
            rAssert( mXFBSize >= mDisplayWidth * xfbheight * 2 );
        }

        mXFBSize = mDisplayWidth * xfbheight * 2;

        if (mXFB == NULL)
        {
//            freealigned(mXFB);
            // Create the External Frame Buffer and point the VI hardware to it
            // Main memory FB is ALWAYS 4:2:2 YUV 16Bpp
            mXFB = (unsigned char *)mallocaligned(mXFBSize, 32);
            //FillXFB(0, 0, 0);
        }

        VISetNextFrameBuffer(mXFB);
        //VISetBlack(false); 
    }
    else
    {
        //VIInit();

        // Create the External Frame Buffer and point the VI hardware to it
        // Main memory FB is ALWAYS 4:2:2 YUV 16Bpp
        mXFBSize = mDisplayWidth * xfbheight * 2;

        VISetNextFrameBuffer(mXFB);
        //VISetBlack(false); 
    }

    // Setup the Videomode
    int format = mPal ? VI_PAL : VI_NTSC;
    int interlace = VI_INTERLACE;
    //if (mFieldMode) interlace = VI_INTERLACE;
    if (mProgressive && !mPal) interlace = VI_PROGRESSIVE;

    mRenderMode.viTVmode  = (VITVMode) VI_TVMODE(format, interlace);
    mRenderMode.fbWidth   = mDisplayWidth; 
    mRenderMode.efbHeight = mDisplayHeight;
    mRenderMode.xfbHeight = xfbheight;
/*
	if ( mPal )
	{
	    mRenderMode.viXOrigin = 48;
	    mRenderMode.viYOrigin = 0;
	}
	else
*/
	{
	    mRenderMode.viXOrigin = 40; // = (720 - 640) / 2
	    mRenderMode.viYOrigin = 0;
	}

    mRenderMode.viWidth   = 640;
    mRenderMode.viHeight  = xfbheight * (mFieldMode ? 2: 1);
    mRenderMode.xFBmode   = (mProgressive || mFieldMode) ? VI_XFBMODE_SF : VI_XFBMODE_DF;
    mRenderMode.aa        = mAntialiasing;
    mRenderMode.field_rendering = mFieldMode;

    if (mAntialiasing) memcpy(mRenderMode.sample_pattern, AASamplePattern, 24);
    else               memcpy(mRenderMode.sample_pattern, NonAASamplePattern, 24);

    if (!mFieldMode) memcpy(mRenderMode.vfilter, FrameVFilter, 7);
    else
    {
        if (mAntialiasing) memcpy(mRenderMode.vfilter, FieldAAVFilter, 7);
        else               memcpy(mRenderMode.vfilter, FieldVFilter, 7);
    }

    VIConfigure(&mRenderMode);
    VISetPreRetraceCallback( VBlankCallback );
    VIFlush();
    VIWaitForRetrace();

    // Setup seemingly duplicate copy filter settings
    GXSetCopyFilter(mAntialiasing, mRenderMode.sample_pattern, true, mRenderMode.vfilter); 

    GXPixelFmt         pix = GX_PF_RGB8_Z24;
    if (mDestAlpha)    pix = GX_PF_RGBA6_Z24;
    if (mAntialiasing) pix = GX_PF_RGB565_Z16;

    GXSetPixelFmt(pix, GX_ZC_LINEAR);
    GXSetDither(mDestAlpha);

    // Make all of our changes happen
    VIFlush();
    VIWaitForRetrace();

    // flush the frame buffer twice to clear out the garbage
    mClearOnBlit = true;
    GXColor cc = { 0, 0, 0, 0 };
    GXDrawDone();
    GXSetCopyClear(cc, 0x00FFFFFF);
    SwapBuffers();
    GXDrawDone();
    SwapBuffers();
    GXDrawDone();
    mClearOnBlit = false;

    // setup the scale for the pddiFont
    if (mFieldMode) pddiFont::SetScale(1.0, 0.5F);
    else            pddiFont::SetScale(1.0, 1.0F);

    // Turn down the stupid warnings from the debug lib
#ifndef NDEBUG
//    GXSetVerifyLevel(GX_WARN_MEDIUM);
//  GXSetVerifyLevel(GX_WARN_ALL);
#endif

    return false;
}


//*******************************************
//
// Class gcDisplay
//
//
int gcDisplay::GetWidth(void)
{
    return mDisplayWidth;
}

//*******************************************
//
// Class gcDisplay
//
//
int gcDisplay::GetHeight(void)
{
    return mDisplayHeight;
}

//*******************************************
//
// Class gcDisplay
//
//
int gcDisplay::GetDepth(void)
{
    return 32;
}        



//*******************************************
//
// Class gcDisplay
//
//
unsigned gcDisplay::GetFreeTextureMem()
{
    return unsigned(-1);
}

//*******************************************
//
// Class gcDisplay
//
//
unsigned gcDisplay::GetBufferMask()
{
    return unsigned(-1);
}


//*******************************************
//
// Class gcDisplay
//
//
pddiDisplayMode gcDisplay::GetDisplayMode(void)
{
    return PDDI_DISPLAY_FULLSCREEN;
}

//*******************************************
//
// Class gcDisplay
//
//
int gcDisplay::GetNumColourBuffer(void)
{
    return 2;
}


//*******************************************
//
// Class gcDisplay
//
//
void gcDisplay::SwapBuffers(void)
{
    GXDrawDone();
    GXPixModeSync();
    int xfbheight = (mPal ? 574 : 480) / (mFieldMode ? 2 : 1);
    GXSetDispCopySrc(0, 0, mDisplayWidth, mDisplayHeight);
    GXSetDispCopyDst(mDisplayWidth, xfbheight);
    int nlines = GXSetDispCopyYScale((float)xfbheight / (float) mDisplayHeight); 
    if (nlines > xfbheight)
    {
        nlines = GXSetDispCopyYScale((float)xfbheight / (float) (mDisplayHeight + 1)); 
    }

    //
    // [ps] Force lock to vsync
    //
    if ( mLockToVsync || m_ForceVSync )
    {
        if ( m_ForceVSync )
        {
            if(m_only60)
            {
                GXWaitDrawDone();

                if(lastSwap >= vBlankTime)
                {
                    VIWaitForRetrace();
                }
            }
            else
            {
                VIWaitForRetrace();
            }
        }
    }
    //GXSetDispCopyGamma(GX_GM_2_2);

#ifdef ENABLE_USB_SCREENSHOT
    //Screenshot stuff.
    SCREENSHOTService( mXFB, MyAlloc, MyFree );
#endif
    GXCopyDisp(mXFB, mClearOnBlit);   

    //
    // [ps] Make sure everything is finished!
    //
    if( m_ForceVSync )
    {
//        GXDrawDone();        
//        GXPixModeSync();
    }

    // for movie player compatability
    if (mResetXFB)
    {
        VISetNextFrameBuffer(mXFB);
        VIFlush();
        mResetXFB = false;  
    }

    lastSwap = radTimeGetMicroseconds64();
}
    
//*******************************************
//
// Class gcDisplay
//
//
unsigned gcDisplay::Screenshot(pddiColour* buffer, int nBytes)
{

    if (nBytes < GetWidth() * GetHeight() * 4) return 0;

    DCInvalidateRange(mXFB, GetWidth() * GetHeight() * 2);

    int y;
    for (y = 0; y < GetHeight(); y++)
    {
        int x;
        for (x = 0; x < GetWidth(); x += 2)
        {
            int offseteven = x * 2 + (y * GetWidth() * 2);

            float y0 = (float) mXFB[offseteven + 0];
            float y1 = (float) mXFB[offseteven + 2];
            float u  = (float) mXFB[offseteven + 1];
            float v  = (float) mXFB[offseteven + 3];
           
            float r0 = 1.164F * (y0 - 16.0F) + 1.596F * (v - 128.0F);
            float g0 = 1.164F * (y0 - 16.0F) - 0.813F * (v - 128.0F) - 0.391F * (u - 128.0F);
            float b0 = 1.164F * (y0 - 16.0F) + 2.018F * (u - 128.0F);

            float r1 = 1.164F * (y1 - 16.0F) + 1.596F * (v - 128.0F);
            float g1 = 1.164F * (y1 - 16.0F) - 0.813F * (v - 128.0F) - 0.391F * (u - 128.0F);
            float b1 = 1.164F * (y1 - 16.0F) + 2.018F * (u - 128.0F);

            if (r0 < 0.0F) r0 = 0.0F;
            if (g0 < 0.0F) g0 = 0.0F;
            if (b0 < 0.0F) b0 = 0.0F;
            if (r1 < 0.0F) r1 = 0.0F;
            if (g1 < 0.0F) g1 = 0.0F;
            if (b1 < 0.0F) b1 = 0.0F;

            if (r0 > 255.0F) r0 = 255.0F;
            if (g0 > 255.0F) g0 = 255.0F;
            if (b0 > 255.0F) b0 = 255.0F;
            if (r1 > 255.0F) r1 = 255.0F;
            if (g1 > 255.0F) g1 = 255.0F;
            if (b1 > 255.0F) b1 = 255.0F;


            pddiColour c0((unsigned char)r0, (unsigned char)g0, (unsigned char)b0, 255);
            pddiColour c1((unsigned char)r1, (unsigned char)g1, (unsigned char)b1, 255);


            buffer[0 + x + (y * GetWidth())] = c0;
            buffer[1 + x + (y * GetWidth())] = c1;
        }
    }        

    return GetWidth() * GetHeight() * 4;
}


//*******************************************
//
// Class gcDisplay
//
//
int gcDisplay::GetNextField(void)
{
    if (!mFieldMode) return 0;
    return VIGetNextField();
}


//*******************************************
//
// Class gcDisplay
//
//
void gcDisplay::ForceXFBReset(void)
{
    mResetXFB = true;
}



//*******************************************
//
// Class gcDisplay
//
//
void gcDisplay::FillXFB(unsigned char r, unsigned char g, unsigned char b)
{
}


//*******************************************
//
// Class gcDisplay
//
//
gcDisplay *gcDisplay::CurrentDisplay(void)
{
    return gCurrentDisplay;
}

