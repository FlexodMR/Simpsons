//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


#include <pddi/gamecube/gctex.hpp>
#include <pddi/gamecube/gccon.hpp>
#include <pddi/gamecube/gcdisplay.hpp>
#include <math.h>
#include <string.h>
#include <dolphin/os.h>

#include <pddi/gamecube/mallocaligned.hpp>

#include <stdio.h>

#define GC_MAX_TEX_LOCKS 3

class gcTexLockGroup
{

 public:

    //------------------------------------
    gcTexLockGroup(void)
    {
        texture[0] = NULL;
        texture[1] = NULL;
        texture[2] = NULL;
    }

    //------------------------------------
    pddiLockInfo *Lock(gcTexture *t)
    {
        int a;
        for (a = 0; a < GC_MAX_TEX_LOCKS; a++)
        {
            if (texture[a] == NULL)
            {
                texture[a] = t;
                return &lock[a];
            }
        }
        return NULL;
    }

    //------------------------------------
    void Unlock(gcTexture *t)
    {
        int a;
        for (a = 0; a < GC_MAX_TEX_LOCKS; a++)
        {
            if (texture[a] == t)
            {
                texture[a] = NULL;
                return;
            }
        }
        PDDIASSERT(0 && "Can't unlock texture that hasn't been locked!");
    }

 private:

    pddiLockInfo lock[GC_MAX_TEX_LOCKS];
    gcTexture   *texture[GC_MAX_TEX_LOCKS];
};

static gcTexLockGroup gTexLockGroup;

