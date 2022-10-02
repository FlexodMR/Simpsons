/*===========================================================================
   ps2context.cpp
   13-Nov-99 Created by Neall
   23-Mar-02 Fairly major revamp
   
   Playstation 2 pddiRenderContext

   Copyright (c)1999, 2000, 2001, 2002  Radical Entertainment Ltd
   All rights reserved.
===========================================================================*/

#include <pddi/ps2/ps2context.hpp>
#include <pddi/ps2/ps2prim.hpp>
#include <pddi/ps2/ps2shader.hpp>
#include <pddi/ps2/ps2skin.hpp>
#include <pddi/ps2/mfifo.hpp>
#include <pddi/ps2/ps2types.hpp>
#include <pddi/ps2/ps2vucode.hpp>
#include <pddi/ps2/ps2vram.hpp>
#include <pddi/ps2/ps2texcache.hpp>
#include <pddi/base/debug.hpp>
#include <pddi/ps2/shaders/ps2simpleshader.hpp>
#include <pddi/ps2/ps2buildconfig.hpp>
#include <pddi/ps2/ps2perfcounter.hpp>

#ifdef PS2_USE_THE_WATCHER
#include <raddebugcommunication.hpp>
#include <raddebugwatch.hpp>
#endif

#include <devvu1.h>

// where the vu code lives in main memory
extern u_int PDDI_VU1_code_start __attribute__((section(".vudata")));
extern u_int PDDI_VU1_code_end   __attribute__((section(".vudata")));
extern u_int VU_BASE             __attribute__((section(".vudata")));
extern u_int VU_LOAD_CONTEXT     __attribute__((section(".vudata")));
extern u_int VU_XGKICK           __attribute__((section(".vudata")));
extern u_int VU_LINE             __attribute__((section(".vudata")));
extern u_int VU_END              __attribute__((section(".vudata")));

//#define PS2_GUARD_BAND_DEBUG
// size of the main memory display list mfifo
const unsigned MFIFO_SIZE = 0x80000;  // 0x40000 = 256K;  0x80000 = 512K;   0x100000 = 1MB

static ps2Context* g_context = NULL;
static ps2Display* g_display = NULL;

// whenever the context has to spin, it will call this function so that other
// threads can operate.
static void Idle()
{
   RotateThreadReadyQueue(1);
}


//--------------------------------------------------------------------
ps2Context* ps2Context::GetContext()
{
    PDDIASSERT(g_context);
    return g_context;
}

//-------------------------------------------------------------------
ps2Context::ps2Context(pddiDisplay* display, pddiDevice* device) : 
      pddiBaseContext(display, device)
{

    EE::ResetCycleCounter();

    dummyContext.Init();

    g_context = this;
    g_display = (ps2Display*)display;

    PDDIASSERT( g_display->GetDepth() == 32 && "PDDI only supports 32 bit rendering on the Playstation2!" );

    stencilAddr = 0;
    stencilPass = false;
    mfifo = NULL;
    texCache = NULL;

    lastSyncFrame = 0;
    
    motionBlur = false;
    motionBlurZoom = 0;
    motionBlurAlpha = 0.5f;
    motionBlurTheta = 0.0f;   

    gsContext = (GSContext*)0x70003900;
    vu_context = (VU_Context*)(0x70003900+sizeof(GSContext));

    gsContext->Init();
    vu_context->Init();

    vram = new ps2Vram(this);
    g_display->SetContext(this);
    DisplayReset();  

    int start = g_display->GetTextureMemoryStart();
    int size  = g_display->GetTextureMemoryEnd() - g_display->GetTextureMemoryStart();

    texCache = new ps2TexCache( start, size, this);
    //DPUT_GIF_MODE( GIF_MODE_IMT_M ); // put GIF into IMT mode

    globalAmbient.SetNormalized(pddiColour(0,0,0));

    DefaultState();

    inverseModelView.Identity();
    RebuildTransformContext();

    LoadMicrocode();

    // install a few programs for the shaders
    //vuCodeHandler->AddProgram("load_context", VU::ConvertProgramAddress(&VU_BASE, &VU_LOAD_CONTEXT));
    //vuCodeHandler->AddProgram("xgkick_tag", VU::ConvertProgramAddress(&VU_BASE, &VU_XGKICK));
    //vuCodeHandler->AddProgram("line", VU::ConvertProgramAddress(&VU_BASE, &VU_LINE));

    mfifo = new ps2MFIFO(MFIFO_SIZE);
    mfifo->Enable(true);

    extPS2Control = new ps2ExtPS2Control(this);
    extHardwareSkinning = new ps2ExtHardwareSkinning(this);

    defaultShader = new ps2SimpleShader(this);
    defaultShader->AddRef();

    extFramebufferEffects = new ps2ExtFramebufferEffects(this);

    #ifdef PS2_USE_THE_WATCHER
    vramView = PS2_FRONT_BUFFER;
    InitTheWatcher();
    #endif

    anyLightStateChanged = true;
    transformStateChanged = true;
    lightStateChanged[0] = true;
    lightStateChanged[1] = true;
    lightStateChanged[2] = true;
    lightStateChanged[3] = true;

    // initial GS states
    SetGSRegister( SCE_GS_COLCLAMP , 1 );
    SetGSRegister( SCE_GS_DTHE , 0 );
    SetGSRegister( SCE_GS_DIMX , SCE_GS_SET_DIMX( 0x4,0x2,0x5,0x3, 0x0,0x6,0x1,0x7, 0x5,0x3,0x4,0x2, 0x1,0x7,0x0,0x6 ) );
    mfifo->Flush();
}

