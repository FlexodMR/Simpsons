/*===========================================================================
   ps2texture.hpp
   22-Nov-99 Created by Gabriel

   Copyright (c)1999 Radical Entertainment, Inc.
   All rights reserved.
===========================================================================*/

#ifndef _PS2TEXTURE_HPP
#define _PS2TEXTURE_HPP

#include <libgifpk.h>
#include <eeregs.h>

#include <pddi/pddi.hpp>
#include <pddi/ps2/ps2buildconfig.hpp>

extern float g_MipK;
extern int g_MipL;
int float_to_k(float);

class ps2Texture : public pddiTexture
{
public:
    enum ps2TexState 
    { 
        PS2_TEX_UNCACHED  = 0,
        PS2_TEX_CACHED    = 1,
        PS2_TEX_FORCE_DWORD = 0xFFFFFFFF
    };

    struct ps2TexCacheNode
    {
        volatile unsigned cacheStart;
        volatile unsigned cacheSize;
        volatile ps2TexState state;
    };


    ps2Texture(class ps2Context* context);
    virtual ~ps2Texture();

    bool Create(int xSize, int ySize, int bitdepth, int alphaDepth, int nMipMap, pddiTextureType type = PDDI_TEXTYPE_RGB, pddiTextureUsageHint usageHint = PDDI_USAGE_STATIC);
    pddiPixelFormat GetPixelFormat()    { return pixelFormat; }
    int GetWidth()                      { return width; }
    int GetHeight()                     { return height; }
    int GetDepth()                      { return bpp; }
    int GetNumMipMaps()                 { return nMip; }
    int GetAlphaDepth()                 { return alphaDepth; }
    pddiTextureUsageHint GetUsageHint() { return usageHint; }

    // palette management
    int  GetNumPaletteEntries(void) { return nPaletteEntries; }
    int  GetPalette(pddiColour*)    { return 0; }
    void SetPalette(int nEntries, pddiColour* palette);

    pddiLockInfo* Lock(int mipLevel, pddiRect* rect = 0);
    void Unlock(int mipLevel);

    // paging control
    void SetPriority(int p)  { /* nop */ }
    int GetPriority()        { return 0; }

    void Prefetch() { /* nop */ }
    void Discard()  { /* nop */ }

    void SetVideoMemoryAddress(unsigned address);
    inline unsigned short GetTBW() const          { return tex0.TBW; }
    inline int GetVramFootprint() const           { return vramfootprint; }
    #ifdef PS2_DETECT_RISKY_DELETIONS
    inline void SetLastSyncFrameUsed(unsigned frame) { lastSyncFrameUsed = frame; }
    #endif
    // aug23/2002 - depreciated
    //bool dirty;
    //inline void SetDirty(bool d) { dirty = d; }
    //inline bool GetDirty() const { return dirty; }
    
    inline void GetTEX0( sceGsTex0* tex0 ) const
    {
        *tex0 = this->tex0;
    }

    inline void GetTEX1( sceGsTex1* tex1 ) const
    {
        // save original L&K
        int L = tex1->L;
        int K = tex1->K;
        *tex1 = this->tex1;
        tex1->K = K;
        tex1->L = L;
    }

    inline void GetMIPTBP1( sceGsMiptbp1* mip1) const
    {
        *mip1 = this->mip1;
    }
    
    inline void GetMIPTBP2( sceGsMiptbp2* mip2) const
    {
        *mip2 = this->mip2;
    }

    inline int GetBPP() const       { return bpp; }
    inline int GetMipLevels() const { return nMip; }

    #ifdef PS2_DETECT_RISKY_DELETIONS
    void Touch();
    #endif
    
    // usually called in an interrupt, so be careful!
    inline volatile int Upload()
    {
        #ifdef PS2_DETECT_RISKY_DELETIONS
        Touch();
        #endif
        #ifdef PS2_DYNAMIC_TEXTURE_PACKET
        unsigned* packet = (unsigned*)0x70003900;
        int qwc = AddToPacket( packet );
        PS2ASSERT( ((int)packet + qwc * 16) < 0x70003fff );
      
        *D_STAT  = D_STAT_CIS2_M;
        *D2_TADR = ((unsigned)packet & 0x3fff) | (1<<31);
        *D2_CHCR = 1 | (1<<2) | (1 << 8); 
        #else
        *D_STAT  = D_STAT_CIS2_M;
        *D2_TADR = (unsigned)dmaPacket;
        *D2_CHCR = 1 | (1<<2) | (1 << 8); 
        #endif
        asm __volatile__ ("sync.l;sync.p");  // ensure DMA has started

        return 0;
    }

    ps2TexCacheNode cacheInfo;

protected:
    friend class ps2TexCache;

    inline unsigned GetVideoMemoryAddress() const { return vramaddress; }

    int  VramAlloc( unsigned w , unsigned h , unsigned bpp, unsigned mipmaps,unsigned short* tbp,unsigned short* cbp, bool alignToPage = true );
    int  NextVramOffset( unsigned w , unsigned h , unsigned bpp ); 
    unsigned AddToPacket (unsigned* dma_pkt) const;
    void BuildDmaChain();
    bool CanBeSwizzled( int mipLevel );

    class ps2Context* context;

    pddiLockInfo lockInfo;
    pddiTextureUsageHint usageHint;
    pddiPixelFormat pixelFormat;
    unsigned short width;
    unsigned short height;
    unsigned char  bpp;
    unsigned char  alphaDepth;
    unsigned char  nMip;
    pddiTextureType type;

    #ifdef PS2_DETECT_RISKY_DELETIONS
    unsigned lastSyncFrameUsed;
    #endif
    unsigned kbMemory;
    unsigned short vramfootprint;
    unsigned short vramaddress;
    unsigned short slop;

    sceGsTex0 tex0;
    sceGsTex1 tex1;
    sceGsMiptbp1 mip1;
    sceGsMiptbp2 mip2;

    unsigned short tbp[7];  // texture base pointer (VRAM address) for mipmap levels
    unsigned short cbp;
    char* bits[8];
    #ifdef PS2_SWIZZLE_TEXTURES
    bool  swizzled[7];
    #endif

    pddiColour* palette;
    unsigned short nPaletteEntries;

    #ifndef PS2_DYNAMIC_TEXTURE_PACKET
    unsigned* dmaPacket;
    unsigned  dmaPacketSize;         // in quadwords
    #endif
};


#endif // _PS2TEXTURE_HPP
