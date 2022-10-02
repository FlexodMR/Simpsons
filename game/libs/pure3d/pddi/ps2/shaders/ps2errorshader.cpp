/*====================================================================
   ps2ErrorShader.cpp
   31-Jan-31 Created by Neall

   Copyright (c)2001 Radical Entertainment Ltd
   All rights reserved.
====================================================================*/

#include <pddi/ps2/shaders/ps2errorshader.hpp>
#include <pddi/pddishade.hpp>
#include <pddi/ps2/packet.hpp>
#include <pddi/ps2/ps2context.hpp>

// this function is called by the base shader to allocate
// a new instance of a simple shader
static pddiBaseShader* ps2ErrorShaderAllocate(pddiRenderContext* c, const char*, const char*)
{
    return new ps2ErrorShader((ps2Context*)c);
}

// The device will call this function to register the error shader
// with the system.  Note that this shader assumes that the lit_tri, and
// line program of the simple shader has already been registered.
void ps2ErrorShader::Install()
{
    pddiBaseShader::InstallShader("error", ps2ErrorShaderAllocate, NULL);
}

// implementation of ps2ErrorShader
ps2ErrorShader::ps2ErrorShader(ps2Context* c) : context(c)
{
    microcode = VU1_LIT_TRI;
}

void ps2ErrorShader::Validate(unsigned format)
{
    PDDIASSERT(((format & 0xf) == 1) && "PDDI ERROR: ps2ErrorShader: Invalid vertex format (texture co-ord count != 1)");
    PDDIASSERT((format & PDDI_V_POSITION) && "PDDI ERROR: ps2ErrorShader:  Invalid vertex format (no positions");
}

void ps2ErrorShader::Bind(GSContext* gsContext, VifStream& vif)
{
    currentUID = uid;
    gsContext->pabe.reg.data = 0;
    gsContext->prmode.reg.prmode.TME = 0;
    gsContext->prmode.reg.prmode.FGE = 0;
    gsContext->prmode.reg.prmode.IIP = 0;
    gsContext->prmode.reg.prmode.ABE = 0;
    gsContext->prmode.reg.prmode.AA1 = 0;

    vif.FlushA_Safe();

    vif.Direct(sizeof(GSContext)/16, gsContext);

    VU_Context* vu = context->GetVUContext();
    vu->light.additive.Set(255.0f, 255.0f, 0.0f, 255.0f);
    vu->SetDirty(true);

    vif.ITop(0);
    vif.UnpackQW(0, vu->GetSizeQW(), vu);
    vif.MsCal(VU1_LOAD_CONTEXT);
}
