/*===========================================================================
   ps2texture.cpp
   22-Nov-99 Created by Gabriel   

   Copyright (c)1999, 2000, 2001, 2002 Radical Entertainment Ltd
   All rights reserved.
===========================================================================*/

#include <libgraph.h>
#ifdef PS2MW
#include <string.h>
#endif

#include <pddi/pddienum.hpp>
#include <pddi/ps2/ps2texture.hpp>
#include <pddi/ps2/ps2context.hpp>
#include <pddi/ps2/ps2memalign.hpp>
#include <pddi/ps2/ps2debug.hpp>
#include <pddi/ps2/mfifo.hpp>
#include <pddi/ps2/ps2types.hpp>
#include <pddi/ps2/ps2texcache.hpp>
#include <pddi/base/debug.hpp>
#include <pddi/ps2/external/bitconv.hpp>
#include <pddi/ps2/ps2vram.hpp>

#define PS2_MAX_TEX_LEVELS 7
#define PS2_MAX_MIP_LEVELS 6

bool gIgnoreLastFrameSyncCheck = false;

static const pddiStatType bppAllocTable[] =
{ 
    PDDI_STAT_TEXTURE_ALLOC_4BIT, 
    PDDI_STAT_TEXTURE_ALLOC_8BIT,
    PDDI_STAT_TEXTURE_ALLOC_16BIT,
    PDDI_STAT_TEXTURE_ALLOC_32BIT,
    PDDI_STAT_TEXTURE_ALLOC_32BIT
};
   
static const pddiStatType bppCountTable[] =
{ 
    PDDI_STAT_TEXTURE_COUNT_4BIT, 
    PDDI_STAT_TEXTURE_COUNT_8BIT,
    PDDI_STAT_TEXTURE_COUNT_16BIT,
    PDDI_STAT_TEXTURE_COUNT_32BIT,
    PDDI_STAT_TEXTURE_COUNT_32BIT
};

int compute_texture_page_size (int bpp, int width, int height);

   
// GS VRAM page sizes for different bitdepths
static const unsigned pageSizes[][2] =
{
    // w * h
    { 128,128} , // SCE_GS_PSMCT4
    { 128,64 } , // SCE_GS_PSMCT8
    { 64, 64 } , // SCE_GS_PSMCT16
    { 64, 32 } , // SCE_GS_PSMCT32 
    { 64, 32 }   // SCE_GS_PSMCT32
};

// GS VRAM block sizes for different bitdepths
static const unsigned blockSizes[][2] = 
{
    { 32 , 16 },
    { 16 , 16 },
    { 16 , 8  },
    {  8 , 8  },
    {  8 , 8  }
};


// For a given width * height, I can
// precalculate what the next available
// VRAM block is
struct ps2VramLUT
{
    u_short w,h;
    u_int   next;
};

// LUT for 4 bit textures
static const ps2VramLUT lut4[] =
{  
    { 16,    64, +16},   

    { 32  ,   8, +1 },
    { 32  ,  16, +1 },
    { 32  ,  32, +4 },
    { 32  ,  64, +16},
    { 32  , 128, +2 },
    { 32  , 256, +2 },
    { 32  , 512, +2 },
    { 32  ,1024, +2 },

    { 64  ,   8, +4 },
    { 64  ,  16, +8 },
    { 64  ,  32, +4 },
    { 64  ,  64, +8 },
    { 64  , 128, +8 },
    { 64  , 256, +8 },
    { 64  , 512, +8 },
    { 64  ,1024, +8 },

    { 128 , 16 , +1 },
    { 128 , 32 , +4 },
    { 128 , 64 , +16},

    { 256 , 64 , +16},
    { 256 , 32 , +4 },
    { 256 , 16 , +1 },

    { 512 , 64 , +16},
    { 512 , 32 , +4 },
    { 512 , 16 , +1 },

    {1024 , 64 , +16},  
    {1024 , 32 , +4},  
    {1024 , 16 , +1}          
};

// LUT for 8 bit textures
static const ps2VramLUT lut8[] = {        
    {  8 ,  8 , +1 },
    {  8 , 16 , +1 },

    { 16 ,   8, +1 },
    { 16 ,  16, +1 },
    { 16 ,  32, +1 },
    { 16 ,  64, +1 },
    { 16 , 128, +1 },
    { 16 , 256, +1 },
    { 16 , 512, +1 },
    { 16 ,1024, +1 },

    { 32 ,  16, +4 },
    { 32 ,  32, +4 },
    { 32 ,  64, +4 },
    { 32 , 128, +4 },
    { 32 , 256, +4 },
    { 32 , 512, +4 },
    { 32 ,1024, +4 },  

    { 64 ,  16, +16 },
    { 64 ,  32, +16 },   
    { 64 ,  64, +16 },   
    { 64 , 128, +16 },
    { 64 , 256, +16 },
    { 64 , 512, +16 },      
    { 64 ,1024, +16 },   

    { 128,  16, +2 },
    { 128,  32, +8 },

    { 256,   8, +2 },
    { 256,  16, +2 },
    { 256,  32, +8 },

    { 512,   8, +2 },
    { 512,  16, +2 },
    { 512,  32, +8 },

    {1024,   8, +2 },
    {1024,  16, +2 },
    {1024,  32, +8 }
};

