/*===========================================================================
    $Workfile:: texture.cpp          $
    $Revision:: 71                   $
    $Author:: Neall                  $
    20-May-96 Created by Neall
    19-Oct-99 Updated for version 12

    Copyright (c)1995, 1996, 1997, 1998, 1999 Radical Entertainment, Inc.
    All rights reserved.
===========================================================================*/

#include "texture.hpp"
#include "util.hpp"
#include "context.hpp"
#include "display.hpp"
#include <radmemory.hpp>

#ifdef _XBOX
#include <xgraphics.h>

const int TF_RGB16         = 0;
const int TF_RGB15A1       = 1;
const int TF_RGB12A4       = 2;
const int TF_RGB24         = 3;
const int TF_RGBA32        = 4;
const int TF_RGB24A1       = 5;
const int TF_PAL           = 6;
const int TF_LUM           = 7;
const int TF_BUMP          = 8;
const int TF_LIN_RGB16     = 9; 
const int TF_LIN_RGB15A1   = 10;
const int TF_LIN_RGB12A4   = 11;
const int TF_LIN_RGB24     = 12;
const int TF_LIN_RGBA32    = 13;
const int TF_LIN_RGB24A1   = 14;

D3DFORMAT d3dFormatPref[15] =
{ 
    D3DFMT_R5G6B5,
    D3DFMT_A1R5G5B5,
    D3DFMT_A4R4G4B4,
    D3DFMT_X8R8G8B8,
    D3DFMT_A8R8G8B8,
    D3DFMT_A8R8G8B8,
    D3DFMT_P8,
    D3DFMT_L8,
    D3DFMT_V8U8,
    D3DFMT_LIN_R5G6B5, 
    D3DFMT_LIN_A1R5G5B5,
    D3DFMT_LIN_A4R4G4B4,
    D3DFMT_LIN_X8R8G8B8,
    D3DFMT_LIN_A8R8G8B8,
    D3DFMT_LIN_A8R8G8B8
};

static inline D3DFORMAT PickPixelFormat(pddiTextureType type, int bitDepth, int alphaDepth, d3dContext* context)
{
    int textureFormat = -1;

    switch(type)
    {
        case PDDI_TEXTYPE_RGB :
                switch(alphaDepth)
                {
                    case 0:
                        textureFormat = (bitDepth == 16) ? TF_RGB16 : TF_RGB24;
                        break;
                    case 1:
                        textureFormat = (bitDepth == 16) ? TF_RGB15A1 : TF_RGB24A1;
                        break;
                    default:
                        textureFormat = (bitDepth == 16) ? TF_RGB12A4 : TF_RGBA32;
                        break;
                }
                break;

        case PDDI_TEXTYPE_LINEAR :
                switch(alphaDepth)
                {
                    case 0:
                        textureFormat = (bitDepth <= 16) ? TF_LIN_RGB16 : TF_LIN_RGB24;
                        break;
                    case 1:
                        textureFormat = (bitDepth <= 16) ? TF_LIN_RGB15A1 : TF_LIN_RGB24A1;
                        break;
                    default:
                        textureFormat = (bitDepth <= 16) ? TF_LIN_RGB12A4 : TF_LIN_RGBA32;
                        break;
                }
                break;

        case PDDI_TEXTYPE_PALETTIZED:
            textureFormat = TF_PAL;
            break;

        case PDDI_TEXTYPE_LUMINANCE:
            textureFormat = TF_LUM;
            break;

        case PDDI_TEXTYPE_BUMPMAP:
            textureFormat = TF_BUMP;
            break;

        case PDDI_TEXTYPE_DXT1:
             return D3DFMT_DXT1;

        case PDDI_TEXTYPE_DXT2:
             return D3DFMT_DXT2;

        case PDDI_TEXTYPE_DXT3:
             return D3DFMT_DXT3;

        case PDDI_TEXTYPE_DXT4:
             return D3DFMT_DXT4;

        case PDDI_TEXTYPE_DXT5:
             return D3DFMT_DXT5;
    }
    PDDIASSERT(textureFormat != -1);

    if(context->ValidateTexture(d3dFormatPref[textureFormat]))
        return d3dFormatPref[textureFormat];
    else
        return D3DFMT_UNKNOWN;
};

