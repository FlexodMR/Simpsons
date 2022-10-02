//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


#include <pddi/gamecube/gccon.hpp>
#include <pddi/gamecube/gctex.hpp>
#include <pddi/gamecube/simpleshader.hpp>
#include <pddi/gamecube/gcdisplay.hpp>
#include <pddi/gamecube/gcdev.hpp>
#include <pddi/gamecube/gcskin.hpp>
#include <pddi/gamecube/gcBasePrimBuffer.hpp>
#include <pddi/gamecube/gcPrimBuffer.hpp>
#include <pddi/gamecube/gcbufcopy.hpp>
#include <pddi/gamecube/gcfbeffects.hpp>
#include <pddi/gamecube/gcvistest.hpp>


#include <pddi/gamecube/mallocaligned.hpp>

#include <dolphin/gx.h>
#include <dolphin/mtx.h>

#include <math.h>
#include <string.h>
#include <stdio.h>

static gcPrimStream gPrimStream;
gcContext *gcContext::gContext = NULL;

static inline void FillGXMatrix(float gx[3][4], pddiMatrix &m);
float VertsToPrims(pddiPrimType type, int vertexcount);
float VertsToPrims(GXPrimitive type, int vertexcount);


// vertex arrays rendering
GXPrimitive primTypeTable[5] =
{                       
    GX_TRIANGLES,      // PDDI_PRIM_TRIANGLES,
    GX_TRIANGLESTRIP,  // PDDI_PRIM_TRISTRIP,
    GX_LINES,          // PDDI_PRIM_LINES,
    GX_LINESTRIP,      // PDDI_PRIM_LINESTRIP,
    GX_POINTS          // PDDI_PRIM_POINTS
};





static inline void FillGXMatrix(float gx[3][4], pddiMatrix &m)
{
    gx[0][0] = m.m[0][0]; gx[0][1] = m.m[1][0]; gx[0][2] = m.m[2][0]; gx[0][3] = m.m[3][0];
    gx[1][0] = m.m[0][1]; gx[1][1] = m.m[1][1]; gx[1][2] = m.m[2][1]; gx[1][3] = m.m[3][1];
    gx[2][0] = m.m[0][2]; gx[2][1] = m.m[1][2]; gx[2][2] = m.m[2][2]; gx[2][3] = m.m[3][2];
}


///***
void dumpmatrix44(float m[4][4])
{
//  return ;
    printf("    %1.4f %1.4f %1.4f %1.4f\n", m[0][0], m[0][1], m[0][2], m[0][3]);
    printf("    %1.4f %1.4f %1.4f %1.4f\n", m[1][0], m[1][1], m[1][2], m[1][3]);
    printf("    %1.4f %1.4f %1.4f %1.4f\n", m[2][0], m[2][1], m[2][2], m[2][3]);
    printf("    %1.4f %1.4f %1.4f %1.4f\n", m[3][0], m[3][1], m[3][2], m[3][3]);
    printf("\n");
}

void dumpmatrix34(float m[3][4])
{
//  return ;
    printf("    %1.4f %1.4f %1.4f \n", m[0][0], m[1][0], m[2][0]);
    printf("    %1.4f %1.4f %1.4f \n", m[0][1], m[1][1], m[2][1]);
    printf("    %1.4f %1.4f %1.4f \n", m[0][2], m[1][2], m[2][2]);
    printf("    %1.4f %1.4f %1.4f \n", m[0][3], m[1][3], m[2][3]);
    printf("\n");
}
//***/