// LUT for 32 bit textures
static const ps2VramLUT lut32[] =
{
    { 8 , 8 , +1 },
    { 8 , 16, +1 },

    { 16,  8, +2 },
    { 16, 16, +4 },
    { 16, 32, +4 },
    { 16, 64, +4 },
    { 16, 128, +4 },
    { 16, 256, +4 },
    { 16, 512, +4 },
    { 16,1024, +4 },

    { 32,   8, +16},
    { 32,  16, +16},
    { 32,  32, +16},
    { 32,  64, +16},
    { 32, 128, +16},
    { 32, 256, +16},
    { 32, 512, +16},
    { 32,1024, +16},

    { 64,   8, +16 },
    { 64,  16, +16 },

    {128,   8, +2 },
    {128,  16, +8 },

    {256,   8, +2 },
    {256,  16, +8 },

    {512,   8, +2 },
    {512,  16, +8 },

    {1024,  8, +2 },
    {1024, 16, +8 }
};



ps2Texture::ps2Texture(ps2Context* c)
{
    //dirty = true;
    context = c;
    context->AddRef();
    pixelFormat = PDDI_PIXEL_ARGB8888;
    width = 0;
    height = 0;
    bpp = 0;
    alphaDepth = 0;
    nMip = 0;
    #ifdef PS2_DETECT_RISKY_DELETIONS
    lastSyncFrameUsed = 0xFFFFFFFF;
    #endif

    vramfootprint = 0;
    slop = 0;

    palette = NULL;

    memset( &tex0,0, sizeof(sceGsTex0));
    memset( &tex1,0, sizeof(sceGsTex1));
    memset( &mip1,0, sizeof(sceGsMiptbp1));
    memset( &mip2,0, sizeof(sceGsMiptbp2));

    tex1.MMAG = 1;
    tex1.MMIN = 5;

    for (int i=0; i<PS2_MAX_TEX_LEVELS ; i++)
    {
        tbp[i]  = 0;
        bits[i] = 0;
#ifdef PS2_SWIZZLE_TEXTURES
        swizzled[i] = false;
#endif
    }

    cacheInfo.cacheStart = (unsigned)-1;
    cacheInfo.cacheSize  = (unsigned)-1;   
    
    kbMemory = 0;
#ifndef PS2_DYNAMIC_TEXTURE_PACKET
    dmaPacket = NULL;
    dmaPacketSize = 0;
#endif
}

ps2Texture::~ps2Texture()
{
    #ifdef PS2_DETECT_RISKY_DELETIONS
    if (context->GetLastSyncFrame() != lastSyncFrameUsed && !gIgnoreLastFrameSyncCheck)
    {
        // deleting a texture that is still in use!
        EE::Break();
    }
    #endif

    int kbVram = ( vramfootprint * 256 ) / 1024 ;
    slop = (int)(kbVram - kbMemory);

    context->ADD_STAT( bppAllocTable[ bpp >> 3 ] , -kbVram );   
    context->ADD_STAT( bppCountTable[ bpp >> 3 ] , -1 );
    context->ADD_STAT( PDDI_STAT_TEXTURE_ALLOCATED , -kbVram );
    context->ADD_STAT( PDDI_STAT_TEXTURE_SLOP , -slop );      

    context->GetTextureCache()->EvictTex(this);
    context->Release();

    for(int i = 0; i < nMip+1; i++)
    {
        if(bits[i])
        {
            Free(bits[i]); // 128 byte aligned            
            bits[i] = 0;
        }
    }

    Free(palette); // 128 byte aligned    
#ifndef PS2_DYNAMIC_TEXTURE_PACKET
    if ( dmaPacket )
    {
        Free( dmaPacket );
        dmaPacket = NULL;
        dmaPacketSize = 0;
    }
#endif
}

#ifdef PS2_DETECT_RISKY_DELETIONS
void ps2Texture::Touch()
{
    lastSyncFrameUsed = context->GetLastSyncFrame();
}
#endif