//--------------------------------------------------------------------
ps2Context::~ps2Context()
{
    delete extPS2Control;
    delete extHardwareSkinning;
    delete extFramebufferEffects;
}
//--------------------------------------------------------------------
void ps2Context::RemoveIntc()
{
}
//--------------------------------------------------------------------
void ps2Context::AddIntc()
{    
}
//--------------------------------------------------------------------
void ps2Context::DisplayReset()
{
    SyncGSPath();
    ClearVRAM( 0, 0, 0, 0 );

    gsContext->zbuf.reg.zbuf.ZBP = g_display->GetZBufferAddress();
    gsContext->zbuf.reg.zbuf.PSM = g_display->GetZBufferFormat();

    if (vram)
    {
        unsigned psm = g_display->GetDepth() == 32 ? SCE_GS_PSMCT32 : SCE_GS_PSMCT16;

        vram->SetFrameAddr( g_display->GetFrameAddr(0) , SCE_GS_PSMCT16, g_display->GetFrameAddr(1) , SCE_GS_PSMCT32);
        vram->SetZbufferAddr( g_display->GetZBufferAddress() , g_display->GetZBufferFormat() );
        vram->SetTexMemory( g_display->GetTextureMemoryStart(), g_display->GetTextureMemoryEnd() - g_display->GetTextureMemoryStart());
    }
}
//--------------------------------------------------------------------
void ps2_clearvram()
{
    unsigned* tagAddr = 0;


    tagAddr = (unsigned*)0x70003900;   
    
    const int qwords = 30;
    VifStream gifPkt(tagAddr);

    gifPkt.AddInt( DMA::SetSourceChainTag( qwords-1 , 0, DMA::end, 0) );
    gifPkt.AddInt( 0 );
    gifPkt.Nop();
    gifPkt.Nop();

    // set GIF tag 
    gifPkt.AddLong( SCE_GIF_SET_TAG( 11, 1, 0, 0 , SCE_GIF_PACKED, 1 ) );
    gifPkt.AddLong( 0xeL ); // A+D  

    gifPkt.A_D( SCE_GS_PRMODECONT , SCE_GS_SET_PRMODECONT( 1 ) );
    gifPkt.A_D( SCE_GS_FRAME_1    , SCE_GS_SET_FRAME_1( 0, 1024 / 64, SCE_GS_PSMCT32, 0 ) );
    gifPkt.A_D( SCE_GS_ZBUF_1     , SCE_GS_SET_ZBUF( 0, 0 , 1 ) ); // disable z-writes
    gifPkt.A_D( SCE_GS_XYOFFSET_1 , SCE_GS_SET_XYOFFSET_1( 0, 0 ) );
    gifPkt.A_D( SCE_GS_SCISSOR_1  , SCE_GS_SET_SCISSOR_1( 0, 1024, 0, 1024) );
    gifPkt.A_D( SCE_GS_TEST_1     , SCE_GS_SET_TEST_1( 0, 0, 0, 0, 0, 0, 1, SCE_GS_ZALWAYS ) );
    gifPkt.A_D( SCE_GS_PRIM       , SCE_GS_SET_PRIM( SCE_GS_PRIM_SPRITE, 0, 0, 0, 0, 0, 0, 0, 0 ) );
    gifPkt.A_D( SCE_GS_RGBAQ      , SCE_GS_SET_RGBAQ( 0, 0, 0, 0, 0x3f80000 ) );
    gifPkt.A_D( SCE_GS_XYZF2      , SCE_GS_SET_XYZ( 0, 0, 0 ) );
    gifPkt.A_D( SCE_GS_XYZF2      , SCE_GS_SET_XYZ( 1024 << 4, 1024 << 4, 0 ) );
    gifPkt.A_D( SCE_GS_ZBUF_1     , SCE_GS_SET_ZBUF( 0, 0 , 0 ) ); // restore z-writes

    for(int i=0;i<17;i++)
    {
        gifPkt.A_D( SCE_GS_NOP , 0 );
    }

    // send via path3
    DPUT_D_STAT( D_STAT_CIS2_M );
    DPUT_D2_TADR( ( (unsigned)tagAddr & 0x3ff0 ) | (1<<31) );
    DPUT_D2_CHCR ( 1 | ( 1 << 2 ) | (1 << 8) ); 
    asm ("sync.l ; sync.p"); 
    sceGsSyncPath(0,0);
}
//--------------------------------------------------------------------
void ps2Context::ClearVRAM( u_char r, u_char g, u_char b, u_char a )
{
    unsigned* tagAddr = 0;
    const unsigned zbp = g_display->GetZBufferAddress();
    const unsigned zsm = g_display->GetZBufferFormat();   

    if ( mfifo )
    {
        mfifo->Flush();
        tagAddr = mfifo->GetBuffer();
    }
    else {
        tagAddr = (unsigned*)0x70003000;   
    }
    
    const int qwords = 13;
    VifStream gifPkt(tagAddr);

    if ( mfifo )
    {    
        gifPkt.AddInt( DMA::SetSourceChainTag( qwords-1 , 0, DMA::cnt, 0) );
        gifPkt.AddInt(0);
        gifPkt.FlushA_Safe();

        gifPkt.Direct(qwords - 1);
    }
    else
    {
        gifPkt.AddInt( DMA::SetSourceChainTag( qwords-1 , 0, DMA::end, 0) );
        gifPkt.AddInt( 0 );
        gifPkt.Nop();
        gifPkt.Nop();
    }

    // set GIF tag 
    gifPkt.AddLong( SCE_GIF_SET_TAG( 11, 1, 0, 0 , SCE_GIF_PACKED, 1 ) );
    gifPkt.AddLong( 0xeL ); // A+D  

    gifPkt.A_D( SCE_GS_PRMODECONT , SCE_GS_SET_PRMODECONT( 1 ) );
    gifPkt.A_D( SCE_GS_FRAME_1    , SCE_GS_SET_FRAME_1( 0, 1024 / 64, SCE_GS_PSMCT32, 0 ) );
    gifPkt.A_D( SCE_GS_ZBUF_1     , SCE_GS_SET_ZBUF( zbp, zsm , 1 ) ); // disable z-writes
    gifPkt.A_D( SCE_GS_XYOFFSET_1 , SCE_GS_SET_XYOFFSET_1( 0, 0 ) );
    gifPkt.A_D( SCE_GS_SCISSOR_1  , SCE_GS_SET_SCISSOR_1( 0, 1024, 0, 1024) );
    gifPkt.A_D( SCE_GS_TEST_1     , SCE_GS_SET_TEST_1( 0, 0, 0, 0, 0, 0, 1, SCE_GS_ZALWAYS ) );
    gifPkt.A_D( SCE_GS_PRIM       , SCE_GS_SET_PRIM( SCE_GS_PRIM_SPRITE, 0, 0, 0, 0, 0, 0, 0, 0 ) );
    gifPkt.A_D( SCE_GS_RGBAQ      , SCE_GS_SET_RGBAQ( r, g, b, a, 0x3f80000 ) );
    gifPkt.A_D( SCE_GS_XYZF2      , SCE_GS_SET_XYZ( 0, 0, 0 ) );
    gifPkt.A_D( SCE_GS_XYZF2      , SCE_GS_SET_XYZ( 1024 << 4, 1024 << 4, 0 ) );
    gifPkt.A_D( SCE_GS_ZBUF_1     , SCE_GS_SET_ZBUF( zbp, zsm , !state.renderState->zWrite ) ); // restore z-writes

    WaitVSync();

    if ( mfifo )
    {
        SyncGSPath(); 
        mfifo->Add( tagAddr , gifPkt.GetQWC() );
        SyncGSPath(); 
    }
    else
    {
        // send via path3
        DPUT_D_STAT( D_STAT_CIS2_M );
        DPUT_D2_TADR( ( (unsigned)tagAddr & 0x3ff0 ) | (1<<31) );
        DPUT_D2_CHCR ( 1 | ( 1 << 2 ) | (1 << 8) ); 
        asm ("sync.l ; sync.p"); 
        sceGsSyncPath(0,0);
    } 
}

void ps2Context::LoadMicrocode()
{
    if(mfifo)
    {
        mfifo->Enable(false);
    }

    #ifndef RAD_RELEASE
    int start = (int)&VU_BASE;
    int end = (int)&PDDI_VU1_code_end;
    int size = end-start;

    PDDIASSERT( (size < 0x4000) && "VU1 microcode exceed 16kb limit!" );
    #ifdef RAD_DEBUG
    scePrintf("PDDIPS2 : VU1 ucode size = %d bytes (%d instr free)\n", size, (0x4000 - size)>>3 );
    #endif
    #endif

    // --- kick dma to send VU1 micro-code ---
    DPUT_D1_QWC( 0x00 );
    DPUT_D1_TADR( (u_int)&PDDI_VU1_code_start & 0x0fffffff );
    DPUT_D_STAT( D_STAT_CIS1_M );
    DPUT_D1_CHCR ( 1 | (1<<2) | (0<<4) | (1<<6) | (0<<7) | (1<<8) );
    asm __volatile__ ("sync.l ; sync.p"); 

    SyncGSPath();
    if(mfifo)
    {
        mfifo->Enable(true);
    }

    ps2VuCodeInit();
}

//-------------------------------------------------------------------
unsigned ps2Context::GetFreeMicrocodeAddress()
{
    unsigned start = (u_int)&VU_BASE;
    unsigned end = (u_int)&PDDI_VU1_code_end;

    return end - start;
}

//-------------------------------------------------------------------
void ps2Context::SyncScratchPad()
{
    // wait for VIF1 DMA to finish
    if(mfifo)
    {
        mfifo->FlushSPR();
    }
    else
    {
        while(DGET_D1_CHCR() & D_CHCR_STR_M){ /* nop */ };
    }
}

//-------------------------------------------------------------------
void ps2Context::ClearDepthOptimized()
{
    /* nop */
    return;
}
//-------------------------------------------------------------------
void ps2Context::FillDestAlpha(int value)
{
    /* nop */
}

