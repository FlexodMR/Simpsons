//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


#include <pddi/gamecube/gcdev.hpp>
#include <pddi/gamecube/gccon.hpp>
#include <pddi/gamecube/gctex.hpp>
#include <pddi/gamecube/gcPrimBuffer.hpp>
#include <pddi/gamecube/gcMemImagePrimBuffer.hpp>
#include <pddi/gamecube/gcmiskin.hpp>
#include <pddi/gamecube/gcskin.hpp>
#include <pddi/gamecube/simpleshader.hpp>
#include <pddi/gamecube/shadowshader.hpp>
#include <pddi/gamecube/gcLightMapShader.hpp>
#include <pddi/gamecube/gcErrorShader.hpp>
#include <pddi/gamecube/gcBumpMapShader.hpp>
#include <pddi/gamecube/gcEnvironmentShader.hpp>
#include <pddi/gamecube/gcBoardReflShader.hpp>
#include <pddi/gamecube/gcLayeredShader.hpp>
#include <pddi/gamecube/gclayeredlmapshader.hpp>
#include <pddi/gamecube/gcfbeffectsshader.hpp>
#include <pddi/gamecube/gcToonShader.hpp>
#include <pddi/gamecube/gcrefractionShader.hpp>
#include <pddi/gamecube/gcdisplay.hpp>

#include <stdio.h>
#include <string.h>
#include <stdlib.h>

#define PDDI_GC_BUILD 1

static gcDevice gblDevice;

char libName [] = "GameCube";

//--------------------------------------------------------------
int pddiCreate(int versionMajor, int versionMinor, pddiDevice **device)
{
    if ((versionMajor != PDDI_VERSION_MAJOR) || (versionMinor != PDDI_VERSION_MINOR))
    {
        *device = NULL;
        return PDDI_VERSION_ERROR;
    }

    *device = &gblDevice;
    return PDDI_OK;
}

//--------------------------------------------------------------
gcDevice::gcDevice() 
{
    mCurrentContext = NULL;

    gcErrorShader::Install();
    SimpleShader::Install();
    ShadowShader::Install();
    gcLightMapShader::Install();
    gcBumpMapShader::Install();
    gcEnvironmentShader::Install();
    gcBoardReflShader::Install();
    gcLayeredShader::Install();
    gcLayeredLMapShader::Install();
    gcFBEffectsShader::Install();
    RefractionShader::Install();
    gcToonShader::Install();
}

//--------------------------------------------------------------
gcDevice::~gcDevice()
{
    mCurrentContext = NULL;
}

//--------------------------------------------------------------
void gcDevice::GetLibraryInfo(pddiLibInfo *info)
{
    info->versionMajor = PDDI_VERSION_MAJOR;
    info->versionMinor = PDDI_VERSION_MINOR;
    info->versionBuild = PDDI_GC_BUILD;
    info->libID = PDDI_LIBID_GAMECUBE;
}

//--------------------------------------------------------------
unsigned gcDevice::GetCaps(void)
{
    return 0;
}

//--------------------------------------------------------------
const char* gcDevice::GetDeviceDescription(void)
{
    return libName;
}



//--------------------------------------------------------------
void gcDevice::SetCurrentContext(pddiRenderContext *context)
{
    mCurrentContext = (gcContext *) context;
}


//--------------------------------------------------------------
pddiRenderContext *gcDevice::GetCurrentContext(void)
{
    return mCurrentContext;
}


//--------------------------------------------------------------
pddiDisplay *gcDevice::NewDisplay(int id)
{

    PDDIASSERT(id < 1);
    gcDisplay *display = new gcDisplay;

    if (display->GetLastError() != PDDI_OK)
    {
        delete display;
        return NULL;
    }

    return (pddiDisplay *)display;
}
//--------------------------------------------------------------
pddiRenderContext *gcDevice::NewRenderContext(pddiDisplay *display)
{
    gcContext *context = new gcContext(this, (gcDisplay *)display);

    if (context->GetLastError() != PDDI_OK)
    {
        delete context;
        return NULL;
    }

    mCurrentContext = context;
    return context;
}

//--------------------------------------------------------------
pddiTexture* gcDevice::NewTexture(pddiTextureDesc* desc)
{
    PDDIASSERT(mCurrentContext != NULL);
    gcTexture *tex = new gcTexture(mCurrentContext);
    if(!tex->Create(desc->GetSizeX(), desc->GetSizeY(), desc->GetBitDepth(), 
                   desc->GetAlphaDepth(), desc->GetMipMapCount(),desc->GetType(),desc->GetUsage()))
    {
        lastError = tex->GetLastError();
        delete tex;
        return NULL;
    }
    return tex;
}

//--------------------------------------------------------------
pddiShader *gcDevice::NewShader(const char *name, const char *aux)
{ 
    return pddiBaseShader::AllocateShader(mCurrentContext, name, NULL);
}

//--------------------------------------------------------------
pddiPrimBuffer *gcDevice::NewPrimBuffer(pddiPrimBufferDesc *desc)
{ 
    PDDIASSERT(mCurrentContext != NULL);

    // Is this a skin?
    if (desc->GetVertexFormat() & PDDI_V_INDICES)
    {
        if (desc->GetMemoryImaged())
        {
            return new gcMISkinBuffer;
        }
        gcSkinBuffer *sb = new gcSkinBuffer;
        if (sb != NULL) sb->Create(desc);
        return sb;
    }
    else
    {

        // is this a memory imaged prim buffer?
        if (desc->GetMemoryImaged())
        {
            return new gcMemImagePrimBuffer(mCurrentContext);
        }

        // This a normal prim buffer
        gcPrimBuffer *buffer = new gcPrimBuffer(mCurrentContext);
        if (buffer != NULL) buffer->Create(desc);
    
        return buffer;
    }

    return NULL;
}

//--------------------------------------------------------------
void gcDevice::AddCustomShader(const char* name, const char* aux)
{
}

//--------------------------------------------------------------
void gcDevice::Release(void)
{
}