// Returns the next available VRAM block after a w*h*bpp texture
int ps2Texture::NextVramOffset( unsigned w , unsigned h , unsigned bpp )
{
   // 4,8, and 32 is all we support
   PDDIASSERT( bpp == 4 || bpp == 8 || bpp == 32 );

   const ps2VramLUT* lut = NULL;
   int lutSize = 0;

   switch( bpp )
   {
      case 4 : lut = lut4; lutSize = sizeof(lut4)/sizeof(lut4[0]);break;
      case 8 : lut = lut8; lutSize = sizeof(lut8)/sizeof(lut8[0]);break;
      case 32: lut = lut32;lutSize = sizeof(lut32)/sizeof(lut32[0]);break;
   };

   const unsigned blockWidth = blockSizes[bpp >> 3][0];
   const unsigned blockHeight= blockSizes[bpp >> 3][1];

   const unsigned pageWidth  = pageSizes[bpp >> 3][0];
   const unsigned pageHeight = pageSizes[bpp >> 3][1];

   w = UTIL::Max( blockWidth , w );
   h = UTIL::Max( blockHeight, h );      

   if ( lut && lutSize )
   {
      for( int i = 0 ; i < lutSize ; i++ )
      {
         if ( (lut[i].w == w) && (lut[i].h == h) )
         {
            return lut[i].next;
         }
      }
   }  
   
   if ( (w >= pageWidth && h >= pageHeight) || ( w == h ) )
   {
      return (w * h * bpp) / VRAM_BITS_PER_BLOCK;
   }   
   
   if ( w < pageWidth && h >= pageHeight )
   {
      return (h * 32) / pageHeight;
   }
   
   if ( w >= pageWidth && h < pageHeight )
   {
      return (w * 32) / pageWidth;
   }
   
   PS2DBG( scePrintf("PDDI: ps2Texture::NextVramOffset() - can't alloc [%d x %d x %d]\n", w,h,bpp) );
   
   return VRAM_BLOCKS_PER_PAGE ;
}

// - Calculates all the vram addresses for a given w*h*bpp texture with mipmaps
// - tbp/cbp stores the relative offset from the base (vramaddress)
// - All textures (except mipmaps) are page alligned 
int ps2Texture::VramAlloc( unsigned w , unsigned h , unsigned bpp, unsigned mipmaps,u_short* tbp,u_short* cbp,bool alignToPage )
{ 
   const unsigned blockWidth = blockSizes[bpp >> 3][0];
   const unsigned blockHeight= blockSizes[bpp >> 3][1];
   
   const unsigned pageWidth  = pageSizes[bpp >> 3][0];
   const unsigned pageHeight = pageSizes[bpp >> 3][1];
   
   const bool palettized = (bpp == 4) || (bpp == 8);

   // first calculate how many vram blocks this texture takes up
   int vramBlocks = 0;

   for( unsigned mipLevel = 0 ; mipLevel <= mipmaps ; mipLevel++ )
   {
      const unsigned mipWidth = w >> mipLevel;
      const unsigned mipHeight= h >> mipLevel;

      // multiple of a vram page
      if ( mipWidth >= pageWidth && mipHeight >= pageHeight)
      {
         vramBlocks += ( mipWidth * mipHeight * bpp ) / VRAM_BITS_PER_BLOCK;
         continue;         
      }

      if ( mipWidth < pageWidth && mipHeight < pageHeight )
      {
         vramBlocks += VRAM_BLOCKS_PER_PAGE;
         break;
      }
      
      if ( mipWidth < pageWidth && mipHeight >= pageHeight )
      {
         vramBlocks += ( mipHeight / pageHeight ) * VRAM_BLOCKS_PER_PAGE ;
         break;         
      }
      
      if ( mipHeight < pageHeight && mipWidth >= pageWidth )
      {
         vramBlocks += ( mipWidth / pageWidth ) * VRAM_BLOCKS_PER_PAGE;
         break;
      }      
   }
     
   unsigned address = 0;
   bool sharePages = false;

   for( unsigned mipLevel = 0 ; mipLevel <= mipmaps ; mipLevel++ )
   {
      const unsigned mipWidth = w >> mipLevel;
      const unsigned mipHeight= h >> mipLevel;

      tbp[mipLevel] = address;      
      
      // square or page sized      
      if ( mipWidth >= pageWidth && mipHeight >= pageHeight )
      {
         address += ( mipWidth * mipHeight * bpp ) / VRAM_BITS_PER_BLOCK;
         continue;
      }

      /*
      // 05/27/2002 amb - Pink texture fix my ass
      if ( mipWidth <= pageWidth && mipHeight > pageHeight )
      {
           address += ( mipHeight * BLOCKS_PER_PAGE ) / pageHeight;
         continue;
      }

      if( mipWidth > pageWidth && mipHeight <= pageHeight )
      {
           address += ( mipWidth * BLOCKS_PER_PAGE ) / pageWidth;
         continue;
      }
      */

      if ( mipWidth <= pageWidth || mipHeight <= pageWidth )
      {
         sharePages = true;                            
      }     

      if ( sharePages )
      {
         unsigned next = NextVramOffset( mipWidth, mipHeight, bpp );
         address += UTIL::Max( 1U , next );
         continue;
      }
   }
     
   if ( palettized )
   {
      unsigned clutSize = (bpp == 4) ? 1 : 4;      

      *cbp = address;     

      if ( address <= (vramBlocks - clutSize) )
      {
         // fits into allocated space
         *cbp = vramBlocks - clutSize;
      }
      else
      {
         *cbp = vramBlocks;
         vramBlocks += clutSize;
      }
   }
    
   if ( alignToPage )
   {
      unsigned alignedSize = ( vramBlocks + 31 ) & (~31);
      int wasted = alignedSize - vramBlocks;
      
      vramBlocks = alignedSize;
   }

   return vramBlocks;
}

