//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


#ifndef PS2VRAM_HPP
#define PS2VRAM_HPP

#include <pddi/base/debug.hpp>
#include <stdio.h>
#include <pddi/ps2/ps2display.hpp>

const unsigned VRAM_SIZE   = 4194304; // 4194304 bytes (4mb of VRAM)
const unsigned VRAM_BLOCKS = 16384;   // 256 bytes per block
const unsigned VRAM_PAGES  = 512;     // 32 blocks per page

const unsigned VRAM_BYTES_PER_BLOCK = 256;
const unsigned VRAM_BITS_PER_BLOCK  = VRAM_BYTES_PER_BLOCK * 8;
const unsigned VRAM_BLOCKS_PER_PAGE = 32;
const unsigned VRAM_BYTES_PER_PAGE = VRAM_BYTES_PER_BLOCK * VRAM_BLOCKS_PER_PAGE; // 8kb pages

typedef u_int vramBlockAddr;
typedef u_int vramPageAddr;

inline vramPageAddr ps2PageFromBlock(vramBlockAddr block)
{
    return (block / VRAM_BLOCKS_PER_PAGE) ;
}

inline vramBlockAddr ps2BlockFromPage(vramPageAddr page)
{
    return (page * VRAM_BLOCKS_PER_PAGE);
}

class ps2VramBlock
{
protected:

public:
    ps2VramBlock( class ps2Vram* vram );


};

/*
**
** ps2Vram
**
** all addresses are in GS blocks
*/
class ps2Vram
{
private:

    class ps2Context* ctx;
    class ps2Display* disp;

    // address is in blocks
    unsigned int fbw; // frame buffer width in pages
    unsigned int fbufAddr[2];
    unsigned int fbufPSM[2];
    unsigned int zbufAddr;
    unsigned int zbufPSM;

    unsigned int startTexVram,sizeTexVram,endTexVram;
    unsigned int frameNum, frameIdx;

public:

    struct TexRect
    {
        int u0,v0;
        int x0,y0;
        int u1,v1;
        int x1,y1;

        inline void Set( 
        int _u0,int _v0,
        int _x0,int _y0,
        int _u1,int _v1,
        int _x1,int _y1)
        {
            u0 = _u0;
            v0 = _v0;

            x0 = _x0;
            y0 = _y0;

            u1 = _u1;
            v1 = _v1;

            x1 = _x1;
            y1 = _y1;            
        }
    };

    ps2Vram(class ps2Context* c);
    ~ps2Vram() { /* */ };

    //---
    unsigned int SetFrameAddr( unsigned int fba0, unsigned int psm0, unsigned int fba1 , unsigned int psm1)
    {
        fbufAddr[0] = fba0;
        fbufAddr[1] = fba1;

        fbufPSM[0] = psm0;
        fbufPSM[1] = psm1;

        return 0;
    }

    unsigned int SetZbufferAddr( unsigned int zbuf , unsigned int zpsm )
    {
        zbufAddr = zbuf;
        zbufPSM  = zpsm;
        return 0;
    }

    unsigned int SetTexMemory(unsigned int start, unsigned int size )
    {
        startTexVram = start;
        sizeTexVram = size;
        endTexVram = start + size;
        return 0;
    }

    unsigned int SetCurrentDrawFrame(unsigned f)
    {
        frameNum = f ;
        frameIdx = f & 1;
        return 0;
    }

    //---
    unsigned int GetFrameAddr( int which )
    { 
        PDDIASSERT( which >= 0 && which < 2 ); 
        return fbufAddr[which];
    }

    unsigned int GetZbufferAddr() { return zbufAddr; }

    unsigned int GetCurrentDrawFrame() { return frameIdx; }
    unsigned int GetCurrentDispFrame() { return !frameIdx; }

    unsigned int GetCurrentDrawFrameAddr()
    {
        return fbufAddr[1];
    }

    unsigned int GetCurrentDispFrameAddr()
    {
        return fbufAddr[0];
    }

    //
    void BuildGifStrips( class VifStream& gifPkt , bool doUV);
    void BuildGifStrips( class VifStream& gifPkt , const TexRect& rect );
    // misc operations
    void BlitBackToFront();
    void BlitBackToTexture(unsigned fbp,unsigned psm,pddiColour tint);

    void DownsampleBackbuffer();
    int DownsampleBackbuffer(const pddiRect* rc, int levels);

    pddiColour mBrightness;
    void SetBrightness(pddiColour col) { mBrightness = col; };
};



#endif // PS2VRAM_HPP
