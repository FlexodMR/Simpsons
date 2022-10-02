/*===========================================================================
   ps2context.hpp
   13-Nov-99 Created by Neall

   Playstation 2 pddiRenderContext
   Copyright (c)1999, 2000, 2001 Radical Entertainment Ltd.
   All rights reserved.
===========================================================================*/

#ifndef PS2CONTEXT_HPP_INCLUDED
#define PS2CONTEXT_HPP_INCLUDED

#include <pddi/base/basecontext.hpp>
#include <pddi/ps2/ps2display.hpp>
#include <pddi/ps2/ps2texcache.hpp>
#include <pddi/ps2/ps2vucode.hpp>
#include <pddi/ps2/mfifo.hpp>

#include <eetypes.h>
#include <eeregs.h>
#include <eestruct.h>

void* malloc_uncached_accel(const int nBytes);
void free_uncached_accel(void* ptr);

class ps2ExtPS2Control;
class ps2ExtHardwareSkinning;
class ps2ExtFramebufferEffects;

// register fields for A+D GS data mode
// comment in register names as you need them
struct AD_REG
{
    // initialize with the address of the GS register
    AD_REG(unsigned long a) : addr(a) { reg.data = 0; }

    union
    {
        unsigned long   data;
        sceGsAlpha      alpha;
        sceGsBitbltbuf  bitbltbuf;
        sceGsClamp      clamp;
        sceGsColclamp   colclamp;
        sceGsDimx       dimx;
        sceGsDthe       dthe;
        sceGsFba        fba;
        sceGsFogcol     fogcol;
        sceGsMiptbp1    miptbp1;
        sceGsMiptbp2    miptbp2;
        sceGsPabe       pabe;
        sceGsPrmode     prmode;
        sceGsPrmodecont prmodecont;
        sceGsRgbaq      rgbaq;
        sceGsScanmsk    scanmsk;
        sceGsScissor    scissor;
        sceGsTest       test;
        sceGsTex0       tex0;
        sceGsTex1       tex1;
        sceGsTex2       tex2;
        sceGsTexa       texa;
        sceGsTexclut    texclut;
        sceGsXyoffset   xyoffset;
        sceGsZbuf       zbuf;
    } reg;
    unsigned long addr;
};

//-------------------------------------------------------------------
// This structure maps the ps2Context, and ps2Material state
// to the state of the GS.  The ps2Material state is copied in there
// with ps2Material::MergeGSContext()
struct GSContext
{
    void Init()
    {
        prmodecont.addr = SCE_GS_PRMODECONT;
        prmode.addr = SCE_GS_PRMODE;
        clamp.addr = SCE_GS_CLAMP_1;
        alpha.addr = SCE_GS_ALPHA_1;
        zbuf.addr = SCE_GS_ZBUF_1;
        test.addr = SCE_GS_TEST_1;
        scissor.addr = SCE_GS_SCISSOR_1;
        pabe.addr = SCE_GS_PABE;
        texflush.addr = SCE_GS_TEXFLUSH;
        tex1.addr = SCE_GS_TEX1_1;
        tex0.addr = SCE_GS_TEX0_1;
        miptbp1.addr = SCE_GS_MIPTBP1_1;
        miptbp2.addr = SCE_GS_MIPTBP2_1;
        //
        SCE_GIF_CLEAR_TAG((u_long128*)&contextTag);
        contextTag.NLOOP = (sizeof(GSContext)-16) / 16; // size in qwords
        contextTag.EOP = 1;
        contextTag.PRE = 0;
        contextTag.PRIM = 0;
        contextTag.FLG = SCE_GIF_PACKED;
        contextTag.NREG = 1;
        contextTag.REGS0 = 0x0e; // A+D

        prmodecont.reg.data = 0;
        pabe.reg.data = 0;
        texflush.reg.data = 0;

        // ZTE is on because of TRC (TRC V2.1e, 16.2.1)
        test.reg.test.ZTE = 1;
        // usr/local/sce/1st_read/notice.txt
        //
        //1. Depth Test
        //
        //  When the ZTE which controls the depth test is ON/OFF switched,
        //  the test may not be performed properly in some conditions.
        //
        //  Therefore, if you are not executing the depth test nor using the 
        //  Z buffer, do not set as ZTE=0 but set as ZTE=1 and ZTST=01(Always).
        //  At the same time, set the ZBUF register as ZMSK=1.
        //  The GS internal operation in this state is equivalent to the ZTE=0
        //  state.
    }