#else
const int TF_RGB16   = 0;
const int TF_RGB15A1 = 1;
const int TF_RGB12A4 = 2;
const int TF_RGB24   = 3;
const int TF_RGBA32  = 4;
const int TF_RGB24A1 = 5;
const int TF_PAL     = 6;
const int TF_LUM     = 7;
const int TF_BUMP    = 8;

D3DFORMAT d3dFormatPref[9][8] =
{ 
    { D3DFMT_R5G6B5,   D3DFMT_X1R5G5B5, D3DFMT_A1R5G5B5, D3DFMT_A4R4G4B4, D3DFMT_R8G8B8,   D3DFMT_X8R8G8B8, D3DFMT_A8R8G8B8, D3DFMT_UNKNOWN},
    { D3DFMT_A1R5G5B5, D3DFMT_A4R4G4B4, D3DFMT_A8R8G8B8, D3DFMT_R5G6B5,   D3DFMT_X1R5G5B5, D3DFMT_R8G8B8,   D3DFMT_X8R8G8B8, D3DFMT_UNKNOWN},
    { D3DFMT_A4R4G4B4, D3DFMT_A8R8G8B8, D3DFMT_A1R5G5B5, D3DFMT_R5G6B5,   D3DFMT_X1R5G5B5, D3DFMT_R8G8B8,   D3DFMT_X8R8G8B8, D3DFMT_UNKNOWN},
    { D3DFMT_R8G8B8,   D3DFMT_X8R8G8B8, D3DFMT_A8R8G8B8, D3DFMT_R5G6B5,   D3DFMT_X1R5G5B5, D3DFMT_A1R5G5B5, D3DFMT_A4R4G4B4, D3DFMT_UNKNOWN},
    { D3DFMT_A8R8G8B8, D3DFMT_A4R4G4B4, D3DFMT_A1R5G5B5, D3DFMT_R8G8B8,   D3DFMT_X8R8G8B8, D3DFMT_R5G6B5,   D3DFMT_X1R5G5B5, D3DFMT_UNKNOWN},
    { D3DFMT_A8R8G8B8, D3DFMT_A1R5G5B5, D3DFMT_A4R4G4B4, D3DFMT_R8G8B8,   D3DFMT_X8R8G8B8, D3DFMT_R5G6B5,   D3DFMT_X1R5G5B5, D3DFMT_UNKNOWN},
    { D3DFMT_P8,       D3DFMT_UNKNOWN},
    { D3DFMT_L8,       D3DFMT_UNKNOWN},
    { D3DFMT_UNKNOWN }
};

static inline D3DFORMAT PickPixelFormat(pddiTextureType type, int bitDepth, int alphaDepth, d3dContext* context)
{
    int textureFormat = -1;

    switch(type)
    {
        case PDDI_TEXTYPE_RGB :
                switch(alphaDepth)
                {
                    case 0:
                        textureFormat = (bitDepth <= 16) ? TF_RGB16 : TF_RGB24;
                        break;
                    case 1:
                        textureFormat = (bitDepth <= 16) ? TF_RGB15A1 : TF_RGB24A1;
                        break;
                    default:
                        textureFormat = (bitDepth <= 16) ? TF_RGB12A4 : TF_RGBA32;
                        break;
                }
                break;

        case PDDI_TEXTYPE_PALETTIZED:
            textureFormat = TF_PAL;
            break;

        case PDDI_TEXTYPE_LUMINANCE:
            textureFormat = TF_LUM;
            break;

        case PDDI_TEXTYPE_BUMPMAP:
            textureFormat = TF_BUMP;
            break;

        case PDDI_TEXTYPE_DXT1:
             return D3DFMT_DXT1;

        case PDDI_TEXTYPE_DXT2:
             return D3DFMT_DXT2;

        case PDDI_TEXTYPE_DXT3:
             return D3DFMT_DXT3;

        case PDDI_TEXTYPE_DXT4:
             return D3DFMT_DXT4;

        case PDDI_TEXTYPE_DXT5:
             return D3DFMT_DXT5;
    }
    PDDIASSERT(textureFormat != -1);

    D3DFORMAT* prefFormat = d3dFormatPref[textureFormat];

    while(*prefFormat != D3DFMT_UNKNOWN)
    {
        if(context->ValidateTexture(*prefFormat))
            return *prefFormat;
        prefFormat++;
    }
    return D3DFMT_UNKNOWN;
};

