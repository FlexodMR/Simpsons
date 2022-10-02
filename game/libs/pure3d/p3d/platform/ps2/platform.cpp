//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


#include <p3d/platform/ps2/platform.hpp>
#include <p3d/platform/ps2/plat_filemap.hpp>
#include <p3d/context.hpp>
#include <p3d/utility.hpp>
#include <constants/version.hpp>

#include <malloc.h>
#include <string.h>
#include <eekernel.h>
#include <stdlib.h>
#include <math.h>

// forces the allocation to be aligned on a cache-line boundary
// so that a cache writeback can't trounce the beginning or end
// of our uncached data
void* malloc_uncached(const int nBytes)
{
    char* ptr = (char*)memalign(64, (nBytes+63) & ~63);
    ptr = (char*)((unsigned)ptr | 0x20000000);
    FlushCache(0);
    return ptr;
}

void free_uncached(void* ptr)
{
    free((char*)((unsigned)ptr & ~0x20000000));
}

//-------------------------------------------------------------------
tContextInitData::tContextInitData()
{
    xsize         = 640;
    pal           = false;
    lockToVsync   = true;
    dtv480        = false;
    pad0 = pad1 = pad2 = 0;
};


static tPlatform globalPlatform;

tPlatform::tPlatform() : context(NULL) 
{ 
}

tPlatform::~tPlatform()                
{ 
}

tPlatform* tPlatform::Create()
{
    p3d::platform = &globalPlatform;
    return &globalPlatform;
}

tContext* tPlatform::CreateContext(tContextInitData* d)
{
    pddiDevice* device = NULL;
    pddiDisplay* display = NULL;

    p3d::printf("Pure3D v%s, released %s\n", ATG_VERSION, ATG_RELEASE_DATE);

    p3d::UsePermanentMem( true );

    int success = pddiCreate(PDDI_VERSION_MAJOR, PDDI_VERSION_MINOR, &device);
    P3DASSERT(success == PDDI_OK);

    tDebug::CapturePDDIMessages(device);

    pddiDisplayMode mode = d->pal ? PDDI_DISPLAY_FULLSCREEN_PAL : PDDI_DISPLAY_FULLSCREEN;
    display = device->NewDisplay(0);
    display->InitDisplay( d );

    pddiRenderContext* pddiContext = device->NewRenderContext(display);
    P3DASSERT(pddiContext != NULL);

    context = new tContext(device, display, pddiContext);
    context->Setup();

    p3d::context = context;
    p3d::inventory = context->GetInventory();
    p3d::stack = context->GetMatrixStack();
    p3d::loadManager = context->GetLoadManager();
    p3d::pddi = context->GetContext();
    p3d::device = context->GetDevice();
    p3d::display = context->GetDisplay();

    p3d::UsePermanentMem( false );
    return context;
}

tFile* tPlatform::OpenFile(const char* filename)
{
    tPS2FileMap* file = new tPS2FileMap(filename);
    if(!file->IsOpen())
    {
        file->Release();
        return NULL;
    }
    return file;
}

tPlatform* tPlatform::GetPlatform(void) 
{ 
    return &globalPlatform; 
}