    sceGifTag contextTag;
    AD_REG prmodecont;
    AD_REG prmode;
    AD_REG clamp;
    AD_REG alpha;
    AD_REG zbuf;
    AD_REG test;
    AD_REG scissor;
    AD_REG pabe;
    AD_REG texflush;
    AD_REG tex1;    
    AD_REG tex0;
    AD_REG miptbp1;
    AD_REG miptbp2;

}  __attribute__((aligned(16)));


//-----------------------------------------------------------------------------
class VU_Context_Transform
{
public:
    VU_Context_Transform() {/*nop*/}
    void Init()
    {
        matrix.Identity();
        projection.Identity();
        viewScaleX = 1.0f;
        viewScaleY = 1.0f;
        scaleZ = 1.0f;
        fogScale = 1.0f;
        viewOffsetX = 0.0f;
        viewOffsetY = 0.0f;
        offsetZ = 0.0f;
        fogOffset = 0.0f;
        clipper = true;
        pad0 = pad1 = pad2 = 0;
    }

    // structures should be quadword aligned
    pddiMatrix projection;
    pddiMatrix matrix;

    float viewScaleX;  // viewport scale X
    float viewScaleY;  // viewport scale Y
    float scaleZ;      // z scale
    float fogScale;

    float viewOffsetX; // viewport offset X
    float viewOffsetY; // viewport offset Y
    float offsetZ;     // z offset
    float fogOffset;

    unsigned clipper;
    unsigned pad0;
    unsigned pad1;
    unsigned pad2;
};

class VU_Context_Lighting
{
public:
    VU_Context_Lighting() { /* nop */ };

    void Init()
    {
        float v[4] = { 0.0f, 0.0f, 1.0f, 0.0f };
        lightDirection[0] = v;  // set x component
        lightDirection[1] = v;  // set y component
        lightDirection[2] = v;  // set z component

        for(int i=0; i < 4; i++)
        {
            lightColour[i].Set(1.0f, 1.0f, 1.0f, 1.0f);
            specular[i] = 0.0f;
        }
        additive.Set(0.0f, 0.0f, 0.0f, 0.0f);
        view[0] = 0.0f;
        view[1] = 0.0f;
        view[2] = 1.0f;
        shininess = 0.0f;
    }

    void SetLightDirection(int light, pddiVector& dir)
    {
        if(light > 3) return;
        lightDirection[0][light] = dir.x;
        lightDirection[1][light] = dir.y;
        lightDirection[2][light] = dir.z;
    }

    float lightDirection[3][4];         // 4 lights, stored in column-major order

    pddiColourVector lightColour[4];    // 0.0-255.0
    pddiColourVector additive;          // additive lighting component (Ag*Am + Em)
    float specular[4];                  // specular lighting component (Dl*Sm)

    float view[3];                      // view vector
    float shininess;                    // material shininess
};

struct VU_Context
{
    void Init()
    { 
        dirty = false;
        transform.Init();
        light.Init();
    };
    
    unsigned GetSizeQW() const { return (sizeof(transform) + sizeof(light)) / 16; }
    void SetDirty(bool d)      { dirty = d; }
    bool GetDirty() const      { return dirty; }

    // put these first - and no virtual functions in this class!
    VU_Context_Transform transform;
    VU_Context_Lighting light;

    bool dirty;
} __attribute__((aligned(16)));


class ps2Texture;
class ps2TexCache;
class ps2Vram;

void ps2_clearvram();

//-----------------------------------------------------------------------------
class ps2Context : public pddiBaseContext
{
public:
    ps2Context(pddiDisplay* display, pddiDevice* device);
    virtual ~ps2Context();

