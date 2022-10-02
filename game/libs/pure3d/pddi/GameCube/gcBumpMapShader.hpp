//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


#ifndef _GCBUMPMAPSHADER_HPP_
#define _GCBUMPMAPSHADER_HPP_

#include <pddi/pddi.hpp>
#include <pddi/base/baseshader.hpp>
#include <pddi/gamecube/gctev.hpp>

class gcContext;

#include <dolphin/gx.h>

//**********************************************************
//
// Class gcBumpMapShader
//
//
class gcBumpMapShader : public pddiBaseShader
{
public:
    gcBumpMapShader(gcContext *);
  ~gcBumpMapShader();

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
    void SetBumpMap(pddiTexture *texture);
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

    // alpha blending
    void SetBlendMode(int mode);
    void EnableAlphaTest(int);
    void SetAlphaCompare(int compare);

    int  CountDevPasses(void);
    void SetDevPass(unsigned);
    
    // rendering
    void PreRender(void);
    void PostRender(void);

private:

    static pddiBaseShader *Allocate(pddiRenderContext *c, const char *name, const char *aux);
    gcContext *mContext;
    bool       mDirty;

    gcTexture *mTexture;
    gcTexture *mBumpMap;

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

    bool mAlphaTest;

    pddiBlendMode   mAlphaBlendMode;
    pddiCompareMode mAlphaCompareMode;

    gcTEVState        mTEVStates[4];
    gcRasterizerState mRasStates[3];

    void Rebuild(void);

};

#endif