//-------------------------------------------------------------------
void ps2Context::Clear(unsigned bufferMask)
{
    PDDIASSERT(mfifo);
    unsigned mask = bufferMask & (PDDI_BUFFER_DEPTH | PDDI_BUFFER_COLOUR);
    if(!mask)
    {
        return;
    }
    
    const int width  = (int)display->GetWidth();
    const int height = (int)display->GetHeight();
    const int left   = (int)(state.viewState->viewWindow.left * width);
    const int right  = (int)(state.viewState->viewWindow.right * width);
    const int top    = (int)(state.viewState->viewWindow.top * height);
    const int bottom = (int)(state.viewState->viewWindow.bottom * height);

    int x = (2048<<4)-(width<<3) + (left<<4);
    const int y = (2048<<4)-(height<<3) + (top<<4);
    const int w = x + ((right-left)<<4);
    const int h = y + ((bottom-top)<<4);

    const unsigned zbp = g_display->GetZBufferAddress();
    const unsigned zsm = g_display->GetZBufferFormat();   

    int x0,x1,y0,y1;
    GetScissorRegion(&x0, &x1, &y0, &y1);

    /*
    //amb sep4/2002 - busted
    if ( mask == PDDI_BUFFER_DEPTH ) // only z clear
    {
        VifStream gifPkt;
        mfifo->OpenVifStream(gifPkt);
        
        gifPkt.FlushA_Safe();

        gifPkt.BeginGifAD();
        //gifPkt.A_D( SCE_GS_SCISSOR_1,  SCE_GS_SET_SCISSOR(x0, x1, y0, y1) );
        gifPkt.A_D( SCE_GS_SCISSOR_1,  SCE_GS_SET_SCISSOR(0, 639, 0, 447) );
        gifPkt.A_D( SCE_GS_PRIM,       SCE_GS_PRIM_SPRITE );
        gifPkt.A_D( SCE_GS_PRMODE,     SCE_GS_SET_PRMODE(0, 0, 0, 0, 0, 0, 0, 0) ); // abe = 1
        gifPkt.A_D( SCE_GS_TEST_1,     SCE_GS_SET_TEST(0, 1, 0, 0, 0, 1, 1, SCE_GS_ZALWAYS) ); // disable z, alpha test
        gifPkt.A_D( SCE_GS_FRAME_1 , SCE_GS_SET_FRAME_1( zbp, 640 / 64, SCE_GS_PSMCT32, 0 ) );
        gifPkt.A_D( SCE_GS_ZBUF_1  , SCE_GS_SET_ZBUF( zbp+35 , SCE_GS_PSMZ32, 1 ) ); // point into the middle of the z buffer

        gifPkt.A_D( SCE_GS_RGBAQ,   SCE_GS_SET_RGBAQ(0x00, 0x00, 0x00, 0, 0x3f800000) );
        const int h = (y + ((bottom-top)<<4)) / 2;
		if ( (x & 511) != 0 )
		{
			int step = (x+511)&(~511); // round to next multiple of 32
			gifPkt.A_D( SCE_GS_XYZ2 , SCE_GS_SET_XYZ2(x, y, 1) );
			gifPkt.A_D( SCE_GS_XYZ2 , SCE_GS_SET_XYZ2(step, h, 1) );
			x = step;
		}
        
		const int numStrips = ((w&(~511)) - x)/512;
		const int dx = 32<<4;

		for(int i=0;i<numStrips;i++)
		{
			gifPkt.A_D( SCE_GS_XYZ2 , SCE_GS_SET_XYZ2(x, y, 1) );
			gifPkt.A_D( SCE_GS_XYZ2 , SCE_GS_SET_XYZ2(x+dx, h, 1) );
			x += dx;
		}

		// last strip?
		if ( x < w )
		{
			gifPkt.A_D( SCE_GS_XYZ2 , SCE_GS_SET_XYZ2(x, y, 1) );
			gifPkt.A_D( SCE_GS_XYZ2 , SCE_GS_SET_XYZ2(w, h, 1) );
		}


        gifPkt.A_D( SCE_GS_TEST_1,     SCE_GS_SET_TEST(0, 1, 0, 0, 0, 1, 1, SHADER::zCompareTable[state.renderState->zCompare]) );
        gifPkt.A_D( SCE_GS_FRAME_1 , *(unsigned long*)g_display->GetGsFrame() ); // restore frame
        gifPkt.A_D( SCE_GS_ZBUF_1, SCE_GS_SET_ZBUF( zbp , zsm , !state.renderState->zWrite ) );
        gifPkt.EndGifAD();
        mfifo->CloseVifStreamAdd(gifPkt);

        return;
    }
    */

    const bool noDepthClear = (bufferMask & PDDI_BUFFER_DEPTH) == 0;
    pddiColour colour = state.viewState->clearColour;

    VifStream gifPkt;
    mfifo->OpenVifStream(gifPkt);
    
    gifPkt.FlushA_Safe();

    gifPkt.BeginGifAD();
    gifPkt.A_D( SCE_GS_SCISSOR_1,  SCE_GS_SET_SCISSOR(x0, x1, y0, y1) ); // amb feb1/2002
    gifPkt.A_D( SCE_GS_PRIM,       SCE_GS_PRIM_SPRITE );
    gifPkt.A_D( SCE_GS_PRMODE,     SCE_GS_SET_PRMODE(0, 0, 0, 1, 0, 0, 0, 0) ); // abe = 1
    gifPkt.A_D( SCE_GS_TEST_1,     SCE_GS_SET_TEST(0, 1, 0, 0, 0, 1, 1, SCE_GS_ZALWAYS) ); // disable z, alpha test
    gifPkt.A_D( SCE_GS_ZBUF_1  , SCE_GS_SET_ZBUF( zbp, zsm , (noDepthClear ? 1 : 0) ) ); 

    if ( mask == PDDI_BUFFER_DEPTH )
    {
        gifPkt.A_D( SCE_GS_ALPHA_1, SCE_GS_SET_ALPHA(0x00, 0x02, 0x02, 0x01, 0xff) ); // ADDITIVE
        gifPkt.A_D( SCE_GS_RGBAQ,   SCE_GS_SET_RGBAQ(0x00, 0x00, 0x00, 0, 0x3f800000) );
    }
    else
    {
        gifPkt.A_D( SCE_GS_ALPHA_1, SCE_GS_SET_ALPHA(0x02, 0x02, 0x02, 0x00, 0xff) ); // NONE
        gifPkt.A_D( SCE_GS_RGBAQ,   SCE_GS_SET_RGBAQ(colour.Red(), colour.Green(), colour.Blue(), colour.Alpha(), 0x3f800000) );
    }

	// use 32 pixel wide strips
	// make sure x is aligned to 32 pixels (32<<4 = 512)
	if ( (x & 511) != 0 )
	{
		int step = (x+511)&(~511); // round to next multiple of 32
		gifPkt.A_D( SCE_GS_XYZ2 , SCE_GS_SET_XYZ2(x, y, 1) );
		gifPkt.A_D( SCE_GS_XYZ2 , SCE_GS_SET_XYZ2(step, h, 1) );
		x = step;
	}

	const int numStrips = ((w&(~511)) - x)/512;
	const int dx = 32<<4;

	for(int i=0;i<numStrips;i++)
	{
		gifPkt.A_D( SCE_GS_XYZ2 , SCE_GS_SET_XYZ2(x, y, 1) );
		gifPkt.A_D( SCE_GS_XYZ2 , SCE_GS_SET_XYZ2(x+dx, h, 1) );
		x += dx;
	}

	// last strip?
	if ( x < w )
	{
		gifPkt.A_D( SCE_GS_XYZ2 , SCE_GS_SET_XYZ2(x, y, 1) );
		gifPkt.A_D( SCE_GS_XYZ2 , SCE_GS_SET_XYZ2(w, h, 1) );
	}

    // re-store zbuffer state
    gifPkt.A_D( SCE_GS_ZBUF_1, SCE_GS_SET_ZBUF( zbp , zsm , !state.renderState->zWrite ) );
    // restore z-test
    gifPkt.A_D( SCE_GS_TEST_1,     SCE_GS_SET_TEST(0, 1, 0, 0, 0, 1, 1, SHADER::zCompareTable[state.renderState->zCompare]) );
    gifPkt.EndGifAD();

    mfifo->CloseVifStreamAdd(gifPkt);
}

//------------------------------------------------------------------------------
void ps2Context::BeginFrame()
{
    vu_context->SetDirty(true);

    // if a frame buffer swap was queued, wait until it completes before
    // drawing is allowed
    while(g_display->swapQueued) {
        Idle();
    }

    pddiBaseShader::ClearCurrentShader();
    texCache->InvalidateTexCache(); // not many textures persist across a frame
    pddiBaseContext::BeginFrame();
    mfifo->ResetTransferCounter();
}

void ps2Context::EndFrame()
{    
    pddiBaseContext::EndFrame();
}

//------------------------------------------------------------------------------
void ps2Context::BeginTiming()
{
    beginTiming = EE::GetCycleCounter();
}

float ps2Context::EndTiming()
{
    return (float)(EE::GetCycleCounter() - beginTiming) * (1.0f / (float)EE::ClocksToMs);
}

const unsigned GS_SYNC_SANITY = 40000000;

#ifdef RAD_RELEASE

#define SanityCheck(A,B)

#else

static void SanityCheck(unsigned& sanity, const char* failmsg)
{
    if(sanity++ >= GS_SYNC_SANITY)
    {
        scePrintf("PDDI: SyncGSPath(): Sanity check failed - %s.\n", failmsg);
        scePrintf("\t0x%x  VIF1_CODE=0x%x\n", DGET_VIF1_STAT() & VIF1_STAT_VPS_M, DGET_VIF1_CODE());
        scePrintf("\tD1_CHCR = 0x%08x\n", (unsigned)DGET_D1_CHCR());
        scePrintf("\tD2_CHCR = 0x%08x\n", (unsigned)DGET_D2_CHCR());
        scePrintf("\tGIF_STAT = 0x%08x\n", (unsigned)DGET_GIF_STAT());
        scePrintf("\tGS_CSR = 0x%08x\n", (unsigned)DGET_GS_CSR());
        scePrintf("Dropping to debugger...\n\n");
        EE::Break();
    }
}

#endif

//------------------------------------------------------------------------------
// mfifo-friendly replacement for sceGsSyncPath()
void ps2Context::SyncGSPath()
{
    lastSyncFrame++;

    unsigned sanity = 0;
    if(mfifo)
    {
        mfifo->Flush();
    }
    else
    {
        sanity = 0;
        while(DGET_D1_CHCR() & D_CHCR_STR_M)  // VIF1 dma idle
        {
            SanityCheck(sanity, "Waiting for VIF1 DMA idle");
        }
    }

    sanity = 0;
    while(DGET_D2_CHCR() & D_CHCR_STR_M) /* GIF dma idle */
    {
        SanityCheck(sanity, "Waiting for GIF DMA idle");
    }

    sanity = 0;
    while(DGET_VIF1_STAT() & (VIF1_STAT_VEW_M | VIF1_STAT_VGW_M | VIF1_STAT_FQC_M)) // VIF1 idle
    { 
        SanityCheck(sanity, "Waiting for VIF1 idle");
    }

    sanity = 0;
    unsigned int vpu_stat = ~0L;
    while(vpu_stat & 0x1100) // VU1 idle (VBS1, VGW1 == 0)
    {
        asm volatile("cfc2.ni %0,$29" : "=r" (vpu_stat) );
        SanityCheck(sanity, "Waiting for VU1 idle");
    }

    sanity = 0;
    while(DGET_GIF_STAT() & GIF_STAT_APATH_M) // GIF paths idle
    {
        SanityCheck(sanity, "Waiting for GIF idle");
    }

    sanity = 0;
    while(DGET_GIF_STAT() & GIF_STAT_FQC_M)  // GIF fifo empty
    {
        SanityCheck(sanity, "Waiting for GIF fifo idle");
    }

    sanity = 0;
    while((DGET_GS_CSR() & GS_CSR_FIFO_M) != (1<<GS_CSR_FIFO_O))  // CSR.FIFO == 0x01: GS fifo empty
    {
        SanityCheck(sanity, "Waiting for GS fifo idle");
    }
}