    // this works as there is only once context on the PS2
    static ps2Context* GetContext();

    void ClearDepthOptimized();
    void FillDestAlpha(int value);
    virtual void Clear(unsigned bufferMask);

    virtual void SetViewWindow(float left, float top, float right, float bottom);
    virtual void SetZRange(float n, float f);

    virtual void SetColourWrite(bool red, bool green, bool blue, bool alpha);

    virtual void EnableZBuffer(bool enable);
    virtual void SetZCompare(pddiCompareMode mode);
    virtual void SetZWrite(bool enable);
    virtual void SetFog(pddiColour colour, float start, float end);

    // backface culling 
    virtual void SetCullMode(pddiCullMode mode);
    virtual pddiCullMode GetCullMode();

    virtual int GetMaxLights() { return 4; }
    virtual void SetAmbientLight(pddiColour colour);

    virtual void DrawPrimBuffer(pddiShader* shader, pddiPrimBuffer* buffer);
    virtual pddiPrimStream* BeginPrims(pddiShader* material, pddiPrimType primType, unsigned vertexType, int vertexCount = 0, unsigned pass = 0);
    virtual void EndPrims(pddiPrimStream* stream);

    pddiDisplay* GetDisplay() { return display; }

    // utility
    int GetMaxTextureDimension(void) { return 256; }

    virtual pddiExtension* GetExtension(unsigned id);
    virtual bool VerifyExtension(unsigned id);

    // force drawing to finish
    virtual void DrawSync();

    unsigned GetLastSyncFrame() const { return lastSyncFrame; }
    
    virtual void BeginFrame();
    virtual void EndFrame();

    inline ps2TexCache* GetTextureCache() const { return texCache; }    

    VU_Context* GetVUContext() { return vu_context; }

    void SetGSRegister(unsigned long reg, unsigned long value);

    void SyncGSPath();

    void WaitVSync();
    void DisplayReset();  // tell context that a resolution switch has occured

    ps2MFIFO* GetMFIFO() const { return mfifo; }
    ps2Vram*  GetVram()  const { return vram; }

    // Set up GS context data structure with correct colour values for
    // lighting on the VU1.  Usually called from shaders.
    void PreMultiplyLights(const struct ps2LightingProperties*);

    // may22/2001 amb
    virtual void MotionBlur(unsigned src, unsigned dst, const pddiRect* srcRect, const pddiRect* destRect);

    void PreSwapProcess( unsigned int src, int frameNum );
    int TransformToScreen( const pddiVector* a, pddiVector* out );
    int ClearDestAlpha(const pddiRect* rc);
    int SampleDestAlphaAndFill(const pddiRect* rc);
    unsigned GetBackBufferVRAM(void);

    void LoadHardwareMatrix(pddiMatrixType id);
    void SetupHardwareProjection(const pddiViewState* view, float width, float height);
    void SetupHardwareLight(int light);
    inline void SetupHardwareProjection()
    {        
        SetupHardwareProjection( state.viewState, (float)display->GetWidth(), (float)display->GetHeight() );
    }

    void RemoveIntc();
    void AddIntc();

    #ifdef PS2_USE_THE_WATCHER
    ps2VramView vramView;
    ps2VramView GetDisplayVram() const { return vramView; }
    #endif

private:
    friend class ps2ExtPS2Control;
    friend class ps2ExtFramebufferEffects;
    friend class ps2PrimBuffer;
    friend class ps2PrimStream;
    friend class ps2SimpleShader;
    friend class ps2LightmapShader;
    friend class ps2RefractionShader;
    friend class ps2ToonShader;
    friend class ps2ReflectionShader;
    
    GSContext* gsContext;
    VU_Context* vu_context;

    pddiMatrix inverseModelView;

    ps2TexCache* texCache;

    ps2MFIFO* mfifo;  // mfifo for VIF1 display list
    ps2Vram* vram;

    unsigned lastSyncFrame;

    // for lighting
    pddiColourVector globalAmbient; 