#endif

//-------------------------------------------------------------------
d3dTexture::d3dTexture(d3dContext* ctx)
{
    context = ctx;
    //context->AddRef();

    texture2d = NULL;
    texture3d = NULL;
    forged = NULL;
#ifdef _XBOX
    palette = NULL;
#endif
    bits = NULL;

    type = PDDI_TEXTYPE_RGB;
    usageHint = PDDI_USAGE_DYNAMIC;
    pixelFormat = PDDI_PIXEL_UNKNOWN;
    width = 0;
    height = 0;
    bpp = 0;
    alphaDepth = 0;
    numMipMaps = 0;

    priority = 15;

    pddiLockInfo lockInfo;
    memset(&lockInfo, 0, sizeof(pddiLockInfo));

    first = true;
    dxtn = false;
    linear = false;
    rendertarget = false;

    texMemUse = 0;
}

//-------------------------------------------------------------------
d3dTexture::d3dTexture(d3dContext* ctx, LPDIRECT3DBASETEXTURE8 f)
{
    context = ctx;
    //context->AddRef();

    texture2d = NULL;
    texture3d = NULL;
    forged = f;

    if(forged)
        forged->AddRef();

#ifdef _XBOX
    palette = NULL;
#endif
    bits = NULL;

    type = PDDI_TEXTYPE_RGB;
    usageHint = PDDI_USAGE_DYNAMIC;
    pixelFormat = PDDI_PIXEL_UNKNOWN;
    width = 0;
    height = 0;
    bpp = 0;
    alphaDepth = 0;
    numMipMaps = 0;

    priority = 15;

    pddiLockInfo lockInfo;
    memset(&lockInfo, 0, sizeof(pddiLockInfo));

    first = true;
    dxtn = false;
    linear = false;
    rendertarget = false;

    texMemUse = 0;
}

d3dTexture::~d3dTexture()
{
    context->ADD_STAT(PDDI_STAT_TEXTURE_ALLOCATED, -(float)texMemUse / 1024.0f);

    if(forged)
    {
        forged->Release();
    }

    if(texture2d)
    {
        texture2d->Release();
        pddiMemRegFree(texture2d);
    }

    if(texture3d)
    {
        texture3d->Release();
        pddiMemRegFree(texture3d);
    }

#ifdef _XBOX
    if(palette)
    {
        palette->Release();
    }
#endif

//   context->Release();

    if(dxtn)
    {
        context->ADD_STAT(PDDI_STAT_TEXTURE_ALLOC_DXTN, -(float)texMemUse / 1024.0f);
        context->ADD_STAT(PDDI_STAT_TEXTURE_COUNT_DXTN, 1);
    }
    else
    {
        switch(bpp)
        {
            case 8:
                context->ADD_STAT(PDDI_STAT_TEXTURE_ALLOC_8BIT, -(float)texMemUse / 1024.0f);
                context->ADD_STAT(PDDI_STAT_TEXTURE_COUNT_8BIT, -1);
                break;
            case 16:
                context->ADD_STAT(PDDI_STAT_TEXTURE_ALLOC_16BIT, -(float)texMemUse / 1024.0f);
                context->ADD_STAT(PDDI_STAT_TEXTURE_COUNT_16BIT, -1);
                break;
            case 32:
                context->ADD_STAT(PDDI_STAT_TEXTURE_ALLOC_32BIT, -(float)texMemUse / 1024.0f);
                context->ADD_STAT(PDDI_STAT_TEXTURE_COUNT_32BIT, -1);
                break;
        }
    }
}

