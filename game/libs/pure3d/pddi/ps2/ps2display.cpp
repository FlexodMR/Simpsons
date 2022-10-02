/*===========================================================================
   ps2display.cpp
   15-Nov-99 Created by Gabriel
   21-Dec-01 Heavily modified by Amit

   Copyright (c)1999 Radical Entertainment, Inc.
   All rights reserved.
===========================================================================*/

#include <pddi/ps2/ps2display.hpp>
#include <pddi/ps2/ps2context.hpp>
#include <pddi/ps2/mfifo.hpp>
#include <pddi/ps2/ps2vram.hpp>
#include <pddi/ps2/ps2memalign.hpp>
#include <pddi/ps2/external/dma.hpp>
#include <pddi/ps2/external/gamma.hpp>
#include <pddi/base/debug.hpp>
#include <pddi/ps2/ps2buildconfig.hpp>
#include <pddi/ps2/ps2perfcounter.hpp>
#include <pddi/ps2/ee.hpp>

#include <string.h>
#include <limits.h>
#include <eekernel.h>
#include <libdma.h>
#include <libpkt.h>


#include <string.h>
#include <limits.h>
#include <eekernel.h>
#include <libdma.h>
#include <libpkt.h>

struct gsMemoryMap
{
    // addresses are in pages
    unsigned frame0;
    unsigned frame1;
    unsigned zbuf;
    unsigned texmem;
};

// mixed mode 16/32
// laid out like so
// 8kb / page
// 16bit fb -  70 pages
// 32bit bb - 140 pages
// 32bit zb - 140 pages
// textures - 162 pages
static const gsMemoryMap mixedNTSC = {
    0, 70,210,350 // 32 bit z
};

static const gsMemoryMap mixedPAL = {
    0, 80,240,400
};

// 
static const gsMemoryMap mixedDTV480 = {
    //0, 90,270,450 // 720*480 - not supported ATM
    0, 70,210,350   // 640x448
};

//**********************************************************************
// GS privleged registers for 2-circuit deflicker
typedef struct
{
   tGS_PMODE    PMODE;
   tGS_SMODE2   SMODE2;
   tGS_DISPFB1  DISPFB1;  // read circuit 1
   tGS_DISPLAY1 DISPLAY1;
   tGS_DISPFB2  DISPFB2;  // read circuit 2
   tGS_DISPLAY2 DISPLAY2;
} GSPrivReg __attribute__((aligned(16)));

typedef struct gsFrame1 
{
   unsigned dmaTag[4];

   sceGifTag giftag;

   sceGsFrame frame1;
   u_long frame1addr;
   
   sceGsZbuf zbuf1;
   u_long zbuf1addr;
   
   sceGsXyoffset xyoffset1;
   u_long xyoffset1addr;

   u_long dthe;
   u_long dtheAddr;
   
   u_long colclamp;
   u_long colclampAddr;
  
   u_long finish;
   u_long finishaddr;
};

// front and back buffers
static GSPrivReg gsPrivReg[2];
static gsFrame1 buffer0;
static gsFrame1 buffer1;

static tGS_DISPFB1 dispTexMem;
static tGS_DISPFB1 dispZbuffer;
static ps2Display* g_display = 0; // aug8/2002 amb - this needs to be volatile if vblank handler is enabled!!
static u_int lastSwap = 0;

//--------------------------------------------------------------------
ps2Display::ps2Display() : 
    swapQueued(false), 
    context(NULL),
    memoryMap(NULL),    
    dispMode(0),
    width(0), height(0), depth(0),
    bufferFormat(0), zBufferFormat(0), zBufferAddress(0),
    frameNum(0),    
    start(0), end(0),
    initialized(false),
    lockToVsync(false)
{ 
    DisableIntc(INTC_VBLANK_S);
    g_display = this;
	m_ForceVSync = false;
}

ps2Display::~ps2Display()
{
    /* nop */
}