void ps2Texture::SetPalette(int num, pddiColour* pal)
{
   if(!palette) {
      return;
   }

   PDDIASSERT(num <= nPaletteEntries);
   nPaletteEntries = num;

   for (int i=0; i < nPaletteEntries; i++)
   {
      // covert argb to abgr 'cos the PS2 likes it that way
      palette[i].SetRed(pal[i].Blue());
      palette[i].SetGreen(pal[i].Green());
      palette[i].SetBlue(pal[i].Red());
      palette[i].SetAlpha((pal[i].Alpha()+1)>>1);
   }

   // rearrange palette for efficiency using CSM mode 1
   // see GS User's Manual page 26 
   if (nPaletteEntries == 256)
   {   
      pddiColour tmp;

      for (int i=0; i < 256; i += 32) 
      {
         for (int j=0; j<8; j++)
         {
            tmp = palette[i+j+8];
            palette[i+j+8] = palette[i+j+16];
            palette[i+j+16] = tmp;
         }
      }
   }
}
   
bool ps2Texture::Create(int xSize, int ySize, int bitDepth, int alpha, int nMipMap, pddiTextureType type, pddiTextureUsageHint usageHint)
{  
    PDDIASSERT( (nMipMap < (PS2_MAX_MIP_LEVELS)) && "PDDI ERROR: Too many miplevels! Use 6 or less." );
    PDDIASSERT( (xSize >= 8) && (ySize >= 8) );
    PDDIASSERT( (xSize>>nMipMap) >= 8 );
    PDDIASSERT( (ySize>>nMipMap) >= 8 );

    int tw = UTIL::Log2( xSize );
    int th = UTIL::Log2( ySize );  

    if (((tw == -1) || (th == -1)) && (type != PDDI_TEXTYPE_RENDERTARGET) )
    {
        PS2DBG(scePrintf("PDDI ERROR : Tried to create a non-pow2 texture [%d x %d x %d]\n",xSize,ySize,bitDepth));
        lastError = PDDI_TEX_NOT_POW_2;
        return false;
    }

    tex0.TW = tw;
    tex0.TH = th;

    const int maxTexSize = 1024;
    if((xSize > maxTexSize) || (ySize > maxTexSize))
    {
        lastError = PDDI_TEX_TOO_BIG;
        return false;
    }

    switch(type)
    {
        case PDDI_TEXTYPE_RENDERTARGET:
        case PDDI_TEXTYPE_RGB:
        case PDDI_TEXTYPE_PALETTIZED:
        case PDDI_TEXTYPE_PS2_4BIT:
        case PDDI_TEXTYPE_PS2_8BIT:
        case PDDI_TEXTYPE_PS2_16BIT:
        case PDDI_TEXTYPE_PS2_32BIT:
        /**/
        break;
        default:
        lastError = PDDI_TEX_BADFORMAT;
        return false;
        break;
    }

    width  = xSize;
    height = ySize;
    bpp    = bitDepth;
    alphaDepth = alpha;
    nMip   = nMipMap;
    this->type = type;
    this->usageHint = usageHint;
    palette = NULL;
    nPaletteEntries = 0;   
    vramfootprint = 0;

    // NOTE : the GS manual is screwed up here! for 4/8 bit
    // textures you must use the nearest 128 texel width,
    // not 64 texel width
    int minTbw;
    if ( bpp == 4 || bpp == 8 )
    {
        minTbw = 1;
        tex0.TBW = UTIL::Max( 2 , width / 64 );
    }
    else
    {
        minTbw = 2;
        tex0.TBW = UTIL::Max( 1 , width / 64 );
    }  

    int ttbw = tex0.TBW;

    mip1.TBW1 = UTIL::Max(ttbw>>1 , minTbw );
    mip1.TBW2 = UTIL::Max(ttbw>>2 , minTbw );
    mip1.TBW3 = UTIL::Max(ttbw>>3 , minTbw );

    mip2.TBW4 = UTIL::Max(ttbw>>4 , minTbw );
    mip2.TBW5 = UTIL::Max(ttbw>>5 , minTbw );
    mip2.TBW6 = UTIL::Max(ttbw>>6 , minTbw );

    tex1.MXL = nMip;
    tex1.MTBA = 0;
    tex1.LCM  = 0;
    tex1.L = g_MipL;
    tex1.K = float_to_k(g_MipK);

    switch(bpp)
    {
        case 32:
        {
            tex0.PSM = SCE_GS_PSMCT32;
            pixelFormat = (type == PDDI_TEXTYPE_PS2_32BIT) ? PDDI_PIXEL_PS2_32BIT : PDDI_PIXEL_ARGB8888;
            break;
        }
        case 16:
        {
            tex0.PSM = SCE_GS_PSMCT16;
            pixelFormat = (type == PDDI_TEXTYPE_PS2_16BIT) ? PDDI_PIXEL_PS2_16BIT : PDDI_PIXEL_ARGB1555;
            break;
        }
        case 8:
        {
            tex0.PSM = SCE_GS_PSMT8;
            pixelFormat = (type == PDDI_TEXTYPE_PS2_8BIT) ? PDDI_PIXEL_PS2_8BIT : PDDI_PIXEL_PAL8;
            alphaDepth = 8;  // nv:  hack to fix Pure3D bug
            nPaletteEntries = 256;
            palette = (pddiColour*)MallocAligned(128, 256 * sizeof(pddiColour)); // 128 byte aligned
            break;
        }
        case 4:
        {
            tex0.PSM = SCE_GS_PSMT4;
            pixelFormat = (type == PDDI_TEXTYPE_PS2_4BIT) ? PDDI_PIXEL_PS2_4BIT : PDDI_PIXEL_PAL4;
            alphaDepth = 8;  // nv:  hack to fix Pure3D bug
            nPaletteEntries = 16;
            palette = (pddiColour*)MallocAligned(128, 16 * sizeof(pddiColour)); // 128 byte aligned
            break;
        }
        default :
            PDDIASSERT(0);
    }

    tex0.TCC = (alphaDepth) ? 1 : 0;  // texture colour component
    tex0.TFX = SCE_GS_MODULATE;       // texture function
    tex0.CBP = 0;                     // CLUT buffer pointer
    tex0.CPSM = SCE_GS_PSMCT32;       // CLUT pixel storage format
    tex0.CSM = 0;                     // CLUT storage mode
    tex0.CSA = 0;                     // CLUT entry offset
    tex0.CLD = 1;                     // CLUT buffer load command

    kbMemory = 0;

    for(int mipLevel = 0; mipLevel <= nMip; mipLevel++)
    {    
        const unsigned mipWidth  = width  >> mipLevel;
        const unsigned mipHeight = height >> mipLevel;

        bits[mipLevel] = (char*)MallocAligned(128, (mipWidth*mipHeight*bpp)/8); // 128 byte aligned 
        kbMemory += ( mipWidth * mipHeight * bpp );
    }

    // factor in the palette
    if ( bpp == 4 ) {
        kbMemory += 16 * 4 * 8;
    } else
    if ( bpp == 8 ) {
        kbMemory += 256 * 4 * 8;
    }
    kbMemory /= (int)(1024 * 8); // in kilobytes

    vramfootprint = VramAlloc( width , height , bpp, nMip, tbp , &cbp, true );    
    int kbVram = ( vramfootprint * 256 ) / 1024 ;
    vramaddress = 0;

    context->GetTextureCache()->AllocateCache(this);
    slop = (int)(kbVram - kbMemory);

    context->ADD_STAT( bppAllocTable[ bpp >> 3 ] , kbVram );   
    context->ADD_STAT( bppCountTable[ bpp >> 3 ] , 1 );
    context->ADD_STAT( PDDI_STAT_TEXTURE_ALLOCATED , kbVram );
    context->ADD_STAT( PDDI_STAT_TEXTURE_SLOP , slop );

    return true;
}