void ps2Context::WaitVSync()
{
    sceGsSyncV(0);
}

//-------------------------------------------------------------------
// set the value of a GS register - goes through the MFIFO, path 2
void ps2Context::SetGSRegister(unsigned long reg, unsigned long value)
{
    if(mfifo)
    {
        VifStream vif;
        mfifo->OpenVifStream(vif);
        
        vif.FlushA_Safe();

        vif.BeginGifAD();
        vif.A_D(reg, value);
        vif.EndGifAD();
        mfifo->CloseVifStreamAdd(vif);
    }
}  

//-------------------------------------------------------------------
void ps2Context::LoadHardwareMatrix(pddiMatrixType id)
{
    PDDIASSERT(id == PDDI_MATRIX_MODELVIEW && "PDDI ERROR:  Attempt to modify unsupported matrix type on the PS2.");
    transformStateChanged = true;
}

// guard band clipping explanation
// Valid GS vertex co-ordinates lie in the range [0.0 - 4095.9375]
// (fff.f in 12.4 fixed point).  This range is known as the
// "guard band"  Anything drawn outside of here goes kablooey.
// The projection matrix, and view-port are scaled so that prims are
// only dropped out if a vertex goes outside of the guard band.
// Normally, the clipping rectangle is mapped to the viewport which is
// mapped to the screen [-1, 1] -> [width, height].  Instead, we map the
// viewport to [-1*gbX, 1*gbY] -> [4095.9375, 4095.9375], and scale the
// projection matrix so that objects don't change size on the screen.

static const float guardBandExtents = 4095.9375f / 2.0f;  // fff.f in 12.4 GS co-ords
static float guardBandScaleX = 0.8f;
static float ooGuardBandScaleX = 1.0f / guardBandScaleX;

static float guardBandScaleY = 0.8f;
static float ooGuardBandScaleY = 1.0f / guardBandScaleY;

void ps2Context::SetupHardwareProjection(const pddiViewState* view, float width, float height)
{
    ADD_STAT(PDDI_STAT_MATRIX_OPS, 1);

    const pddiCamera& camera = view->camera;
    vu_context->transform.projection.Identity();

    #ifndef PS2_GUARD_BAND_DEBUG
        guardBandScaleX = guardBandExtents / width;
        ooGuardBandScaleX = 1.0f / guardBandScaleX;
        guardBandScaleY = guardBandExtents / height;
        ooGuardBandScaleY = 1.0f / guardBandScaleY;
    #endif

    switch(view->projectionMode)
    {
        case PDDI_PROJECTION_PERSPECTIVE:
        {
            float n = camera.nearPlane;
            float f = camera.farPlane;
            float fov = 1.0f / tanf(camera.fov * 0.5f);
            float w = fov;
            float h = -camera.aspect * fov;

            float a = (f+n)/(n-f);
            float b = -2*f*n / (n-f);
            vu_context->transform.projection.Row4(0).Set(w * ooGuardBandScaleX, 0, 0, 0); // hack!
            vu_context->transform.projection.Row4(1).Set(0, h * ooGuardBandScaleY, 0, 0);
            vu_context->transform.projection.Row4(2).Set(0, 0, a, 1);
            vu_context->transform.projection.Row4(3).Set(0, 0, b, 0);
            
            // no clipping version of the matrix
            /*
            // nv todo: make this work
            pddiMatrix p;
            p.Identity();

            float fov = 1.0f / tanf(camera.fov * 0.5f);
            float w = fov;
            float h = -camera.aspect * fov;

            p.SetRow(0, w, 0, 0, 0);
            p.SetRow(1, 0, h, 0, 0);
            p.SetRow(2, 0, 0, 0, 1);
            p.SetRow(3, 0, 0, 1, 0);

            pddiMatrix v;
            v.Identity();
            float zmax = camera.farPlane;
            float zmin = camera.nearPlane;
            float nearz = camera.nearPlane;
            float farz = camera.farPlane;
            float srcz = 1.0f;
            float ax = 320.0f; // nv todo:  don't hardcode this
            float ay = 224.0f;
            float az  = farz * nearz * (-zmin + zmax) / (-nearz + farz);
            float cx = 2048.0f; // nv todo:  don't hardcode this
            float cy = 2048.0f;
            float cz = (-zmax * nearz + zmin * farz) / (-nearz + farz);
            
            v.SetRow(0, ax,  0,  0, 0);
            v.SetRow(1,  0, ay,  0, 0);
            v.SetRow(2,  0,  0, az, 0);
            v.SetRow(3, cx, cy, cz, 1);

            pddiMatrix projNoClip;
            pddiMultMatrix44(&p, &v, &projNoClip);
            pddiMultMatrix44(state.matrixStack[PDDI_MATRIX_MODELVIEW]->Top(), &projNoClip, &vu_context->transform.clipMatrix);
            */

            break;
        }

        case PDDI_PROJECTION_ORTHOGRAPHIC:
        {
            // todo: fix for guard band
            float l = -0.5f;
            float r =  0.5f;
            float t = -0.5f * (1.0f / camera.aspect);
            float b = 0.5f * (1.0f / camera.aspect); //interlace fix *2
            float n = camera.nearPlane;
            float f = camera.farPlane;
            float z0 = 2.0f / (f-n);
            float z1 = -1.0f - (2*n / (f-n));

            vu_context->transform.projection.m[0][0] =  ooGuardBandScaleX * 2.0f / (r - l);
            vu_context->transform.projection.m[1][1] =  ooGuardBandScaleY * 2.0f / (t - b);
            vu_context->transform.projection.m[2][2] =  z0;
            vu_context->transform.projection.m[3][2] =  z1;
            break;
        }

        case PDDI_PROJECTION_DEVICE:
        {
            float l = -0.5f;
            float r = width - 0.5f;
            float t = -0.5f;
            float b = height - 0.5f;
            float n = camera.nearPlane;
            float f = camera.farPlane;
            float z0 = 2.0f / (f-n);
            float z1 = -1.0f - (2*n / (f-n));

            vu_context->transform.projection.m[0][0] =  2.0f / (r - l);
            vu_context->transform.projection.m[1][1] =  2.0f / (b - t);
            vu_context->transform.projection.m[2][2] =  z0;
            vu_context->transform.projection.m[3][2] =  z1;
            vu_context->transform.projection.m[3][0] = -1.0f;
            vu_context->transform.projection.m[3][1] = -1.0f;
            break;
        }

        default:
            break;
    }

    RebuildTransformContext(view, width, height);
}

//------------------------------------------------------------------------------
void ps2Context::SetupHardwareLight(int i)
{
    ADD_STAT(PDDI_STAT_LIGHT_OPS, 1);
    anyLightStateChanged = true;
    lightViewMatrix[i] = *state.matrixStack[PDDI_MATRIX_MODELVIEW]->Top();
    lightStateChanged[i] = true;
}

