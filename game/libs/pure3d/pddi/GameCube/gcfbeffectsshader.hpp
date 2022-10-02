//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


#ifndef _GCgcFBEffectsShader_HPP_
#define _GCgcFBEffectsShader_HPP_

#include <pddi/pddi.hpp>
#include <pddi/base/baseshader.hpp>
#include <pddi/gamecube/gctev.hpp>

class gcContext;

#include <dolphin/gx.h>

//**********************************************************
//
// Class gcFBEffectsShader
//
//
class gcFBEffectsShader : public pddiBaseShader
{
public:
    gcFBEffectsShader(gcContext *);
   ~gcFBEffectsShader();

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

    // alpha blending
    void SetBlendMode(int mode);
    void EnableAlphaTest(int);
    void SetAlphaCompare(int compare);

    int  CountDevPasses(void);
    void SetDevPass(unsigned);
    
    void PreRender(void);
    void PostRender(void);    

private:

    static pddiBaseShader *Allocate(pddiRenderContext *c, const char *name, const char *aux);
    gcContext *mContext;

    gcTexture *mTexture;

    bool mAlphaTest;
    pddiBlendMode   mAlphaBlendMode;
    pddiCompareMode mAlphaCompareMode;

};

#endif