//***************************************
//
// Pick Pixel Format
// Helper function for texture creator
//
//
static pddiPixelFormat PickPixelFormat(pddiTextureType type, int bpp, int alphadepth, pddiLockInfo *li, GXTexFmt &gxfmt)
{
    li->depth = bpp;
    li->format = PDDI_PIXEL_UNKNOWN;

    li->native = false;
    li->rgbaLShift[0] = 0;
    li->rgbaRShift[0] = 8;
    li->rgbaLShift[1] = 8;
    li->rgbaRShift[1] = 0;
    li->rgbaLShift[2] = 24;
    li->rgbaRShift[2] = 0;
    li->rgbaLShift[3] = 0;
    li->rgbaRShift[3] =24;

    li->rgbaMask[0] = 0x0000ff00;
    li->rgbaMask[1] = 0x00ff0000;
    li->rgbaMask[2] = 0xff000000;
    li->rgbaMask[3] = 0x000000ff;

    switch(type)
    {
        case PDDI_TEXTYPE_GC_4BIT:
            li->format = PDDI_PIXEL_GC_4BIT;
            li->native = true;
            gxfmt = (GXTexFmt)GX_TF_C4;
            return li->format;
            break;

        case PDDI_TEXTYPE_GC_8BIT:
            li->format = PDDI_PIXEL_GC_8BIT;
            li->native = true;
            gxfmt = (GXTexFmt)GX_TF_C8;
            return li->format;
            break;

        case PDDI_TEXTYPE_GC_16BIT:
            li->format = PDDI_PIXEL_GC_16BIT;
            li->native = true;
            gxfmt = (GXTexFmt)GX_TF_RGB5A3;
            return li->format;
            break;

        case PDDI_TEXTYPE_GC_32BIT:
            li->format = PDDI_PIXEL_GC_32BIT;
            li->native = true;
            gxfmt = (GXTexFmt)GX_TF_RGBA8;
            return li->format;
            break;

        case PDDI_TEXTYPE_GC_DXT1:
            li->format = PDDI_PIXEL_GC_DXT1;
            li->native = true;
            gxfmt = (GXTexFmt)GX_TF_CMPR;
            return li->format;
            break;


        case PDDI_TEXTYPE_RGB :
            switch (alphadepth)
            {
                case 0:
                    if (bpp <= 16) 
                    {
                        return PDDI_PIXEL_RGB565;
                    }
                    else
                    {
                        li->native = true;
                        li->rgbaLShift[0] = 0;
                        li->rgbaRShift[0] = 8;
                        li->rgbaLShift[1] = 8;
                        li->rgbaRShift[1] = 0;
                        li->rgbaLShift[2] = 24;
                        li->rgbaRShift[2] = 0;
                        li->rgbaLShift[3] = 0;
                        li->rgbaRShift[3] =24;

                        li->rgbaMask[0] = 0x0000ff00;
                        li->rgbaMask[1] = 0x00ff0000;
                        li->rgbaMask[2] = 0xff000000;
                        li->rgbaMask[3] = 0x000000ff;
                        gxfmt = GX_TF_RGBA8;
                        return PDDI_PIXEL_ARGB8888;
                    }
                    break;

                case 1:
                    if (bpp <= 16) 
                    {
                        return PDDI_PIXEL_ARGB1555;
                    }
                    else
                    {
                        li->native = true;
                        li->rgbaLShift[0] =  0;
                        li->rgbaRShift[0] =  8;
                        li->rgbaLShift[1] =  8;
                        li->rgbaRShift[1] =  0;
                        li->rgbaLShift[2] = 24;
                        li->rgbaRShift[2] =  0;
                        li->rgbaLShift[3] =  0;
                        li->rgbaRShift[3] = 24;

                        li->rgbaMask[0] = 0x0000ff00;
                        li->rgbaMask[1] = 0x00ff0000;
                        li->rgbaMask[2] = 0xff000000;
                        li->rgbaMask[3] = 0x000000ff;
                        gxfmt = GX_TF_RGBA8;
                        return PDDI_PIXEL_ARGB8888;
                    }
                    break;

                default:
                    if (bpp <= 16) 
                    {
                        return PDDI_PIXEL_UNKNOWN;
                    }
                    else
                    {
                        li->native = true;
                        li->rgbaLShift[0] = 0;
                        li->rgbaRShift[0] = 8;
                        li->rgbaLShift[1] = 8;
                        li->rgbaRShift[1] = 0;
                        li->rgbaLShift[2] = 24;
                        li->rgbaRShift[2] = 0;
                        li->rgbaLShift[3] = 0;
                        li->rgbaRShift[3] =24;

                        li->rgbaMask[0] = 0x0000ff00;
                        li->rgbaMask[1] = 0x00ff0000;
                        li->rgbaMask[2] = 0xff000000;
                        li->rgbaMask[3] = 0x000000ff;
                        gxfmt = GX_TF_RGBA8;
                        return PDDI_PIXEL_ARGB8888;
                    }
                    break;
            }
            break;

        case PDDI_TEXTYPE_PALETTIZED:
            if (bpp == 4) 
            {
                li->native = true;
                gxfmt = (GXTexFmt)GX_TF_C4;
                return PDDI_PIXEL_PAL4;
            }
            if (bpp == 8) 
            {
                li->native = true;
                gxfmt = (GXTexFmt)GX_TF_C8;
                return PDDI_PIXEL_PAL8;
            }
            break;

        case PDDI_TEXTYPE_LUMINANCE:
            if ((bpp == 8) && (alphadepth == 8))
            {
                li->native = true;
                gxfmt = GX_TF_I8;
                return PDDI_PIXEL_LUM8;
            }

            if ((bpp == 8) && (alphadepth == 4))
            {
                li->native = true;
                gxfmt = GX_TF_IA4;
                return PDDI_PIXEL_LUM8;
            }

            if ((bpp == 8) && (alphadepth == 0))
            {
                li->native = true;
                gxfmt = GX_TF_I8;
                return PDDI_PIXEL_LUM8;
            }

            if ((bpp == 4) && (alphadepth == 0))
            {
                li->native = true;
                gxfmt = GX_TF_I4;
                return PDDI_PIXEL_LUM8;
            }

            if ((bpp == 4) && (alphadepth == 4))
            {
                li->native = true;
                gxfmt = GX_TF_I4;
                return PDDI_PIXEL_LUM8;
            }

            return PDDI_PIXEL_UNKNOWN;
            break;

        case PDDI_TEXTYPE_BUMPMAP:
            return PDDI_PIXEL_UNKNOWN;
            break;

        case PDDI_TEXTYPE_DXT1:
             li->native = true;
             gxfmt = GX_TF_CMPR;
             return PDDI_PIXEL_DXT1;

        // Gamecube only supports DXT1 compressed textures      
        case PDDI_TEXTYPE_DXT2:
        case PDDI_TEXTYPE_DXT3:
        case PDDI_TEXTYPE_DXT4:
        case PDDI_TEXTYPE_DXT5:
            return PDDI_PIXEL_UNKNOWN;

        case PDDI_TEXTYPE_Z:
            if (bpp == 24)
            {
                gxfmt = GX_TF_RGBA8;
                return PDDI_PIXEL_Z24;
            }
            if (bpp == 16)
            {
                gxfmt = GX_TF_IA8;
                return PDDI_PIXEL_Z16;
            }
            if (bpp == 8)
            {
                gxfmt = GX_TF_I8;
                return PDDI_PIXEL_Z8;
            }
            break;
    }

    return PDDI_PIXEL_UNKNOWN;
};


