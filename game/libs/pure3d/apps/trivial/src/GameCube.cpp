//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================



/*
 * Pure3D Trivial application, GameCube specific code
 *
 *
 */

#include "trivialapp.hpp"
#include "tutorial1.hpp"

// This include file pulls in definitions of all the Pure3D core classes.
#include <p3d/pure3d.hpp>

#include <assert.h>
#include <dolphin.h>
#include <cstdlib>
#include <pool_alloc.h>

#include <radplatform.hpp>
#include <radmemory.hpp>
#include <radthread.hpp>
#include <radfile.hpp>
#include <radtime.hpp>
#include <radload/radload.hpp>

#define HEAP_ID 0

static BOOL IsHeapInitialized = FALSE;

//-------------------------------------------------------------------
// GameCubePCApp declaration of TrivialApp
class GameCubePCApp : public TrivialApp
{
public:
    GameCubePCApp();
    virtual ~GameCubePCApp();

    virtual bool Init();
    virtual int Run();

    void EnableRendering(bool enable) { }

private:
    Tutorial1* renderer;

    // Pure3D core objects
    
    // Pure3D platform - all platform specific interfaces are in the
    // tPlatform class.  For example, Pure3D initialisation which
    // differs between the PC, PS2 and Linux are found in here.
    tPlatform* platform; 

    // Pure3D context - the context defines a running instance of Pure3D.
    // Each context gets it's own instance of PDDI, a matrix stack, and
    // an inventory.  Rendering and animation objects are associated with
    // a particular context.  Data cannot be shared across contexts.
    // There is generally no need for a game to have more than one 
    // context.
    tContext* context;
};

//-------------------------------------------------------------------
// Global application pointer.  We need this in case the WndProc needs to talk
// to the application.
static GameCubePCApp* app = NULL;

GameCubePCApp::GameCubePCApp()
{
    platform = NULL;
    context = NULL;
}

GameCubePCApp::~GameCubePCApp()
{
    delete renderer;
    renderer = NULL;

    if(context)
    {
        platform->DestroyContext(context);
        context = NULL;
    }
    if(platform)
    {
        tPlatform::Destroy(platform);
    }
}

bool GameCubePCApp::Init()
{

    // Initialise Pure3D platform object.
    // This call differs between different platforms.  The Win32 version,
    // for example requires the application instance to be passed in.
    platform = tPlatform::Create();
    assert(platform);

    // Initialiase the Pure3D context object.
    // We have to create on of these for every window, and for every PDDI
    // instance we use for rendering.  Since almost every application only
    // uses one window and PDDI library at a time, we one need to create one
    // context.
    tContextInitData init;
    init.bufferMask  = PDDI_BUFFER_COLOUR | PDDI_BUFFER_DEPTH;
    init.xsize       = 640;
    init.ysize       = 480;
    init.fieldmode   = false;   // true for interlaced display
    init.aa          = false;   // true for anti-alising, only works if fieldmode && ysize <= 264
    init.progressive = false;   // true for non-interlaced display
    init.pal         = false;   // true for pal

    // Create the context.
    context = platform->CreateContext(&init);
    assert(context);


    // Assign this context to the platform.
    platform->SetActiveContext(context);

    // Create the Tutorial1 renderer
    renderer = new Tutorial1;
    renderer->Init();

    return true;
}

// Playstation2 rendering loop
int GameCubePCApp::Run()
{
    while(1)
    {   
            renderer->Render(16.67);
    }
    return 0;
}

//-----------------------------------------------------------------------------
// Here, we create the application object, and call it's Run() method.
int main(int argc, char** argv)
{
    OSInit();
    DVDInit();
    VIInit();

    radPlatformInitialize();
    radTimeInitialize();
    radThreadInitialize();
    radMemoryInitialize(0,0);
    radFileInitialize();
    radDriveMount( );
    radLoadInitialize();

    app = new GameCubePCApp();
    app->Init();
    int returnCode = app->Run();
    delete app;

    return returnCode;
}

extern "C"
{
void *malloc (unsigned int size)
{
    return OSAllocFromHeap(HEAP_ID, size);
}

void free(void *mem)
{
    OSFreeToHeap(HEAP_ID, mem);
}

}
