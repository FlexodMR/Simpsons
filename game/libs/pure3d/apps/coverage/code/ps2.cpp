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

#include "coverapp.hpp"
#include "configparam.hpp"
#include "controlpad.hpp"

// This include file pulls in definitions of all the Pure3D core classes.
#include <p3d/pure3d.hpp>
#include <assert.h>
#include <eeregs.h>

#include <radmemory.hpp>
#include <radthread.hpp>
#include <radfile.hpp>
#include <radtime.hpp>
#include <raddebugcommunication.hpp>
#include <raddebugwatch.hpp>
#include <radplatform.hpp>
#include <radmath/radmath.hpp>
#include <radload/radload.hpp>


//-------------------------------------------------------------------
// PS2App declaration of TrivialApp
class PS2App
{
public:
    PS2App();
    virtual ~PS2App();

    virtual bool Init();
    virtual int Run();
    virtual void HandlePadMsg(int msg);

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

    ControlPad pad;

    bool displayHelp;
    bool displayMenu;
};

//-------------------------------------------------------------------
// Global application pointer.  We need this in case the WndProc needs to talk
// to the application.
static PS2App* app = NULL;

PS2App::PS2App()
{
    platform = NULL;
    context = NULL;
    displayHelp = false;
    displayMenu = false;
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

    ConfigParam config;
    config.Init( "config.txt", platform );

    // Initialiase the Pure3D context object.
    // We have to create on of these for every window, and for every PDDI
    // instance we use for rendering.  Since almost every application only
    // uses one window and PDDI library at a time, we one need to create one
    // context.
    tContextInitData init;
    init.xsize = 640;        

    // Create the context.
    context = platform->CreateContext(&init);
    assert(context);

    // Assign this context to the platform.
    platform->SetActiveContext(context);

    // Create the CoverApp renderer
    renderer = new CoverApp;
    renderer->Init( config );

    pad.Init();

    return true;
}

// Playstation2 rendering loop
int PS2App::Run()
{
    *T0_MODE = 0x83;  // ps2 timer mode
    *T0_COUNT = 0;
    
    while(1)
    {
        radDbgComService();
        float ms = (float)(*T0_COUNT) / 15.72; // ms
        *T0_COUNT = 0;
        
        HandlePadMsg( pad.GetState() );
        
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
                renderer->Render(ms);
            }
    }
    }
    return 0;
}

// Control pad message handling
void PS2App::HandlePadMsg(int msg)
{
    switch(msg)
    {
        case ControlPad::R1ButtonUp:
            if (!displayMenu) renderer->NextTest();
        break;

        case ControlPad::R2ButtonUp:
            if (!displayMenu) renderer->PrevTest();
        break;

        case ControlPad::L1ButtonDown:
            if (!displayMenu) renderer->Zoom( 1.0f );
        break;

        case ControlPad::L2ButtonDown:
            if (!displayMenu) renderer->Zoom( -1.0f );
        break;

        case ControlPad::LupButtonDown:
            if (!displayMenu) renderer->Rotate( 0.0f, -1.0f );
            if (displayMenu)
            {
                renderer->PrevOption();
            }
        break;

        case ControlPad::LdownButtonDown:
            if (!displayMenu) renderer->Rotate( 0.0f, 1.0f );
            if (displayMenu)
            {
                renderer->NextOption();
            }
        break;

        case ControlPad::LleftButtonDown:
            if (!displayMenu) renderer->Rotate( -1.0f, 0.0f );
        break;

        case ControlPad::LrightButtonDown:
            if (!displayMenu) renderer->Rotate( 1.0f, 0.0f );
        break;

        case ControlPad::RupButtonDown:
            if (!displayMenu) renderer->Pan( 0.0f, -1.0f );
        break;

        case ControlPad::RdownButtonDown:
            if (!displayMenu) renderer->Pan( 0.0f, 1.0f );
            if (displayMenu)
            {
                renderer->SelectOption();
                displayMenu = !displayMenu;
            }
            
        break;

        case ControlPad::RleftButtonDown:
            if (!displayMenu) renderer->Pan( -1.0f, 0.0f );
        break;

        case ControlPad::RrightButtonDown:
            if (!displayMenu) renderer->Pan( 1.0f, 0.0f );
        break;

        case ControlPad::startButtonUp:
        {
            displayMenu = !displayMenu;
/*
            ConfigParam config;
            config.Init( "config.txt", platform );

            renderer->SetOptions( config );
            renderer->Reset();
*/
        }
        break;

        case ControlPad::selectButtonUp:
            displayHelp = !displayHelp;
        break;
    }
}

//-----------------------------------------------------------------------------
// Here, we create the application object, and call it's Run() method.
int main(int argc, char** argv)
{
    #ifndef __GNUC__
          mwInit();    /* METROWORKS C++ - To initialize the C++ runtime */
    #endif

    radMathInitialize();
    radMemoryInitialize();
    radPlatformInitialize("/usr/local/sce/iop/modules/", IOPMediaHost);
    radTimeInitialize();
    radThreadInitialize();
    radFileInitialize();
    radSetDefaultDrive( "HOSTDRIVE:" );
    radDriveMount( );
    radDbgComTargetInitialize( Deci );
    radDbgWatchInitialize_Macro( ( "\\" ) );
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