//***************************************
//
// Class gcTexture
// Create
//
//
bool gcTexture::Create(int x, int y, int bpp, int alphadepth, int nMip, pddiTextureType ty, pddiTextureUsageHint usageHint)
{
    mWidth  = x;
    mHeight = y;
    mBitsPerPixel = bpp;
    mAlphaDepth = alphadepth;

    mClampMode = GX_REPEAT;

    mMipMapLevels = nMip;
    mType = ty;

    pddiLockInfo lock;
    mFormat = PickPixelFormat(mType, mBitsPerPixel, mAlphaDepth, &lock, mGXTexFormat);

    lock.format = mFormat;

    if (mFormat == PDDI_PIXEL_DXT1)     mBitsPerPixel = 4;
    if (mFormat == PDDI_PIXEL_GC_DXT1)  mBitsPerPixel = 4;

    if (mFormat == PDDI_PIXEL_UNKNOWN)
    {
        lastError = PDDI_TEX_BADFORMAT;
        return false;
    }

    if (nMip >= GC_MAX_MIPLEVELS)
    {
        lastError = PDDI_TEX_TOO_BIG;
        return false;
    }

    // Only textures with mipmaps need to be power of two
    if ((((mWidth - 1) & mWidth) != 0) || (((mHeight - 1) & mHeight) != 0))
    {
        if (mMipMapLevels != 0)
        {
            lastError = PDDI_TEX_NOT_POW_2;
            return false;
        }
        mClampMode = GX_CLAMP;
    }

    if ((mWidth > 1024) || (mHeight > 1024))
    {
        lastError = PDDI_TEX_TOO_BIG;
        return false;
    }

    // Allocate palette for memory imaged textures
    if ((mType == PDDI_TEXTYPE_GC_4BIT) || (mType == PDDI_TEXTYPE_GC_8BIT))
    {
        int palsize = 256;
        if (mType == PDDI_TEXTYPE_GC_4BIT) palsize = 16;
        char *pal = (char *)mallocaligned(palsize * 2, 32);

        GXInitTlutObj(&mPalette, pal, GX_TL_RGB5A3, (unsigned short)palsize);
    }

    unsigned long total_size = GXGetTexBufferSize((unsigned short)mWidth, 
                                                                 (unsigned short)mHeight, 
                                                                 (unsigned short)mGXTexFormat, 
                                                                 (mMipMapLevels > 0), 
                                                                 (unsigned char)(mMipMapLevels + 1));
    mBits[0] = (char *)mallocaligned(total_size, 32);

    int a;
    int pos = 0;
    for (a = 1; a < mMipMapLevels + 1; a++) 
    {
        int prevmipsize = (((mWidth >> (a - 1)) * (mHeight >> (a - 1)) * mBitsPerPixel) / 8);
        pos += prevmipsize;
        pos = (pos + 31) & ~31; // round up start to 32 byte boundaries
        mBits[a] = &(mBits[0][pos]);
    }


    switch (mType)
    {
        case PDDI_TEXTYPE_Z:
        case PDDI_TEXTYPE_GC_4BIT:
        case PDDI_TEXTYPE_GC_8BIT:
        case PDDI_TEXTYPE_GC_16BIT:
        case PDDI_TEXTYPE_GC_32BIT:
        case PDDI_TEXTYPE_GC_DXT1:
            mSwizzleEnable = false;
            break;

        default:
            mSwizzleEnable = true;
    }


#ifdef PDDI_TRACK_STATS
    mContext->ADD_STAT(PDDI_STAT_TEXTURE_ALLOCATED, (float)(total_size / 1024));

    switch (mBitsPerPixel)
    {
        case 4:
            if (mFormat == PDDI_PIXEL_DXT1) 
            {
                mContext->ADD_STAT(PDDI_STAT_TEXTURE_COUNT_DXTN, 1);
                mContext->ADD_STAT(PDDI_STAT_TEXTURE_ALLOC_DXTN, (float)(total_size / 1024));
            }
            else
            {
                mContext->ADD_STAT(PDDI_STAT_TEXTURE_COUNT_4BIT, 1);
                mContext->ADD_STAT(PDDI_STAT_TEXTURE_ALLOC_4BIT, (float)(total_size / 1024));
            }
            
            break;
            
        case 8:
            mContext->ADD_STAT(PDDI_STAT_TEXTURE_COUNT_8BIT, 1);
            mContext->ADD_STAT(PDDI_STAT_TEXTURE_ALLOC_8BIT, (float)(total_size / 1024));
            break;

        case 16:
            mContext->ADD_STAT(PDDI_STAT_TEXTURE_COUNT_16BIT, 1);
            mContext->ADD_STAT(PDDI_STAT_TEXTURE_ALLOC_16BIT, (float)(total_size / 1024));
            break;

        case 32:
            mContext->ADD_STAT(PDDI_STAT_TEXTURE_COUNT_32BIT, 1);
            mContext->ADD_STAT(PDDI_STAT_TEXTURE_ALLOC_32BIT, (float)(total_size / 1024));
            break;
    }
#endif

    return true;
}

