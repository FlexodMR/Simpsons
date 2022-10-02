//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


#include <pddi/gamecube/gcErrorShader.hpp>
#include <pddi/gamecube/gctex.hpp>
#include <pddi/gamecube/gccon.hpp>

#include <dolphin/gx.h>

//-------------------------------------------------------
//-------------------------------------------------------
gcErrorShader::gcErrorShader(gcContext* c) 
{
    mContext = c;
}

//-------------------------------------------------------
gcErrorShader::~gcErrorShader() 
{
}


//-------------------------------------------------------
void gcErrorShader::Install(void)
{
    pddiBaseShader::InstallShader("error", &gcErrorShader::Allocate, NULL);
}

//-------------------------------------------------------
// this function is called by the base shader to allocate
// a new instance of a simple shader
pddiBaseShader *gcErrorShader::Allocate(pddiRenderContext *c, const char *name, const char *aux)
{
    return new gcErrorShader((gcContext*)c);
}

//-------------------------------------------------------
const char *gcErrorShader::GetType(void)
{
    static char error[] = "error";
    return error;
}

//-------------------------------------------------------
int gcErrorShader::GetPasses(void)
{
    return 1;
}

//-------------------------------------------------------
void gcErrorShader::SetPass(int pass)
{
    SetDevPass((unsigned)pass);
}


//-------------------------------------------------------
int gcErrorShader::CountDevPasses(void) 
{
    return 1;
}

//-------------------------------------------------------
void gcErrorShader::SetDevPass(unsigned pass)
{
    GXColor gxColorHotPink = {0xff, 0x80, 0xff, 0x00};
    GXSetTevColor(GX_TEVPREV, gxColorHotPink);

    GXSetNumTevStages(1);
    GXSetTevColorIn(GX_TEVSTAGE0, GX_CC_ZERO, GX_CC_ZERO, GX_CC_ZERO, GX_CC_CPREV);
    GXSetTevAlphaIn(GX_TEVSTAGE0, GX_CA_ZERO, GX_CA_ZERO, GX_CA_ZERO, GX_CA_ZERO);
    GXSetTevColorOp(GX_TEVSTAGE0, GX_TEV_ADD, GX_TB_ZERO, GX_CS_SCALE_1, TRUE, GX_TEVPREV);
    GXSetTevAlphaOp(GX_TEVSTAGE0, GX_TEV_ADD, GX_TB_ZERO, GX_CS_SCALE_1, TRUE, GX_TEVPREV);
                   
}



