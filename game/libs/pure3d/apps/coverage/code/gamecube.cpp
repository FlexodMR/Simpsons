//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


/*
 * Pure3D Trivial application Gamecube PC Emulator specific code
 *
 * Created 8-Feb-2000 Eric Honsch
 *
 */

#include "coverapp.hpp"
#include "configparam.hpp"

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


//-------------------------------------------------------------------
// GameCubePCApp declaration of TrivialApp
class GameCubePCApp
{
public:
    GameCubePCApp();
    virtual ~GameCubePCApp();

    virtual bool Init();
    virtual int Run();
    virtual void HandlePadMsg(int msg, PADStatus *status);

    void EnableRendering(bool enable) { }

private:
    CoverApp* renderer;

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

    PADStatus controllers[PAD_MAX_CONTROLLERS];
    unsigned short prevbuttons[PAD_MAX_CONTROLLERS];

    bool displayHelp;
    bool displayMenu;
};

//-------------------------------------------------------------------
// Global application pointer.  We need this in case the WndProc needs to talk
// to the application.
static GameCubePCApp* app = NULL;

GameCubePCApp::GameCubePCApp()
{
    platform = NULL;
    context = NULL;
    displayHelp = false;
    displayMenu = false;
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

    // Setup the type of controller we have, MUST do this before PADInit
//   PADSetSpec(PAD_SPEC_5);
    PADInit();

    ConfigParam config;
    config.Init( "config.txt", platform );

    // Initialiase the Pure3D context object.
    // We have to create on of these for every window, and for every PDDI
    // instance we use for rendering.  Since almost every application only
    // uses one window and PDDI library at a time, we one need to create one
    // context.
    tContextInitData init;
    init.bufferMask  = PDDI_BUFFER_COLOUR | PDDI_BUFFER_DEPTH | PDDI_BUFFER_STENCIL;
    init.xsize       = 640;
    init.ysize       = 480;
    init.pal         = false;   // true for pal
    init.fieldmode   = false;   // true for interlaced display
    init.aa          = false;   // true for anti-alising, only works if fieldmode && ysize <= 264
    init.progressive = false;   // true for non-interlaced display
    init.lockToVsync = true;

    // Create the context.
    context = platform->CreateContext(&init);
    assert(context);

    // Assign this context to the platform.
    platform->SetActiveContext(context);

    p3d::pddi->EnableStatsOverlay(true);

    // Create the Tutorial1 renderer
    renderer = new CoverApp;
    renderer->Init(config);

    // Turn off some of the warnings spit out by the debug libs
    GXSetVerifyLevel(GX_WARN_MEDIUM);

    return true;
}

// Playstation2 rendering loop
int GameCubePCApp::Run()
{

    //static int frames = 0;
    unsigned lastTime = radTimeGetMicroseconds();
    while(1)
    {
        unsigned currentTime = radTimeGetMicroseconds();
        float frameTime = float(currentTime - lastTime) / 1000.0f;
        lastTime = currentTime;

        prevbuttons[0] = controllers[0].button;
        PADRead(controllers);
        PADClamp(controllers);
        if (controllers[0].err != 0) 
        {
            PADReset(PAD_CHAN0_BIT);
            PADRead(controllers);
            PADClamp(controllers);
            printf("Resetting PAD0\n");
        }
    
    
        int msg = (int)((prevbuttons[0] ^ controllers[0].button) & controllers[0].button);
        HandlePadMsg(msg, &controllers[0]);

        if(displayHelp)
        {
            renderer->DisplayHelp();
        }
        else
        {
            if(displayMenu)
            {
                renderer->DisplayMenu();
            }
            else
            {
                renderer->Render(frameTime); //ms
            }
        }
    }
    return 0;
}