//*****************************************
//
// Class gcContext
//
//
gcContext::gcContext(gcDevice* dev, gcDisplay* disp) : pddiBaseContext((pddiDisplay*)disp,(pddiDevice*)dev)
{
    device = dev;
    display = disp;

    device->AddRef();
    display->AddRef();

    // Basic default setup
    GXSetCullMode(GX_CULL_BACK);

    DefaultState();

    mExtHardwareSkinning = new gcExtHardwareSkinning(this);
    mExtBufferCopy = new gcExtBufferCopy(this, (gcDevice *)device);
    mExtFBEffects = new gcExtFramebufferEffects(this, (gcDevice *)device);
    mExtVisibilityTest = new gcExtVisibilityTest(this);
    mClearShader = new SimpleShader(this);

    // This is truly ugly but the best way to initialize it for now
    gPrimStream.mHardwareSkinning = mExtHardwareSkinning;

    mClearShader->SetColour(PDDI_SP_DIFFUSE, pddiColour(0, 0, 0, 0));
    mClearShader->SetInt(PDDI_SP_SHADEMODE, PDDI_SHADE_FLAT);

    int a;
    for (a = 0; a < _GC_MAX_LIGHTS; a++)
    {
        mPreMultState[a].mDiffuse   = pddiColour(0);
        mPreMultState[a].mSpecular  = pddiColour(0);
        mPreMultState[a].mShininess = 0.1F;
    }


#ifndef RAD_RELEASE
    if (gContext != NULL) printf("Warning: Multiple contexts allocated on console.\n");
#endif
    gContext = this;

    defaultShader = new SimpleShader(this);
    defaultShader->AddRef();

#ifdef PDDI_TRACK_STATS

    GXSetVCacheMetric(GX_VC_ALL);
    GXClearVCacheMetric();
    GXClearPixMetric();

    mStatPass = 0;
    mStatPasses[0].metric0  = GX_PERF0_CLIP_VTX;            mStatPasses[0].var0  = &mPerfClippedVertices;
    mStatPasses[1].metric0  = GX_PERF0_CLIP_CLKS;           mStatPasses[1].var0  = &mPerfClippedVertexClocks;
    mStatPasses[2].metric0  = GX_PERF0_CLIP_RATIO;          mStatPasses[2].var0  = &mPerfTransformClipRatio;
    mStatPasses[3].metric0  = GX_PERF0_XF_WAIT_IN;          mStatPasses[3].var0  = &mPerfTransformWaitInputClocks;
    mStatPasses[4].metric0  = GX_PERF0_XF_WAIT_OUT;         mStatPasses[4].var0  = &mPerfTransformWaitOutputClocks;
    mStatPasses[5].metric0  = GX_PERF0_XF_XFRM_CLKS;        mStatPasses[5].var0  = &mPerfTransformClocks;
    mStatPasses[6].metric0  = GX_PERF0_XF_LIT_CLKS;         mStatPasses[6].var0  = &mPerfTransformLightingClocks;
    mStatPasses[7].metric0  = GX_PERF0_XF_BOT_CLKS;         mStatPasses[7].var0  = &mPerfTransformWaitBottomClocks;
    mStatPasses[8].metric0  = GX_PERF0_XF_REGLD_CLKS;       mStatPasses[8].var0  = &mPerfTransformRegisterLoadClocks;
    mStatPasses[9].metric0  = GX_PERF0_XF_REGRD_CLKS,       mStatPasses[9].var0  = &mPerfTransformRegisterReadClocks;
    mStatPasses[10].metric0 = GX_PERF0_TRIANGLES_CULLED;    mStatPasses[10].var0 = &mPerfTrianglesCulled;
    mStatPasses[11].metric0 = GX_PERF0_TRIANGLES_PASSED;    mStatPasses[11].var0 = &mPerfTrianglesPassed;
    mStatPasses[12].metric0 = GX_PERF0_TRIANGLES_SCISSORED; mStatPasses[12].var0 = &mPerfTrianglesScissored;
    mStatPasses[13].metric0 = GX_PERF0_CLOCKS;              mStatPasses[13].var0 = &mPerfPerf0Clocks;
 
    mStatPasses[0].metric1  = GX_PERF1_TEXELS;        mStatPasses[0].var1  = &mPerfTexelsProcesed;
    mStatPasses[1].metric1  = GX_PERF1_TX_IDLE;       mStatPasses[1].var1  = &mPerfTextureIdleClocks;         
    mStatPasses[2].metric1  = GX_PERF1_TX_REGS;       mStatPasses[2].var1  = &mPerfTextureRegisterLoad;       
    mStatPasses[3].metric1  = GX_PERF1_TX_MEMSTALL;   mStatPasses[3].var1  = &mPerfTextureMainMemStallClocks;
    mStatPasses[4].metric1  = GX_PERF1_TC_CHECK1_2;   mStatPasses[4].var1  = &mPerfTextureCacheHit12;
    mStatPasses[5].metric1  = GX_PERF1_TC_CHECK3_4;   mStatPasses[5].var1  = &mPerfTextureCacheHit34;
    mStatPasses[6].metric1  = GX_PERF1_TC_CHECK5_6;   mStatPasses[6].var1  = &mPerfTextureCacheHit56;
    mStatPasses[7].metric1  = GX_PERF1_TC_CHECK7_8;   mStatPasses[7].var1  = &mPerfTextureCacheHit78;
    mStatPasses[8].metric1  = GX_PERF1_TC_MISS;       mStatPasses[8].var1  = &mPerfTextureCacheMiss;
    mStatPasses[9].metric1  = GX_PERF1_VC_ALL_STALLS; mStatPasses[9].var1  = &mPerfVertexCacheStalls;
    mStatPasses[10].metric1 = GX_PERF1_VERTICES;      mStatPasses[10].var1 = &mPerfVertexCount;
    mStatPasses[11].metric1 = GX_PERF1_VC_MISS_REQ;   mStatPasses[11].var1 = &mPerfIndexedVertexCahceMisses;
    mStatPasses[12].metric1 = GX_PERF1_CP_ALL_REQ;    mStatPasses[12].var1 = &mPerfGXTotalBytesRead;
    mStatPasses[13].metric1 = GX_PERF1_CLOCKS;        mStatPasses[13].var1 = &mPerfPerf1Clocks;

    mPerfClippedVertices = 0UL;
    mPerfClippedVertexClocks = 0UL;
    mPerfTransformClipRatio = 0UL;
    mPerfTransformWaitInputClocks = 0UL;
    mPerfTransformWaitOutputClocks = 0UL;
    mPerfTransformClocks = 0UL;
    mPerfTransformLightingClocks = 0UL;
    mPerfTransformWaitBottomClocks = 0UL;
    mPerfTransformRegisterLoadClocks = 0UL;
    mPerfTransformRegisterReadClocks = 0UL;
    mPerfTrianglesCulled = 0UL;
    mPerfTrianglesPassed = 0UL;
    mPerfTrianglesScissored = 0UL;
    mPerfPerf0Clocks = 0UL;

    mPerfTexelsProcesed = 0UL;
    mPerfTextureIdleClocks = 0UL;
    mPerfTextureRegisterLoad = 0UL;
    mPerfTextureMainMemStallClocks = 0UL;
    mPerfTextureCacheHit12 = 0UL;
    mPerfTextureCacheHit34 = 0UL;
    mPerfTextureCacheHit56 = 0UL;
    mPerfTextureCacheHit78 = 0UL;
    mPerfTextureCacheMiss = 0UL;
    mPerfVertexCacheStalls = 0UL;
    mPerfVertexCount = 0UL;
    mPerfIndexedVertexCahceMisses = 0UL;
    mPerfGXTotalBytesRead = 0UL;
    mPerfPerf1Clocks = 0UL;

    mPerfVCacheCheck = 0UL;
    mPerfVCacheMiss = 0UL;
    mPerfVCacheStallClocks = 0UL;

    mPerfTopPixelsIn = 0UL;
    mPerfTopPixelsOut = 0UL;
    mPerfBottomPixelsIn = 0UL;
    mPerfBottomPixelsOut = 0UL;
    mPerfRasterisedPixels = 0UL;
    mPerfPixelCopyClocks = 0UL;
#endif
    
}

//*****************************************
//
// Class gcContext
//
//
gcContext::~gcContext()
{
    defaultShader->Release();

    if (gContext == this)
    {
        gContext = NULL;
    }
#ifndef RAD_RELEASE
    else
    {
        printf("Warning: freeing multiple contexts out of order,\n    gcContext::Context() may return wrong values.\n");
    }    
#endif

    // This is a truly ugly way to tell the prim stream 
    // that its' hardware skinning extension has gone away
    gPrimStream.mHardwareSkinning = NULL;

    delete mExtHardwareSkinning;
    delete mExtBufferCopy;
    delete mClearShader;
    
    display->Release();
    device->Release();
}

