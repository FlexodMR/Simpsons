//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================



#include <pddi/gamecube/gcbufcopy.hpp>
#include <pddi/gamecube/gctex.hpp>
#include <pddi/gamecube/gccon.hpp>
#include <pddi/gamecube/gcdev.hpp>

#include <pddi/pddi.hpp>
#include <dolphin/gx.h>
#include <dolphin/mtx/GeoTypes.h>

//------------------------------------------------------------------------------
gcExtBufferCopy::gcExtBufferCopy(gcContext *c, gcDevice *d) :
    mContext(c),
    mDevice(d)
{
}


//------------------------------------------------------------------------------
gcExtBufferCopy::~gcExtBufferCopy()
{
    ;
}

//------------------------------------------------------------------------------
pddiTexture *gcExtBufferCopy::CreateZTexture(int xres, int yres, int bpp)
{
    pddiTextureDesc desc;
    desc.SetSizeX(xres);
    desc.SetSizeY(yres);
    desc.SetBitDepth(bpp);
    desc.SetAlphaDepth(0);
    desc.SetType(PDDI_TEXTYPE_Z);

    gcTexture *tex = (gcTexture *)mDevice->NewTexture(&desc);
    if (tex == NULL) return NULL;

    tex->SetSwizzleEnable(false);

    tex->Lock(0);
    tex->Unlock(0);

    return tex;
}


//------------------------------------------------------------------------------
pddiTexture *gcExtBufferCopy::CreateBackTexture(int xres, int yres, int bpp, bool alpha)
{

    int alphadepth = 0;
    if (alpha) 
    {
        if (bpp == 32) alphadepth = 8;
        else           alphadepth = 1;
    }

    pddiTextureDesc desc;
    desc.SetSizeX(xres);
    desc.SetSizeY(yres);
    desc.SetBitDepth(bpp);
    desc.SetAlphaDepth(alphadepth);
    desc.SetType(PDDI_TEXTYPE_RGB);


    gcTexture *tex = (gcTexture *)mDevice->NewTexture(&desc);
    if (tex == NULL) return NULL;

    tex->SetSwizzleEnable(false);

    tex->Lock(0);
    tex->Unlock(0);

    return tex;
}


//------------------------------------------------------------------------------
pddiTexture *gcExtBufferCopy::CreateAlphaTexture(int xres, int yres, int bpp)
{

    pddiTextureDesc desc;
    desc.SetSizeX(xres);
    desc.SetSizeY(yres);
    desc.SetBitDepth(bpp);
    desc.SetAlphaDepth(bpp);
    desc.SetType(PDDI_TEXTYPE_LUMINANCE);


    gcTexture *tex = (gcTexture *)mDevice->NewTexture(&desc);
    if (tex == NULL) return NULL;

    tex->SetSwizzleEnable(false);

    tex->Lock(0);
    tex->Unlock(0);

    return tex;
}





//------------------------------------------------------------------------------
bool gcExtBufferCopy::CopyZBuf(pddiTexture *t, bool clear)
{
    //-------------------------------------------
    //  Copy the depth map into Texture
    //-------------------------------------------
    gcTexture *tex = dynamic_cast<gcTexture *>(t);
    if (tex == NULL) return false;

    unsigned short xres = (unsigned short) tex->GetWidth();
    unsigned short yres = (unsigned short) tex->GetHeight();

    pddiLockInfo *lock = tex->Lock(0);

    // Copy shadow image into texture
    GXSetTexCopySrc(0, 0, xres, yres);
    switch (tex->GetDepth())
    {
        case 24:
            GXSetTexCopyDst(xres, yres, GX_TF_Z24X8, false);
            break;

        case 16:
            GXSetTexCopyDst(xres, yres, GX_TF_Z16, false);
            break;
        
        case 8:
            GXSetTexCopyDst(xres, yres, GX_TF_Z8, false);
            break;

        default:
            PDDIASSERT(0);
            break;
    }

    GXCopyTex(lock->bits, clear);

    // Wait for finishing the copy task in the graphics pipeline
    GXPixModeSync();
    
    // So the texture cache doesn't screw the new texture
    GXInvalidateTexAll();

    tex->Unlock(0);

    return true;
}

//------------------------------------------------------------------------------
bool gcExtBufferCopy::CopyBackBuf(pddiTexture *t, bool clear, bool halfsize)
{
    //-------------------------------------------
    //  Copy the back buffer into Texture
    //-------------------------------------------
    gcTexture *tex = dynamic_cast<gcTexture *>(t);
    if (tex == NULL) return false;

    unsigned short xres = (unsigned short) tex->GetWidth();
    unsigned short yres = (unsigned short) tex->GetHeight();

    pddiLockInfo *lock = tex->Lock(0);

    // Copy image into texture
    int scale = 1;
    if (halfsize) scale = 2;

    GXSetTexCopySrc(0, 0, xres * scale, yres * scale);
    GXSetTexCopyDst(xres, yres, tex->GXTextureFormat(), halfsize);

    GXCopyTex(lock->bits, clear);

    // Wait for finishing the copy task in the graphics pipeline
    GXPixModeSync();
    
    // So the texture cache doesn't screw the new texture
    GXInvalidateTexAll();

    tex->Unlock(0);

    return true;
}



bool gcExtBufferCopy::CopyAlphaBuf(pddiTexture *t, bool clear, int bpp, int alphadepth)
{
    if (bpp > 8)          return false;
    if (alphadepth > bpp) return false;
    if (alphadepth == 0)  return false;

    //-------------------------------------------
    //  Copy the back buffer into Texture
    //-------------------------------------------
    gcTexture *tex = dynamic_cast<gcTexture *>(t);
    if (tex == NULL) return false;

    unsigned short xres = (unsigned short) tex->GetWidth();
    unsigned short yres = (unsigned short) tex->GetHeight();

    pddiLockInfo *lock = tex->Lock(0);

    GXTexFmt format = GX_CTF_A8;

    if ((bpp == 8) && (alphadepth == 4)) format = GX_TF_IA4;

    // Copy image into texture
    GXSetTexCopySrc(0, 0, xres, yres);
    GXSetTexCopyDst(xres, yres, format, false);

    GXCopyTex(lock->bits, clear);

    // Wait for finishing the copy task in the graphics pipeline
    GXPixModeSync();
    
    // So the texture cache doesn't screw the new texture
    GXInvalidateTexAll();

    tex->Unlock(0);

    return true;
}