void ps2Display::ReallySwapBuffers()
{
    frameNum++;

    context->GetVram()->SetCurrentDrawFrame(frameNum);

    const gsFrame1* frame = GetCurrentFrame();
    const int src = frame->frame1.FBP * 32;

    context->PreSwapProcess( src, frameNum & 1 );
    ps2Vram* vram = context->GetVram();
    vram->BlitBackToFront();

    // swap frame buffer pointers by sending a display list via path 2 through
    // the MFIFO, then wait for the GS to process our FINISH signal request
    *GS_CSR |= 2;  // enable GS FINISH signal
    
    ps2MFIFO* mfifo = context->GetMFIFO();
    unsigned* dma = mfifo->GetBuffer();
    EE::QwordCopy(dma, (void*)frame, sizeof(*frame)/16);
    mfifo->Add(dma, sizeof(*frame)/16); // send data to MFIFO     

    context->SyncGSPath();  // wait for data to arrive at GS

    unsigned sanity = 0;

    while(!(*GS_CSR & 2))  // wait for GS FINISH signal
    {
        if(sanity++ > 10000000)
        {
            sanity = 0;
            scePrintf("PDDI: ps2Display::ReallySwapBuffers(): sanity check failed waiting for GS FINISH signal.\n");
        }
    }

    // These don't seem to take effect until the GS has reached the end of the scanline
    // it is currently working on.  We have to make sure that drawing doesn't happen until
    // then.
    #ifdef PS2_USE_THE_WATCHER
    ps2VramView view = context->GetDisplayVram();
    if (PS2_FRONT_BUFFER == view)
    #else
    if (1)
    #endif
    {
        // should only need to do this once!
        *GS_DISPFB1 = (*(u_long*)&gsPrivReg[0].DISPFB1);
        *GS_DISPFB2 = (*(u_long*)&gsPrivReg[0].DISPFB2);
        *GS_DISPLAY1 = (*(u_long*)&gsPrivReg[0].DISPLAY1);
        *GS_DISPLAY2 = (*(u_long*)&gsPrivReg[0].DISPLAY2);
        *GS_PMODE = (*(u_long*)&gsPrivReg[0].PMODE);
        *GS_SMODE2 = (*(u_long*)&gsPrivReg[0].SMODE2);    
    }
    #ifdef PS2_USE_THE_WATCHER
    else
    if ( PS2_DRAW_BUFFER == view )
    {
        // should only need to do this once!
        *GS_DISPFB1 = (*(u_long*)&gsPrivReg[1].DISPFB1);
        *GS_DISPFB2 = (*(u_long*)&gsPrivReg[1].DISPFB2);
        *GS_DISPLAY1 = (*(u_long*)&gsPrivReg[1].DISPLAY1);
        *GS_DISPLAY2 = (*(u_long*)&gsPrivReg[1].DISPLAY2);
        *GS_PMODE = (*(u_long*)&gsPrivReg[1].PMODE);
        *GS_SMODE2 = (*(u_long*)&gsPrivReg[1].SMODE2);    
    }
    else
    if ( PS2_TEXTURE_MEMORY == view )
    {
        *GS_DISPFB1 = (*(u_long*)&dispTexMem);
        *GS_DISPFB2 = (*(u_long*)&dispTexMem);
    }
    else
    if (PS2_ZBUFFER == view)
    {
        *GS_DISPFB1 = (*(u_long*)&dispZbuffer);
        *GS_DISPFB2 = (*(u_long*)&dispZbuffer);
    }
    #endif
    
    asm __volatile__ ("sync.l; sync.p");

    u_int cycleCount = EE::GetCycleCounter();

    /* wait until GS has finished its current scanline, so we can draw again */
    while(EE::GetCycleCounter() - cycleCount < 18810) { /* nop */ }
}

void ps2Display::SwapBuffers(void)
{
    BEGIN_SAMPLE(SwapBuffers_perf);
    PDDIASSERT(context);

    if(lockToVsync)
    {
        // aug8/2002 amb - smarter vsync. this code doesn't wait for vsync
        // if we were "close" to the vblank.        
        context->SyncGSPath();

        const float ntscBlank = 16.68335f; // 59.94Hz
        const float palBlank  = 20.0f;     // 50.00Hz
        const float vsyncTolerance = 4.0f; // 4ms
        float blankTime = (dispMode == SCE_GS_NTSC) ? ntscBlank : palBlank;

        u_int cycleCount = EE::GetCycleCounter();

        // check for wrapped counter
        if ( cycleCount < lastSwap )
        {
            cycleCount += ( UINT_MAX - lastSwap );
            lastSwap = 0;
        }

        const float drawTime = (float)(cycleCount - lastSwap) / EE::ClocksToMs;
        float diffTime = blankTime - drawTime;

        // find closest vblank range
        while ( drawTime > (blankTime+vsyncTolerance))
        {
            blankTime += (dispMode == SCE_GS_NTSC) ? ntscBlank : palBlank;
        }

        // wait for end of frame
        if ((drawTime  < blankTime) || (drawTime > (blankTime+vsyncTolerance)))
        {
            sceGsSyncV(0);
        }
        else
        {
            // don't wait cause we just barely missed the vsync
        }
    }
	else if(m_ForceVSync)
	{
        sceGsSyncV(0);
	}

    lastSwap = EE::GetCycleCounter();

    ReallySwapBuffers();
    END_SAMPLE(SwapBuffers_perf);
}

