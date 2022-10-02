//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


#ifndef _GCSIMPLESHADER_HPP_
#define _GCSIMPLESHADER_HPP_

#include <pddi/pddi.hpp>
#include <pddi/base/baseshader.hpp>
#include <pddi/gamecube/gctev.hpp>

class gcContext;

#include <dolphin/gx.h>
#include <dolphin/mtx.h>

const int gcMaxPasses = 1;
const int gcMaxStages = 16;
    

//**********************************************************
//
// Class SimpleShader
//
//
class SimpleShader : public pddiBaseShader
{
public:
    SimpleShader(gcContext *);
  ~SimpleShader();

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

    // texture
    void SetTexture(pddiTexture *texture);
    void SetUVMode(int mode);
    void SetFilterMode(int mode);

    // shading
    void SetShadeMode(int shade);

    // lighting
    void EnableLighting(int);

    void SetDiffuse(pddiColour colour);
    void SetAmbient(pddiColour colour);
    void SetEmissive(pddiColour);
    void SetSpecular(pddiColour);
    void SetShininess(float power);
    void SetEmissiveAlpha(int);

    // alpha blending
    void SetBlendMode(int mode);
    void EnableAlphaTest(int);
    void SetAlphaCompare(int compare);
    void SetAlphaRef(float ref);

    int  CountDevPasses(void);
    void SetDevPass(unsigned);
    
    void SetDoubleSided(int doubleSided);
    
    void PreRender(void);
    void PostRender(void);    

private:

    static pddiBaseShader *Allocate(pddiRenderContext *c, const char *name, const char *aux);
    gcContext *mContext;
    bool       mDirty;

    gcTexture *mTexture;

    pddiShadeMode  mShadeMode; //Ignored for now
    pddiUVMode     mUVMode;
    pddiFilterMode mFilterMode;
    pddiTextureGen mTexGen;

    pddiColour mAmbient;
    pddiColour mDiffuse;
    pddiColour mEmissive;
    pddiColour mSpecular;
    float      mShininess;

    bool mIsLit;
    bool mIsSpecular;

    bool  mAlphaTest;
    float mAlphaRef;

    pddiBlendMode   mAlphaBlendMode;
    pddiCompareMode mAlphaCompareMode;

    gcTEVState        mTEVStates[2];
    gcRasterizerState mRasStates[3];
    
    bool mIsDoubleSided;
    pddiCullMode mPrevCullMode;

    void Rebuild(void);

};

#endif