void ps2Context::LazyStateSet(void)
{
    if(transformStateChanged)
    {
        ADD_STAT(PDDI_STAT_MATRIX_OPS, 1);
        EE::QwordCopy(&vu_context->transform.matrix, state.matrixStack[PDDI_MATRIX_MODELVIEW]->Top(), 4);
        // compute the view vector
        inverseModelView.InvertOrtho(*state.matrixStack[PDDI_MATRIX_MODELVIEW]->Top());
        vu_context->light.view[0] = inverseModelView.m[3][0];
        vu_context->light.view[1] = inverseModelView.m[3][1];
        vu_context->light.view[2] = inverseModelView.m[3][2];
    }

    if(anyLightStateChanged || transformStateChanged)
    {
        vu_context->SetDirty(true);

        for(int i = 0; i < 4; i++)
        {
            if(lightStateChanged[i])
            {
                pddiMatrix* viewMatrix = &lightViewMatrix[i];
                pddiLight* light = &state.lightingState->light[i];

                // Transform light worldspace vector into viewspace.
                // This lets us use the inverse model-view matrix to go back into object
                // space to do lighting, i.e. the same space as the object's normals.
                if(light->type == PDDI_LIGHT_DIRECTIONAL)
                {
                    light->viewDirection.Rotate(light->worldDirection, *viewMatrix);
                }
                else
                {
                    light->viewPosition.Transform(light->worldPosition, *viewMatrix);
                }
            }

            if(lightStateChanged[i] || transformStateChanged)
            {
                pddiLight& light = state.lightingState->light[i];

                if(light.enabled)
                {
                    pddiVector v;
                    if(light.type == PDDI_LIGHT_DIRECTIONAL)
                    {
                        // directional light
                        v.Set(-light.viewDirection.x, -light.viewDirection.y, -light.viewDirection.z);
                    }
                    else
                    {
                        // point light
                        // Well, not really - we just compute the vector from the light position to
                        // the origin of the object, and use that as a directional light.  It's a
                        // pretty good approximation of point lights most (some) of the time.
                        pddiMatrix* viewMatrix = state.matrixStack[PDDI_MATRIX_MODELVIEW]->Top();
                        v.Set(light.viewPosition.x - viewMatrix->m[3][0],
                              light.viewPosition.y - viewMatrix->m[3][1],
                              light.viewPosition.z - viewMatrix->m[3][2] );
                        // attenuate, and normalise
                        float d = sqrtf(v.x*v.x + v.y*v.y + v.z*v.z);
                        float a = 1.0f / (light.attenA + d*light.attenB + d*d*light.attenC);
                        if(a > 1.0f) a = 1.0f;
                        float ood = 1.0f / d;
                        v.x *= a * ood;
                        v.y *= a * ood;
                        v.z *= a * ood;
                    }
                    pddiVector lv;
                    lv.Rotate(v, inverseModelView);
                    vu_context->light.SetLightDirection(i, lv);
                }
                else
                {
                    pddiVector zero(0.0f, 0.0f, 0.0f);
                    vu_context->light.SetLightDirection(i, zero);
                }
                lightStateChanged[i] = false;
            }
        }
        anyLightStateChanged = false;
    }

    transformStateChanged = false;
}

//-------------------------------------------------------------------
void ps2Context::SetZRange(float n, float f)
{
    pddiBaseContext::SetZRange(n, f);
    RebuildTransformContext();
}

//-------------------------------------------------------------------
void ps2Context::SetViewWindow(float left, float top, float right, float bottom)
{
    pddiBaseContext::SetViewWindow(left, top, right, bottom);
    RebuildTransformContext();
}

//-------------------------------------------------------------------
void ps2Context::SetColourWrite(bool red, bool green, bool blue, bool alpha)
{
    pddiBaseContext::SetColourWrite(red, green, blue, alpha);

    unsigned mask = 0;
    if(display->GetDepth() == 16)
    {
        if(!red)   mask |= 0xf8;
        if(!green) mask |= 0xf800;
        if(!blue)  mask |= 0xf80000;
        if(!alpha) mask |= 0x80000000;
    }
    else
    {
        if(!red)   mask |= 0xff;
        if(!green) mask |= 0xff00;
        if(!blue)  mask |= 0xff0000;
        if(!alpha) mask |= 0xff000000;
    }

   g_display->SetFBMask(mask);
}

//-------------------------------------------------------------------
void ps2Context::EnableZBuffer(bool enable) // horrible name! it just disables the test
{
    pddiBaseContext::EnableZBuffer(enable);
    //gsContext->test.reg.test.ZTE = enable; // aug27/2002 - ?! ZTE is required to always be 1
    if (enable)
        gsContext->test.reg.test.ZTST = SHADER::zCompareTable[state.renderState->zCompare];
    else
        gsContext->test.reg.test.ZTST = SCE_GS_ZALWAYS; // all pixels pass
    SetZWrite(state.renderState->zWrite);
}

void ps2Context::SetZWrite(bool enable)
{
    pddiBaseContext::SetZWrite(enable);
    gsContext->zbuf.reg.zbuf.ZMSK = !enable;   // 0 = z writes enabled, 1 = disabled
}

//-------------------------------------------------------------------
void ps2Context::SetDestAlphaTest(ps2DestAlphaTestMode mode)
{
    gsContext->test.reg.test.DATE = mode != PS2_DESTALPHA_NONE;
    gsContext->test.reg.test.DATM = SHADER::destAlphaTestTable[mode];
}

//-------------------------------------------------------------------
void ps2Context::SetFog(pddiColour colour, float start, float end)
{
    pddiBaseContext::SetFog(colour, start, end);
    /*
    SetGSRegister( SCE_GS_FOGCOL, SCE_GS_SET_FOGCOL(colour.Red(), colour.Green(), colour.Blue()) );
    pddiCamera& camera = state.viewState->camera;
    vu_context->transform.fogScale = -(255.0f / (end - start));
    vu_context->transform.fogOffset = ((255.0f * start) / (end - start)) + 255.0f; 
    vu_context->SetDirty(true);
    */
}
  
void ps2Context::SetZCompare(pddiCompareMode mode)
{
    pddiBaseContext::SetZCompare(mode);
    gsContext->test.reg.test.ZTST = SHADER::zCompareTable[mode];    
}

//-------------------------------------------------------------------
void ps2Context::SetCullMode(pddiCullMode mode)
{
    pddiBaseContext::SetCullMode(mode);  
    unsigned cullFlag = 0;

    // jun26/2001 amb : temp hack to prevent teams from
    // using the BFC   
    if ( mode == PDDI_CULL_SHADOW_BACKFACE )
        cullFlag = 2;
    if ( mode == PDDI_CULL_SHADOW_FRONTFACE )
        cullFlag = 4;
   
    vu_context->transform.clipper = (vu_context->transform.clipper & 1) | cullFlag;
    vu_context->SetDirty(true);
}

pddiCullMode ps2Context::GetCullMode()
{
    return pddiBaseContext::GetCullMode();
}

//--------------------------------------------------------------------
void ps2Context::SetAmbientLight(pddiColour ambient)
{
    pddiBaseContext::SetAmbientLight(ambient);
    globalAmbient.SetNormalized(ambient);
    vu_context->SetDirty(true);
}

//--------------------------------------------------------------------
void ps2Context::EnableClipper(bool enable)
{
    /* nop */
}
//------------------------------------------------------------------------------
void ps2Context::DrawPrimBuffer(pddiShader* s, pddiPrimBuffer* b)
{
    ps2Shader* shader = s ? (ps2Shader*)s : (ps2Shader*)defaultShader;
    ps2PrimBuffer* buffer = (ps2PrimBuffer*)b;

    ADD_STAT(PDDI_STAT_BUFFERED_PRIM_CALLS, 1);
    ADD_STAT(PDDI_STAT_BUFFERED_PRIM, buffer->GetPrimCount());
    ADD_STAT(PDDI_STAT_BUFFERED_PRIM_VERT, buffer->GetVertexCount());


    if(anyLightStateChanged || transformStateChanged)
    {
        LazyStateSet();
    }
    
    if(vu_context->GetDirty() || !shader->IsCurrent())
    {
        ADD_STAT(PDDI_STAT_MATERIAL_OPS, 1);
        VifStream vif;
        mfifo->OpenVifStream(vif);
        shader->Bind(gsContext, vif);
        //mfifo->CloseVifStreamDump(vif);
        mfifo->CloseVifStreamAdd(vif);

#ifdef PS2_VALIDATE_SHADERS
        shader->Validate(buffer->GetVertexFormat());
#endif
    }

    buffer->SetProgramAddress(shader->GetMicrocode());

    PDDIASSERT(buffer->GetDMABuffer() && "PDDI ERROR:  Call pddiPrimBuffer::Finalize() before rendering.");

    unsigned qwordCount = 1;
    unsigned* dma = mfifo->GetBuffer();

    if(buffer->GetVertexFormat() & PDDI_V_INDICES)
    {
        qwordCount += extHardwareSkinning->MatrixPalette()->BuildPacket(dma);
    }

    dma[0] = DMA::SetSourceChainTag(buffer->GetDMABufferSize()/16, 0, DMA::ref, 0);
    dma[1] = DMA::SetSourceChainAddr(((unsigned)buffer->GetDMABuffer() & ~0x30000000), 0);
    dma[2] = 0;
    dma[3] = 0;
    mfifo->Add(mfifo->GetBuffer(), qwordCount);

    #if 0
        mfifo->Flush();
        mfifo->Dump(buffer->GetDMABuffer(), buffer->GetDMABufferSize()/16);
        // Debug::DumpVU1(0, 0x100);
        // Debug::DumpVU1(0xf00, 0x1000);
    #endif
}

//------------------------------------------------------------------------------
// only one stream can be open at once
static ps2PrimStream primStream;