void d3dTexture::ChangeForgedTexture(LPDIRECT3DTEXTURE8 f)
{
    if(f)
        f->AddRef();

    if(forged)
        forged->Release();

    forged = f;
}

//-------------------------------------------------------------------
bool d3dTexture::Create(int xSize, int ySize, int reqBPP, int reqAlphaDepth, int numMip, pddiTextureType textureType, pddiTextureUsageHint hint)
{
    unsigned d3dUsage = 0;
    D3DPOOL pool = D3DPOOL_MANAGED;

    // make sure texture is a power of 2
    switch (textureType)
    {
        case PDDI_TEXTYPE_RENDERTARGET:
        {
            d3dUsage |= D3DUSAGE_RENDERTARGET;
            pool = D3DPOOL_DEFAULT;

            if(1)//!IsPowerOf2(xSize) || !IsPowerOf2(ySize))
            {
                textureType = PDDI_TEXTYPE_LINEAR;
            }
            else
            {
                textureType = PDDI_TEXTYPE_RGB;
            }
            rendertarget = true;
            break;
        }        
        case PDDI_TEXTYPE_RGB:
        {
            if(!IsPowerOf2(xSize) || !IsPowerOf2(ySize))
            {
                lastError = PDDI_TEX_NOT_POW_2;
                return false;
            }
            break;
        }
    }

    // check dimensions
    if( (xSize > context->GetMaxTextureDimension()) ||
         (ySize > context->GetMaxTextureDimension()) )
    {
        lastError = PDDI_TEX_TOO_BIG;
        return false;
    }

    // TODO : is mipmapping supported?
    /*
    if(!context->GetDeviceCaps()->mipNearest)
    {
        numMip = 0;
    }
    */

    // TODO palletized
#ifndef _XBOX
    if(textureType == PDDI_TEXTYPE_PALETTIZED)
        textureType = PDDI_TEXTYPE_RGB;
#endif

    // pick texture format 
    D3DFORMAT format = PickPixelFormat(textureType, reqBPP, reqAlphaDepth, context);

    if(format == D3DFMT_UNKNOWN)
    {
        lastError = PDDI_TEX_BADFORMAT;
        return false;
    }

    if (rendertarget)
    {
        switch (format)
        {
            case D3DFMT_A8R8G8B8:
            case D3DFMT_X8R8G8B8:
            case D3DFMT_R5G6B5:
            case D3DFMT_X1R5G5B5:
#ifdef _XBOX
            case D3DFMT_LIN_A8R8G8B8:
            case D3DFMT_LIN_X8R8G8B8:
            case D3DFMT_LIN_R5G6B5:
            case D3DFMT_LIN_X1R5G5B5:
#endif
                {
                    break;
                }
            default:
                {
                    lastError = PDDI_TEX_BADFORMAT;
                    return false;
                }
        }
    }

    type = textureType;
    usageHint = hint;
    pixelFormat = PDDI_PIXEL_UNKNOWN;
    numMipMaps = numMip;
    width = xSize;
    height= ySize;

    dxtn = ((type == PDDI_TEXTYPE_DXT1) || 
            (type == PDDI_TEXTYPE_DXT2) || 
            (type == PDDI_TEXTYPE_DXT3) || 
            (type == PDDI_TEXTYPE_DXT4) || 
            (type == PDDI_TEXTYPE_DXT5));

    linear = (type == PDDI_TEXTYPE_LINEAR);
 
    LPDIRECT3DDEVICE8 d3d = context->GetDisplay()->GetD3DDevice();

    DDVERIFY(d3d->CreateTexture(xSize, ySize, numMipMaps+1, d3dUsage, format, pool, &texture2d));

#ifdef _XBOX
    if(format == D3DFMT_P8)
    {
        d3d->CreatePalette(D3DPALETTE_256, &palette);
    }
#endif

    // Get surface description
    D3DSURFACE_DESC sd;
    DDVERIFY(texture2d->GetLevelDesc(0, &sd));

    SetPriority(priority);
    FillLockInfo(&sd, NULL, &lockInfo, true);
    pixelFormat = lockInfo.format;
    bpp = lockInfo.depth;
    alphaDepth = BitCount(lockInfo.rgbaMask[3]);

    {
        texMemUse = 0;
        float factor = dxtn ? (0.5f) : (bpp / 8);

        unsigned tmpX = width;
        unsigned tmpY = height;

        for(int i = 0; i < numMipMaps+1; i++)
        {
            texMemUse += int(tmpX * tmpY * factor);
            tmpX >>= 1;
            tmpY >>= 1;
        }
    }

    pddiMemRegAlloc(texture2d, texMemUse);

    context->ADD_STAT(PDDI_STAT_TEXTURE_ALLOCATED, (float)texMemUse / 1024.0f);

    if(dxtn)
    {
        context->ADD_STAT(PDDI_STAT_TEXTURE_ALLOC_DXTN, (float)texMemUse / 1024.0f);
        context->ADD_STAT(PDDI_STAT_TEXTURE_COUNT_DXTN, 1);
    }
    else
    {
        switch(bpp)
        {
            case 8:
                context->ADD_STAT(PDDI_STAT_TEXTURE_ALLOC_8BIT, (float)texMemUse / 1024.0f);
                context->ADD_STAT(PDDI_STAT_TEXTURE_COUNT_8BIT, 1);
                break;
            case 16:
                context->ADD_STAT(PDDI_STAT_TEXTURE_ALLOC_16BIT, (float)texMemUse / 1024.0f);
                context->ADD_STAT(PDDI_STAT_TEXTURE_COUNT_16BIT, 1);
                break;
            case 32:
                context->ADD_STAT(PDDI_STAT_TEXTURE_ALLOC_32BIT, (float)texMemUse / 1024.0f);
                context->ADD_STAT(PDDI_STAT_TEXTURE_COUNT_32BIT, 1);
                break;
        }
    }

    return true;
}

