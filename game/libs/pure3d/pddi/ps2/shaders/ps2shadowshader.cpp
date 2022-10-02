/*====================================================================
   ps2LightweightShader.cpp
   03-Dec-00 Created by Neall

   Copyright (c)2000 Radical Entertainment, Inc.
   All rights reserved.
====================================================================*/

#include <pddi/ps2/shaders/ps2shadowshader.hpp>
#include <pddi/pddishade.hpp>

#include <pddi/ps2/ps2context.hpp>
#include <pddi/ps2/ps2types.hpp>
#include <pddi/ps2/ps2texture.hpp>
#include <pddi/ps2/packet.hpp>


// this function is called by the base shader to allocate
// a new instance of a simple shader

static sceGsPrmode shadowPrmode;
static sceGsAlpha  shadowAlpha;

static pddiBaseShader* ps2ShadowShaderAllocate(pddiRenderContext* c, const char*, const char*)
{
    return new ps2ShadowShader((ps2Context*)c);
}

void ps2ShadowShader::Install()
{
    pddiBaseShader::InstallShader("shadow", ps2ShadowShaderAllocate, NULL);

    *((unsigned*)&shadowPrmode) = 0;
    shadowPrmode.IIP = 0;  // flat shading
    shadowPrmode.TME = 0;  // no texture map
    shadowPrmode.FGE = 0;  // no fog
    shadowPrmode.ABE = 1;  // alpha enable
    shadowPrmode.CTXT = 0; // context 0

    // Cs*0x80 + Cd (additive blend)
    shadowAlpha.A = 0;
    shadowAlpha.B = 2;
    shadowAlpha.C = 2;
    shadowAlpha.D = 1;
    shadowAlpha.FIX = 0x80;
}

// implementation of ps2LightweightShader
ps2ShadowShader::ps2ShadowShader(ps2Context* c) : context(c)
{
    microcode = VU1_SHADOW_VOL;
}

ps2ShadowShader::~ps2ShadowShader()
{
    /* nop */
}

void ps2ShadowShader::Validate(unsigned format)
{
    PDDIASSERT((format & PDDI_V_POSITION) && "PDDI ERROR: ps2ShadowShader:  Invalid vertex format (no positions)");
}

void ps2ShadowShader::Bind(GSContext* gsContext, VifStream& vif)
{
    currentUID = uid;

    gsContext->prmode.reg.prmode = shadowPrmode;
    gsContext->pabe.reg.data  = 0;
    gsContext->alpha.reg.alpha = shadowAlpha;
    gsContext->test.reg.test.ATE = 0; // disable alpha test
    gsContext->test.reg.test.ZTE = 1;
    gsContext->test.reg.test.ZTST = 2;
    
    vif.FlushA_Safe();
    vif.Direct(sizeof(GSContext)/16, gsContext);

    VU_Context* vu = context->GetVUContext();
    if(vu->GetDirty())
    {
        // copy context data to vu1, run vu program to copy data into registers
        vu->SetDirty(false);
        vif.ITop(0);
        vif.UnpackQW(0, sizeof(vu->transform) / 16, &vu->transform);
        vif.MsCal(VU1_LOAD_CONTEXT);
    }
}