//===========================================================================
// BuildDmaChain
//===========================================================================
// Description: builds a dma chain for texture upload to GS
//
// Constraints: Not to be called from within an interrupt
//
// Parameters:  NONE
//
// Return:      NONE
//
//===========================================================================
void ps2Texture::SetVideoMemoryAddress(unsigned address)
{
   asm __volatile__ ("di ; sync.l ; sync.p ");  // disable interrupts

   vramaddress = address;

   // update pointers
   tex0.TBP0 = tbp[0] + vramaddress;
   tex0.CBP  = cbp    + vramaddress;
   
   mip1.TBP1 = tbp[1] + vramaddress;
   mip1.TBP2 = tbp[2] + vramaddress;
   mip1.TBP3 = tbp[3] + vramaddress;

   mip2.TBP4 = tbp[4] + vramaddress;
   mip2.TBP5 = tbp[5] + vramaddress;
   mip2.TBP6 = tbp[6] + vramaddress;

   BuildDmaChain();

   asm __volatile__ ("ei");  // enable interrupts
   context->GetTextureCache()->InvalidateTexCache();
}

void ps2Texture::BuildDmaChain()
{
#ifdef PS2_DYNAMIC_TEXTURE_PACKET
   return;
#else

    // oct29/2001 amb fixme : should i be writing this to some other memory instead of SPR?!
    //unsigned* packet = (unsigned*)0x70003900;
    unsigned* packet = (unsigned*)0x70003B40;

    unsigned size = AddToPacket( packet );
    PDDIASSERT( ((int)packet + size * 16) < 0x70003fff );

    if ( (size != dmaPacketSize) || (dmaPacket == NULL) )
    {
        if ( dmaPacket )
        {
            Free( dmaPacket );
            dmaPacket = NULL;
        }

        // allign to 8qw boundary
        dmaPacketSize = size;
        dmaPacket = (unsigned*)MallocAligned( 16 * 8 , dmaPacketSize * 16 );
        if ( dmaPacket == NULL )
        {
        	//TODO: Should we take this out?
        	printf("dmaPacket == NULL!\n");
        }
        PDDIASSERT( dmaPacket );
    }

    PDDIASSERT( dmaPacket );
    EE::QwordCopy( dmaPacket , packet , dmaPacketSize );
    FlushCache(0);
#endif
}