//***************************************
//
// Class gcTexture
//
//
//
gcTexture::gcTexture(gcContext *c)
{
    mContext  = c;
    mMipMapLevels = 0;
    mBits[0] = NULL;

    mPalette.dummy[0] = 0;
    mPalette.dummy[1] = 0;
    mPalette.dummy[2] = 0;
    
    mPointSampling = false;
}

//***************************************
//
// Class gcTexture
//
//
//
gcTexture::~gcTexture()
{
    if (mBits[0]) 
    {
        freealigned(mBits[0]); // All texture memory is allocated at once
    }

    if (GXGetTlutObjData(&mPalette) != NULL)
    {
        freealigned((void *)OSPhysicalToCached((u32)GXGetTlutObjData(&mPalette)));
    }



#ifdef PDDI_TRACK_STATS
    long total_size = (long) GXGetTexBufferSize((unsigned short)mWidth, 
                                                              (unsigned short)mHeight, 
                                                              (unsigned short)mGXTexFormat, 
                                                              (mMipMapLevels > 0), 
                                                              (unsigned char)(mMipMapLevels + 1));

    mContext->ADD_STAT(PDDI_STAT_TEXTURE_ALLOCATED, (float)(-total_size / 1024));

    switch (mBitsPerPixel)
    {
        case 4:
            if (mFormat == PDDI_PIXEL_DXT1) 
            {
                mContext->ADD_STAT(PDDI_STAT_TEXTURE_COUNT_DXTN, -1);
                mContext->ADD_STAT(PDDI_STAT_TEXTURE_ALLOC_DXTN, (float)(-total_size / 1024));
            }
            else
            {
                mContext->ADD_STAT(PDDI_STAT_TEXTURE_COUNT_4BIT, -1);
                mContext->ADD_STAT(PDDI_STAT_TEXTURE_ALLOC_4BIT, (float)(-total_size / 1024));
            }
            
            break;
            
        case 8:
            mContext->ADD_STAT(PDDI_STAT_TEXTURE_COUNT_8BIT, -1);     
            mContext->ADD_STAT(PDDI_STAT_TEXTURE_ALLOC_8BIT, (float)(-total_size / 1024));
            break;

        case 16:
            mContext->ADD_STAT(PDDI_STAT_TEXTURE_COUNT_16BIT, -1);
            mContext->ADD_STAT(PDDI_STAT_TEXTURE_ALLOC_16BIT, (float)(-total_size / 1024));
            break;

        case 32:
            mContext->ADD_STAT(PDDI_STAT_TEXTURE_COUNT_32BIT, -1);
            mContext->ADD_STAT(PDDI_STAT_TEXTURE_ALLOC_32BIT, (float)(-total_size / 1024));
            break;
    }
#endif

}

