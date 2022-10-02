/*
 * Pure3D Trivial application Playstation2 specific code
 *
 * Created 20-Mar-2000 Neall (verheyde@radical.ca)
 *
 */

#include <radthread.hpp>
#include <radplatform.hpp>
#include <radtime.hpp>
#include <radfile.hpp>

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
    // tPlatform class. For example, Pure3D initialisation which
    // differs between the PC, PS2 and Linux are found in here.
    tPlatform* platform;

    // Pure3D context - the context defines a running instance of Pure3D.
    // Each context gets it's own instance of PDDI, a matrix stack, and
    // an inventory.    Rendering and animation objects are associated with
    // a particular context.  Data cannot be shared across contexts.
    // There is generally no need for a game to have more than one
    // context.
    tContext* context;

    ControlPad pad;

    bool displayHelp;
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
    // This call differs between different platforms.   The Win32 version,
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
    /*
    init.bufferMask = PDDI_BUFFER_COLOUR | PDDI_BUFFER_DEPTH;
    init.xsize = 640;
    init.ysize = 448;
    */
    init.bpp = config.GetOptionIntVal("BPP");

    // Create the context.
    context = platform->CreateContext(&init);
    assert(context);

    // Assign this context to the platform.
    platform->SetActiveContext(context);

    // Create the CoverApp renderer
    renderer = new CoverApp;
    renderer->Init( config );

    pad.Init();

    renderer->InitBenchmarks("benchmark.cfg", platform);

    return true;
}

// Playstation2 rendering loop
int PS2App::Run()
{
    unsigned last_ms = radTimeGetMilliseconds();
    while(1)
    {
        unsigned ms = radTimeGetMilliseconds();
        
        HandlePadMsg( pad.GetState() );
        
        if(displayHelp)
        {
            renderer->DisplayHelp();
        }
        else
        {
            renderer->Render((float)(ms - last_ms) / 1000.0f);
        }

        last_ms = ms;
    }
    return 0;
}

// Control pad message handling
void PS2App::HandlePadMsg(int msg)
{
    switch(msg)
    {
        case ControlPad::R1ButtonUp:
            renderer->NextTest();
        break;

        case ControlPad::R2ButtonDown:
            renderer->Zoom( 1.0f );
        break;

        case ControlPad::L1ButtonUp:
            renderer->PrevTest();
        break;

        case ControlPad::L2ButtonDown:
            renderer->Zoom( -1.0f );
        break;

        case ControlPad::LupButtonDown:
            renderer->Rotate( 0.0f, 1.0f );
        break;

        case ControlPad::LdownButtonDown:
            renderer->Rotate( 0.0f, -1.0f );
        break;

        case ControlPad::LleftButtonDown:
            renderer->Rotate( 1.0f, 0.0f );
        break;

        case ControlPad::LrightButtonDown:
            renderer->Rotate( -1.0f, 0.0f );
        break;

        case ControlPad::RupButtonDown:
            renderer->Pan( 0.0f, 1.0f );
        break;

        case ControlPad::RdownButtonDown:
            renderer->Pan( 0.0f, -1.0f );
        break;

        case ControlPad::RleftButtonDown:
            renderer->Pan( 1.0f, 0.0f );
        break;

        case ControlPad::RrightButtonDown:
            renderer->Pan( -1.0f, 0.0f );
        break;

        case ControlPad::startButtonUp:
        {
            /*
            //this is the old start button functionality. it's still here incase you need it.
            ConfigParam config;
            config.Init( "config.txt", platform );

            renderer->SetOptions( config );
            renderer->Reset();
            */

            //GetApplication()->GetRenderer()->DoTimeTests(0.033f, 4.0f);
            renderer->DoTimeTests(0.033f, 4.0f);
        }
        break;

        case ControlPad::selectButtonUp:
            //displayHelp = !displayHelp;

            renderer->NextObjectType();
        break;
    }
}

//-----------------------------------------------------------------------------
// Here, we create the application object, and call it's Run() method.
int main(int argc, char** argv)
{
    #ifndef __GNUC__
          mwInit();     /* METROWORKS C++ - To initialize the C++ runtime */
    #endif

    radThreadInitialize();
    radMemoryInitialize();
    radPlatformInitialize("\\usr\\local\\sce\\iop\\modules\\", IOPMediaHost);
    radTimeInitialize();
    radFileInitialize(10, 10, RADMEMORY_ALLOC_DEFAULT);

    app = new PS2App();
    app->Init();
    int returnCode = app->Run();
    delete app;

    radFileTerminate();
    radTimeTerminate();
    radPlatformTerminate();
    radMemoryTerminate();
    radThreadTerminate();

    #ifndef __GNUC__
          mwExit();     /* METROWORKS C++ - Clean up, destroy constructed global objects */
    #endif


    return returnCode;
}