unsigned ps2Texture::AddToPacket ( unsigned* packet ) const
{
    unsigned* packetStart = packet;

    VifStream dmaPkt( (void*)packet );

    // upload palette
    if (palette)
    {
        unsigned palette_quadwords = (nPaletteEntries * 32) / 128;
        unsigned palette_width = (nPaletteEntries == 256) ? 16 : 8;
        unsigned palette_height = (nPaletteEntries == 256) ? 16 : 2;      

        // dma tag 
        dmaPkt.AddInt( DMA::SetSourceChainTag( 6 , 0, DMA::cnt, 0) );
        dmaPkt.AddInt( 0 );
        dmaPkt.AddInt( 0 );
        dmaPkt.AddInt( 0 );

        dmaPkt.AddLong( SCE_GIF_SET_TAG(4, 0, 0, 0, GIF::Packed, 1) );
        dmaPkt.AddLong( 0xeL );

        dmaPkt.A_D( SCE_GS_BITBLTBUF, SCE_GS_SET_BITBLTBUF(0, 0, 0, cbp + vramaddress, 1, SCE_GS_PSMCT32) );
        dmaPkt.A_D( SCE_GS_TRXPOS, SCE_GS_SET_TRXPOS(0, 0, 0, 0, 0) );
        dmaPkt.A_D( SCE_GS_TRXREG, SCE_GS_SET_TRXREG(palette_width, palette_height) );
        dmaPkt.A_D( SCE_GS_TRXDIR, SCE_GS_SET_TRXDIR(0) );

        dmaPkt.AddLong( SCE_GIF_SET_TAG(palette_quadwords, 0, 0, 0, GIF::Image, 0) );
        dmaPkt.AddLong( 0 );

        dmaPkt.AddInt( DMA::SetSourceChainTag(palette_quadwords, 0, DMA::ref, 0) );
        dmaPkt.AddInt( DMA::SetSourceChainAddr((unsigned)palette, 0) );
        dmaPkt.AddInt( 0 );
        dmaPkt.AddInt( 0 );
    }

    for(int mipLevel = 0; mipLevel <= nMip; mipLevel++)
    {
        unsigned mipWidth = width >> mipLevel;
        unsigned mipHeight = height >> mipLevel;
        unsigned psm = tex0.PSM;      
        unsigned tbw = tex0.TBW;
        #ifdef PS2_SWIZZLE_TEXTURES
        if ( swizzled[mipLevel] )
        {
            tbw /= 2;
            psm = SCE_GS_PSMCT32;
        }
        #endif
        // amb - get rid of this later
        if ( bits[mipLevel] == 0 ) {
            PS2DBG(scePrintf("PDDI ERROR [ps2Texture::AddToPacket] : bits[%d] == NULL!\n",mipLevel));
        }

        unsigned quadwords_per_line = (mipWidth * bpp) / 128;
        quadwords_per_line = quadwords_per_line ? quadwords_per_line : 1; 
        unsigned lines_per_pass = 32767 / quadwords_per_line;  // 32768 quadwords per GIF Tag restriction
        unsigned lines_left = mipHeight;  
        unsigned y_start_this_pass = 0;
        unsigned pass_ram_offset = 0;
        unsigned lines_this_pass = 0;
        unsigned quadwords_this_pass = 0;

        unsigned int qwc = 0;

        while (lines_left > 0)
        {
            if (lines_per_pass >= lines_left) {
                lines_this_pass = lines_left;
            }
            else {
                lines_this_pass = lines_per_pass;
            }         

            unsigned int quadwords_this_pass = quadwords_per_line * lines_this_pass;
            qwc += quadwords_this_pass;

            dmaPkt.AddInt( DMA::SetSourceChainTag( 6 , 0, DMA::cnt, 0) );
            dmaPkt.AddInt( 0 );
            dmaPkt.AddInt( 0 );
            dmaPkt.AddInt( 0 );

            dmaPkt.AddLong( SCE_GIF_SET_TAG(4, 0, 0, 0, GIF::Packed, 1) );
            dmaPkt.AddLong( 0xeL );

            dmaPkt.A_D( SCE_GS_BITBLTBUF, SCE_GS_SET_BITBLTBUF(0, 0, 0, tbp[mipLevel] + vramaddress , (tbw>>mipLevel)?(tbw>>mipLevel):1, psm) );
            dmaPkt.A_D( SCE_GS_TRXPOS, SCE_GS_SET_TRXPOS(0, 0, 0, y_start_this_pass, 0) );
            #ifdef PS2_SWIZZLE_TEXTURES
            unsigned trxWidth = swizzled[mipLevel] ? (mipWidth / 2) : (mipWidth);
            dmaPkt.A_D( SCE_GS_TRXREG, SCE_GS_SET_TRXREG( trxWidth , lines_this_pass) );
            #else
            dmaPkt.A_D( SCE_GS_TRXREG, SCE_GS_SET_TRXREG( mipWidth , lines_this_pass) );
            #endif
            dmaPkt.A_D( SCE_GS_TRXDIR, SCE_GS_SET_TRXDIR(0) );

            dmaPkt.AddLong( SCE_GIF_SET_TAG(quadwords_this_pass, 0, 0, 0, GIF::Image, 0) );
            dmaPkt.AddLong( 0x0L );

            dmaPkt.AddInt( DMA::SetSourceChainTag(quadwords_this_pass, 0, DMA::ref, 0) );
            dmaPkt.AddInt( DMA::SetSourceChainAddr((unsigned)bits[mipLevel] + pass_ram_offset, 0) );
            dmaPkt.AddInt( 0 );
            dmaPkt.AddInt( 0 );

            lines_left -= lines_this_pass;
            y_start_this_pass += lines_this_pass;
            pass_ram_offset += quadwords_per_line * lines_this_pass * 16;
        }       
    }

    dmaPkt.AddLong( DMA::SetSourceChainTag( 2 , 0 , DMA::end, 0 ) );
    dmaPkt.AddLong( 0 );

    dmaPkt.AddLong( SCE_GIF_SET_TAG( 1 , 1 , 0 , 0 , GIF::Packed , 1 ) );
    dmaPkt.AddLong( 0xEL );

    dmaPkt.A_D( SCE_GS_TEXFLUSH, 0 );

    return dmaPkt.GetQWC();
} 


