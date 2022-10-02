//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


#ifndef _GCSHADOWSHADER_HPP_
#define _GCSHADOWSHADER_HPP_

#include <pddi/pddi.hpp>
#include <pddi/base/baseshader.hpp>
#include <pddi/gamecube/gctev.hpp>

class gcContext;

#include <dolphin/gx.h>
#include <dolphin/mtx.h>

//**********************************************************
//
// Class ShadowShader
//
//
class ShadowShader : public pddiBaseShader
{
public:
    ShadowShader(gcContext *);
  ~ShadowShader();

    static void Install(void);
    
    static pddiShadeColourTable  gColourTable[];
    static pddiShadeTextureTable gTextureTable[];
    static pddiShadeIntTable     gIntTable[];
    static pddiShadeFloatTable   gFloatTable[];
    static pddiShadeVectorTable  gVectorTable[];
    static pddiShadeMatrixTable  gMatrixTable[];

    const char *GetType(void);
    int         GetPasses(void);
    void        SetPass(int pass);

    pddiShadeTextureTable *GetTextureTable(void) { return gTextureTable; }
    pddiShadeIntTable     *GetIntTable(void)     { return gIntTable; }
    pddiShadeFloatTable   *GetFloatTable(void)   { return gFloatTable; }
    pddiShadeColourTable  *GetColourTable(void)  { return gColourTable; }
    pddiShadeVectorTable  *GetVectorTable(void)  { return gVectorTable; }
    pddiShadeMatrixTable  *GetMatrixTable(void)  { return gMatrixTable; }

    int  CountDevPasses(void);
    void SetDevPass(unsigned);

    void SetShadowColour(pddiColour c);
    void SetShadowTexture(pddiTexture *t);

private:

    static pddiBaseShader *Allocate(pddiRenderContext *c, const char *name, const char *aux);

    void BuildMatrixPerspective(float near, float far, float fov, float aspect, pddiMatrix *modelview);
    void BuildMatrixOrthographic(float near, float far, pddiMatrix *modelview);

    gcContext  *mContext;
    gcTexture  *mShadowTexture;
    pddiColour  mShadowColour;
};

#endif

