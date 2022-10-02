//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


#include <p3d/platform/xbox/platform.hpp>
#include <p3d/platform/xbox/plat_filemap.hpp>
#include <p3d/utility.hpp>
#include <constants/version.hpp>

#include <xtl.h>

tContextInitData::tContextInitData()
{
    xsize          = 640;
    ysize          = 480;
    bpp            = 32;
    nColourBuffer  = 2;
    bufferMask     = PDDI_BUFFER_COLOUR | PDDI_BUFFER_DEPTH;
    antiAlias      = NONE;
    preFilter      = DEFAULT;
};

tPlatform* tPlatform::currentPlatform = NULL;


tPlatform::tPlatform()
{
    currentContext = NULL;
}

tPlatform::~tPlatform()
{
}

tPlatform* tPlatform::Create()
{
    p3d::UsePermanentMem( true );
    if(!currentPlatform)
    {
        currentPlatform = new tPlatform();
        p3d::platform = currentPlatform;
    }

    p3d::UsePermanentMem( false );
    return currentPlatform;
}

void tPlatform::Destroy(tPlatform* plat)
{
    P3DASSERT(plat == currentPlatform);
    delete currentPlatform;
    currentPlatform = NULL;
}

tContext* tPlatform::CreateContext(tContextInitData* d)
{
    pddiDevice* device;
    pddiDisplay* display;
    pddiRenderContext* context;

    P3DASSERT(!currentContext);

    p3d::printf("Pure3D v%s, released %s\n", ATG_VERSION, ATG_RELEASE_DATE);

    p3d::UsePermanentMem( true );

    int success = pddiCreate(PDDI_VERSION_MAJOR, PDDI_VERSION_MINOR, &device);
    if(success != PDDI_OK)
    {
        if(success == PDDI_VERSION_ERROR)
        {
            P3DVERIFY(0, "Cannot initialize PDDI library due to an incorrect version");
        }
        else
        {
            P3DVERIFY(0, "Cannot initialize PDDI library, unknown error.");
        }
    }

    tDebug::CapturePDDIMessages(device);

    display = device->NewDisplay(0);
    display->InitDisplay( d );

    // build pddiRenderContext
    context = device->NewRenderContext(display);
    P3DVERIFY(context != NULL, "NewRenderContext() failed");

    pddiLibInfo libInfo;
    device->GetLibraryInfo(&libInfo);

    p3d::printf("tContext created: PDDI v%d.%d (build %d), '%s'\n", 
        libInfo.versionMajor, 
        libInfo.versionMinor, 
        libInfo.versionBuild, 
        libInfo.description);

    currentContext = new tContext(device,display,context);
    currentContext ->Setup();

    p3d::UsePermanentMem( false );

    SetActiveContext(currentContext);
    return currentContext;
}

void tPlatform::DestroyContext(tContext* context)
{
    context->Shutdown();
    delete context;
    currentContext = NULL;
}
    
void tPlatform::SetActiveContext(tContext* context)
{
    
    P3DASSERT( context );
    currentContext = context;
    p3d::context = context;
    p3d::inventory = context->GetInventory();
    p3d::stack = context->GetMatrixStack();
    p3d::loadManager = context->GetLoadManager();
    p3d::pddi = context->GetContext();
    p3d::device = context->GetDevice();
    p3d::display = context->GetDisplay();
}

tFile* tPlatform::OpenFile(const char* filename)
{
#if 1
    tWin32FileAsync* file = new tWin32FileAsync(filename);
#else
    tWin32FileMap* file = new tWin32FileMap(filename);
#endif

    if(!file->IsOpen())
    {
        file->Release();
        return NULL;
    }
    return file;
}

P3D_U64 tPlatform::GetTimeFreq(void)
{
    LARGE_INTEGER frequency;
    QueryPerformanceFrequency(&frequency);
    return frequency.QuadPart;
}

P3D_U64 tPlatform::GetTime(void)
{
    LARGE_INTEGER currentTime;
    QueryPerformanceCounter(&currentTime);
    return currentTime.QuadPart;
}


tPlatform* tPlatform::GetPlatform(void) 
{ 
    return currentPlatform; 
}

 