pddiLockInfo* ps2Texture::Lock(int mipLevel, pddiRect* )
{
    PDDIASSERT( bits[mipLevel] != 0 );

    lockInfo.width = width>>mipLevel;
    lockInfo.height = height>>mipLevel;
    lockInfo.depth = bpp;
    lockInfo.format = pixelFormat;
    lockInfo.native = false;
    lockInfo.palette = NULL;

    switch(bpp)
    {
        case 32:
        {
            lockInfo.rgbaLShift[0] = 0;
            lockInfo.rgbaLShift[1] = 8;
            lockInfo.rgbaLShift[2] = 16;
            lockInfo.rgbaLShift[3] = 24;
            lockInfo.rgbaRShift[0] = 16;
            lockInfo.rgbaRShift[1] = 8;
            lockInfo.rgbaRShift[2] = 0;
            lockInfo.rgbaRShift[3] = 25;
            lockInfo.rgbaMask[0] = 0x000000ff;
            lockInfo.rgbaMask[1] = 0x0000ff00;
            lockInfo.rgbaMask[2] = 0x00ff0000;
            lockInfo.rgbaMask[3] = 0x7f000000;
            lockInfo.pitch = -lockInfo.width * (bpp>>3);
            lockInfo.bits = bits[mipLevel] + (lockInfo.width * (lockInfo.height-1) * (bpp>>3));
            break;
        }

        case 16:
        {
            lockInfo.rgbaLShift[0] = 0;
            lockInfo.rgbaLShift[1] = 5;
            lockInfo.rgbaLShift[2] = 10;
            lockInfo.rgbaLShift[3] = 15;
            lockInfo.rgbaRShift[0] = 19;
            lockInfo.rgbaRShift[1] = 11;
            lockInfo.rgbaRShift[2] = 3;
            lockInfo.rgbaRShift[3] = 31;
            lockInfo.rgbaMask[0] = 0x0000001f;
            lockInfo.rgbaMask[1] = 0x000003e0;
            lockInfo.rgbaMask[2] = 0x00007c00;
            lockInfo.rgbaMask[3] = 0x00008000;
            lockInfo.pitch = -lockInfo.width * (bpp>>3);
            lockInfo.bits = bits[mipLevel] + (lockInfo.width * (lockInfo.height-1) * (bpp>>3));
            break;
        }

        case 8:
        {
            lockInfo.rgbaLShift[0] = lockInfo.rgbaLShift[1] = lockInfo.rgbaLShift[2] = lockInfo.rgbaLShift[3] = 0;
            lockInfo.rgbaRShift[0] = lockInfo.rgbaRShift[1] = lockInfo.rgbaRShift[2] = lockInfo.rgbaRShift[3] = 0;
            lockInfo.rgbaMask[0] = lockInfo.rgbaMask[1] = lockInfo.rgbaMask[2]= lockInfo.rgbaMask[3] = 0;
            lockInfo.pitch = -lockInfo.width * (bpp>>3);
            lockInfo.bits = bits[mipLevel] + (lockInfo.width * (lockInfo.height-1) * (bpp>>3));
            break;
        }

        case 4:
        {
            lockInfo.rgbaLShift[0] = lockInfo.rgbaLShift[1] = lockInfo.rgbaLShift[2] = lockInfo.rgbaLShift[3] = 0;
            lockInfo.rgbaRShift[0] = lockInfo.rgbaRShift[1] = lockInfo.rgbaRShift[2] = lockInfo.rgbaRShift[3] = 0;
            lockInfo.rgbaMask[0] = lockInfo.rgbaMask[1] = lockInfo.rgbaMask[2]= lockInfo.rgbaMask[3] = 0;
            lockInfo.pitch = -lockInfo.width/2;
            lockInfo.bits = bits[mipLevel] + (lockInfo.width * (lockInfo.height-1) / 2);
            break;
        }

        default:
            break;
    }

    switch(type)
    {
        case PDDI_TEXTYPE_PS2_4BIT:
        case PDDI_TEXTYPE_PS2_8BIT:
        case PDDI_TEXTYPE_PS2_16BIT:
        case PDDI_TEXTYPE_PS2_32BIT:
            lockInfo.native = true;
            lockInfo.rgbaLShift[0] = lockInfo.rgbaLShift[1] = lockInfo.rgbaLShift[2] = lockInfo.rgbaLShift[3] = 0;
            lockInfo.rgbaRShift[0] = lockInfo.rgbaRShift[1] = lockInfo.rgbaRShift[2] = lockInfo.rgbaRShift[3] = 0;
            lockInfo.rgbaMask[0] = lockInfo.rgbaMask[1] = lockInfo.rgbaMask[2]= lockInfo.rgbaMask[3] = 0;
            lockInfo.pitch = 0;
            lockInfo.bits = bits[mipLevel];
            lockInfo.palette = palette;
            break;

        default:
            break;
    }

    return &lockInfo;
}