//-------------------------------------------------------------------
bool d3dTexture::CreateVolume(int xSize, int ySize, int zSize, int reqBPP, int reqAlphaDepth, int numMip, pddiTextureType textureType, pddiTextureUsageHint hint)
{
    // make sure texture is a power of 2

    if(!IsPowerOf2(xSize) || !IsPowerOf2(ySize) || !IsPowerOf2(zSize))
    {
        lastError = PDDI_TEX_NOT_POW_2;
        return false;
    }

    // check dimensions
    if( (xSize > context->GetMaxTextureDimension()) ||
         (ySize > context->GetMaxTextureDimension()) ||
         (zSize > context->GetMaxTextureDimension()) )
    {
        lastError = PDDI_TEX_TOO_BIG;
        return false;
    }

    // pick texture format 
    format = PickPixelFormat(textureType, reqBPP, reqAlphaDepth, context);

    if(format == D3DFMT_UNKNOWN)
    {
        lastError = PDDI_TEX_BADFORMAT;
        return false;
    }

    type = textureType;
    usageHint = hint;
    pixelFormat = PDDI_PIXEL_UNKNOWN;
    numMipMaps = numMip;
    width = xSize;
    height= ySize;

    dxtn = ((type == PDDI_TEXTYPE_DXT1) || 
            (type == PDDI_TEXTYPE_DXT2) || 
            (type == PDDI_TEXTYPE_DXT3) || 
            (type == PDDI_TEXTYPE_DXT4) || 
            (type == PDDI_TEXTYPE_DXT5));

    linear = (type == PDDI_TEXTYPE_LINEAR);
 
    LPDIRECT3DDEVICE8 d3d = context->GetDisplay()->GetD3DDevice();

    DDVERIFY(d3d->CreateVolumeTexture(xSize, ySize, zSize, numMipMaps+1, usageHint, format, D3DPOOL_MANAGED, &texture3d));

#ifdef _XBOX
    if(format == D3DFMT_P8)
    {
        d3d->CreatePalette(D3DPALETTE_256, &palette);
    }
#endif

    // Get surface description
    D3DVOLUME_DESC vd;
    DDVERIFY(texture3d->GetLevelDesc(0, &vd));

    SetPriority(priority);
    FillLockInfo(&vd, NULL, &lockInfo, true);
    pixelFormat = lockInfo.format;
    bpp = lockInfo.depth;
    alphaDepth = BitCount(lockInfo.rgbaMask[3]);

    {
        texMemUse = 0;
        
        float factor = dxtn ? (0.5f) : (bpp / 8);

        unsigned tmpX = width;
        unsigned tmpY = height;
        unsigned tmpZ = zSize;

        for(int i = 0; i < numMipMaps+1; i++)
        {
            texMemUse += int(tmpX * tmpY * tmpZ * factor);
            tmpX >>= 1;
            tmpY >>= 1;
            tmpZ >>= 1;
        }
    }

    pddiMemRegAlloc(texture3d, texMemUse);

    context->ADD_STAT(PDDI_STAT_TEXTURE_ALLOCATED, (float)texMemUse / 1024.0f);

    if(dxtn)
    {
        context->ADD_STAT(PDDI_STAT_TEXTURE_ALLOC_DXTN, (float)texMemUse / 1024.0f);
        context->ADD_STAT(PDDI_STAT_TEXTURE_COUNT_DXTN, 1);
    }
    else
    {
        switch(bpp)
        {
            case 8:
                context->ADD_STAT(PDDI_STAT_TEXTURE_ALLOC_8BIT, (float)texMemUse / 1024.0f);
                context->ADD_STAT(PDDI_STAT_TEXTURE_COUNT_8BIT, 1);
                break;
            case 16:
                context->ADD_STAT(PDDI_STAT_TEXTURE_ALLOC_16BIT, (float)texMemUse / 1024.0f);
                context->ADD_STAT(PDDI_STAT_TEXTURE_COUNT_16BIT, 1);
                break;
            case 32:
                context->ADD_STAT(PDDI_STAT_TEXTURE_ALLOC_32BIT, (float)texMemUse / 1024.0f);
                context->ADD_STAT(PDDI_STAT_TEXTURE_COUNT_32BIT, 1);
                break;
        }
    }

    return true;
}

