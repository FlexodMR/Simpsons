//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


#ifndef _GCCON_HPP_
#define _GCCON_HPP_

//#define BUFFERED_VERTS 1024
#define _GC_MAX_LIGHTS 4

#include <pddi/pddi.hpp>
#include <pddi/base/basecontext.hpp>

#include <dolphin/gx.h>

class gcDisplay;
class gcDevice;
class gcTEVState;
class gcExtHardwareSkinning;
class gcExtBufferCopy;
class gcExtFramebufferEffects;
class gcExtVisibilityTest;
class SimpleShader;

    
//--------------------------------------------------------------
class gcContext : public pddiBaseContext
{
public:
    gcContext(gcDevice *device, gcDisplay *display);
   ~gcContext();

    // frame synchronisation
    virtual void BeginFrame();
    virtual void EndFrame();

    virtual void DrawSync();

    // buffer clearing
    virtual void Clear(unsigned bufferMask);
    virtual void SetClearColour(pddiColour colour);
    virtual void SetClearDepth(float depth);

    // viewport clipping
    virtual void SetScissor(pddiRect *rect);

    // immediate mode prim rendering
    virtual pddiPrimStream *BeginPrims(pddiShader *material, pddiPrimType primType, unsigned vertexType, int vertexCount, unsigned pass=0);
    virtual void EndPrims(pddiPrimStream *stream);

    // retained mode prim rendering
    virtual void DrawPrimBuffer(pddiShader *material, pddiPrimBuffer *buffer);

    // lighting
    virtual int GetMaxLights();
    virtual void SetAmbientLight(pddiColour col);

    virtual void EnableLight(int handle, bool active);
    virtual void SetLightType(int handle, pddiLightType type);
    virtual void SetLightColour(int handle, pddiColour colour);
    virtual void SetLightPosition(int handle, pddiVector* dir);
    virtual void SetLightDirection(int handle, pddiVector* dir);
    virtual void SetLightRange(int handle, float range);
    virtual void SetLightAttenuation(int handle, float a, float b, float c);
    virtual void SetLightCone(int handle, float phi, float theta, float falloff);

    // colour buffer control
    virtual void SetColourWrite(bool red, bool green, bool blue, bool alpha);

    // backface culling
    virtual void SetCullMode(pddiCullMode mode);
    
    // normal scaling
    virtual void ScaleNormal(float scale);

    // z-buffer control
    virtual void EnableZBuffer(bool enable);
    virtual void SetZCompare(pddiCompareMode compareMode);
    virtual void SetZWrite(bool);
    virtual void SetZBias(float bias);
    virtual void SetZRange(float n, float f);

    // stencil buffer control
    virtual void EnableStencilBuffer(bool enable);
    virtual void SetStencilCompare(pddiCompareMode compare);
    virtual void SetStencilRef(int ref);
    virtual void SetStencilMask(unsigned mask);
    virtual void SetStencilWriteMask(unsigned mask);
    virtual void SetStencilOp(pddiStencilOp failOp, pddiStencilOp zFailOp, pddiStencilOp zPassOp);

    // polygon fill
    virtual void SetFillMode(pddiFillMode mode);

    // fog
    virtual void EnableFog(bool enable);
    virtual void SetFog(pddiColour colour, float start, float end);

    // extensions
    virtual pddiExtension *GetExtension(unsigned extension);
    virtual bool VerifyExtension(unsigned extension);

    // utility
    virtual int GetMaxTextureDimension(void);

    // internal pddiglfunctions
    virtual gcDisplay *GetDisplay(void) { return (gcDisplay*)display; }

    virtual void  BeginTiming();
    virtual float EndTiming();

    void PreMultiplyLights(pddiColour diffuse, pddiColour specular, float shininess);
    void FinalizeHardwareMatrix(void);

    static gcContext *Context(void) { return gContext; }

protected:
    void  LoadHardwareMatrix(pddiMatrixType id);
    void  SetupHardwareProjection(void);
    void  SetupHardwareLight(int handle);

    void SetVertexArray(unsigned descr, void *data, int count);

    struct LightPreMultState
    {
        pddiColour mDiffuse;
        pddiColour mSpecular;
        float      mShininess;
    };

    // I store an extra set of lights for specular lighting
    GXLightObj mHWLights[_GC_MAX_LIGHTS + _GC_MAX_LIGHTS];
    LightPreMultState mPreMultState[_GC_MAX_LIGHTS];

    bool mMatrixDirty[PDDI_MAX_MATRIX_STACKS];
    
    OSTime mTimerStart;

    gcExtHardwareSkinning *mExtHardwareSkinning;
    gcExtBufferCopy *mExtBufferCopy;
    gcExtFramebufferEffects *mExtFBEffects;
	gcExtVisibilityTest *mExtVisibilityTest;
    SimpleShader *mClearShader;


    static gcContext *gContext;

    pddiShader* defaultShader;

#ifdef PDDI_TRACK_STATS

    int mStatPass;
    //Perf 0 Stats
    unsigned long mPerfClippedVertices;
    unsigned long mPerfClippedVertexClocks;
    unsigned long mPerfTransformClipRatio;
    unsigned long mPerfTransformWaitInputClocks;
    unsigned long mPerfTransformWaitOutputClocks;
    unsigned long mPerfTransformClocks;
    unsigned long mPerfTransformLightingClocks;
    unsigned long mPerfTransformWaitBottomClocks;
    unsigned long mPerfTransformRegisterLoadClocks;
    unsigned long mPerfTransformRegisterReadClocks;
    unsigned long mPerfTrianglesCulled;
    unsigned long mPerfTrianglesPassed;
    unsigned long mPerfTrianglesScissored;
    unsigned long mPerfPerf0Clocks;

    // Perf 1 Stats
    unsigned long mPerfTexelsProcesed;
    unsigned long mPerfTextureIdleClocks;
    unsigned long mPerfTextureRegisterLoad;
    unsigned long mPerfTextureMainMemStallClocks;
    unsigned long mPerfTextureCacheHit12;
    unsigned long mPerfTextureCacheHit34;
    unsigned long mPerfTextureCacheHit56;
    unsigned long mPerfTextureCacheHit78;
    unsigned long mPerfTextureCacheMiss;
    unsigned long mPerfVertexCacheStalls;
    unsigned long mPerfVertexCount;
    unsigned long mPerfIndexedVertexCahceMisses;
    unsigned long mPerfGXTotalBytesRead;
    unsigned long mPerfPerf1Clocks;

    // VCache stats
    unsigned long mPerfVCacheCheck;
    unsigned long mPerfVCacheMiss;
    unsigned long mPerfVCacheStallClocks;

    // Pix Stats
    unsigned long mPerfTopPixelsIn;
    unsigned long mPerfTopPixelsOut;
    unsigned long mPerfBottomPixelsIn;
    unsigned long mPerfBottomPixelsOut;
    unsigned long mPerfRasterisedPixels;
    unsigned long mPerfPixelCopyClocks;

    struct Stats
    {
        GXPerf0        metric0;
        unsigned long *var0;
        GXPerf1        metric1;
        unsigned long *var1;
    };

    Stats mStatPasses[14];

    OSTime mBeginFrameTime;

#endif

};

#endif