//***************************************
//
// Class gcTexture
// Get Pixel Format
//
//
pddiPixelFormat gcTexture::GetPixelFormat()
{
    return mFormat;
}

//***************************************
//
// Class gcTexture
// Get Width
//
//
int gcTexture::GetWidth()
{
    return mWidth;
}

//***************************************
//
// Class gcTexture
// Get Height
//
//
int gcTexture::GetHeight()
{
    return mHeight;
}

//***************************************
//
// Class gcTexture
// get Depth
//
//
int gcTexture::GetDepth()
{
    return mBitsPerPixel;
}

//***************************************
//
// Class gcTexture
// Get Num Mip
//
//
int gcTexture::GetNumMipMaps()
{
    return mMipMapLevels;
}

//***************************************
//
// Class gcTexture
// Get Alpha Depth
//
//
int gcTexture::GetAlphaDepth()
{
    return mAlphaDepth;
}

//***************************************
//
// Class gcTexture
// Lock
//
//
pddiLockInfo* gcTexture::Lock(int mipMap, pddiRect *rect)
{
    
    pddiLockInfo *lock = gTexLockGroup.Lock(this);
    PDDIASSERT(lock != NULL);

    PDDIASSERT(mipMap <= mMipMapLevels);

    if (mBits[0] == NULL) return NULL;

    mFormat = PickPixelFormat(mType, mBitsPerPixel, mAlphaDepth, lock, mGXTexFormat);
    lock->format = mFormat;

    lock->width  = mWidth  >> mipMap;
    lock->height = mHeight >> mipMap;
    lock->depth  = mBitsPerPixel;

    lock->palette = OSPhysicalToCached((unsigned long)GXGetTlutObjData(&mPalette));

    int pitch = (lock->width * mBitsPerPixel) / 8;

    // DXT1 & Z textures are ALWAYS top down
    switch (mFormat)
    {
        case PDDI_PIXEL_DXT1:
        case PDDI_PIXEL_Z24:
        case PDDI_PIXEL_Z16:
        case PDDI_PIXEL_Z8:
            lock->pitch = pitch;
            lock->bits  = &mBits[mipMap][0];
            break;

        default:
            if (mSwizzleEnable)
            {
                lock->pitch = -pitch;
                lock->bits  = &mBits[mipMap][(lock->height - 1) * pitch];
            }
            else
            {
                // Assume that the texture modifier knows what they are doing
                lock->pitch = pitch;
                lock->bits  = &mBits[mipMap][0];
            }
            break;
    }

    return lock;
}

//***************************************
//
// Class gcTexture
// Unlock
//
//
void gcTexture::Unlock(int mipLevel)
{

    int width  = mWidth  >> mipLevel;
    int height = mHeight >> mipLevel;

    if (mSwizzleEnable)
    {
        //printf("Swizzling a %d bit texture.\n", mBitsPerPixel);
        switch (mBitsPerPixel)
        {
            case 32:
                Swizzle32Bit(mBits[mipLevel], width, height);
                break;

            case 16:
                Swizzle16Bit(mBits[mipLevel], width, height);
                break;
                                                  
            case 8:
                Swizzle8Bit(mBits[mipLevel], width, height);
                break;

            case 4:
                if (mFormat == PDDI_PIXEL_DXT1) SwizzleCompressed(mBits[mipLevel], width, height);
                else                            Swizzle4Bit(mBits[mipLevel], width, height);
                break;
        }

    }

    DCFlushRange(mBits[mipLevel], (unsigned long) (width * height * mBitsPerPixel / 8));

    void *pal = OSPhysicalToCached((unsigned long)GXGetTlutObjData(&mPalette));
    if (pal != NULL) DCFlushRange(pal, 512);

    RebuildTexture();

    gTexLockGroup.Unlock(this);


    GXInvalidateTexAll();
}