pddiPrimStream* ps2Context::BeginPrims(pddiShader* s, pddiPrimType primType, unsigned vertexType, int vertexCount, unsigned pass)
{
    ps2Shader* shader = s ? (ps2Shader*)s : (ps2Shader*)defaultShader;

    if(anyLightStateChanged || transformStateChanged)
    {
        LazyStateSet();
    }

    ADD_STAT(PDDI_STAT_MATERIAL_OPS, 1);
    VifStream vif;
    mfifo->OpenVifStream(vif);
    shader->Bind(gsContext, vif);
    mfifo->CloseVifStreamAdd(vif);

    ADD_STAT(PDDI_STAT_STREAMED_PRIM_CALLS, 1);
    primStream.Begin(this, primType, vertexType, shader->GetMicrocode());
    return &primStream;
}

void ps2Context::EndPrims(pddiPrimStream* stream)
{
    stream->End();
    ADD_STAT(PDDI_STAT_STREAMED_PRIM, ((ps2PrimStream*)stream)->GetPrimCount());
    ADD_STAT(PDDI_STAT_STREAMED_PRIM_VERT, ((ps2PrimStream*)stream)->GetVertexCount());
}

//--------------------------------------------------------------------
static float zFlipTable[] =
{
    1.0f,   // PERSPECTIVE
    -1.0f,  // ORTHOGRAPHIC
    -1.0f   // DEVICE
};

//------------------------------------------------------------------------------    
void ps2Context::RebuildTransformContext(const pddiViewState* view, float dw, float dh)
{
    BEGIN_SAMPLE(RebuildTransformContext_perf);
    float wx, wy, ww, wh;

    pddiProjectionMode projMode = view->projectionMode;
    if(projMode == PDDI_PROJECTION_DEVICE)
    {
        wx = 0.0f;
        wy = 0.0f;
        ww = 1.0f;
        wh = 1.0f;
    }
    else
    {
        wx = view->viewWindow.left;
        wy = view->viewWindow.top;
        ww = view->viewWindow.right - wx;
        wh = view->viewWindow.bottom - wy;
    }

    const float zRange = 16777216.0f/16.0f - 1.0f;  // assumes 24 bit z buffer

    vu_context->transform.viewScaleX = dw * ww * 0.5f;
    vu_context->transform.viewScaleY = dh * wh * 0.5f;
    vu_context->transform.scaleZ = zFlipTable[projMode] * (zRange/2.0f);
    vu_context->transform.viewOffsetX = (wx * dw) + vu_context->transform.viewScaleX;
    vu_context->transform.viewOffsetY = (wy * dh) + vu_context->transform.viewScaleY;
    vu_context->transform.viewOffsetX += 2048-dw*0.5f;
    vu_context->transform.viewOffsetY += 2048-dh*0.5f;
      
    vu_context->transform.offsetZ = zRange/2.0f;

    if( projMode == PDDI_PROJECTION_PERSPECTIVE || projMode == PDDI_PROJECTION_ORTHOGRAPHIC )
    {
        vu_context->transform.viewScaleX *= guardBandScaleX;
        vu_context->transform.viewScaleY *= guardBandScaleY;
    }
    
    gsContext->scissor.reg.scissor.SCAX0 = (int)(wx*dw);
    gsContext->scissor.reg.scissor.SCAX1 = (int)(wx*dw + dw*ww) - 1;
    gsContext->scissor.reg.scissor.SCAY0 = (int)(wy*dh);
    gsContext->scissor.reg.scissor.SCAY1 = (int)(wy*dh + dh*wh) - 1;
            
    vu_context->SetDirty(true);

    END_SAMPLE(RebuildTransformContext_perf);
}

//------------------------------------------------------------------------------
void ps2Context::GetScissorRegion(int* x0, int* x1, int* y0, int* y1)
{
    const pddiViewState* view = state.viewState;
    float wx, wy, ww, wh;

    const float dw = display->GetWidth();
    const float dh = display->GetHeight();

    pddiProjectionMode projMode = view->projectionMode;
    if(projMode == PDDI_PROJECTION_DEVICE)
    {
        wx = 0.0f;
        wy = 0.0f;
        ww = 1.0f;
        wh = 1.0f;
    }
    else
    {
        wx = view->viewWindow.left;
        wy = view->viewWindow.top;
        ww = view->viewWindow.right - wx;
        wh = view->viewWindow.bottom - wy;
    }

    *x0 = EE::FTOI(wx*dw);
    *x1 = EE::FTOI(wx*dw + dw*ww) - 1;
    *y0 = EE::FTOI(wy*dh);
    *y1 = EE::FTOI(wy*dh + dh*wh) - 1;
}

//------------------------------------------------------------------------------
// this function pre-comuputes several lighting colours to reduce the amount of per-vertex
// work that the VU has to perform

// PDDI Lighting equation:
// clamp[0,1] ( Em + (Ag * Dm) + Sum[nLight]( (v.n * (Dl * Dm) + (n.h)^p * (Dl * Sm)) * At ) )
// Where:
// Em = material emission colour
// Ag = global ambient colour
// v  = light direction vector
// n  = surface normal
// Dl = light diffuse colour
// Dm = material diffuse colour
// h  = halfway vector
// p  = shininess coefficient
// Sm = material specular colour
// At = attenuation

// we pre-compute
// Dl*Dm = light colour * shader diffuse colour
// Dl*Sm = light intensity * shader specular colour (the vu code only supports monochromatic specular)
// Em + Ag*Dm = shader emissive colour + (global ambient colour * shader diffuse colour)

// note:  Previous versions of the lighting model multiplied Ag (global ambient) by Am (material ambient).
//        This has been changed to Dm (material diffuse).  The Am term has been removed.

void ps2Context::PreMultiplyLights(const ps2LightingProperties* lp)
{
    BEGIN_SAMPLE(PreMultiplyLights_perf);

    vu_context->SetDirty(true);

    // Dl*Dm [0.0-255.0]
    if ( lp->specular > 0.0f )
    {
        for(int i=0; i < 4; i++)
        {
            if(state.lightingState->light[i].enabled)
            {
                // diffuse case
                vu_context->light.lightColour[i].r = state.lightingState->light[i].red   * lp->diffuse.r;
                vu_context->light.lightColour[i].g = state.lightingState->light[i].green * lp->diffuse.g;
                vu_context->light.lightColour[i].b = state.lightingState->light[i].blue  * lp->diffuse.b;
                vu_context->light.lightColour[i].a = 0;

                // specular case (Dl*Sm)
                vu_context->light.specular[i] = state.lightingState->light[i].intensity * lp->specular;
            }
        }
        // set the material shininess
        vu_context->light.shininess = lp->shininess;

        // The vu code will look at the lower 16 bits of the shininess to determine whether or
        // not to call the specular renderer.  This will ensure that one of the low bits are
        // set when specular is desired.
        unsigned* s = reinterpret_cast<unsigned*>(&vu_context->light.shininess);
        *s |= 1;
    }
    else
    {
        for(int i=0; i < 4; i++)
        {
            if(state.lightingState->light[i].enabled)
            {
                // diffuse case
                vu_context->light.lightColour[i].r = state.lightingState->light[i].red   * lp->diffuse.r;
                vu_context->light.lightColour[i].g = state.lightingState->light[i].green * lp->diffuse.g;
                vu_context->light.lightColour[i].b = state.lightingState->light[i].blue  * lp->diffuse.b;
                vu_context->light.lightColour[i].a = 0;
            }
        }
        vu_context->light.shininess = 0.0f;
    }
   
    // Em + Ag*Dm [0.0-255.0], diffuse alpha is ignored, emissive alpha is passed through
    vu_context->light.additive.r = 255.0f * (lp->emissive.r + globalAmbient.r * lp->diffuse.r);
    vu_context->light.additive.g = 255.0f * (lp->emissive.g + globalAmbient.g * lp->diffuse.g);
    vu_context->light.additive.b = 255.0f * (lp->emissive.b + globalAmbient.b * lp->diffuse.b);
    vu_context->light.additive.a = 128.0f * (lp->emissive.a);

    EE::ClampColourVector(&vu_context->light.additive);

    END_SAMPLE(PreMultiplyLights_perf);
}

//------------------------------------------------------------------------------
pddiExtension* ps2Context::GetExtension(unsigned id)
{
    pddiExtension* ext = pddiBaseContext::GetExtension(id);
    if(!ext)
    {
        switch(id)
        {
            case PDDI_EXT_PS2_CONTROL:
                ext = extPS2Control;
            break;
            case PDDI_EXT_HARDWARE_SKINNING:
                ext = extHardwareSkinning;
            break;
            case PDDI_EXT_FRAMEBUFFER_EFFECTS:
                ext = extFramebufferEffects;
            break;
        }
    }
    return ext;
}

bool ps2Context::VerifyExtension(unsigned id)
{
    bool exists = pddiBaseContext::VerifyExtension(id);
    switch(id)
    {
        case PDDI_EXT_HARDWARE_SKINNING:
        case PDDI_EXT_PS2_CONTROL:
        case PDDI_EXT_FRAMEBUFFER_EFFECTS:
            exists = true;
        break;
        default:
        break;
    }
    return exists;
}

void ps2Context::DrawSync()
{
    SyncGSPath();
}

