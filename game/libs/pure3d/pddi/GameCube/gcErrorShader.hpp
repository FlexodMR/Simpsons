//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


#ifndef _GCERRORSHADER_HPP_
#define _GCERRORSHADER_HPP_

#include <pddi/pddi.hpp>
#include <pddi/base/baseshader.hpp>
#include <pddi/gamecube/gctev.hpp>

class gcContext;

#include <dolphin/gx.h>

//const int gcMaxPasses = 1;
//const int gcMaxStages = 16;
    

//**********************************************************
//
// Class ErrorShader
//
//
class gcErrorShader : public pddiBaseShader
{
public:
    gcErrorShader(gcContext *);
  ~gcErrorShader();

    static void Install(void);

    const char *GetType(void);
    int         GetPasses(void);
    void        SetPass(int pass);

    int  CountDevPasses(void);
    void SetDevPass(unsigned);

private:

    static pddiBaseShader *Allocate(pddiRenderContext *c, const char *name, const char *aux);
    gcContext *mContext;

};

#endif

