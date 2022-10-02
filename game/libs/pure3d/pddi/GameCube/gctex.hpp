//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


#ifndef _GCTEX_HPP_
#define _GCTEX_HPP_
                 
#include <pddi/pddi.hpp>
#include <pddi/pdditype.hpp>
class gcContext;

#include <dolphin/gx.h>
         
#define GC_MAX_MIPLEVELS 8

class gcTexture : public pddiTexture
{
public:
    gcTexture(gcContext *);
  ~gcTexture();

    bool Create(int xSize, int ySize, int bpp, int alphaDepth, int nMip, pddiTextureType type = PDDI_TEXTYPE_RGB, pddiTextureUsageHint usageHint = PDDI_USAGE_STATIC);

    pddiPixelFormat GetPixelFormat();
    int GetWidth();
    int GetHeight();
    int GetDepth();
    int GetNumMipMaps();
    int GetAlphaDepth();

    //Simpsons.
    void SetWidth( int width );
    void SetHeight( int height );

    // palette managment
    int  GetNumPaletteEntries(void);
    void SetPalette(int nEntries, pddiColour* palette);
    int  GetPalette(pddiColour* palette);

    // texture upload
    pddiLockInfo *Lock(int mipLevel, pddiRect *rect = 0);
    void Unlock(int mipLevel);
    
    // filtering mode
    void SetPointSampling(bool pointSampling);

    // paging control
    void Prefetch(void);
    void Discard(void);
    void SetPriority(int priority);
    int  GetPriority();

    // gc specific stuff
    void LoadTexture(GXTexMapID id);
    void SetWrapMode(GXTexWrapMode mode);
    GXTexFmt GXTextureFormat(void);
    void SetSwizzleEnable(bool en);
protected:
    gcContext *mContext;

    GXTexObj   mTexture;
    GXTlutObj  mPalette;

    int             mWidth;
    int             mHeight;
    int             mBitsPerPixel;
    int             mAlphaDepth;
    pddiTextureType mType;
    pddiPixelFormat mFormat;
    GXTexFmt        mGXTexFormat;
    GXTexWrapMode   mClampMode;
    int             mMipMapLevels;
    bool            mPointSampling;

    bool mSwizzleEnable;

    char *mBits[GC_MAX_MIPLEVELS];

    void RebuildTexture(void);

    void Swizzle32Bit(char *bits, int width, int height);
    void Swizzle16Bit(char *bits, int width, int height);
    void Swizzle8Bit(char *bits, int width, int height);
    void Swizzle4Bit(char *bits, int width, int height);
    void SwizzleCompressed(char *bits, int width, int height);
};
#endif