int ps2Context::HardwareZbufferFog( int r, int g, int b, int a, float znear, float zfar )
{
    return 0;
}

int ps2Context::SetShadowColour( int r, int g, int b, int a )
{
    // coeff = 0.299, 0.587 and 0.114
    int intensity = (int)((float)r * 0.299f + (float)g * 0.587f + (float)b * 0.114f);

    if ( intensity > 0xff ) {
        intensity = 0xff;
    }

    shadowColour.SetRed(intensity);
    shadowColour.SetGreen(intensity);
    shadowColour.SetBlue(intensity);
    shadowColour.SetAlpha(intensity);

    return 0;
}

int ps2Context::SwirlyEffect(float t, float du, float dv, int flags)
{
    /* not implemented */
    return 0;
}

void ps2Context::PreSwapProcess( unsigned int src, int frameNum )
{
    /* nop */
}

int ps2Context::ClearDestAlpha(const pddiRect* rc)
{
    int left,right,top,bottom;
    const int sw = g_display->GetWidth();
    const int sh = g_display->GetHeight();
    if (rc)
    {
        left   = rc->left;
        right  = rc->right;
        top    = rc->top;
        bottom = rc->bottom;
    }
    else
    {
        left   = 0;
        right  = sw;
        top    = 0;
        bottom = sh;
    }

    const int width  = right - left;
    const int height = bottom - top;

    const int x = top<<4;
    const int y = left<<4;
    const int w = x + (width<<4);
    const int h = y + (height<<4);

    VifStream gifPkt;
    mfifo->OpenVifStream(gifPkt);
    
    gifPkt.FlushA_Safe();

    gifPkt.BeginGifAD();
    gifPkt.A_D( SCE_GS_PRIM,    SCE_GS_PRIM_SPRITE );
    gifPkt.A_D( SCE_GS_PRMODE,  SCE_GS_SET_PRMODE(0, 0, 0, 1, 0, 0, 1, 0) ); // abe = 1, context 2
    gifPkt.A_D( SCE_GS_XYOFFSET_2,  SCE_GS_SET_XYOFFSET(0,0));
    gifPkt.A_D( SCE_GS_SCISSOR_2,  SCE_GS_SET_SCISSOR(0,sw-1,0,sh-1));
    gifPkt.A_D( SCE_GS_TEST_2,  SCE_GS_SET_TEST(1, 0, 0, 1, 0, 0, 1, SCE_GS_ZALWAYS) ); // disable ztest, zwrite
    gifPkt.A_D( SCE_GS_ALPHA_2, SCE_GS_SET_ALPHA( 1, 0, 2, 2 , 0x80 ) ); // (Cd - Cs)*0x80 + 0 , subtractive blend
    gifPkt.A_D( SCE_GS_RGBAQ,   SCE_GS_SET_RGBAQ( 0, 0, 0, 0xff, 0x3f80000 ) ); // subtract 0xff from alpha
    gifPkt.A_D( SCE_GS_XYZ2 ,   SCE_GS_SET_XYZ2(x, y, 0) );
    gifPkt.A_D( SCE_GS_XYZ2 ,   SCE_GS_SET_XYZ2(w, h, 0) );
    gifPkt.EndGifAD();

    mfifo->CloseVifStreamAdd(gifPkt);

    return 0;
}

int ps2Context::SampleDestAlphaAndFill(const pddiRect* rc)
{
    int dx = (int)((rc->right  - rc->left)/16.0f);
    int dy = (int)((rc->bottom - rc->top)/16.0f);

    int levels = 0;
    while (dx > 2 && dy > 2)
    {
        levels++;
        dx /= 2;
        dy /= 2;
    }

    return vram->DownsampleBackbuffer(rc,levels);
}


int ps2Context::TransformToScreen( const pddiVector* a, pddiVector* out )
{
    pddiMatrix mtx __attribute__((aligned(16)));; 

    pddiVector4 in(a->x,a->y,a->z,1.0f);
    pddiVector4 output;

    mtx.Mult(vu_context->transform.matrix, vu_context->transform.projection);
    mtx.Transform(1,&in,&output);

    if (output.w > 0.0f)
    {
        float Q = 1.0f/output.w;
        out->x = (output.x*Q)*vu_context->transform.viewScaleX + vu_context->transform.viewOffsetX;
        out->y = (output.y*Q)*vu_context->transform.viewScaleY + vu_context->transform.viewOffsetY;
        out->z = (output.z*Q)*vu_context->transform.scaleZ     + vu_context->transform.offsetZ;
    }

    return (output.w > 0.0f);
}



// this is the funky DA motionblur

void ps2Context::MotionBlur(unsigned src,unsigned dst, const pddiRect* srcRect,const pddiRect* destRect)
{
    PDDIASSERT(mfifo);

    const int sw = display->GetWidth();
    const int sh = display->GetHeight();

    const float aspect = (float)sw/(float)sh;

    int zoomx = (int)(motionBlurZoom*aspect);
    int zoomy = (int)(motionBlurZoom);

    const int u0 = zoomx*16 + 8;
    const int v0 = zoomy*16 + 8;
    const int u1 = (sw - zoomx)*16 - 8;
    const int v1 = (sh - zoomy)*16 - 8;   

    // in 12.4 format
    const int x0 = (2048<<4) - (sw<<3);
    const int y0 = (2048<<4) - (sh<<3);
    const int x1 = (2048<<4) + (sw<<3);
    const int y1 = (2048<<4) + (sh<<3);

    int tbw = sw / 64; //sw / 64;
    int psm ; // assume 16 bit
    psm = 2;
    int tbp = src;
    int alpha = (int)( 127.0f * motionBlurAlpha);   

    unsigned zbp = g_display->GetZBufferAddress();
    unsigned zsm = g_display->GetZBufferFormat();

    // FIXME : OH WHAT  A HACK!!!
    if ( motionBlurTheta > 0.01f )
    {

        VifStream gifPkt;
        mfifo->OpenVifStream(gifPkt);
        gifPkt.FlushA_Safe();

        gifPkt.BeginGifAD();
        gifPkt.A_D( SCE_GS_ZBUF_1  , SCE_GS_SET_ZBUF( zbp , zsm , 1 ) ); // disable zwrites
        gifPkt.A_D( SCE_GS_PRIM    , (u_long)(SCE_GS_PRIM_SPRITE) );
        gifPkt.A_D( SCE_GS_PRMODE  , SCE_GS_SET_PRMODE(0, 1, 0, 1, 0, 1, 0, 0) );  // TME=1 ABE = 1
        gifPkt.A_D( SCE_GS_TEST_1  , SCE_GS_SET_TEST_1(0, 1, 0, 0, 0, 0, 1, SCE_GS_ZALWAYS) );   // disable z, alpha test
        gifPkt.A_D( SCE_GS_TEX0_1  , SCE_GS_SET_TEX0_1(tbp,tbw,psm,10,10,1,0,0,0,0,0,0) );
        gifPkt.A_D( SCE_GS_TEXA    , SCE_GS_SET_TEXA(128,0,128) ); 
        gifPkt.A_D( SCE_GS_ALPHA_1 , SCE_GS_SET_ALPHA(0, 2, 2, 1, alpha) ); // ADDITIVE
        gifPkt.EndGifAD();
        mfifo->CloseVifStreamAdd(gifPkt);

        static const long rectCol[3] = { 
            SCE_GS_SET_RGBAQ(96, 0, 0, 128, 0x3f800000),
            SCE_GS_SET_RGBAQ(0, 96, 0, 128, 0x3f800000),
            SCE_GS_SET_RGBAQ(0, 0 ,96, 128, 0x3f800000)};

        ps2Vram::TexRect rect;
        
        // 3 passes for R G B
        for(int i=0;i<3;i++)
        {
            mfifo->OpenVifStream(gifPkt);                               
            gifPkt.BeginGifAD();

            gifPkt.A_D( SCE_GS_ZBUF_1  , SCE_GS_SET_ZBUF( zbp , zsm , 1 ) ); // disable zwrites
            gifPkt.A_D( SCE_GS_PRIM    , (u_long)(SCE_GS_PRIM_SPRITE) );
            gifPkt.A_D( SCE_GS_PRMODE  , SCE_GS_SET_PRMODE(0, 1, 0, 1, 0, 1, 0, 0) );  // TME=1 ABE = 1
            
            rect.Set( u0+i*64,v0+i*64,x0,y0,u1-i*64,v1-i*64,x1,y1 );
            gifPkt.A_D( SCE_GS_RGBAQ   , rectCol[i] );
            vram->BuildGifStrips( gifPkt, rect );
            gifPkt.A_D( SCE_GS_ZBUF_1  , SCE_GS_SET_ZBUF( zbp, zsm , !state.renderState->zWrite ) ); // enable zwrites
            gifPkt.EndGifAD();
            mfifo->CloseVifStreamAdd(gifPkt);
        }
    }
    else
    {
        VifStream gifPkt;
        mfifo->OpenVifStream(gifPkt);
        gifPkt.FlushA_Safe();
        gifPkt.BeginGifAD();

        gifPkt.A_D( SCE_GS_ZBUF_1  , SCE_GS_SET_ZBUF( zbp , zsm , 1 ) ); // disable zwrites
        gifPkt.A_D( SCE_GS_PRIM    , (u_long)(SCE_GS_PRIM_SPRITE) );
        gifPkt.A_D( SCE_GS_PRMODE  , SCE_GS_SET_PRMODE(0, 1, 0, 1, 0, 1, 0, 0) );  // TME=1 ABE = 1
        gifPkt.A_D( SCE_GS_TEST_1  , SCE_GS_SET_TEST_1(0, 1, 0, 0, 0, 0, 1, SCE_GS_ZALWAYS) );   // disable z, alpha test
        gifPkt.A_D( SCE_GS_TEX0_1  , SCE_GS_SET_TEX0_1(tbp,tbw,psm,10,10,1,0,0,0,0,0,0) );
        gifPkt.A_D( SCE_GS_TEXA    , SCE_GS_SET_TEXA(128,0,128) ); 
        gifPkt.A_D( SCE_GS_ALPHA_1 , SCE_GS_SET_ALPHA(0, 1, 2, 1, alpha) ); // ALPHA
        gifPkt.A_D( SCE_GS_RGBAQ   , SCE_GS_SET_RGBAQ(128, 128, 128, 128, 0x3f800000) );    
        
        //gifPkt.A_D( SCE_GS_UV      , SCE_GS_SET_UV(u0,v0) );
        //gifPkt.A_D( SCE_GS_RGBAQ   , SCE_GS_SET_RGBAQ(128, 128, 128, 128, 0x3f800000) );    
        //gifPkt.A_D( SCE_GS_XYZ2    , SCE_GS_SET_XYZ2(x0 , y0 , 1) );
        //gifPkt.A_D( SCE_GS_UV      , SCE_GS_SET_UV(u1,v1) );
        //gifPkt.A_D( SCE_GS_XYZ2    , SCE_GS_SET_XYZ2(x1 , y1 , 1) );
        
        ps2Vram::TexRect rect = { u0,v0,x0,y0,u1,v1,x1,y1 };
        vram->BuildGifStrips( gifPkt, rect );
        gifPkt.A_D( SCE_GS_ZBUF_1  , SCE_GS_SET_ZBUF( zbp, zsm , !state.renderState->zWrite ) ); // enable zwrites
        
        gifPkt.EndGifAD();
        mfifo->CloseVifStreamAdd(gifPkt);
    }
}