//*****************************************
//
// Class gcContext
//
//
// frame synchronisation
void gcContext::BeginFrame()
{
    pddiBaseContext::BeginFrame();

    GXClearVtxDesc();

    int a;
    for (a = 0; a < _GC_MAX_LIGHTS; a++)
    {
        mPreMultState[a].mDiffuse   = pddiColour(0);
        mPreMultState[a].mSpecular  = pddiColour(0);
        mPreMultState[a].mShininess = 0.1F;
    }


#ifdef PDDI_TRACK_STATS
    if (displayStats)
    {
        GXSetGPMetric(mStatPasses[mStatPass].metric0, mStatPasses[mStatPass].metric1);
        GXDrawDone(); // Maybe not?  If ultimate accurate stats: YES!
        GXClearVCacheMetric();
        GXClearPixMetric();
        GXClearGP0Metric();
        GXClearGP1Metric();

        mBeginFrameTime = OSGetTime();
    }
#endif
}                       

//*****************************************
//
// Class gcContext
//
//
void gcContext::EndFrame()
{
    mExtFBEffects->EndOfFrameFromPDDI();

    // Fixes single material light problems
    pddiBaseShader::ClearCurrentShader();


#ifdef PDDI_TRACK_STATS
    OSTime endtime = OSGetTime();

    OSTime drawendtime = endtime;

    if (displayStats)
    {
        GXDrawDone(); // Maybe not?  If ultimate accurate stats: YES!
        drawendtime = OSGetTime();

        GXReadVCacheMetric(&mPerfVCacheCheck, &mPerfVCacheMiss, &mPerfVCacheStallClocks);
        GXReadPixMetric(&mPerfTopPixelsIn, &mPerfTopPixelsOut, &mPerfBottomPixelsIn, &mPerfBottomPixelsOut,
                             &mPerfRasterisedPixels, &mPerfPixelCopyClocks); 

        GXReadGPMetric(mStatPasses[mStatPass].var0, mStatPasses[mStatPass].var1);
        ++mStatPass;
        if (mStatPass > 13) mStatPass = 0;
    }
#endif

     // HACK: turn off pddiStats for nintendo
     bool ds = displayStats;
     pddiBaseContext::EndFrame();
     //displayStats = false;
     // HACK: restore render stats var
     displayStats = ds;

#ifdef PDDI_TRACK_STATS

    if (displayStats)
    {
        static char s[2048];
        unsigned long zrej = (mPerfTopPixelsIn + mPerfBottomPixelsIn) - (mPerfTopPixelsOut + mPerfBottomPixelsOut);
        float zrejp = (float)zrej / (float)((mPerfTopPixelsIn + mPerfBottomPixelsIn));
              sprintf(s, 
                    "NVert: %d\n"
                    "VCStallCyc: %d\n"
                    "XformCyc: %d\n"
                    "InStallCyc: %d\n"
                    "Texels: %d\n"
                    "MemStall: %d\n"
                    "VCacheCheck: %d\n"
                    "Pix In: %d\n",
                    mPerfVertexCount, 
                    mPerfVertexCacheStalls, 
                    mPerfTransformClocks,
                    mPerfTexelsProcesed,
                    mPerfTextureMainMemStallClocks,
                    mPerfVCacheCheck,
                    mPerfTopPixelsIn + mPerfBottomPixelsIn );
        DrawString(s, 10, 300, pddiColour(150, 150, 150));

        sprintf(s, 
                    "Clipped: %d (%.1f%%)\n"
                    "IdxVCStallCyc: %d\n"
                    "LightCyc: %d\n"
                    "OutStallCyc: %d\n"
                    "CHit: %d\n"
                    "RegCyc: %d\n"
                    "Miss: %d\n"
                    "tZRej: %d (%.1f%%)\n",
                    mPerfClippedVertices, 
                    (float)mPerfTransformClipRatio * 0.1F,
                    mPerfIndexedVertexCahceMisses,
                    mPerfTransformLightingClocks,
                    mPerfTransformWaitOutputClocks,
                    mPerfTextureCacheHit12 + mPerfTextureCacheHit34 + mPerfTextureCacheHit56 + mPerfTextureCacheHit78,
                    mPerfTextureRegisterLoad,
                    mPerfVCacheMiss,
                    zrej,
                    zrejp * 100.0F);
        DrawString(s, 220, 300, pddiColour(150, 150, 150));


        sprintf(s, 
                    "Clip Cyc: %d\n"
                    "\n"
                    "RegCyc: %d\n"
                    "BotStallCyc: %d\n"
                    "CMiss: %d\n"
                    "Idle: %d\n"
                    "Stall: %d\n"
                    "Ras: %d (%.2f)\n",
                    mPerfClippedVertexClocks,
                    mPerfTransformRegisterLoadClocks + mPerfTransformRegisterReadClocks,
                    mPerfTransformWaitBottomClocks,
                    mPerfTextureCacheMiss,
                    mPerfTextureIdleClocks,
                    mPerfVCacheStallClocks,
                    mPerfRasterisedPixels,
                    ((float)mPerfRasterisedPixels) / 307200.0F);
        DrawString(s, 440, 300, pddiColour(150, 150, 150));

        sprintf(s, 
                    "GX Bytes: %d      FrameSubmit %.3f     Frame Draw: %.3f", 
                    mPerfGXTotalBytesRead * 32,
                    ((float) OSTicksToMicroseconds(endtime - mBeginFrameTime)) * 0.001F,
                    ((float) OSTicksToMicroseconds(drawendtime - mBeginFrameTime)) * 0.001F);
        DrawString(s, 10, 435, pddiColour(150, 150, 150));

    }

#endif


}

void gcContext::DrawSync()
{
    GXDrawDone();
}