//***************************************
//
// Class gcTexture
// Rebuild texture
//
//
void gcTexture::RebuildTexture(void)
{

    bool mipmapped = (mMipMapLevels > 0);

    switch (mType)
    {
        case PDDI_TEXTYPE_RGB:
        case PDDI_TEXTYPE_LUMINANCE:
        case PDDI_TEXTYPE_DXT1:
        case PDDI_TEXTYPE_BUMPMAP:
        case PDDI_TEXTYPE_GC_16BIT:
        case PDDI_TEXTYPE_GC_32BIT:
        case PDDI_TEXTYPE_GC_DXT1:
            GXInitTexObj(&mTexture, 
                          mBits[0], 
                          (unsigned short)mWidth, 
                          (unsigned short)mHeight, 
                          mGXTexFormat, 
                          mClampMode, 
                          mClampMode, 
                          mipmapped);
                
            // this has been added so that cell shading can 
            // use point sampling rather than bilinear filtering
            if(mPointSampling)
            {          
                GXInitTexObjLOD(&mTexture,          // texture object
                                 GX_NEAR,           // Min Filter
                                 GX_NEAR,           // Mag Filter
                                 0,                 // Minimum LOD
                                 0,                 // Maximum LOD
                                 0.0,               // LOD Bias
                                 GX_FALSE,          // Bias Clamp 
                                 0,                 // Edge LOD
                                 GX_ANISO_1);       // Iterations of anisotropic filtering
            }

                          
            break;

        case PDDI_TEXTYPE_PALETTIZED:
        case PDDI_TEXTYPE_GC_4BIT:
        case PDDI_TEXTYPE_GC_8BIT:
            GXInitTexObjCI(&mTexture, 
                            mBits[0], 
                            (unsigned short)mWidth, 
                            (unsigned short)mHeight, 
                            (GXCITexFmt)mGXTexFormat, 
                            mClampMode, 
                            mClampMode, 
                            mipmapped, 
                            GX_TLUT0);
            break;

        case PDDI_TEXTYPE_Z:
            GXInitTexObj(&mTexture, 
                          mBits[0], 
                          (unsigned short)mWidth, 
                          (unsigned short)mHeight, 
                          mGXTexFormat, 
                          GX_CLAMP, 
                          GX_CLAMP, 
                          mipmapped);
    }

    if (mipmapped)
    {

        GXTexFilter min = GX_LIN_MIP_LIN;
        GXTexFilter mag = GX_LINEAR;
        GXAnisotropy aniso = GX_ANISO_4;
        float lodbias = -0.9F;
        bool edgelod = true;
        bool biasclamp = true;

        if (GXGetTlutObjData(&mPalette) != NULL)
        {
            min = GX_LIN_MIP_NEAR;
            mag = GX_LINEAR;
            aniso = GX_ANISO_1;
            lodbias = -2.0F;
            edgelod = false;
            biasclamp = false;

        }

        GXInitTexObjLOD(&mTexture,       // texture object
                             min,             // Min Filter
                             mag,             // Mag Filter
                             0.0F,            // Minimum LOD
                             mMipMapLevels,   // Maximum LOD
                             lodbias,         // LOD Bias
                             biasclamp,       // Bias Clamp 
                             edgelod,         // Edge LOD
                             aniso);          // Iterations of anisotropic filtering
    }


}


//***************************************
//
// Class gcTexture
// Set Priority
//
//
void gcTexture::SetPriority(int p)
{
}

//***************************************
//
// Class gcTexture
// Get Priority
//
//
int gcTexture::GetPriority(void)
{
    return 0;
}

//***************************************
//
// Class gcTexture
// Prefetch
//
//
void gcTexture::Prefetch(void)
{
}

//***************************************
//
// Class gcTexture
// Discard
//
//
void gcTexture::Discard(void)
{
}


//***************************************
//
// Class gcTexture
// Set Wrap Mode
//
//
void gcTexture::SetWrapMode(GXTexWrapMode mode)
{
    mClampMode = mode;
    RebuildTexture();
}


