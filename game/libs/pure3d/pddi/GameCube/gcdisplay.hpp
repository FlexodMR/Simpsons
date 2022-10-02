//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


#ifndef _GCDISPLAY_HPP_
#define _GCDISPLAY_HPP_

#include <pddi/pddi.hpp>
#include <dolphin/gx.h>

class gcContext;

class gcDisplay : public pddiDisplay
{
public:
    gcDisplay();
  ~gcDisplay();

    // cross-platform functions
    bool InitDisplay(const pddiDisplayInit *initData);
    bool InitDisplay(int x, int y, int bpp);

    int GetWidth(void);
    int GetHeight(void);
    int GetDepth(void);
    pddiDisplayMode GetDisplayMode(void);
    int GetNumColourBuffer(void);
    unsigned GetBufferMask(void);

    unsigned GetFreeTextureMem(void);

    void SwapBuffers(void);

    unsigned Screenshot(pddiColour* buffer, int nBytes);

    int GetNextField(void);

    void ForceXFBReset(void);

    void FillXFB(unsigned char r = 0, unsigned char g = 0, unsigned char b = 0);

    static gcDisplay *CurrentDisplay(void);

private:
    gcContext      *mContext;

    GXFifoObj     *mFifo;
    unsigned char *mFifoBuffer;
    unsigned       mFifoBufferSize;

    unsigned char *mXFB;
    unsigned       mXFBSize;
    bool           mResetXFB;
    bool           mClearOnBlit;
    GXRenderModeObj mRenderMode;

    int  mDisplayWidth;
    int  mDisplayHeight;
    bool mDestAlpha;
    bool mPal;
    bool mFieldMode;
    bool mAntialiasing;
    bool mProgressive;
    bool mLockToVsync;

    bool InitDisplayInternal(bool initxfb);

    static gcDisplay *gCurrentDisplay;

};

#endif
