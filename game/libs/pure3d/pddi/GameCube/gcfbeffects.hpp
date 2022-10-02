//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


#ifndef _GC_EXTFRAMEBUFFEREFFECTS
#define _GC_EXTFRAMEBUFFEREFFECTS

#include <pddi/pddiext.hpp>

class gcContext;
class gcDevice;
class gcTexture;
class gcExtBufferCopy;
class pddiShader;

class gcExtFramebufferEffects : public pddiExtFramebufferEffects
{
 public:
    gcExtFramebufferEffects(gcContext *c, gcDevice *dev);
    virtual void SetQuality(Quality q);

    virtual void EnableMotionBlur(bool enable, float alpha, float zoom, bool rgb);
    virtual void RenderMotionBlur(void);

    void EndOfFrameFromPDDI(void);

 private:

    virtual ~gcExtFramebufferEffects();

    void CreateFullScreenColour(void);
    void CreateFullScreenZ8Bit(void);
    void CreateHalfScreenColour(void);

    void UpdateFullScreenColour(void);
    void UpdateFullScreenZ8Bit(void);
    void UpdateHalfScreenColour(void);

    void CheckInit(void);

    gcContext *mContext;
    gcDevice  *mDevice;
    gcExtBufferCopy *mBufferCopier;

    Quality    mQuality;

    gcTexture *mFullScreenColour;
    gcTexture *mFullScreenZ8Bit;
    gcTexture *mHalfScreenColour;

    unsigned int mFullScreenColourLastUpdate;
    unsigned int mFullScreenZ8BitLastUpdate;
    unsigned int mHalfScreenColourLastUpdate;

    bool    mMotionBlurEnabled;
    float   mMotionBlurAlpha;
    float   mMotionBlurZoom;
    bool    mMotionBlurRGB;
    Quality mMotionBlurQuality;

    float SetupPDDI(void);  // returns the near plane
    void  RestorePDDI(void);

    pddiCompareMode    mOriginalCompare;
    pddiProjectionMode mOriginalProjection;
    pddiCullMode       mOriginalCull;
    bool               mOriginalZWrite;

    pddiShader          *mShader;
};


#endif  //_GC_EXTFRAMEBUFFEREFFECTS

