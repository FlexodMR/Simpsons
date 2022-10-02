/*====================================================================
   ps2layeredshader.cpp
   27-Aug-01 Created by Neall

   Copyright (c)2001 Radical Entertainment Ltd.
   All rights reserved.
====================================================================*/

#include <pddi/ps2/shaders/ps2layeredshader.hpp>

// this function is called by the base shader to allocate
// a new instance of a simple shader
static pddiBaseShader* ps2LayeredShaderAllocate(pddiRenderContext* c, const char*, const char*)
{
    return new ps2LayeredShader((ps2Context*)c);
}

// the device will call this function to register the simple shader
// with the system
void ps2LayeredShader::Install()
{
    pddiBaseShader::InstallShader("layered", ps2LayeredShaderAllocate, NULL);
}

ps2LayeredShader::ps2LayeredShader(ps2Context* c) : ps2LightmapShader(c)
{
    /* */
}

void ps2LayeredShader::SetTopTex(pddiTexture* texture)
{
    ps2LightmapShader::SetTexture(texture,1);
}