void ps2Texture::Unlock(int mipLevel)
{
    FlushCache(0);

#ifdef PS2_SWIZZLE_TEXTURES

    swizzled[mipLevel] = false;

    if ( CanBeSwizzled(mipLevel) )
    {
        const unsigned mipWidth  = width >> mipLevel;
        const unsigned mipHeight = height>> mipLevel;
        const unsigned bytes = (mipWidth*mipHeight*bpp)/8;

        char* swizTex = (char*)MallocAligned(128, bytes); // 128 byte aligned 

        if ( bpp == 4 )
        {
            Conv4to32( mipWidth, mipHeight, (unsigned char*) bits[mipLevel], (unsigned char*)swizTex );
        }
        else
        {
            Conv8to32( mipWidth, mipHeight, (unsigned char*)bits[mipLevel], (unsigned char*)swizTex );
        }
        
        memcpy( bits[mipLevel], swizTex, bytes );

        Free(swizTex);

        swizzled[mipLevel] = true;
        BuildDmaChain();

        PS2DBG(scePrintf("PDDI[ps2Texture.cpp] : Swizzled [ %d x %d x %d ] mipLevel %d\n", mipWidth, mipHeight,bpp,mipLevel));

    }

#endif

    context->GetTextureCache()->EvictTex(this);
}

bool ps2Texture::CanBeSwizzled( int mipLevel )
{
    if ( bpp == 16 || bpp == 24 || bpp == 32 ) {
        return false;
    }

    const int mipWidth = width >> mipLevel;
    const int mipHeight = height >> mipLevel;

    if ( bpp == 4 )
    {
        if ( (mipWidth == mipHeight) && mipWidth >= 32 ) {
            return true;
        }

        if ( (mipWidth == 128) && (mipHeight >= 128) ) {
            return true;
        }

        if ( (mipWidth == 64) && ( mipHeight >= 32 && mipHeight <=128) ) {
            return true;
        }
    }
    else
    if ( bpp == 8 )
    {
        if ( (mipWidth == mipHeight) && mipWidth >= 16 ) {
            return true;
        }

        if ( ((mipWidth == 256) || (mipWidth == 128)) && (mipHeight >= 64) ) {
            return true;
        }

        if ( (mipWidth == 512) && (mipHeight >= 64) && (mipHeight != 512) ) {
            return true;
        }
    }

    return false;
}