//*****************************************
//
// Class gcContext
// buffer clearing
//
void gcContext::Clear(unsigned bufferMask)
{
    pddiBaseContext::Clear(bufferMask);

    if (bufferMask == 0) return;

    bool clear_colour = ((bufferMask & PDDI_BUFFER_COLOUR)  != 0);
    bool clear_alpha  = ((bufferMask & PDDI_BUFFER_STENCIL) != 0);
    bool clear_depth  = ((bufferMask & PDDI_BUFFER_DEPTH)   != 0);

    float d = state.viewState->camera.farPlane - 0.1F;

    bool zw = GetZWrite();
    pddiCompareMode zc = GetZCompare();

    GXSetColorUpdate(clear_colour);
    GXSetAlphaUpdate(clear_alpha);
    SetZWrite(clear_depth);
    SetZCompare(PDDI_COMPARE_ALWAYS);

    GXSetClipMode(GX_CLIP_DISABLE);
    pddiProjectionMode pm = GetProjectionMode();
    SetProjectionMode(PDDI_PROJECTION_DEVICE);

    PushMatrix(PDDI_MATRIX_MODELVIEW);
    IdentityMatrix(PDDI_MATRIX_MODELVIEW);

    pddiColour clear = state.viewState->clearColour;

    // Hack-o-lishous
    clear.SetAlpha(0);

    pddiPrimStream *stream = BeginPrims(mClearShader, PDDI_PRIM_TRIANGLES, PDDI_V_C, 6);

	float height = display->GetHeight();
 	float width = display->GetWidth();
   
    // tri 1
    stream->Colour(clear);    stream->Coord(  0.0F, height, d);
    stream->Colour(clear);    stream->Coord(  0.0F,   0.0F, d);
    stream->Colour(clear);    stream->Coord(width,   0.0F, d);
   
    // tri 2
    stream->Colour(clear);    stream->Coord(  0.0F, height, d);
    stream->Colour(clear);    stream->Coord(width,   0.0F, d);
    stream->Colour(clear);    stream->Coord(width, height, d);

    EndPrims(stream);

    PopMatrix(PDDI_MATRIX_MODELVIEW);
    SetZWrite(zw);
    SetProjectionMode(pm);
    SetZCompare(zc);
    GXSetClipMode(GX_CLIP_ENABLE);

    SetColourWrite(state.renderState->redWrite, 
                   state.renderState->greenWrite, 
                   state.renderState->blueWrite, 
                   state.renderState->alphaWrite);

}

//*****************************************
//
// Class gcContext
//
//
void gcContext::SetClearColour(pddiColour colour)
{
    pddiBaseContext::SetClearColour(colour);

    GXColor gxcol;
    gxcol.r = (unsigned char)state.viewState->clearColour.Red();
    gxcol.g = (unsigned char)state.viewState->clearColour.Green();
    gxcol.b = (unsigned char)state.viewState->clearColour.Blue();
    gxcol.a = (unsigned char)state.viewState->clearColour.Alpha();

    unsigned d = (unsigned) ((float)GX_MAX_Z24 * state.viewState->clearDepth);
    GXSetCopyClear(gxcol, d);
}


//*****************************************
//
// Class gcContext
//
//
void gcContext::SetClearDepth(float depth)
{
    pddiBaseContext::SetClearDepth(depth);

    GXColor gxcol;
    gxcol.r = (unsigned char)state.viewState->clearColour.Red();
    gxcol.g = (unsigned char)state.viewState->clearColour.Green();
    gxcol.b = (unsigned char)state.viewState->clearColour.Blue();
    gxcol.a = (unsigned char)state.viewState->clearColour.Alpha();

    unsigned d = (unsigned) ((float)GX_MAX_Z24 * state.viewState->clearDepth);
    GXSetCopyClear(gxcol, d);
}





//*****************************************
//
// Class gcContext
//
//
void gcContext::SetupHardwareProjection(void)
{
    Mtx44 matrix;
    
    switch (state.viewState->projectionMode)
    {
        case PDDI_PROJECTION_DEVICE:

            MTXOrtho(matrix, 
                        0.0F, display->GetHeight(), // Top & Bottom
                        0.0F, display->GetWidth(),  //  Left & right
                        state.viewState->camera.nearPlane,
                        state.viewState->camera.farPlane);
            GXSetProjection(matrix, GX_ORTHOGRAPHIC);
            break;

        case PDDI_PROJECTION_ORTHOGRAPHIC :
            MTXOrtho(matrix, 
                         0.5f / (state.viewState->camera.aspect), // Top
                        -0.5f / (state.viewState->camera.aspect), // Bottom
                        -0.5F, 0.5F,  //  Left & right   
                        state.viewState->camera.nearPlane,
                        state.viewState->camera.farPlane);
            GXSetProjection(matrix, GX_ORTHOGRAPHIC);
            break;

        case PDDI_PROJECTION_PERSPECTIVE :
            {
                pddiCamera& camera = state.viewState->camera;

                float fov = 1.0f / tanf(camera.fov * 0.5F);
                float n = camera.nearPlane;
                float f = camera.farPlane;

                float p0 = fov;
                float p1 = 0.0F;
                float p2 = camera.aspect * fov;
                float p3 = 0.0F;
                float p4 = n / (n - f);
                float p5 = (f * n) / (n - f);

                matrix[0][0] = p0;   matrix[0][1] = 0.0F; matrix[0][2] = p1;   matrix[0][3] = 0.0F;
                matrix[1][0] = 0.0F; matrix[1][1] = p2;   matrix[1][2] = p3;   matrix[1][3] = 0.0F;
                matrix[2][0] = 0.0F; matrix[2][1] = 0.0F; matrix[2][2] = p4;   matrix[2][3] = p5;
                matrix[3][0] = 0.0F; matrix[3][1] = 0.0F; matrix[3][2] =-1.0F; matrix[3][3] = 0.0F;

                GXSetProjection(matrix, GX_PERSPECTIVE);
            }
            break;
    }

    // Setup the viewport
    float width = static_cast<float>(display->GetWidth());
    float height = static_cast<float>(display->GetHeight());   
    pddiFloatRect& vw = state.viewState->viewWindow;

    float vpl = vw.left * width;
    float vpt = vw.top * height;

    float vpw = (vw.right - vw.left) * width;
    float vph = (vw.bottom - vw.top) * height;

    GXSetViewportJitter(vpl, vpt, vpw, vph, 0.0F, 1.0F, ((gcDisplay*)display)->GetNextField());

}

