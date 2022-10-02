//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


#ifndef _XBOXCONTEXT_HPP
#define _XBOXCONTEXT_HPP

#include "direct3d.hpp"
#include "../pddi.hpp"
#include "../base/basecontext.hpp"
#include "focusBlur.hpp"
class d3dDisplay;
class d3dDevice;
class d3dVertexProgram;
class d3dVertexProgramManager;
class d3dShader;
class d3dPrimStream;
class d3dState;

class d3dExtGammaControl;
class d3dExtAntialiasControl;
class d3dExtGlobalProjectedTexture;
class d3dExtReadPixels;
#ifdef _XBOX_
class d3dExtHardwareSkinning;
class d3dExtVisibilityTest;
class d3dExtVertexProgram;
class d3dExtFramebufferEffects;
class d3dExtFrameBufferTexture;
#endif

typedef struct
{   
    bool nothingYet;
} d3dDevCaps;

const int MAX_TEXTUREFORMATS = 32;

//-------------------------------------------------------------------
class d3dContext : public pddiBaseContext
{
public:
    // frame markers
    virtual void BeginFrame();
    virtual void EndFrame();

    // clearing
    virtual void Clear(unsigned bufferMask);

    // immediate mode prim rendering 
    virtual pddiPrimStream* BeginPrims(pddiShader* material, pddiPrimType primType, unsigned vertexType, int vertexCount, unsigned pass = 0 );
    virtual void EndPrims(pddiPrimStream* stream);

    // retained mode prim rendering
    virtual void DrawPrimBuffer(pddiShader* material, pddiPrimBuffer* buffer);
    
    // lighting
    virtual void SetAmbientLight(pddiColour colour);

    // backface culling
    virtual void SetCullMode(pddiCullMode mode);

    // colour buffer
    virtual void SetColourWrite(bool red, bool green, bool blue, bool alpha);

    // z-buffer control
    virtual void EnableZBuffer(bool enable);
    virtual void SetZCompare(pddiCompareMode compareMode);
    virtual void SetZWrite(bool);
    virtual void SetZBias(float bias);
    virtual void SetZRange(float n, float f);

    // stencil buffer
    void EnableStencilBuffer(bool enable);
    void SetStencilCompare(pddiCompareMode compare);
    void SetStencilRef(int ref);
    void SetStencilMask(unsigned mask);
    void SetStencilWriteMask(unsigned mask);
    void SetStencilOp(pddiStencilOp failOp, pddiStencilOp zFailOp, pddiStencilOp zPassOp);

    // polygon fill
    virtual void SetFillMode(pddiFillMode mode);

    // render target
    unsigned SetRenderTarget(pddiTexture*);

    // fog
    virtual void EnableFog(bool enable);
    virtual void SetFog(pddiColour colour, float start, float end);

    virtual int GetMaxTextureDimension();

    // extensions
    virtual pddiExtension* GetExtension(unsigned extID);
    virtual bool VerifyExtension(unsigned extID);

    // forces drawing to complete
    virtual void DrawSync(void);

    // d3d internal funcitons
    d3dContext(d3dDisplay* display, d3dDevice* device);
    virtual ~d3dContext();

    bool Init(void);
    //d3dDevCaps* GetDeviceCaps(void)   { return &devCaps; }
    bool ValidateTexture(D3DFORMAT f);

    d3dDisplay* GetDisplay() { return display; }
    d3dDevice* GetDevice()   { return device; }
    d3dState* GetState()     { return d3dstate; }
    unsigned GetId()         { return id; }

    d3dVertexProgram* GetVertexProgram(const char*, pddiPrimType primType, unsigned vertexMask, unsigned flags);
    void AddVertexProgram( const char* name, void* tokens );
    d3dPrimStream* GetStream(void) {return stream;}

    void PickVSLights(int*);
    void UploadLights(void);
    void LoadSkinConstants(pddiShader*);

    void ResetCull(void);

    bool polyClear;

private:
    int id;
    d3dState* d3dstate;
    d3dDisplay* display;
    d3dDevice* device;
    d3dDevCaps devCaps;
    d3dShader* defaultShader;

    LPDIRECT3DDEVICE8 d3d;
    LPDIRECT3DSURFACE8 zBuffer;
    D3DVIEWPORT8 viewPort;
    D3DFORMAT validTextures[MAX_TEXTUREFORMATS];

    d3dPrimStream* stream;
    d3dVertexProgramManager* vertprogs;

    pddiMatrix lightViewMatrix[PDDI_MAX_LIGHTS];
    bool lightStateChanged[PDDI_MAX_LIGHTS];
    bool anyLightStateChanged;

    void DefaultD3DState();

    __int64 beginTime;
    float ticksToMs;

    virtual void BeginTiming();
    virtual float EndTiming();
    
    // pddiBase context hardware interface
    virtual void LoadHardwareMatrix(pddiMatrixType id);
    virtual void SetupHardwareProjection();
    virtual void SetupHardwareLight(int light);


    void SetViewPort(float dwX, float dwY, float dwWidth, float dwHeight);

    d3dExtGammaControl* extGammaControl;
    d3dExtAntialiasControl* extAntialiasControl;
    d3dExtGlobalProjectedTexture* extGlobalProjectedTexture;
    d3dExtReadPixels* extReadPixels;
#ifdef _XBOX_
    d3dExtHardwareSkinning* extHardwareSkinning;
    d3dExtVisibilityTest* extVisibilityTest;
    d3dExtVertexProgram* extVertexProgram;
    d3dExtFramebufferEffects* extFramebufferEffects;
    d3dExtFrameBufferTexture * extFrameBufferTexture;
    d3dExtFocusBlurEffect * extFocusBlurEffect;
#endif
};

#endif //_CONTEXT_HPP

