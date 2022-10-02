//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


/*
 * Pure3D Trivial application xbox specific code
 *
 * Created 9-Jan-2001 Nigel (nbrooke@radical.ca)
 *
 */

#include "trivialapp.hpp"
#include "tutorial1.hpp"

// This include file pulls in definitions of all the Pure3D core classes.
#include <p3d\pure3d.hpp>

#include <assert.h>

#include <xtl.h>

#include <radmemory.hpp>
#include <radthread.hpp>
#include <radfile.hpp>
#include <radtime.hpp>

//-------------------------------------------------------------------
// XBox declaration of TrivialApp
class XboxApp : public TrivialApp
{
public:
    XboxApp(HINSTANCE instance);
    ~XboxApp();

    virtual bool Init();
    virtual int Run();

    void EnableRendering(bool enable) { renderingEnabled = enable; }
    Tutorial1* GetRenderer() {return renderer;}

private:
    // Win32 application instance handle
    HINSTANCE hInstance;

    // To keep the system from bogging, rendering is disabled when
    // the application loses focus.
    bool renderingEnabled;
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
static XboxApp* app = NULL;

inline XboxApp* GetApplication() { return app; }

void main(void)
{
    radTimeInitialize();
    radThreadInitialize();
    radMemoryInitialize();
    radFileInitialize();
    radDriveMount( );
    radLoadInitialize();

    app = new XboxApp(NULL);
    app->Init();
    int returnCode = app->Run();
    delete app;
}

//-------------------------------------------------------------------
// XboxApp implementation
// This is where the Pure3D initialisation, and message loop handing goes
XboxApp::XboxApp(HINSTANCE hInst)
{
    // Store away application instance handle.
    hInstance = hInst;
    platform = NULL;
    context = NULL;
    renderingEnabled = false;
}

XboxApp::~XboxApp()
{
    renderingEnabled = false;
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

bool XboxApp::Init()
{
    // Create a window
    const char appName[] = "Pure3D Testbed";

    // Initialise Pure3D platform object.
    // This call differs between different platforms.  The Win32 version,
    // for example requires the application instance to be passed in.
//   platform = tPlatform::Create(hInstance);
    platform = tPlatform::Create();
    assert(platform);

    // Initialiase the Pure3D context object.
    // We have to create on of these for every window, and for every PDDI
    // instance we use for rendering.  Since almost every application only
    // uses one window and PDDI library at a time, we one need to create one
    // context.
    tContextInitData init;

    // All applications should supply PDDI_BUFFER_COLOUR.  PDDI_BUFFER_DEPTH
    // specifies that we also want to allocate a Z-buffer.  Some applications
    // may want to also specifiy PDDI_BUFFER_STENCIL to allocate a stencil
    // buffer.
    init.bufferMask = PDDI_BUFFER_COLOUR | PDDI_BUFFER_DEPTH;
    
    // These values define the resolution of the rendering area
    init.xsize = 640;
    init.ysize = 480;

    // Depth of the rendering buffer.  
    // This value should be either 16 or 32.  Depths of 4, 8, and 24 are not
    // supported by most 3D hardware, and not by Pure3D.
    init.bpp = 32;

    // Create the context.
    context = platform->CreateContext(&init);
    assert(context);

    // Assign this context to the platform.
    platform->SetActiveContext(context);

    // Create the Tutorial1 renderer
    renderer = new Tutorial1;
    renderer->Init();
    renderingEnabled = true;

    return true;
}

// This is your basic main loop.
int XboxApp::Run()
{
    bool done = false;

    float currentTime = (float)timeGetTime();
    float elapsed = 0.0f;

    while(!done) // never going to go true on a console
    {
        float now = (float)timeGetTime(); 
        elapsed = now-currentTime;
        currentTime = now;

        if(!done && renderingEnabled)
        {
            renderer->Render(elapsed);
        }
    }

    return 0;
}


