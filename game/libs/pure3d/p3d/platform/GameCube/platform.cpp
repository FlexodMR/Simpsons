//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


#include <p3d/platform/GameCube/platform.hpp>
#include <p3d/platform/GameCube/plat_filemap.hpp>
#include <p3d/utility.hpp>
#include <constants/version.hpp>

#include <stdio.h>
#include <stdlib.h>
#include <time.h>

#include "dolphin.h"
#include "dolphin/dvd.h"

tContextInitData::tContextInitData()
{
   bufferMask  = PDDI_BUFFER_COLOUR | PDDI_BUFFER_DEPTH;
   xsize       = 640;
   ysize       = 480;
   pal         = false;   // true for pal
   fieldmode   = false;   // true for interlaced display
   aa          = false;   // true for anti-alising, only works if fieldmode && ysize <= 264
   progressive = false;   // true for non-interlaced display
   lockToVsync = false;
};



static tPlatform *gGlobalPlatform = NULL;

tPlatform* tPlatform::Create(void)
{
    p3d::UsePermanentMem( true );

    if (gGlobalPlatform == NULL) gGlobalPlatform = new tPlatform;

    p3d::UsePermanentMem( false );

    p3d::platform = gGlobalPlatform;
    return gGlobalPlatform;
}


tPlatform::tPlatform(void) : mContext(NULL) 
{
    OSInit();
    DVDInit();
    PADInit();
}

tContext *tPlatform::CreateContext(tContextInitData *d)
{
    pddiDevice  *device  = NULL;
    pddiDisplay *display = NULL;

    p3d::printf("Pure3D v%s, released %s\n", ATG_VERSION, ATG_RELEASE_DATE);

    p3d::UsePermanentMem( true );

    int success = pddiCreate(PDDI_VERSION_MAJOR, PDDI_VERSION_MINOR, &device);
    //P3DASSERT(success == PDDI_OK);

    tDebug::CapturePDDIMessages(device);

    display = device->NewDisplay(0);
    display->InitDisplay(d);

    pddiRenderContext *pddiContext = device->NewRenderContext(display);
    //P3DASSERT(pddiContext != NULL);

    mContext = new tContext(device, display, pddiContext);
    mContext->Setup();

    p3d::context = mContext;
    p3d::inventory = mContext->GetInventory();
    p3d::stack = mContext->GetMatrixStack();
    p3d::loadManager = mContext->GetLoadManager();
    p3d::pddi = mContext->GetContext();
    p3d::device = mContext->GetDevice();
    p3d::display = mContext->GetDisplay();

    p3d::UsePermanentMem( false );

    return mContext;
}

void tPlatform::DestroyContext( tContext * c)
{
    P3DASSERT( c != NULL );
    P3DASSERT( mContext == c );

    mContext = NULL;
    p3d::context = NULL;
    p3d::inventory = NULL;
    p3d::stack = NULL;
    p3d::loadManager = NULL;
    p3d::pddi = NULL;
    p3d::device = NULL;
    p3d::display = NULL;
    delete c;
}

tPlatform *tPlatform::GetPlatform(void) 
{ 
    return gGlobalPlatform; 
}


tFile *tPlatform::OpenFile(const char *filename)
{
    tGCFileMap* file = new tGCFileMap(filename);

    if (!file->IsOpen())
    {
        file->Release();
        return NULL;
    }
    return file;
}