    bool  motionBlur;
    float motionBlurZoom, motionBlurAlpha, motionBlurTheta;

    unsigned beginTiming;
    void BeginTiming();
    float EndTiming();

    void LoadMicrocode();
    unsigned GetFreeMicrocodeAddress();
    void SyncScratchPad();
    void EnableClipper(bool enable);
    void ClearVRAM( u_char r, u_char g, u_char b, u_char a );

    void SetDestAlphaTest(ps2DestAlphaTestMode mode);

    void RebuildTransformContext(const pddiViewState* view, float dw, float dh);
    inline void RebuildTransformContext()
    {
        RebuildTransformContext( state.viewState , display->GetWidth() , display->GetHeight() );
    }

    void GetScissorRegion(int* x0,int* x1,int* y0,int* y1);

    // jun13/2001 - new stencil stuff   
    int  stencilAddr;
    bool stencilPass;

    // nov7/2001 amb
    // hardware zbuffer fog
    int HardwareZbufferFog( int r, int g, int b, int a, float znear, float zfar );

    //
    pddiColour shadowColour;
    int SetShadowColour( int r, int g, int b, int a );

    //
    class FeedbackEffect* swirlyEffect;
    int SwirlyEffect(float t, float du, float dv, int flags);

    //
    void RenderMotionBlur(void);

    // For S H&R, we disable the texcache by default
    #ifdef PS2_NO_TEXCACHE
    int DisableTexCache( bool disable ){ return texCache->Disable(true); }
    #else
    int DisableTexCache( bool disable ){ return texCache->Disable(disable); }
    #endif

    #ifdef PS2_USE_THE_WATCHER
    int DisplayVram(ps2VramView what) { vramView = what; return 0; }
    int ForceMFIFOSync( bool force ) { mfifo->ForceSync( force ); return 0; }
    int EnableTextures(bool enable) { return texCache->EnableTextures(enable); }
  
    static void WatcherCallback(void *userData);
    void InitTheWatcher();
    #endif

    //
    pddiShader* defaultShader;

    ps2ExtPS2Control*  extPS2Control;
    ps2ExtHardwareSkinning* extHardwareSkinning;
    ps2ExtFramebufferEffects* extFramebufferEffects;

    //
    void LazyStateSet(void);

    bool anyLightStateChanged;
    bool transformStateChanged;
    bool lightStateChanged[4];
    pddiMatrix lightViewMatrix[4];
};

/*
**
** ps2ExtPS2Control - implementation of external PS2 specific functions
**
*/
class ps2ExtPS2Control : public pddiExtPS2Control
{
public:
    ps2ExtPS2Control(ps2Context* c) : context(c)
    {
        context->AddRef();
    }

    ~ps2ExtPS2Control()
    {
        context->Release();
    }

    virtual void LoadMicrocode()
    {
        context->LoadMicrocode();
    }

    virtual unsigned GetFreeMicrocodeAddress()
    {
        return context->GetFreeMicrocodeAddress();
    }

    virtual void SyncScratchPad()
    {
        context->SyncScratchPad();
    }

    virtual void EnableClipper(bool enable)
    {
        context->EnableClipper(enable);
    }

    virtual void SetDestAlphaTest(ps2DestAlphaTestMode mode)
    {
        context->SetDestAlphaTest(mode);
    }   

    virtual void ClearVRAM(unsigned char r, unsigned char g, unsigned char b, unsigned char a)
    {
        context->ClearVRAM(r,g,b,a);
    }

    virtual void EnableMotionBlur(bool e, float alpha, float zoom,float theta)
    {
        context->motionBlur = e;
        context->motionBlurAlpha = alpha;
        context->motionBlurZoom  = zoom;
        context->motionBlurTheta = theta;
    }

    virtual void EnableFSAA(int flags)
    {
        /* NOP */
    }

    //
    virtual int BeginStencilPass(int flags)
    {
        //return context->BeginStencilPass(flags);
        return 0;
    }
      
    virtual int EndStencilPass(int flags)
    {
        //return context->EndStencilPass(flags);
        return 0;
    }

