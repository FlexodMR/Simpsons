//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================



#include <pddi/gamecube/gcfbeffects.hpp>

#include <pddi/gamecube/gctex.hpp>
#include <pddi/gamecube/gccon.hpp>
#include <pddi/gamecube/gcdev.hpp>
#include <pddi/gamecube/gcdisplay.hpp>
#include <pddi/gamecube/gcbufcopy.hpp>

#include <pddi/pddi.hpp>

#include <dolphin/gx.h>
#include <dolphin/mtx/GeoTypes.h>


//*******************************************************
//
//  gcExtFrameBufferEffects
//  Constructor
//
//
gcExtFramebufferEffects::gcExtFramebufferEffects(gcContext *c, gcDevice *dev) :
    mContext(c),
    mDevice(dev),
    mBufferCopier(NULL),
    mQuality(Smallest),
    mFullScreenColour(NULL),
    mFullScreenZ8Bit(NULL),
    mHalfScreenColour(NULL),
    mFullScreenColourLastUpdate(0),
    mFullScreenZ8BitLastUpdate(0),
    mHalfScreenColourLastUpdate(0),
    mMotionBlurEnabled(false),
    mMotionBlurAlpha(0.9F),
    mMotionBlurZoom(1.0F),
    mMotionBlurRGB(false),
    mShader(NULL)
{
}


//*******************************************************
//
//  gcExtFrameBufferEffects
//  Constructor
//
//
gcExtFramebufferEffects::~gcExtFramebufferEffects()
{
    mMotionBlurEnabled = false;

    if (mFullScreenColour != NULL) mFullScreenColour->Release();
    if (mFullScreenZ8Bit  != NULL) mFullScreenZ8Bit->Release();
    if (mHalfScreenColour != NULL) mHalfScreenColour->Release();
    mShader->Release();
}




//*******************************************************
//
//  gcExtFrameBufferEffects
//  Set Quality
//
//
void gcExtFramebufferEffects::SetQuality(Quality q)
{
    if (q == mQuality) return;

    mQuality = q;

    if (mFullScreenColour != NULL) CreateFullScreenColour();
    if (mFullScreenZ8Bit  != NULL) CreateFullScreenZ8Bit();
    if (mHalfScreenColour != NULL) CreateHalfScreenColour();
}



//*******************************************************
//
//  gcExtFrameBufferEffects
//  Enable Botion Blur
//
//
void gcExtFramebufferEffects::EnableMotionBlur(bool enable, float alpha, float zoom, bool rgb)
{
    mMotionBlurEnabled = enable;
    mMotionBlurAlpha   = alpha;
    mMotionBlurZoom    = zoom;
    mMotionBlurRGB     = rgb;
    mMotionBlurQuality = mQuality;   

    if (mMotionBlurEnabled)
    {
        if ((mMotionBlurQuality != Best) && (mHalfScreenColour == NULL)) CreateHalfScreenColour();
        else if (mFullScreenColour == NULL)  CreateFullScreenColour();
    }
}



//*******************************************************
//
//  gcExtFrameBufferEffects
//  Enable Botion Blur
//
void gcExtFramebufferEffects::RenderMotionBlur(void)
{
    if (!mMotionBlurEnabled) return;

    float near = SetupPDDI() + 0.01F;

    float dispx = (float) (gcDisplay::CurrentDisplay()->GetWidth() - 0);
    float dispy = (float) (gcDisplay::CurrentDisplay()->GetHeight()- 0);
                        
    // Setup the shader for this texture pass
    if (mMotionBlurQuality != Best) mShader->SetTexture(PDDI_SP_BASETEX, mHalfScreenColour);
    else                            mShader->SetTexture(PDDI_SP_BASETEX, mFullScreenColour);
    mShader->SetInt(PDDI_SP_BLENDMODE, PDDI_BLEND_ALPHA);

    pddiColour c = pddiColour(255, 255, 255, (unsigned char) (mMotionBlurAlpha * 255.0F));

    pddiPrimStream *stream = mContext->BeginPrims(mShader, PDDI_PRIM_TRISTRIP, PDDI_V_CT, 4);

    gcTexture *tex = (mMotionBlurQuality != Best) ? mHalfScreenColour : mFullScreenColour;

    float urange = 1.0F - (0.6F / (float) tex->GetWidth());
    float vrange = 1.0F - (1.0F / (float) tex->GetHeight());

    float uhalf = urange / 2.0F;
    float vhalf = vrange / 2.0F;

    float scale = 1.0F / mMotionBlurZoom;
    float minu = uhalf - (scale * uhalf); 
    float minv = vhalf - (scale * vhalf); 
    float maxu = uhalf + (scale * uhalf); 
    float maxv = vhalf + (scale * vhalf); 

    stream->Colour(c);   stream->UV(minu, minv, 0);      stream->Coord( 0.0F,  0.0F, near);
    stream->Colour(c);   stream->UV(minu, maxv, 0);      stream->Coord( 0.0F, dispy, near);
    stream->Colour(c);   stream->UV(maxu, minv, 0);      stream->Coord(dispx,  0.0F, near);
    stream->Colour(c);   stream->UV(maxu, maxv, 0);      stream->Coord(dispx, dispy, near);

    mContext->EndPrims(stream);

    RestorePDDI();
}