// Control pad message handling
void GameCubePCApp::HandlePadMsg(int msg, PADStatus *status)
{

    float panx = ((float) status->stickX) / 32.0F;
    float pany = ((float) status->stickY) / -32.0F;

    renderer->Pan(panx, pany);

    float rotx = ((float) status->substickX) / 32.0F;
    float roty = ((float) status->substickY) / 32.0F;

    renderer->Rotate(rotx, roty);


    if (msg & PAD_BUTTON_LEFT)  ;

    if (msg & PAD_BUTTON_RIGHT) ;

    if (status->button & PAD_BUTTON_UP)
    {
        if (!displayMenu) renderer->Zoom(1.5F);
        if (displayMenu) renderer->PrevOption();
    }

    if (status->button & PAD_BUTTON_DOWN)
    {
        if (!displayMenu) renderer->Zoom(-1.5F);
        if (displayMenu) renderer->NextOption();
    }

    if (msg & PAD_TRIGGER_Z)
    {
        if (!displayMenu) displayHelp = !displayHelp;
    }

    if (msg & PAD_TRIGGER_R)
    {
        if (!displayMenu) renderer->NextTest();
    }

    if (msg & PAD_TRIGGER_L)
    {
        if (!displayMenu) renderer->PrevTest();
    }

    if (msg & PAD_BUTTON_A)
    {
        if (displayMenu)
        {
            renderer->SelectOption();
            displayMenu = !displayMenu;
        }
    }

    if (msg & PAD_BUTTON_B)     displayMenu = !displayMenu;

    if (msg & PAD_BUTTON_X) ;

    if (msg & PAD_BUTTON_Y) ;

    if (msg & PAD_BUTTON_MENU)
    {
        ConfigParam config;
        config.Init( "config.txt", platform );

        renderer->SetOptions( config );
        renderer->Reset();
    }





/***
    switch(msg)
    {

        case ControlPad::RupButtonDown:
            renderer->Pan( 0.0f, -1.0f );
        break;

        case ControlPad::RdownButtonDown:
            renderer->Pan( 0.0f, 1.0f );
        break;

        case ControlPad::RleftButtonDown:
            renderer->Pan( -1.0f, 0.0f );
        break;

        case ControlPad::RrightButtonDown:
            renderer->Pan( 1.0f, 0.0f );
        break;

        case ControlPad::startButtonUp:
        {
            ConfigParam config;
            config.Init( "config.txt", platform );

            renderer->SetOptions( config );
            renderer->Reset();
        }
        break;

        case ControlPad::selectButtonUp:
            displayHelp = !displayHelp;
        break;
    }
***/
}



void * MemAlloc( size_t size );

//-----------------------------------------------------------------------------
// Here, we create the application object, and call it's Run() method.
static bool gMemInitialized = false;
int main(int argc, char** argv)
{

    OSInit();
    DVDInit();
    VIInit();

#define ONE_MEG (1024 * 1024)


    if(!gMemInitialized)
    {
        radThreadInitialize();
        ::radMemoryInitialize( ONE_MEG * 1, ONE_MEG * 8);
        gMemInitialized = true;
    }
    radTimeInitialize();
    radPlatformInitialize();
    radFileInitialize();
    radDriveMount( );
    radLoadInitialize();

    app = new GameCubePCApp();
    app->Init();
    int returnCode = app->Run();
    delete app;

    return returnCode;
}

void* MemAlloc(size_t size)
{
    if(!gMemInitialized)
    {
        radThreadInitialize();
        ::radMemoryInitialize( ONE_MEG * 1, ONE_MEG * 8);
        gMemInitialized = true;
    }

    return radMemoryAlloc( radMemoryGetCurrentAllocator( ), size );
}

static inline void MemDelete(void* data)
{
    if(!data)
        return;
        
    radMemoryFree( data );
}

extern "C"
{

void *malloc (unsigned int size)
{
     return MemAlloc( size );
}

void free(void *mem)
{
    MemDelete(mem);
}

}

void* operator new(size_t size)
{
     return MemAlloc( size );
}


void operator delete[]( void* data )
{
    MemDelete(data);
}

void operator delete(void* data)
{
    MemDelete(data);
}


