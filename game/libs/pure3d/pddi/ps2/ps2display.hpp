/*===========================================================================
    ps2display.hpp
    22-Nov-99 Created by Gabriel
    21-Dec-01 Heavily modified by Amit

    Copyright (c)1999 Radical Entertainment, Inc.
    All rights reserved.
===========================================================================*/

#ifndef _PS2DISPLAY_HPP
#define _PS2DISPLAY_HPP

#include <libgraph.h>
#include <pddi/pddi.hpp>

class ps2Display : public pddiDisplay
{
public:
    ps2Display();
    virtual ~ps2Display();

    virtual bool InitDisplay(const pddiDisplayInit* initData);
    virtual bool InitDisplay(int x, int y, int bpp);

    virtual int GetHeight() { return height; }
    virtual int GetWidth()  { return width; }
    virtual int GetDepth()  { return depth; }

    virtual pddiDisplayMode GetDisplayMode() { return PDDI_DISPLAY_WINDOW; }
    virtual int GetNumColourBuffer()         { return 1; }
    virtual unsigned GetBufferMask()         { return PDDI_BUFFER_COLOUR; }

    virtual unsigned GetZBufferFormat()  { return zBufferFormat; }
    virtual unsigned GetZBufferAddress() { return zBufferAddress; }

    virtual unsigned GetFreeVideoMem() { return GetTextureMemoryFree(); }      
    virtual unsigned GetFreeTextureMem() { return GetTextureMemoryFree(); }  

    virtual void SwapBuffers(void);

    virtual int GetTextureMemoryStart()         { return start; }
    virtual void SetTextureMemoryStart(unsigned tmp) { start = tmp; }
    virtual int GetTextureMemoryEnd()           { return end; }
    virtual void SetTextureMemoryEnd(unsigned tmp)   { end = tmp; }
    virtual int GetTextureMemoryFree()          { return end - start;}

    void SetContext(class ps2Context* c) { context = c; }

    // set frame buffer write mask
    void SetFBMask(unsigned mask);

    // restores parameters of current frame
    void RestoreFrame();

    //
    unsigned int GetFrameAddr( int which ) const;
    const sceGsFrame* GetGsFrame() const;

    // SwapBuffers() only queues the swap, which will happen during
    // the vertical blank interrupt.  The below function actually
    // performs the buffer swap.
    // These need to be volatile if we're using a vblank handler!
    void ReallySwapBuffers();
    bool swapQueued;

    // nov29/2001
    unsigned Screenshot(pddiColour* buffer, int nBytes);

    long GetFrameNum() const { return frameNum; };

private:
    class ps2Context* context;
    const struct gsMemoryMap* memoryMap;

    int dispMode; // NTSC or PAL
    int dtv480;   // DTV mode
    int width;
    int height;
    int depth;

    unsigned bufferFormat;
    unsigned zBufferFormat;
    unsigned zBufferAddress;

    long frameNum;

    int  start,end;  // start & end of dynamic region of VRAM
    bool initialized;
    bool lockToVsync;

    void SetupFS_AA(short dispW, short dispH, short dispPSM, short ztest, short zPSM);

    const struct gsFrame1* GetCurrentFrame() const;
};

#endif /* _PS2DISPLAY_HPP */