bool ps2Display::InitDisplay(const pddiDisplayInit* initData)
{
    PDDIASSERT((initData->xsize==640));    

    lockToVsync = initData->lockToVsync;
    dispMode    = initData->pal ? SCE_GS_PAL : SCE_GS_NTSC;    
    depth       = 32;
    dtv480      = initData->dtv480;
    if ( dtv480 )
    {        
        width  = 640;
        height = 448;
        dispMode  = SCE_GS_DTV480P;
        memoryMap = &mixedDTV480;
    } 
    else
    {
        width       = initData->xsize;
        height      = initData->pal ? 512 : 448;    
        memoryMap   = (dispMode == SCE_GS_NTSC) ? &mixedNTSC : &mixedPAL;
    }

    if (context)
    {
        ps2MFIFO* mfifo = context->GetMFIFO();
        context->SyncGSPath();
        context->RemoveIntc();
    }

    sceGsSyncV(0);
    sceGsResetPath();
    if ( dtv480 )
    {
        sceGsResetGraph(0, 
            SCE_GS_NOINTERLACE,
            SCE_GS_DTV480P,     
            SCE_GS_FRAME);
    }
    else
    {
        sceGsResetGraph(0, 
            SCE_GS_INTERLACE, // interlace mode
            dispMode,         // display mode
            SCE_GS_FIELD);    // field mode
    }

    if (context) context->AddIntc();

    InitDisplay( width, height, depth);
    initialized = true;

    return true;
}