    virtual int HardwareZbufferFog( int r, int g, int b, int a, float znear, float zfar )
    {
        return context->HardwareZbufferFog(r,g,b,a,znear,zfar);
    }

    virtual int SetShadowColour( int r, int g, int b, int a )
    {
        return context->SetShadowColour(r,g,b,a);
    }

    virtual int SwirlyEffect(float t, float du, float dv, int flags)
    {
        return context->SwirlyEffect(t,du,dv,flags);
    }

    virtual int InvalidateTexCache()
    {
        return context->texCache->InvalidateTexCache();
    }
    
    virtual int AddVU1Program(const char* name, unsigned addr, int codePath, bool replicate)
    {
        return 0;//context->GetMicrocodeHandler()->AddProgram(name, addr, (ps2VuCodeHandler::CodePath)codePath, replicate);
    }
    
    virtual unsigned SetVU1CodePath(int path)
    {
        return 0;//context->GetMicrocodeHandler()->SetCodePath((ps2VuCodeHandler::CodePath)path);
    }
    
    virtual unsigned GetVU1ProgramAddress(int handle)
    {
        return 0;//context->GetMicrocodeHandler()->GetProgram(handle);
    }
    
    virtual unsigned GetVU1ProgramAddress(const char* name)
    {
        return 0;//context->GetMicrocodeHandler()->GetProgram(name);
    }

    virtual unsigned GetBackBufferVRAM(void)
    {
        return context->GetBackBufferVRAM();
    }

    virtual int TransformToScreen( const pddiVector* in, pddiVector* out)
    {
        return context->TransformToScreen(in,out);
    }

    virtual int ClearDestAlpha(const pddiRect* rc)
    {
        return context->ClearDestAlpha(rc);
    }

    // in screen coordinates
    virtual int SampleDestAlphaAndFill(const pddiRect* rc)
    {
        return context->SampleDestAlphaAndFill(rc);
    }

    virtual int SetBrightness(pddiColour col)
    {
        context->GetVram()->SetBrightness(col);
        return 0;
    }
    
    #ifdef PS2_USE_THE_WATCHER
    virtual int EnableTextures(bool enable)
    {
        return context->EnableTextures(enable);
    }

    virtual int DisableTexCache( bool disable )
    {
        return context->DisableTexCache(disable);
    }

    virtual int DisplayVram(ps2VramView what)
    {
        return context->DisplayVram(what);
    }

    virtual int ForceMFIFOSync( bool force )
    {
        return context->ForceMFIFOSync( force );
    }

    #else // these extensions are nop's when the watcher is disabled
    virtual int EnableTextures(bool enable) { return 0; };
    virtual int DisableTexCache( bool disable ) { return context->DisableTexCache(disable); };
    virtual int DisplayVram(ps2VramView what) { return 0; };
    virtual int ForceMFIFOSync( bool force ) { return 0; };
    #endif

    //
    // SIMPSONS 2: Added this to work around the pink screen of death
    //
    virtual void MFIFOEnable( bool enableFlag )
    {
        context->GetMFIFO()->Enable( enableFlag );
    }

private:
    ps2Context* context;
};


/*
**
** ps2ExtFramebufferEffects - implementation of PS2 framebuffer specific functions
**
*/

class ps2ExtFramebufferEffects : public pddiExtFramebufferEffects
{
public:

    ps2ExtFramebufferEffects(ps2Context* c) : context(c)
    {
        context->AddRef();
    }

    virtual void EnableMotionBlur(bool enable, float alpha, float zoom, bool rgb )
    {
        context->motionBlur = enable;
        context->motionBlurAlpha = alpha;
        context->motionBlurZoom  = zoom;
        context->motionBlurTheta = rgb ? 1.0f : 0.0f; // apr16/2002 amb - fixme hacked!
    }

    virtual void RenderMotionBlur(void)
    {
        context->RenderMotionBlur();
    }


    virtual void SetQuality(Quality q)
    {
        /* nop */
    }

private:
    ps2Context* context;
};

#endif // PS2CONTEXT_HPP_INCLUDED