//-------------------------------------------------------------------
int d3dTexture::GetNumPaletteEntries(void)
{
#ifdef _XBOX
    return 256;
#else
    return 0;
#endif
}

//-------------------------------------------------------------------
void d3dTexture::SetPalette(int nEntries, pddiColour* pal)
{
#ifdef _XBOX
    PDDIASSERT(nEntries <= 256);

    if(palette)
    {
        D3DCOLOR* p;
        palette->Lock(&p,0);
        memcpy(p, pal, sizeof(D3DCOLOR) * nEntries);
        palette->Unlock();
    }
#endif
}

//-------------------------------------------------------------------
int d3dTexture::GetPalette(pddiColour* pal)
{
#ifdef _XBOX
    if(palette)
    {
        D3DCOLOR* p;
        palette->Lock(&p,0);
        memcpy(pal, p, sizeof(D3DCOLOR) * 256);
        palette->Unlock();
    }
    return 256;
#else
    return 0;
#endif
}

//-------------------------------------------------------------------
pddiLockInfo* d3dTexture::Lock(int mipLevel, pddiRect* /* TODO */)
{
    if(forged)
    {
        return &lockInfo;
    }

    PDDIASSERT((texture2d!=NULL)||(texture3d!=NULL));
    if (texture2d)
    {
        DDVERIFY(texture2d->GetLevelDesc(mipLevel, &sd));
        DDVERIFY(texture2d->LockRect(mipLevel, &lock2d, NULL, 0));
        FillLockInfo(&sd, &lock2d, &lockInfo, true);
    }
    else if (texture3d)
    {
        DDVERIFY(texture3d->GetLevelDesc(mipLevel, &vd));
        DDVERIFY(texture3d->LockBox(mipLevel, &lock3d, NULL, 0));
        FillLockInfo(&vd, &lock3d, &lockInfo, true);
    }

#ifdef _XBOX
    if(!dxtn&&!linear) // DXTN textures just write directly to texture, swizzled ones need a temp buffer
    {
        PDDIASSERT(bits == NULL);

        // allocate temp space for bits, must be 16 byte alighed for XGSwizzleRect
        // TODO : use custom allocator to avoid "new" overhead
        radMemoryAllocator old = ::radMemorySetCurrentAllocator( RADMEMORY_ALLOC_TEMP );
        bits = new unsigned char[(lockInfo.width * lockInfo.height * lockInfo.volDepth * (lockInfo.depth >> 3)) + 16];
        ::radMemorySetCurrentAllocator( old );
        lockInfo.bits = (void*)(unsigned(bits + 15) & ~15);

        // flip bits and invert pitch so we fill texture bottom to top, since we want u = 0, v = 0 to
        // be in lower left corner of image
        lockInfo.bits = (unsigned char*)lockInfo.bits + ((lockInfo.width * (lockInfo.depth >> 3)) * (lockInfo.height - 1));
        lockInfo.pitch = -(int)(lockInfo.width * (lockInfo.depth >> 3));

        //TODO : Reading from textures
/*
        XGUnswizzleRect(
            lock.pBits,
            sd.Width,
            sd.Height,
            NULL,
            lockInfo.bits,
            0,//lock.Pitch,
            NULL,
            DisplayBitDepth(sd.Format) >> 3
        );
*/
    }
#endif

    return &lockInfo;
}