void ps2Display::SetupFS_AA(short dispW, short dispH, short dispPSM, short ztest, short zPSM)
{
    PDDIASSERT((dispPSM == SCE_GS_PSMCT32 || dispPSM == SCE_GS_PSMCT16));

    int magh = 3;

    switch(dispW) // from CRTC section of GS manual
    {
        case 320: magh = 7; break;
        case 512: magh = 4; break;
        case 640: magh = 3; break;        
        case 720: magh = 1; break;
    }

    memset(gsPrivReg, 0x00, sizeof(GSPrivReg)*2);

    gsPrivReg[0].PMODE.EN1 = 1;      // read circuit 1 = on
    gsPrivReg[0].PMODE.EN2 = 1;      // read circuit 2 = on
    gsPrivReg[0].PMODE.CRTMD = 1;    // always set to 0
    gsPrivReg[0].PMODE.MMOD = 1;     // use ALP register for alpha blending
    gsPrivReg[0].PMODE.AMOD = 1;     // not used sincle MMOD = 1
    gsPrivReg[0].PMODE.SLBG = 0;     // blending with read circuit 2 (set to 1 for BG colour)
    gsPrivReg[0].PMODE.ALP = 0x80;   // alpha setting

    gsPrivReg[0].SMODE2.INT = 1;   // interlace mode
    gsPrivReg[0].SMODE2.FFMD = 0;  // frame/field mode
    gsPrivReg[0].SMODE2.DPMS = 0;  // DPMS = off

    gsPrivReg[0].DISPFB1.FBP = memoryMap->frame0;   // frame buffer pointer for read circuit 1
    gsPrivReg[0].DISPFB1.FBW = (dispW + 63)/ 64;    // frame buffer width / 64
    gsPrivReg[0].DISPFB1.PSM = dispPSM;       // pixel storage mode
    gsPrivReg[0].DISPFB1.DBX = 0;             // display read offset x
    gsPrivReg[0].DISPFB1.DBY = 0;             // display read offset y

    // magh = (((2560+w-1)/w)-1)<<23;
    if (dtv480)
    {
        gsPrivReg[0].SMODE2.INT  = 0;   // interlace mode
        gsPrivReg[0].SMODE2.FFMD = 1;  // frame/field mode
        gsPrivReg[0].SMODE2.DPMS = 0;  // DPMS = off        

        gsPrivReg[0].DISPFB1.FBW = (width+63)>>6; // 12
        gsPrivReg[0].DISPFB1.DBX = 0;
        gsPrivReg[0].DISPFB1.DBY = 1;


        int dx,dy,s;
        s  = magh;
        dy = 20;
        dx = 120;

        gsPrivReg[0].DISPLAY1.DX = 232 + dx; // magic values taken from libgraph docs
        gsPrivReg[0].DISPLAY1.DY = 35 + dy;
        gsPrivReg[0].DISPLAY1.MAGH = (1550/dispW-1);//magh;     // pixel magnification value (specifies horizontal resolution)
        gsPrivReg[0].DISPLAY1.MAGV = 0;
        gsPrivReg[0].DISPLAY1.DW = (dispW*(1550/dispW)-1) ;       // magic value from libgraph docs (639.75 * 4)
        gsPrivReg[0].DISPLAY1.DH = (dispH - s);  // display height          
    }
    else
    {
        gsPrivReg[0].DISPLAY1.DX = (dispMode == SCE_GS_NTSC) ? 636 : 656; // magic values taken from libgraph docs
        gsPrivReg[0].DISPLAY1.DY = (dispMode == SCE_GS_NTSC) ? 50 : 72;
        gsPrivReg[0].DISPLAY1.MAGH = magh;     // pixel magnification value (specifies horizontal resolution)
        gsPrivReg[0].DISPLAY1.MAGV = 0;
        gsPrivReg[0].DISPLAY1.DW = 2559;       // magic value from libgraph docs (639.75 * 4)
        gsPrivReg[0].DISPLAY1.DH = (dispH - 1);  // display height
    }

    gsPrivReg[0].DISPFB2.FBP = gsPrivReg[0].DISPFB1.FBP;  // read circuit 2 (same info as read circuit 1)
    gsPrivReg[0].DISPFB2.FBW = gsPrivReg[0].DISPFB1.FBW;
    gsPrivReg[0].DISPFB2.PSM = gsPrivReg[0].DISPFB1.PSM;
    gsPrivReg[0].DISPFB2.DBX = gsPrivReg[0].DISPFB1.DBX;
    gsPrivReg[0].DISPFB2.DBY = gsPrivReg[0].DISPFB1.DBY;

    gsPrivReg[0].DISPLAY2.DX = gsPrivReg[0].DISPLAY1.DX + 2; // offset second read circuit for slight blurring effect (units=VCK=4/pixel)
    gsPrivReg[0].DISPLAY2.DY = gsPrivReg[0].DISPLAY1.DY + 1; // offset y (units=lines)
    gsPrivReg[0].DISPLAY2.MAGH = gsPrivReg[0].DISPLAY1.MAGH;
    gsPrivReg[0].DISPLAY2.MAGV = gsPrivReg[0].DISPLAY1.MAGV;
    gsPrivReg[0].DISPLAY2.DW = gsPrivReg[0].DISPLAY1.DW;
    gsPrivReg[0].DISPLAY2.DH = gsPrivReg[0].DISPLAY1.DH;

    gsPrivReg[1] = gsPrivReg[0];

    gsPrivReg[1].DISPFB1.FBP = memoryMap->frame1;
    gsPrivReg[1].DISPFB1.PSM = SCE_GS_PSMCT32;
    gsPrivReg[1].DISPFB2.FBP = memoryMap->frame1;    
    gsPrivReg[1].DISPFB2.PSM = SCE_GS_PSMCT32;

    // buffer 0
    memset(&buffer0, 0, sizeof(buffer0));

    buffer0.dmaTag[0] =  DMA::SetSourceChainTag(sizeof(buffer0)/16 - 1, 0, DMA::cnt, 0);
    buffer0.dmaTag[1] =  0;
    buffer0.dmaTag[2] =  SCE_VIF1_SET_FLUSHA(0);
    buffer0.dmaTag[3] =  SCE_VIF1_SET_DIRECT(sizeof(buffer0)/16 - 1, 0);

    buffer0.giftag.NLOOP = sizeof(buffer0)/16 - 2;
    buffer0.giftag.EOP    = 1;
    buffer0.giftag.NREG   = 1;
    buffer0.giftag.REGS0  = 0xe;  // A+D
    buffer0.frame1addr    = SCE_GS_FRAME_1;
    buffer0.zbuf1addr     = SCE_GS_ZBUF_1;
    buffer0.xyoffset1addr = SCE_GS_XYOFFSET_1;
    buffer0.finishaddr    = SCE_GS_FINISH;
    buffer0.dtheAddr      = SCE_GS_DTHE;
    buffer0.colclampAddr  = SCE_GS_COLCLAMP;

    buffer0.frame1.FBP = memoryMap->frame0;
    buffer0.frame1.FBW = (u_long)(dispW + 63) / 64;
    buffer0.frame1.PSM = dispPSM;
    buffer0.frame1.FBMSK = 0;

    buffer0.zbuf1.ZBP = memoryMap->zbuf;
    buffer0.zbuf1.PSM = zPSM & 0xf;
    buffer0.zbuf1.ZMSK = 0;

    buffer0.xyoffset1.OFX = 16*(2048 - dispW/2);
    buffer0.xyoffset1.OFY = 16*(2048 - dispH/2);

    buffer0.dthe = 0;
    buffer0.colclamp = 1;

    buffer0.finish = 1;

    // buffer 1   
    buffer1 = buffer0;   // same as buffer0, with a different frame buffer base pointer
    buffer1.frame1.FBP = memoryMap->frame1;

    gsPrivReg[0].DISPFB2.PSM = SCE_GS_PSMCT16;
    gsPrivReg[0].DISPFB1.PSM = SCE_GS_PSMCT16;

    //gsPrivReg[1].DISPFB1.FBP = memoryMap->frame0;
    //gsPrivReg[1].DISPFB2.FBP = memoryMap->frame0;

    buffer0.frame1.PSM = SCE_GS_PSMCT16;
    buffer0.zbuf1.PSM = SCE_GS_PSMZ24;

    FlushCache(0);
}