//*****************************************
//
// Class gcContext
//
//
// normal scaling
void gcContext::ScaleNormal(float scale)
{
    pddiMatrix tmp = *state.matrixStack[PDDI_MATRIX_MODELVIEW]->Top();

    float gxmlh[3][4];
    FillGXMatrix(gxmlh, tmp);

    tmp.m[0][2] = -tmp.m[0][2];
    tmp.m[1][2] = -tmp.m[1][2];
    tmp.m[2][2] = -tmp.m[2][2];
    tmp.m[3][2] = -tmp.m[3][2];

    float gxmrh[3][4];
    FillGXMatrix(gxmrh, tmp);

    MTXScale       (gxmrh, scale, scale, scale);
    GXLoadNrmMtxImm(gxmrh, GX_PNMTX0);
    GXSetCurrentMtx(GX_PNMTX0);
}


//*****************************************
//
// Class gcContext
//
//
void gcContext::LoadHardwareMatrix(pddiMatrixType id)
{
    mMatrixDirty[id] = true;
}


//*****************************************
//
// Class gcContext
//
//
void gcContext::FinalizeHardwareMatrix(void)
{

    int id;
    for (id = 0; id < PDDI_MAX_MATRIX_STACKS; id++)
    {
        if (!mMatrixDirty[id]) continue;

        mMatrixDirty[id] = false;

        pddiMatrix tmp = *state.matrixStack[id]->Top();

        float gxmlh[3][4];
        FillGXMatrix(gxmlh, tmp);

        tmp.m[0][2] = -tmp.m[0][2];
        tmp.m[1][2] = -tmp.m[1][2];
        tmp.m[2][2] = -tmp.m[2][2];
        tmp.m[3][2] = -tmp.m[3][2];

        float gxmrh[3][4];
        FillGXMatrix(gxmrh, tmp);

        switch(id)
        {
            case PDDI_MATRIX_MODELVIEW:
                GXLoadPosMtxImm(gxmrh, GX_PNMTX0);
                GXLoadNrmMtxImm(gxmrh, GX_PNMTX0);
                GXSetCurrentMtx(GX_PNMTX0);
                break;

            case PDDI_MATRIX_TEXTURE0:
                GXLoadTexMtxImm(gxmlh, GX_TEXMTX0, GX_MTX3x4);
                break;

            case PDDI_MATRIX_TEXTURE1:
                GXLoadTexMtxImm(gxmlh, GX_TEXMTX1, GX_MTX3x4);
                break;

            case PDDI_MATRIX_TEXTURE2:
                GXLoadTexMtxImm(gxmlh, GX_TEXMTX2, GX_MTX3x4);
                break;

            case PDDI_MATRIX_TEXTURE3:
                GXLoadTexMtxImm(gxmlh, GX_TEXMTX3, GX_MTX3x4);
                break;

            default :
                PDDIASSERT(0);
                break;
        }

    #ifdef PDDI_TRACK_STATS
        this->ADD_STAT(PDDI_STAT_MATRIX_OPS, 1);
    #endif
    }

}

//*****************************************
//
// Class gcContext
//
//
// viewport clipping
void gcContext::SetScissor(pddiRect* rect)
{
    pddiBaseContext::SetScissor(rect);
    if(!rect)
    {
        GXSetScissor(0, 0, (unsigned long)display->GetWidth(), (unsigned long)display->GetHeight());
    }
    else
    {
        GXSetScissor((unsigned long)rect->left, (unsigned long)rect->top, (unsigned long)(rect->right - rect->left), (unsigned long)(rect->bottom - rect->top));
    }
}


/**************
    When streaming vertex data to the GX processor you must order
    the data by ascending ID for the hardware to understand it

    Data Type        ID  Description
    GX_VA_PNMTXIDX    0  Position/Normal Matrix Index 
    GX_VA_TEX0MTXIDX  1  GX_TEXCOORD0 matrix index 
    GX_VA_TEX1MTXIDX  2  GX_TEXCOORD1 matrix index 
    GX_VA_TEX2MTXIDX  3  GX_TEXCOORD2 matrix index 
    GX_VA_TEX3MTXIDX  4  GX_TEXCOORD3 matrix index 
    GX_VA_TEX4MTXIDX  5  GX_TEXCOORD4 matrix index 
    GX_VA_TEX5MTXIDX  6  GX_TEXCOORD5 matrix index 
    GX_VA_TEX6MTXIDX  7  GX_TEXCOORD6 matrix index 
    GX_VA_TEX7MTXIDX  8  GX_TEXCOORD7 matrix index 
    GX_VA_POS         9  Position 
    GX_VA_NRM or
    GX_VA_NBT        10  Normal or Normal/Binormal/Tangent 
    GX_VA_CLR0       11  Color 0 
    GX_VA_CLR1       12  Color 1 
    GX_VA_TEX0       13  Texture Coordinate 0 
    GX_VA_TEX1       14  Texture Coordinate 1 
    GX_VA_TEX2       15  Texture Coordinate 2 
    GX_VA_TEX3       16  Texture Coordinate 3 
    GX_VA_TEX4       17  Texture Coordinate 4 
    GX_VA_TEX5       18  Texture Coordinate 5 
    GX_VA_TEX6       19  Texture Coordinate 6 
    GX_VA_TEX7       20  Texture Coordinate 7 
**************/

//*****************************************
//
// Class gcContext
//
//
pddiPrimStream *gcContext::BeginPrims(pddiShader *mat, pddiPrimType primType, unsigned vertexType, int vertexCount, unsigned pass)
{
    if(!mat)
    {
        mat = defaultShader;
    }

    pddiBaseContext::BeginPrims(mat, primType, vertexType, vertexCount);
    pddiBaseShader* material = (pddiBaseShader*)mat;
    ADD_STAT(PDDI_STAT_MATERIAL_OPS, !material->IsCurrent());
    material->SetMaterial();
    gPrimStream.Begin(this, primTypeTable[primType], vertexType, vertexCount);
    return &gPrimStream;
}

