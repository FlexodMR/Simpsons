//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


#ifndef _GC_REFRACTIONSHADER_HPP_
#define _GC_REFRACTIONSHADER_HPP_

#include <pddi/pddi.hpp>
#include <pddi/base/baseshader.hpp>

class gcContext;
class gcTexture;

#include <dolphin/gx.h>
#include <dolphin/mtx.h>


//**********************************************************
//
// Class RefractionShader
//
//
class RefractionShader : public pddiBaseShader
{
public:
    RefractionShader(gcContext *);
   ~RefractionShader();

    static void Install(void);

    static pddiShadeColourTable  gColourTable[];
    static pddiShadeTextureTable gTextureTable[];
    static pddiShadeIntTable     gIntTable[];
    static pddiShadeFloatTable   gFloatTable[];

    const char *GetType(void);
    int         GetPasses(void);
    void        SetPass(int pass);

    pddiShadeTextureTable *GetTextureTable(void) { return gTextureTable; }
    pddiShadeIntTable     *GetIntTable(void)     { return gIntTable; }
    pddiShadeFloatTable   *GetFloatTable(void)   { return gFloatTable; }
    pddiShadeColourTable  *GetColourTable(void)  { return gColourTable; }

    // functions to control the refractions
    void SetRefractionIndex(float index);
    void SetRefractionColour(pddiColour col);
    void SetRefractionBlend(float f);
    void SetBaseTexture(pddiTexture *t);
    void LowQuality(bool e);
    void SetDiffuseColour(pddiColour col);
    void SetAmbientColour(pddiColour col);

    void PostRender(void);
    static void AllowOneBufferCapture();

private:

    static pddiBaseShader *Allocate(pddiRenderContext *c, const char *name, const char *aux);
    gcContext *mContext;

    static gcTexture *mIndTexture;
    static gcTexture *mBackTexture;
    pddiColour mRColour;
    float      mBlend;
    float      mRIndex;
    gcTexture *mTexture;
    pddiColour mDiffuse;
    GXColor    mAmbient;
    bool       mLowQuality;

};

#endif