bool ps2Display::InitDisplay(int x, int y, int bpp)
{
    if(context)
    {
        context->SyncGSPath();
        while(sceGsSyncV(0) == 0){ /*nop*/ };
    }

    depth = bpp;
    width = x;

    frameNum = 0;    

    if(depth == 32)
    {
        bufferFormat = SCE_GS_PSMCT32;
        zBufferFormat = SCE_GS_PSMZ24;
    }
    else
    {
        bufferFormat = SCE_GS_PSMCT16;
        zBufferFormat = SCE_GS_PSMZ16;
    }

    DPUT_GS_BGCOLOR(0);

    SetupFS_AA(width, height, bufferFormat, SCE_GS_ZGREATER, zBufferFormat);

    zBufferAddress = memoryMap->zbuf;
    start = memoryMap->texmem * 32;
    end   = VRAM_BLOCKS; 

    if(context)
    {
        context->DisplayReset();
    }

    dispTexMem.FBP = start / 32;
    dispTexMem.FBW = 10;
    dispTexMem.PSM = 0;
    dispTexMem.DBX = 0;
    dispTexMem.DBY = 0;

    dispZbuffer.FBP = zBufferAddress;
    dispZbuffer.FBW = 10;
    dispZbuffer.PSM = zBufferFormat;
    dispZbuffer.DBX = 0;
    dispZbuffer.DBY = 0;

    sceGsSyncV(0);

    *GS_DISPFB1  = (*(u_long*)&gsPrivReg[0].DISPFB1);
    *GS_DISPFB2  = (*(u_long*)&gsPrivReg[0].DISPFB2);
    *GS_PMODE    = (*(u_long*)&gsPrivReg[0].PMODE);
    *GS_SMODE2   = (*(u_long*)&gsPrivReg[0].SMODE2);
    *GS_DISPLAY1 = (*(u_long*)&gsPrivReg[0].DISPLAY1);
    *GS_DISPLAY2 = (*(u_long*)&gsPrivReg[0].DISPLAY2);

    return true;
}

void ps2Display::SetFBMask(unsigned mask)
{
    buffer0.frame1.FBMSK = mask;
    buffer1.frame1.FBMSK = mask;

    const gsFrame1* frame = GetCurrentFrame();
    context->SetGSRegister(SCE_GS_FRAME_1, *((unsigned long*)&frame->frame1));
}

void ps2Display::RestoreFrame()
{
   const gsFrame1* frame = GetCurrentFrame();
   context->SetGSRegister(SCE_GS_FRAME_1, *((unsigned long*)&frame->frame1));   
}

const gsFrame1* ps2Display::GetCurrentFrame() const
{
    // buffer1 is always the current draw buffer
    return &buffer1;
}

const sceGsFrame* ps2Display::GetGsFrame() const
{
    return &(GetCurrentFrame()->frame1);
}

unsigned int ps2Display::GetFrameAddr( int which ) const
{
    PDDIASSERT( which >= 0 && which < 2 );
 
    return ( which ? (buffer1.frame1.FBP * 32) : (buffer0.frame1.FBP *32) );
}

#undef PS2_USE_GAMMA_TABLES