//***************************************
//
// Class gcTexture
// load Texture
//
//
void gcTexture::LoadTexture(GXTexMapID id)
{
    // You MUST load the palette before the texture or the texture is all black!
    if (GXGetTlutObjData(&mPalette) != NULL) 
    {
        GXLoadTlut(&mPalette, GX_TLUT0 + (int)id);
        GXInitTexObjTlut(&mTexture, GX_TLUT0 + (int)id);
    }
    GXLoadTexObj(&mTexture, id);
}

//***************************************
//
// Class gcTexture
// GX Texture Format
//
//
GXTexFmt gcTexture::GXTextureFormat(void)
{ 
    return mGXTexFormat; 
}


//***************************************
//
// Class gcTexture
// Set Swizzle Enable
//
//
void gcTexture::SetSwizzleEnable(bool en)
{
    mSwizzleEnable = en;
}

//***************************************
//
// Class gcTexture
// ge Num Palette Entries
//
//
int gcTexture::GetNumPaletteEntries(void)
{
    return (int) GXGetTlutObjNumEntries(&mPalette);
}

//***************************************
//
// Class gcTexture
// Set Palette
//
//
void gcTexture::SetPalette(int nEntries, pddiColour *palette)
{
    if (GXGetTlutObjData(&mPalette) != NULL)
    {
        freealigned((void *)OSPhysicalToCached((u32)GXGetTlutObjData(&mPalette)));
    }

    unsigned short *pal = (unsigned short *)mallocaligned(nEntries * sizeof(unsigned short), 32);
    int a;
    for (a = 0; a < nEntries; a++)
    {
        if (palette[a].Alpha() > 255 - (256 >> 3))
        {
             // Set high bit so the mode is 555, if high bit is clear mode is 4443
            pal[a] = (unsigned short) (0x8000 |
                        ((palette[a].Red()   >> 3) << 10) |
                        ((palette[a].Green() >> 3) << 5)  |
                         (palette[a].Blue()  >> 3));
        }
        else
        {

            // if high bit is clear mode is 4443
            pal[a] = (unsigned short) (0x7FFF & 
                        ((palette[a].Red()   >> 4) << 8) |
                        ((palette[a].Green() >> 4) << 4) |
                         (palette[a].Blue()  >> 4) |
                        ((palette[a].Alpha() >> 5) << 12));
        }


    }

    DCFlushRange(pal, (unsigned long) (nEntries * sizeof(unsigned short)));

    GXInitTlutObj(&mPalette, pal, GX_TL_RGB5A3, (unsigned short)nEntries);
}

//***************************************
//
// Class gcTexture
// Get Palette
//
//
int gcTexture::GetPalette(pddiColour *palette)
{
    return 0;
}



static char gcSwizzleBuffer[1024 * 4 * 4];

//***************************************
//
// Class gcTexture
// Swizzle 32 Bit
//
//
void gcTexture::Swizzle32Bit(char *bits, int width, int height)
{
    char *artile, *gbtile;
    char *lines = gcSwizzleBuffer;

    int bpl = 4 * width;

    int x, y;
    for (y = 0; y < height; y += 4)
    {
        memcpy(lines, &bits[y * width * 4], (unsigned long)(width * 4 * 4));
        memset(&bits[y * width * 4], 0, (unsigned long)(width * 4 * 4));

        for (x = 0; x < width; x += 4)
        {
            artile = &bits[(y * bpl) + (x * 16)]; 
            gbtile = &bits[(y * bpl) + (x * 16) + 32]; 

            int tx, ty;
            for (ty = 0; ty < 4; ty++)
            {
                for (tx = x; tx < (x + 4); tx++)
                {
                    artile[0] = lines[(ty * bpl) + (tx * 4 + 0)];
                    artile[1] = lines[(ty * bpl) + (tx * 4 + 1)];
                    artile += 2;

                    gbtile[0] = lines[(ty * bpl) + (tx * 4 + 2)];
                    gbtile[1] = lines[(ty * bpl) + (tx * 4 + 3)];
                    gbtile += 2;
                }
            }
        }
    }
}



//***************************************
//
// Class gcTexture
// Swizzle 16 Bit
//
//
void gcTexture::Swizzle16Bit(char *bits, int width, int height)
{
    // Might need to implement this sometime soon.  Sigh.
}