//*****************************************
//
// Class gcContext
//
//
void gcContext::EndPrims(pddiPrimStream* stream)
{
    pddiBaseContext::EndPrims(stream);
    stream->End();
}


//*****************************************
//
// Class gcContext
//
//
void gcContext::DrawPrimBuffer(pddiShader* mat, pddiPrimBuffer* buffer)
{
    if(!mat)
    {
        mat = defaultShader;
    }

    pddiBaseShader* material = (pddiBaseShader*)mat;
    ADD_STAT(PDDI_STAT_MATERIAL_OPS, !material->IsCurrent());
    material->SetMaterial();
    ((gcBasePrimBuffer *)buffer)->Display();
}

//*****************************************
//
// Class gcContext
//
//
// lighting
int gcContext::GetMaxLights(void)
{
    return _GC_MAX_LIGHTS;
}



//*****************************************
//
// Class gcContext
//
//
void gcContext::SetupHardwareLight(int handle)
{

    if (!state.lightingState->light[handle].enabled) return;

    GXLightObj *dl = &mHWLights[handle];
    GXLightObj *sl = &mHWLights[handle + _GC_MAX_LIGHTS];

    // init default specular component
    GXInitLightShininess(sl, 10);

    // Setup default colours of the lights, it will be recomputed later when
    // the lights are actually loaded to the hardware
    GXColor c;
    c.r = (unsigned char) state.lightingState->light[handle].colour.Red();
    c.g = (unsigned char) state.lightingState->light[handle].colour.Green();
    c.b = (unsigned char) state.lightingState->light[handle].colour.Blue();
    c.a = (unsigned char) state.lightingState->light[handle].colour.Alpha();
    GXInitLightColor(dl, c);
    GXInitLightColor(sl, c);

    pddiVector wp; // World Position
    pddiVector wd; // World Direction
    pddiVector sd; // Specular Direction

    sd.x = state.lightingState->light[handle].worldDirection.x;
    sd.y = state.lightingState->light[handle].worldDirection.y;
    sd.z = state.lightingState->light[handle].worldDirection.z;
    sd.Normalize();

    float spot2 = 0.0F;
    float spot1 = 0.0F;
    float spot0 = 1.0F;

    switch(state.lightingState->light[handle].type)
    {
        // All lights on the Gamecube are point lights.
        // Move the light far away to make it appear directional.
        case PDDI_LIGHT_DIRECTIONAL :
            wp.x = -state.lightingState->light[handle].worldDirection.x * 1000000.0F;
            wp.y = -state.lightingState->light[handle].worldDirection.y * 1000000.0F;
            wp.z = -state.lightingState->light[handle].worldDirection.z * 1000000.0F;
            wd = sd; //pddiVector(-wp.x, -wp.y, -wp.z);
            //wd.Normalize();
            break;

        case PDDI_LIGHT_POINT :
            wp.x = state.lightingState->light[handle].worldPosition.x;
            wp.y = state.lightingState->light[handle].worldPosition.y;
            wp.z = state.lightingState->light[handle].worldPosition.z;
            wd = pddiVector(0.0F, -1.0F, 0.0F);
            break;

        case PDDI_LIGHT_SPOT :
            wp.x = state.lightingState->light[handle].worldPosition.x;
            wp.y = state.lightingState->light[handle].worldPosition.y;
            wp.z = state.lightingState->light[handle].worldPosition.z;

            wd.x = state.lightingState->light[handle].worldDirection.x;
            wd.y = state.lightingState->light[handle].worldDirection.y;
            wd.z = state.lightingState->light[handle].worldDirection.z;
            wd.Normalize();

            float sharpness = 1.0F / (.01F + state.lightingState->light[handle].theta);
            float size = (state.lightingState->light[handle].theta + state.lightingState->light[handle].phi);

            spot2 = 0.0F;
            spot1 = sharpness;
            spot0 = -size * sharpness;

            break;
    }

//   printf("Spot: %f %f %f\n", spot2, spot1, spot0);

    GXInitLightAttn(dl, spot0, spot1, spot2, state.lightingState->light[handle].attenA, 
                                             state.lightingState->light[handle].attenB,
                                             state.lightingState->light[handle].attenC);
    
    pddiVector vp;
    pddiVector vd;
    pddiVector vsd;

    pddiMatrix *viewmatrix = state.matrixStack[PDDI_MATRIX_MODELVIEW]->Top();
    pddiMatrix tmp = *viewmatrix;

    tmp.m[0][2] = -tmp.m[0][2];
    tmp.m[1][2] = -tmp.m[1][2];
    tmp.m[2][2] = -tmp.m[2][2];
    tmp.m[3][2] = -tmp.m[3][2];

    tmp.RotateVector(sd, &vsd);
    tmp.RotateVector(wd, &vd);
    tmp.Transform(wp, &vp);
 
    GXInitLightPos(dl, vp.x, vp.y, vp.z);
    GXInitLightDir(dl, vd.x, vd.y, vd.z);
    GXInitSpecularDir(sl, vsd.x, vsd.y, vsd.z);

}



