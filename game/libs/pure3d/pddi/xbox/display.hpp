/*===========================================================================
    dddisplay.hpp
    25-Aug-97 Created by Neall

    Copyright (c)1997, 1998, 1999 Radical Entertainment, Inc.
    All rights reserved.
===========================================================================*/

#ifndef _DISPLAY_HPP
#define _DISPLAY_HPP

#include "../pddi.hpp"
#include "../pddiext.hpp"
#include "direct3d.hpp"
#include "util.hpp"

class d3dSurface;

class d3dDisplay : public pddiDisplay
{
public:
    d3dDisplay(LPDIRECT3D8);
    virtual ~d3dDisplay();

    // public interface stuff
    virtual bool InitDisplay(const pddiDisplayInit*);
    virtual bool InitDisplay(int x, int y, int bpp);

    virtual int GetHeight() { return displayHeight; }
    virtual int GetWidth()  { return displayWidth; }
    virtual int GetDepth()  { return displayDepth; }
    virtual pddiDisplayMode GetDisplayMode() { return PDDI_DISPLAY_FULLSCREEN; }
    virtual int GetNumColourBuffer()         { return nColourBuffer; }
    virtual unsigned GetBufferMask()         { return bufferMask; }

    virtual unsigned GetFreeVideoMem();
    virtual unsigned GetFreeTextureMem();

    virtual void SwapBuffers(void);

    unsigned Screenshot(pddiColour* buffer, int nBytes);
    unsigned Screenshot(pddiColour* buffer, int nBytes, const pddiRect& rectangle, pddiBuffer source = PDDI_BUFFER_FRONT);

    bool IsWidescreen(void) {return widescreen; };

    // class specific stuff
    bool HasReset(void);

    bool                IsHardwareTransform(void) { return true;}
    LPDIRECT3D8         GetD3D(void)       { return d3d;}
    LPDIRECT3DDEVICE8   GetD3DDevice(void) { return d3dDevice;}
    D3DCAPS8*           GetCaps(void)      { return &d3dCaps;}
    D3DFORMAT           GetColourBufferFormat(void) { return colourBufferFormat;}
    void                Snapshot(void);
    LPDIRECT3DTEXTURE8  GetSnapshotTexture(void) { return snapshot;}
    unsigned GetRenderTargetHeight() { return rtHeight; }
    unsigned GetRenderTargetWidth()  { return rtWidth; }

    void SetGamma(float r, float g, float b);
    void GetGamma(float* r, float* g, float* b);

    pddiDisplayInit::AntiAlias GetAntiAliasMode( void ) { return displayInit.antiAlias; }
    pddiDisplayInit::PreFilter GetPreFilterMode( void ) { return displayInit.preFilter; }

protected:
    LPDIRECT3D8           d3d;
    LPDIRECT3DDEVICE8     d3dDevice;
    D3DPRESENT_PARAMETERS d3dpp;
    D3DCAPS8              d3dCaps;
    D3DGAMMARAMP          initialGammaRamp;
    D3DFORMAT             colourBufferFormat;
    D3DFORMAT             depthBufferFormat;

    bool reset;
    bool lockToVsync;
    bool asyncSwap;
    
    d3dSurface* backBuffer;   

    pddiDisplayInit displayInit;

    int      nColourBuffer;
    unsigned bufferMask;

    int  displayHeight;
    int  displayWidth;
    int  displayDepth;

    float gammaR, gammaG, gammaB;

    unsigned rtHeight, rtWidth;
    LPDIRECT3DTEXTURE8 snapshot;

    bool widescreen;
};

#endif //_DISPLAY_HPP

