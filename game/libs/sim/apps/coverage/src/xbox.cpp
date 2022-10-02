/*
 * Pure3D Trivial application xbox specific code
 *
 * Created 9-Jan-2001 Nigel (nbrooke@radical.ca)
 *
 */

#include <radthread.hpp>
#include <radplatform.hpp>
#include <radtime.hpp>
#include <radfile.hpp>

#include "coverapp.hpp"

// This include file pulls in definitions of all the Pure3D core classes.
#include <p3d\pure3d.hpp>

#include <assert.h>

#include <xtl.h>


//-------------------------------------------------------------------
// XBox declaration of TrivialApp
class XboxApp 
{
public:
    XboxApp(HINSTANCE instance);
    ~XboxApp();

    virtual bool Init();
    virtual int Run();

    void EnableRendering(bool enable) { renderingEnabled = enable; }
    CoverApp* GetRenderer() {return renderer;}

private:
    // Win32 application instance handle
    HINSTANCE hInstance;

    // To keep the system from bogging, rendering is disabled when
    // the application loses focus.
    bool renderingEnabled;
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

    HANDLE gamepadDevices[16];
    unsigned short buttons;
};

//-------------------------------------------------------------------
// Global application pointer.  We need this in case the WndProc needs to talk
// to the application.
static XboxApp* app = NULL;

inline XboxApp* GetApplication() { return app; }

void main(void)
{
    radThreadInitialize();
    radMemoryInitialize();
    radPlatformInitialize();
    radTimeInitialize();
    radFileInitialize(10, 10, RADMEMORY_ALLOC_DEFAULT);

    app = new XboxApp(NULL);
    app->Init();
    int returnCode = app->Run();

    radFileTerminate();
    radTimeTerminate();
    radPlatformTerminate();
    radMemoryTerminate();
    radThreadTerminate();

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

    // Get a mask of all currently available devices
    XInitDevices(0,NULL);
    DWORD dwDeviceMask = XGetDevices( XDEVICE_TYPE_GAMEPAD );
    for( DWORD i=0; i < XGetPortCount(); i++ )
    {
      if( dwDeviceMask & (1<<i) ) 
      {
            // Get a handle to the device
            gamepadDevices[i] = XInputOpen( XDEVICE_TYPE_GAMEPAD, i, 
                                                            XDEVICE_NO_SLOT, NULL );
      }
      else
      {
          gamepadDevices[i] = NULL;
      }
    }

    buttons = 0;
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
    // This call differs between different platforms.   The Win32 version,
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
    // This value should be either 16 or 32.    Depths of 4, 8, and 24 are not
    // supported by most 3D hardware, and not by Pure3D.
    init.bpp = 32;

    // Create the context.
    context = platform->CreateContext(&init);
    assert(context);

    // Assign this context to the platform.
    platform->SetActiveContext(context);

    ConfigParam config;
    config.Init( "config.txt", platform );

    renderer = new CoverApp;
    renderer->Init(config);
    renderingEnabled = true;

    renderer->InitBenchmarks("benchmark.cfg", platform);

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

         // Loop through all gamepads
        unsigned short newButtons = 0;

        DWORD dwDeviceMask = XGetDevices( XDEVICE_TYPE_GAMEPAD );
        for( DWORD i=0; i < XGetPortCount(); i++ )
        {
          if( (dwDeviceMask & (1<<i)) && !gamepadDevices[i] ) 
          {
                // Get a handle to the device
                gamepadDevices[i] = XInputOpen( XDEVICE_TYPE_GAMEPAD, i, 
                                                                XDEVICE_NO_SLOT, NULL );
                int rc = GetLastError();
          }
        }

        for( DWORD i=0; i < XGetPortCount(); i++ )
        {
          // If we have a valid device, poll it's state and track button changes
          if( gamepadDevices[i] )
          {
                // Read the input state
                XINPUT_STATE xiState;
                XInputGetState( gamepadDevices[i], &xiState );

                if((xiState.Gamepad.sThumbLX < 5000) && (xiState.Gamepad.sThumbLX > -5000))
                    xiState.Gamepad.sThumbLX = 0;

                if((xiState.Gamepad.sThumbLY < 5000) && (xiState.Gamepad.sThumbLY > -5000))
                    xiState.Gamepad.sThumbLY = 0;

                if((xiState.Gamepad.sThumbRX < 5000) && (xiState.Gamepad.sThumbRX > -5000))
                    xiState.Gamepad.sThumbRX = 0;

                if((xiState.Gamepad.sThumbRY < 5000) && (xiState.Gamepad.sThumbRY > -5000))
                    xiState.Gamepad.sThumbRY = 0;

                renderer->Rotate( float(xiState.Gamepad.sThumbLX) / 65536.0f, float(xiState.Gamepad.sThumbLY) / 65536.0f );
                renderer->Pan( -(float(xiState.Gamepad.sThumbRX) / 65536.0f), float(xiState.Gamepad.sThumbRY) / 65536.0f );
                renderer->Zoom( float(xiState.Gamepad.bAnalogButtons[2] -  xiState.Gamepad.bAnalogButtons[0]) / 128.0f );

                // Copy gamepad to local structure
                newButtons |= xiState.Gamepad.wButtons;

                if(xiState.Gamepad.bAnalogButtons[XINPUT_GAMEPAD_B])
                    newButtons |= 0x100;

                if(xiState.Gamepad.bAnalogButtons[XINPUT_GAMEPAD_LEFT_TRIGGER])
                    newButtons |= 0x400;

                if(xiState.Gamepad.bAnalogButtons[XINPUT_GAMEPAD_RIGHT_TRIGGER])
                    newButtons |= 0x800;
          }
        }
        /*
        renderer->Zoom( float zm )
        renderer->Rotate( float x, float y )
        renderer->Pan( float x, float y )
        renderer->Reset()
        */

        if((newButtons == XINPUT_GAMEPAD_START) && ((buttons == 0))) {
            renderer->DoTimeTests(0.033f, 4.0f);
        }

        if((newButtons == XINPUT_GAMEPAD_BACK) && ((buttons == 0))) {
            renderer->NextObjectType();
        }

        if((newButtons == 0x400) && (buttons == 0))
        {
            renderer->PrevTest();
        }

        if((newButtons == 0x800) && (buttons == 0))
        {
            renderer->NextTest();
        }

        if((newButtons == 0x100) && (buttons == 0))
        {
            renderer->Reset();
        }

        buttons = newButtons;
    }

    return 0;
}


