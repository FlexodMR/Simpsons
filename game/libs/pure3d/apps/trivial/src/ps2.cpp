//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


/*
 * Pure3D Trivial application Playstation2 specific code
 *
 * Created 20-Mar-2000 Neall (verheyde@radical.ca)
 *
 */

#ifndef __GNUC__
#include <mwutils.h> /* METROWORKS C++ support */ 
#endif 

#include "trivialapp.hpp"
#include "tutorial1.hpp"

// This include file pulls in definitions of all the Pure3D core classes.
#include "p3d/pure3d.hpp"

#include <assert.h>

#include <radmemory.hpp>
#include <radthread.hpp>
#include <radfile.hpp>
#include <radtime.hpp>
#include <radplatform.hpp>
#include <radload/radload.hpp>

//-------------------------------------------------------------------
// PS2App declaration of TrivialApp
class PS2App : public TrivialApp
{
public:
    PS2App();
    virtual ~PS2App();

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
static PS2App* app = NULL;

PS2App::PS2App()
{
    platform = NULL;
    context = NULL;
}

PS2App::~PS2App()
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

bool PS2App::Init()
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
    init.xsize = 640;
    init.pal = false;
    init.lockToVsync = false;


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
int PS2App::Run()
{
    while(1)
    {   
            renderer->Render(16.0f);
    }
    return 0;
}

//-----------------------------------------------------------------------------
// Here, we create the application object, and call it's Run() method.
int main(int argc, char** argv)
{
    #ifndef __GNUC__
    mwInit();    /* METROWORKS C++ - To initialize the C++ runtime */
    #endif 

    radMathInitialize();
    radTimeInitialize();
    radThreadInitialize();
    radMemoryInitialize();
    radPlatformInitialize("\\", IOPMediaHost, GameMediaCD, NULL);
    radFileInitialize();
    radSetDefaultDrive( "HOSTDRIVE:" );
    radDriveMount( );
    radLoadInitialize();

    app = new PS2App();
    app->Init();
    int returnCode = app->Run();
    delete app;

    #ifndef __GNUC__
    mwExit();    /* METROWORKS C++ - Clean up, destroy constructed global objects */
    #endif 

    return returnCode;
}