//-------------------------------------------------------------------
void d3dTexture::Unlock(int mipLevel)
{
    if(forged)
    {
        return;
    }

    PDDIASSERT((texture2d!=NULL)||(texture3d!=NULL));
#ifdef _XBOX
    if(!dxtn&&!linear) 
    {
        if (texture2d)
        {
            // swizzle rect from temp buffer
            XGSwizzleRect(
                (void*)(unsigned(bits + 15) & ~15),
                0,//lock.Pitch,
                NULL,
                lock2d.pBits,
                sd.Width,
                sd.Height,
                NULL,
                DisplayBitDepth(sd.Format) >> 3
             );
            texture2d->UnlockRect(mipLevel);
        }
        else if (texture3d)
        {
            // swizzle box from temp buffer
            XGSwizzleBox(
                (void*)(unsigned(bits + 15) & ~15),
                0,
                0,
                NULL,
                lock3d.pBits,
                vd.Width,
                vd.Height,
                vd.Depth,
                NULL,
                DisplayBitDepth(vd.Format) >> 3
             );
            texture3d->UnlockBox(mipLevel);
        }
        delete [] bits;
        bits = NULL;
    }
#else
    if (texture2d)
    {
        texture2d->UnlockRect(mipLevel);
    }
    else if (texture3d)
    {
        texture3d->UnlockBox(mipLevel);
    }
#endif
}

//-------------------------------------------------------------------
void d3dTexture::Prefetch()
{
}

void d3dTexture::Discard()
{
}

void d3dTexture::SetPriority(int p)
{
    priority = p;
}

void d3dTexture::SetTexture(int stage)
{
    PDDIASSERT((texture2d!=NULL)||(texture3d!=NULL)||(forged!=NULL));

#ifdef _XBOX
    context->GetDisplay()->GetD3DDevice()->SetPalette(stage, palette);
#endif

    if (texture2d)
    {
        context->GetDisplay()->GetD3DDevice()->SetTexture(stage, texture2d);
    }
    else if (texture3d)
    {
        context->GetDisplay()->GetD3DDevice()->SetTexture(stage, texture3d);
    }
    else if (forged)
    {
        context->GetDisplay()->GetD3DDevice()->SetTexture(stage, forged);
    }
}