//***************************************
//
// Class gcTexture
// Swizzle 8 Bit
//
//
void gcTexture::Swizzle8Bit(char *bits, int width, int height)
{
    char *lines = gcSwizzleBuffer;
    int x, y;
    for (y = 0; y < height; y += 4)
    {
        memcpy(lines, &bits[y * width], (unsigned long)(width * 4));   
        for (x = 0; x < width; x += 8)
        {
            char *dest = &bits[y * width + x * 4];
            int tx, ty;
            for (ty = 0; ty < 4; ty++)
            {
                for (tx = x; tx < (x + 8); tx++)
                {
                    *dest = lines[ty * width + tx];
                    ++dest;
                }
            }
        }
    }
}


//***************************************
//
// Class gcTexture
// Swizzle 4 bit
//
//
void gcTexture::Swizzle4Bit(char *bits, int width, int height)
{
    char *lines = gcSwizzleBuffer;
    int bpl = width / 2;

    int size = height * width / 2;
    int a;
    for (a = 0; a < size; a++)
    {
        char temp = bits[a];
        bits[a] = (char) (((temp >> 4) & 0x0F) | ((temp << 4) & 0xF0));
    }

    int x, y;
    for (y = 0; y < height; y += 8)
    {
        memcpy(lines, &bits[y * bpl], (unsigned long)(bpl * 8)); 
  
        for (x = 0; x < width; x += 8)
        {
            unsigned int *dest = (unsigned int *)(&bits[y * bpl + x * 4]);
            int ty;
            for (ty = 0; ty < 8; ty++)
            {
                *dest = *((unsigned int *) &lines[ty * bpl + x / 2]);
                ++dest;
            }
        }
    }
}



//***************************************
//
// Class gcTexture
// Swizzle Compressed
//
//
void gcTexture::SwizzleCompressed(char *bits, int width, int height)
{

    // there are 8 bytes per compressed texel block of 4x4 pixels

/****
    DXT1 Format

    +-----------------+
    |    RGB0 15:0    |
    +-----------------+
    |    RGB1 15:0    |
    +-----------------+
    | T00 T01 T02 T03 |  All pixel values are two bits
    +-----------------+
    | T10 T11 T12 T13 |
    +-----------------+
    | T20 T21 T22 T23 |
    +-----------------+
    | T30 T31 T32 T33 |
    +-----------------+
****/

    int size = (width * height * mBitsPerPixel) / 8;
    int a;
    for (a = 0; a < size; a += 8)
    {
        char temp = bits[a + 1];
        bits[a + 1] = bits[a + 0];
        bits[a + 0] = temp;

        temp = bits[a + 3];
        bits[a + 3] = bits[a + 2];
        bits[a + 2] = temp;  

        int b;
        for (b = a + 4; b < a + 8; b++)
        {
            temp = bits[b];

            // Swap the bits of the compressed texture
            bits[b] = (char) (((temp >> 6) & 0x03) | 
                                    ((temp >> 2) & 0x0C) | 
                                    ((temp << 2) & 0x30) | 
                                    ((temp << 6) & 0xC0));
        }

    }

    int x, y;
    int bpl = (width * mBitsPerPixel) / 8;

    char *lines = gcSwizzleBuffer;
    char *line4 = &lines[bpl * 4];

    for (y = 0; y < height; y += 8)
    {
        memcpy(lines, &bits[bpl * y], (unsigned long)(bpl * 8));

        for (x = 0; x < width; x += 8)
        {
            int dest = (bpl * y) + (x * 4); 
            int src  = (x * 2);
            memcpy(&bits[dest +  0], &lines[src + 0], 8); 
            memcpy(&bits[dest +  8], &lines[src + 8], 8); 
            memcpy(&bits[dest + 16], &line4[src + 0], 8); 
            memcpy(&bits[dest + 24], &line4[src + 8], 8); 
        }
    }
}

//***************************************
//
// Class gcTexture
// Turn point sampling on or off
//
//
void gcTexture::SetPointSampling(bool pointSampling)
{
    mPointSampling = pointSampling;
}



//***************************************
//
// Class gcTexture
// Simpons screwing with shadows.
//
//
void gcTexture::SetWidth( int width )
{
    mWidth = width;
}

void gcTexture::SetHeight( int height )
{
    mHeight = height;
}