//********************************************
//
//  Class gcContext
//  Pre mult Lights
//
//
void gcContext::PreMultiplyLights(pddiColour diffuse, pddiColour specular, float shininess)
{
    int a;
    for (a = 0; a < PDDI_MAX_LIGHTS; a++)
    {
        if (!state.lightingState->light[a].enabled) continue;

        GXLightObj *dl = &mHWLights[a];
        GXLightObj *sl = &mHWLights[a + _GC_MAX_LIGHTS];

        GXColor c;

        if (mPreMultState[a].mDiffuse != diffuse)
        {
            mPreMultState[a].mDiffuse = diffuse;
            c.r = (unsigned char) ((diffuse.Red()   * state.lightingState->light[a].colour.Red())   >> 8);
            c.g = (unsigned char) ((diffuse.Green() * state.lightingState->light[a].colour.Green()) >> 8);
            c.b = (unsigned char) ((diffuse.Blue()  * state.lightingState->light[a].colour.Blue())  >> 8);
            c.a = (unsigned char) ((diffuse.Alpha() * state.lightingState->light[a].colour.Alpha()) >> 8);
            GXInitLightColor(dl, c);
            GXLoadLightObjImm(dl, (GXLightID)  (1 << a));
        }

        if ((mPreMultState[a].mSpecular != specular) || (mPreMultState[a].mShininess != shininess))
        {
            mPreMultState[a].mSpecular  = specular;
            mPreMultState[a].mShininess = shininess;
            
            c.r = (unsigned char) ((specular.Red()   * state.lightingState->light[a].colour.Red())   >> 8);
            c.g = (unsigned char) ((specular.Green() * state.lightingState->light[a].colour.Green()) >> 8);
            c.b = (unsigned char) ((specular.Blue()  * state.lightingState->light[a].colour.Blue())  >> 8);
            c.a = (unsigned char) ((specular.Alpha() * state.lightingState->light[a].colour.Alpha()) >> 8);
            GXInitLightColor(sl, c);

            GXInitLightShininess(sl, shininess);

            GXLoadLightObjImm(sl, (GXLightID) ((1 << (a + _GC_MAX_LIGHTS))));
        }
    }
}



//*****************************************
//
// Class gcContext
//
//
void gcContext::SetAmbientLight(pddiColour col)
{
    pddiBaseContext::SetAmbientLight(col);
}


//*****************************************
//
// Class gcContext
//
//
void gcContext::EnableLight(int handle, bool active)
{
    // Make sure that light gets uploaded
    if (state.lightingState->light[handle].enabled != active)
    {
        mPreMultState[handle].mDiffuse  = pddiColour(0);
        mPreMultState[handle].mSpecular = pddiColour(0);
    }

    pddiBaseContext::EnableLight(handle, active);
}

//*****************************************
//
// Class gcContext
//
//
void gcContext::SetLightType(int handle, pddiLightType type)
{
    // Make sure that light gets uploaded
    if (state.lightingState->light[handle].type != type)
    {
        mPreMultState[handle].mDiffuse  = pddiColour(0);
        mPreMultState[handle].mSpecular = pddiColour(0);
    }

    pddiBaseContext::SetLightType(handle, type);
}


//*****************************************
//
// Class gcContext
//
//
void gcContext::SetLightColour(int handle, pddiColour colour)
{
    // Make sure that light gets uploaded
    if (state.lightingState->light[handle].colour != colour)
    {
        mPreMultState[handle].mDiffuse  = pddiColour(0);
        mPreMultState[handle].mSpecular = pddiColour(0);
    }

    pddiBaseContext::SetLightColour(handle, colour);
}


//*****************************************
//
// Class gcContext
//
//
void gcContext::SetLightPosition(int handle, pddiVector* dir)
{
    // Make sure that light gets uploaded
    mPreMultState[handle].mDiffuse  = pddiColour(0);
    mPreMultState[handle].mSpecular = pddiColour(0);

    pddiBaseContext::SetLightPosition(handle, dir);
}


//*****************************************
//
// Class gcContext
//
//
void gcContext::SetLightDirection(int handle, pddiVector* dir)
{
    // Make sure that light gets uploaded
    mPreMultState[handle].mDiffuse  = pddiColour(0);
    mPreMultState[handle].mSpecular = pddiColour(0);

    pddiBaseContext::SetLightDirection(handle, dir);
}


//*****************************************
//
// Class gcContext
//
//
void gcContext::SetLightRange(int handle, float range)
{
    // Make sure that light gets uploaded
    mPreMultState[handle].mDiffuse  = pddiColour(0);
    mPreMultState[handle].mSpecular = pddiColour(0);

    pddiBaseContext::SetLightRange(handle, range);
}


//*****************************************
//
// Class gcContext
//
//
void gcContext::SetLightAttenuation(int handle, float a, float b, float c)
{
    // Make sure that light gets uploaded
    mPreMultState[handle].mDiffuse  = pddiColour(0);
    mPreMultState[handle].mSpecular = pddiColour(0);

    pddiBaseContext::SetLightAttenuation(handle, a, b, c);
}


//*****************************************
//
// Class gcContext
//
//
void gcContext::SetLightCone(int handle, float phi, float theta, float falloff)
{
    // Make sure that light gets uploaded
    mPreMultState[handle].mDiffuse  = pddiColour(0);
    mPreMultState[handle].mSpecular = pddiColour(0);

    pddiBaseContext::SetLightCone(handle, phi, theta, falloff);
}



//*****************************************
//
// Class gcContext
//
//
void gcContext::SetColourWrite(bool red, bool green, bool blue, bool alpha)
{
    pddiBaseContext::SetColourWrite(red, green, blue, alpha);

    GXSetColorUpdate(red || green || blue);
    GXSetAlphaUpdate(alpha);
}



// backface culling
static GXCullMode gcCullModeTable[3] =
{
    GX_CULL_NONE,  // PDDI_CULL_NONE
    GX_CULL_BACK, // PDDI_CULL_NORMAL
    GX_CULL_FRONT   // PDDI_CULL_INVERTED
};
    
//*****************************************
//
// Class gcContext
//
//
void gcContext::SetCullMode(pddiCullMode mode)
{
    pddiBaseContext::SetCullMode(mode);
    GXSetCullMode(gcCullModeTable[mode]);
}

// z-buffer control
static GXCompare compTable[8] = { GX_NEVER,
                                             GX_ALWAYS,  
                                             GX_LESS,
                                             GX_LEQUAL,
                                             GX_GREATER,    
                                             GX_GEQUAL,  
                                             GX_EQUAL,
                                             GX_NEQUAL };

//*****************************************
//
// Class gcContext
//
//
void gcContext::EnableZBuffer(bool enable)
{
    pddiBaseContext::EnableZBuffer(enable);
    GXSetZMode(IsZBufferEnabled(), compTable[GetZCompare()], GetZWrite());
}


