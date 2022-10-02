/*===========================================================================
   ps2device.cpp
   22-Nov-99 Created by Gabriel

   Copyright (c)1999, 2000, 20001 Radical Entertainment Ltd.
   All rights reserved.
===========================================================================*/

#include <pddi/pddi.hpp>
#include <pddi/base/baseshader.hpp>
#include <pddi/ps2/ps2device.hpp>
#include <pddi/ps2/ps2display.hpp>
#include <pddi/ps2/ps2context.hpp>
#include <pddi/ps2/ps2prim.hpp>
#include <pddi/ps2/ps2texture.hpp>
#include <pddi/ps2/shaders/ps2simpleshader.hpp>
#include <pddi/ps2/shaders/ps2lightmapshader.hpp>
#include <pddi/ps2/shaders/ps2layeredshader.hpp>
#include <pddi/ps2/shaders/ps2refractionshader.hpp>
#include <pddi/ps2/shaders/ps2lightweightshader.hpp>
#include <pddi/ps2/shaders/ps2toonshader.hpp>
#include <pddi/ps2/shaders/ps2reflectionshader.hpp>
#include <pddi/ps2/shaders/ps2errorshader.hpp>
#include <pddi/ps2/shaders/ps2shadowshader.hpp>

#define PDDI_VERSION_BUILD  (4)

static ps2Device gblDevice;

int pddiCreate(int versionMajor, int versionMinor, pddiDevice** device)
{
   if((versionMajor != PDDI_VERSION_MAJOR) || (versionMinor != PDDI_VERSION_MINOR))
   {
      *device = NULL;
      return PDDI_VERSION_ERROR;
   }

   *device = &gblDevice;
   return PDDI_OK;
}

ps2Device::ps2Device() : context(NULL)
{
    //
}

ps2Device::~ps2Device()
{
    if(context)
        context->Release();
}

void ps2Device::GetLibraryInfo(pddiLibInfo* info)
{
    info->libID = PDDI_LIBID_PS2;
    info->versionMajor = PDDI_VERSION_MAJOR;
    info->versionMinor = PDDI_VERSION_MINOR;
    info->versionBuild = PDDI_VERSION_BUILD;
}

void ps2Device::SetCurrentContext(pddiRenderContext* newContext)
{
    newContext->AddRef();
    if(context)
    {
        context->Release();
    }
    context = newContext;
}

pddiDisplay* ps2Device::NewDisplay(int /*id*/)
{
    return new ps2Display;
}

pddiRenderContext* ps2Device::NewRenderContext(pddiDisplay* display)
{
    ps2Context* context = new ps2Context(display, this);

    // install the built-in shaders
    ps2SimpleShader::Install();  // always install this one first!
    ps2SimpleShader::SetContext(context);
    ps2ErrorShader::Install();
    ps2RefractionShader::Install();
    ps2ReflectionShader::Install();
    ps2LightweightShader::Install();
    ps2LightweightShader::SetContext(context);

    // July21 amb - H&R doesnt use these shaders
    //ps2LightmapShader::Install();
    //ps2LightmapShader::SetContext(context);
    //ps2LayeredShader::Install();
    //ps2ToonShader::Install();
    //ps2ShadowShader::Install();

    return context;
}

pddiTexture* ps2Device::NewTexture(pddiTextureDesc* desc)
{
    ps2Texture* tex = new ps2Texture((ps2Context*)context);
    if(!tex->Create(desc->GetSizeX(), desc->GetSizeY(), desc->GetBitDepth(), 
                   desc->GetAlphaDepth(), desc->GetMipMapCount(),desc->GetType(),desc->GetUsage()))
    {
        lastError = tex->GetLastError();
        delete tex;
        return NULL;
    }
    return tex;
}

pddiShader* ps2Device::NewShader(const char* name, const char* aux)
{
    return pddiBaseShader::AllocateShader(context, name, NULL);
}

pddiPrimBuffer* ps2Device::NewPrimBuffer(pddiPrimBufferDesc* desc)
{
    ps2PrimBuffer* buffer = new ps2PrimBuffer((ps2Context*)context, desc);
    return buffer;
}