//*******************************************************
//
//  gcExtFrameBufferEffects
//  End Of Frame From PDDI
//
void gcExtFramebufferEffects::EndOfFrameFromPDDI(void)
{
    if (mMotionBlurEnabled) 
    {
        if (mMotionBlurQuality != Best) UpdateHalfScreenColour();
        else                            UpdateFullScreenColour();
    }
}



//*******************************************************
//
//  gcExtFrameBufferEffects
//  Create full screen colour
//
void gcExtFramebufferEffects::CreateFullScreenColour(void)
{
    CheckInit();

    int xres = gcDisplay::CurrentDisplay()->GetWidth();
    int yres = gcDisplay::CurrentDisplay()->GetHeight();

    mFullScreenColour = (gcTexture *)mBufferCopier->CreateBackTexture(xres, yres, 32, false);
    mFullScreenColourLastUpdate = 0;
    
}


//*******************************************************
//
//  gcExtFrameBufferEffects
//  Create full screen Z 8 Bit
//
void gcExtFramebufferEffects::CreateFullScreenZ8Bit(void)
{
    CheckInit();

    int xres = gcDisplay::CurrentDisplay()->GetWidth();
    int yres = gcDisplay::CurrentDisplay()->GetHeight();

    mFullScreenZ8Bit = (gcTexture *)mBufferCopier->CreateZTexture(xres, yres, 8);
    mFullScreenZ8BitLastUpdate = 0;
}


//*******************************************************
//
//  gcExtFrameBufferEffects
//  Create half screen colour
//
void gcExtFramebufferEffects::CreateHalfScreenColour(void)
{
    CheckInit();

    int xres = gcDisplay::CurrentDisplay()->GetWidth() / 2;
    int yres = gcDisplay::CurrentDisplay()->GetHeight() / 2;

    mHalfScreenColour = (gcTexture *)mBufferCopier->CreateBackTexture(xres, yres, 32, false);
    mHalfScreenColourLastUpdate = 0;
}



//*******************************************************
//
//  gcExtFrameBufferEffects
//  Update full screen colour
//
void gcExtFramebufferEffects::UpdateFullScreenColour(void)
{
    if (mFullScreenColour == NULL) return;

    unsigned int frame = (unsigned int) mContext->GetFloatStat(PDDI_STAT_CURRENT_FRAME);

    if (frame > mFullScreenColourLastUpdate)
    {
        mBufferCopier->CopyBackBuf(mFullScreenColour, false, false);
        mFullScreenColourLastUpdate = frame;
    }
}

//*******************************************************
//
//  gcExtFrameBufferEffects
//  Update full screen Z 8 Bit
//
void gcExtFramebufferEffects::UpdateFullScreenZ8Bit(void)
{
    if (mFullScreenZ8Bit == NULL) return;

    unsigned int frame = (unsigned int) mContext->GetFloatStat(PDDI_STAT_CURRENT_FRAME);

    if (frame > mFullScreenZ8BitLastUpdate)
    {
        mBufferCopier->CopyZBuf(mFullScreenZ8Bit, false);
        mFullScreenZ8BitLastUpdate = frame;
    }
}


//*******************************************************
//
//  gcExtFrameBufferEffects
//  Update half screen colour
//
void gcExtFramebufferEffects::UpdateHalfScreenColour(void)
{
    if (mHalfScreenColour == NULL) return;
    unsigned int frame = (unsigned int) mContext->GetFloatStat(PDDI_STAT_CURRENT_FRAME);

    if (frame > mHalfScreenColourLastUpdate)
    {
        mBufferCopier->CopyBackBuf(mHalfScreenColour, false, true);
        mHalfScreenColourLastUpdate = frame;
    }
}



//*******************************************************
//
//  gcExtFrameBufferEffects
//  Setup PDDI
//  Returns the near plane
//
float gcExtFramebufferEffects::SetupPDDI(void)
{
    mOriginalCompare    = mContext->GetZCompare();
    mOriginalProjection = mContext->GetProjectionMode();
    mOriginalCull       = mContext->GetCullMode();
    mOriginalZWrite     = mContext->GetZWrite();

    mContext->SetZCompare(PDDI_COMPARE_ALWAYS);
    mContext->SetProjectionMode(PDDI_PROJECTION_DEVICE);
    mContext->SetCullMode(PDDI_CULL_NONE);
    mContext->SetZWrite(false);

    mContext->PushMatrix(PDDI_MATRIX_MODELVIEW);
    mContext->IdentityMatrix(PDDI_MATRIX_MODELVIEW);

    float near, unused;
    mContext->GetCamera(&near, &unused, &unused, &unused);
    return near;

}



//*******************************************************
//
//  gcExtFrameBufferEffects
//  restore PDDI
//
void gcExtFramebufferEffects::RestorePDDI(void)
{
    mContext->PopMatrix(PDDI_MATRIX_MODELVIEW);

    mContext->SetZCompare(mOriginalCompare);
    mContext->SetProjectionMode(mOriginalProjection);
    mContext->SetCullMode(mOriginalCull);
    mContext->SetZWrite(mOriginalZWrite);
}






//*******************************************************
//
//  gcExtFrameBufferEffects
//  Check Init
//
void gcExtFramebufferEffects::CheckInit(void)
{
    if (mBufferCopier == NULL)
    {
        mBufferCopier = (gcExtBufferCopy *) mContext->GetExtension(PDDI_EXT_BUFCOPY);
    }

    if (mShader == NULL)
    {
        mShader = mDevice->NewShader("fbeffects");
    }
}