//*****************************************
//
// Class gcContext
//
//
void gcContext::SetZCompare(pddiCompareMode compareMode)
{
    pddiBaseContext::SetZCompare(compareMode);
    GXSetZMode(IsZBufferEnabled(), compTable[GetZCompare()], GetZWrite());
}

//*****************************************
//
// Class gcContext
//
//
void gcContext::SetZWrite(bool b)
{
    pddiBaseContext::SetZWrite(b);
    GXSetZMode(IsZBufferEnabled(), compTable[GetZCompare()], GetZWrite());
}

//*****************************************
//
// Class gcContext
//
//
void gcContext::SetZBias(float bias)
{
    //TODO : This isn't possible on the GameCube
}

//*****************************************
//
// Class gcContext
//
//
void gcContext::SetZRange(float n, float f)
{
    pddiBaseContext::SetZRange(n,f);
    //FIXME  glDepthRange(n,f);
    // GXSetViewport();
}


//*****************************************
//
// Class gcContext
//
//
void gcContext::EnableStencilBuffer(bool enable)
{
    pddiBaseContext::EnableStencilBuffer(enable);
    // No Stencil Buffer on GameCube
}
        
//*****************************************
//
// Class gcContext
//
//
void gcContext::SetStencilCompare(pddiCompareMode compare)
{
    pddiBaseContext::SetStencilCompare(compare);
    // No Stencil Buffer on GameCube
}

//*****************************************
//
// Class gcContext
//
//
void gcContext::SetStencilRef(int ref)
{
    pddiBaseContext::SetStencilRef(ref);
    // No Stencil Buffer on GameCube
}

//*****************************************
//
// Class gcContext
//
//
void gcContext::SetStencilMask(unsigned mask)
{
    pddiBaseContext::SetStencilMask(mask);
    // No Stencil Buffer on GameCube
}

//*****************************************
//
// Class gcContext
//
//
void gcContext::SetStencilWriteMask(unsigned mask)
{
    pddiBaseContext::SetStencilWriteMask(mask);
    // No Stencil Buffer on GameCube
}

//*****************************************
//
// Class gcContext
//
//
void gcContext::SetStencilOp(pddiStencilOp failOp, pddiStencilOp zFailOp, pddiStencilOp zPassOp)
{
    pddiBaseContext::SetStencilOp(failOp, zFailOp, zPassOp);
    // No Stencil Buffer on GameCube
}

//*****************************************
//
// Class gcContext
//
//
void gcContext::SetFillMode(pddiFillMode mode)
{
    pddiBaseContext::SetFillMode(mode);
    // The GameCube can do this
}

// pddiFogMode
static GXFogType fogTable[] =
{
    GX_FOG_LIN,
    GX_FOG_EXP,
    GX_FOG_EXP2,
    GX_FOG_NONE
};


//*****************************************
//
// Class gcContext
//
//
// fog
void gcContext::EnableFog(bool enable)
{
    pddiBaseContext::EnableFog(enable);
    pddiColour c;
    float start, end;
    GetFog(&c, &start, &end);
    GXColor fogc;
    fogc.r = (unsigned char)c.Red();
    fogc.g = (unsigned char)c.Green();
    fogc.b = (unsigned char)c.Blue();
    fogc.a = (unsigned char)c.Alpha();

    pddiCamera& camera = state.viewState->camera;
    float n = camera.nearPlane;
    float f = camera.farPlane;

    if (enable)
    {
        GXSetFog(GX_FOG_LIN, start, end, n, f, fogc);
        GXSetFogRangeAdj(GX_DISABLE, 0, NULL);
    }
    else
    {
        GXSetFog(GX_FOG_NONE, start, end, n, f, fogc);
        GXSetFogRangeAdj(GX_DISABLE, 0, NULL);
    }                                   
}

//*****************************************
//
// Class gcContext
//
//
void gcContext::SetFog(pddiColour colour, float start, float end)
{
    pddiBaseContext::SetFog(colour, start, end);

    GXColor fogc;
    fogc.r = (unsigned char)colour.Red();
    fogc.g = (unsigned char)colour.Green();
    fogc.b = (unsigned char)colour.Blue();
    fogc.a = (unsigned char)colour.Alpha();

    if (IsFogEnabled())
    {
        pddiCamera& camera = state.viewState->camera;
        float n = camera.nearPlane;
        float f = camera.farPlane;
        GXSetFog(GX_FOG_LIN, start, end, n, f, fogc);
    }
    else
    {
        GXSetFog(GX_FOG_NONE, start, end, start, end, fogc);
    }
}


//*****************************************
//
// Class gcContext
//
//
int gcContext::GetMaxTextureDimension(void)
{
    return 1024;
}


//*****************************************
//
// Class gcContext
//
//
void gcContext::BeginTiming()
{
    mTimerStart = OSGetTime();
}


//*****************************************
//
// Class gcContext
// End Timing, returns number of millisecones elapsed since BeginTiming() call
//
float gcContext::EndTiming()
{
    OSTime end = OSGetTime();

    float us = (float) OSTicksToMicroseconds(end - mTimerStart);
    return us / 1000.0F;
}


//*****************************************
//
// Class gcContext
// Get Extension
//
pddiExtension *gcContext::GetExtension(unsigned extension)
{
    if (extension == PDDI_EXT_HARDWARE_SKINNING)
    {
        return mExtHardwareSkinning;
    }

    if (extension == PDDI_EXT_BUFCOPY)
    {
        return mExtBufferCopy;
    }

    if (extension == PDDI_EXT_FRAMEBUFFER_EFFECTS)
    {
        return mExtFBEffects;
    }

	if (extension == PDDI_EXT_VISIBILITY_TEST)
	{
		return mExtVisibilityTest;
	}

    return pddiBaseContext::GetExtension(extension);
}


//*****************************************
//
// Class gcContext
// Verify Extension
//
bool gcContext::VerifyExtension(unsigned extension)
{
    if (extension == PDDI_EXT_HARDWARE_SKINNING)   return true;
    if (extension == PDDI_EXT_BUFCOPY)             return true;
    if (extension == PDDI_EXT_FRAMEBUFFER_EFFECTS) return true;

    return pddiBaseContext::VerifyExtension(extension);
}