unsigned ps2Display::Screenshot(pddiColour* buffer, int nBytes)
{
    #if 0
    const int w   = GetWidth();
    const int h   = GetHeight();
    int bpp = GetDepth();


    // buffer must be qw alligned
    PDDIASSERT( buffer != NULL );
    PDDIASSERT( ((int)buffer&0xf) == 0 );
    PDDIASSERT( nBytes == (w * h * 4) );

    memset( (void*)buffer , 0 , nBytes ); // fixme, remove this
    FlushCache(0);

    context->DrawSync();
    context->GetMFIFO()->Enable(false);

    // grab a temporary buffer in which we write 10 pages to at a time

    const int vramPages = (w*h*bpp/8) / VRAM_BYTES_PER_PAGE;
    int rowPages = (width + 63)/64;
    unsigned char* scr = (unsigned char*)MallocAligned( 16, VRAM_BYTES_PER_PAGE * rowPages );
    PDDIASSERT( scr != 0 );

    // aug9/2002 amb - take shot from back buffer, cause it looks nicer!
    unsigned fbp = (dispMode == SCE_GS_NTSC) ? mixedNTSC.frame1 : mixedPAL.frame1;
    if (dtv480)
    {
        fbp = mixedDTV480.frame1;
    }
    fbp *= VRAM_BLOCKS_PER_PAGE;

    // read 10 pages at a time
    for( int i = 0; i < vramPages / rowPages; i++ )
    {
        // read top half of screen
        StoreTextureVIF1(
            (u_long128*)scr,
            fbp,
            bpp == 16 ? SCE_GS_PSMCT16 : SCE_GS_PSMCT32, 
            0, 
            0, 
            w, 
            bpp == 16 ? 64:32, 
            w );

        FlushCache(0);

        if (bpp == 32)
        {
            #ifdef PS2_USE_GAMMA_TABLES
            const unsigned char* gammaTable = (dispMode == SCE_GS_NTSC) ? &gammaTableNTSC32[0] : &gammaTablePAL32[0] ;
            // 10 pages @ 32bits
            for(int j = 0; j < 32 * 64 * rowPages; j++ )
            {
                pddiColour col;

                col.SetRed( gammaTable[scr[ j*4 + 0 ]] );
                col.SetGreen( gammaTable[scr[ j*4 + 1 ]] );
                col.SetBlue(  gammaTable[scr[ j*4 + 2 ]] );
                col.SetAlpha( scr[ j*4 + 3 ] );

                buffer[j] = col;
            }
            #else
            for(int j = 0; j < 32 * 64 * rowPages; j++ )
            {
                pddiColour col;

                col.SetRed( scr[ j*4 + 0 ] );
                col.SetGreen( scr[ j*4 + 1 ] );
                col.SetBlue(  scr[ j*4 + 2 ] );
                col.SetAlpha( scr[ j*4 + 3 ] );

                buffer[j] = col;
            }
            #endif
        }
        else
        if (bpp == 16)
        {            
            typedef struct
            {
                unsigned short r:5;
                unsigned short g:5;
                unsigned short b:5;
                unsigned short a:1;
            } pix16_t;
            #ifdef PS2_USE_GAMMA_TABLES
            const unsigned char* gammaTable = (dispMode == SCE_GS_NTSC) ? &gammaTableNTSC16[0] : &gammaTablePAL16[0] ;
            // 10 pages @ 16bits
            for(int j = 0; j < 64 * 64 * rowPages; j++ )
            {
                pddiColour col;

                const pix16_t* pix = (const pix16_t*)&scr[j*2];

                col.SetRed( gammaTable[ pix->r ] );
                col.SetGreen( gammaTable[ pix->g  ] );
                col.SetBlue( gammaTable[ pix->b  ] );
                col.SetAlpha( pix->a * 255 );

                buffer[j] = col;
            }
            #else
            // 10 pages @ 16bits
            for(int j = 0; j < 64 * 64 * rowPages; j++ )
            {
                pddiColour col;

                const pix16_t* pix = (const pix16_t*)&scr[j*2];

                col.SetRed( pix->r << 3 );
                col.SetGreen( pix->g << 3);
                col.SetBlue( pix->b << 3);
                col.SetAlpha( pix->a * 255 );

                buffer[j] = col;
            }
            #endif
        }

        buffer += w * (bpp == 16 ? 64 : 32);

        fbp += rowPages * VRAM_BLOCKS_PER_PAGE;
    }

    // have to interlace the frames

    //Free(scr);
    FlushCache(0);

    context->GetMFIFO()->Enable(true);
    #endif

    return 0;
}