void ps2Context::RenderMotionBlur(void)
{
    unsigned int fpb = vram->GetCurrentDispFrameAddr();
    MotionBlur( fpb, 0, NULL, NULL );
}


unsigned ps2Context::GetBackBufferVRAM(void)
{
    return vram->GetCurrentDrawFrameAddr();
}

/******* WATCHER STUFF ***************************************/

#ifdef PS2_USE_THE_WATCHER

struct ps2Watcher
{
    bool textureCache;
    bool texturing;
    bool clipper;
    bool forceSync;
    ps2VramView vram;
    bool  motionBlur;
    float motionBlurAlpha;
    float motionBlurZoom;
    bool  motionRgb;
} g_ps2Watcher;

static ps2Watcher copyWatcher;

typedef void (*RADDEBUGWATCH_CALLBACK)( void* userData );

static IRadDebugWatch::EnumerationElement vramInfo[ ] = { {"Front", PS2_FRONT_BUFFER }, {"Back", PS2_DRAW_BUFFER }, {"Z Buffer",PS2_ZBUFFER } , {"Texture Memory", PS2_TEXTURE_MEMORY } };

#define IF_CHANGED(x) if ( copyWatcher.##x != g_ps2Watcher.##x ) 

void ps2Context::WatcherCallback(void *userData)
{
    ps2Context* ctx = (ps2Context*)userData;

    ps2ExtPS2Control* ps2Control = (ps2ExtPS2Control*)ctx->GetExtension( PDDI_EXT_PS2_CONTROL );
    ps2ExtFramebufferEffects* fbControl = (ps2ExtFramebufferEffects*)ctx->GetExtension( PDDI_EXT_FRAMEBUFFER_EFFECTS );

    PDDIASSERT( ps2Control && fbControl );

    IF_CHANGED(textureCache)
    {        
        ps2Control->DisableTexCache( !g_ps2Watcher.textureCache );
    }

    IF_CHANGED(texturing)
    {
        ctx->SyncGSPath();
        ctx->ClearVRAM(0xff,0xff,0xff,0xff);
        ps2Control->EnableTextures( g_ps2Watcher.texturing );
    }

    IF_CHANGED(clipper)
    {
        ps2Control->EnableClipper( g_ps2Watcher.clipper );
    }

    IF_CHANGED(forceSync)
    {
        ps2Control->ForceMFIFOSync( g_ps2Watcher.forceSync );
    }

    IF_CHANGED(vram)
    {
        ps2Control->DisplayVram( g_ps2Watcher.vram );
    }

    IF_CHANGED( motionBlur )
    {
        fbControl->EnableMotionBlur(g_ps2Watcher.motionBlur,g_ps2Watcher.motionBlurAlpha,g_ps2Watcher.motionBlurZoom,g_ps2Watcher.motionRgb ? 0.0f : 1.0f );
    }

    IF_CHANGED( motionBlurAlpha )
    {
        fbControl->EnableMotionBlur(g_ps2Watcher.motionBlur,g_ps2Watcher.motionBlurAlpha,g_ps2Watcher.motionBlurZoom,g_ps2Watcher.motionRgb ? 0.0f : 1.0f );
    }

    IF_CHANGED( motionBlurZoom )
    {
        fbControl->EnableMotionBlur(g_ps2Watcher.motionBlur,g_ps2Watcher.motionBlurAlpha,g_ps2Watcher.motionBlurZoom,g_ps2Watcher.motionRgb ? 0.0f : 1.0f );
    }

    IF_CHANGED( motionRgb )
    {
        fbControl->EnableMotionBlur(g_ps2Watcher.motionBlur,g_ps2Watcher.motionBlurAlpha,g_ps2Watcher.motionBlurZoom,g_ps2Watcher.motionRgb ? 0.0f : 1.0f );
    }

    // update copy
    memcpy( &copyWatcher, &g_ps2Watcher, sizeof(ps2Watcher) );
}
#undef IF_CHANGED

void ps2Context::InitTheWatcher()
{
    printf("PDDI : Initializing TheWatcher\n");

    g_ps2Watcher.textureCache = true;
    g_ps2Watcher.texturing    = true;
    g_ps2Watcher.clipper      = true;
    g_ps2Watcher.forceSync    = false;
    g_ps2Watcher.motionBlur = false;
    g_ps2Watcher.motionBlurAlpha = 0.5f;
    g_ps2Watcher.motionBlurZoom = 0.0f;
    g_ps2Watcher.motionRgb = false;


    memcpy( &copyWatcher, &g_ps2Watcher, sizeof(ps2Watcher) );

    radDbgWatchAddBoolean_Macro( ( &g_ps2Watcher.textureCache, "enable", "\\PDDI\\PS2\\Texture Cache" , ps2Context::WatcherCallback, this) );
    radDbgWatchAddBoolean_Macro( ( &g_ps2Watcher.texturing, "enable", "\\PDDI\\PS2\\Texturing" , ps2Context::WatcherCallback, this) );
    radDbgWatchAddBoolean_Macro( ( &g_ps2Watcher.clipper, "enable", "\\PDDI\\PS2\\Clipper", ps2Context::WatcherCallback, this) );
    radDbgWatchAddBoolean_Macro( ( &g_ps2Watcher.forceSync, "enable", "\\PDDI\\PS2\\Force Sync" , ps2Context::WatcherCallback, this) );
    radDbgWatchAddEnumeration_Macro( ( (int*) &g_ps2Watcher.vram, vramInfo, 4, "View","\\PDDI\\PS2\\Vram", ps2Context::WatcherCallback, this) );
    
    //
    radDbgWatchAddBoolean_Macro( ( &g_ps2Watcher.motionBlur, "enable", "\\PDDI\\PS2\\Motion Blur" , ps2Context::WatcherCallback, this) );
    radDbgWatchAddFloat_Macro  ( ( &g_ps2Watcher.motionBlurAlpha , "alpha" , "\\PDDI\\PS2\\Motion Blur", NULL, NULL, 0.0f, 1.0f) );
    radDbgWatchAddFloat_Macro  ( ( &g_ps2Watcher.motionBlurZoom , "zoom" , "\\PDDI\\PS2\\Motion Blur", NULL, NULL, 0.0f, 80.0f) );
    radDbgWatchAddBoolean_Macro( ( &g_ps2Watcher.motionRgb, "rgb mode", "\\PDDI\\PS2\\Motion Blur" , ps2Context::WatcherCallback, this) );
}

#endif

