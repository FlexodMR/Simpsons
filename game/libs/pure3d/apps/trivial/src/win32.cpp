//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


/*
 * Pure3D Trivial application Win32 specific code
 *
 * Created 20-Mar-2000 Neall (verheyde@radical.ca)
 *
 */

#include "trivialapp.hpp"
#include "tutorial1.hpp"

// This include file pulls in definitions of all the Pure3D core classes.
#include <p3d/pure3d.hpp>

#include <assert.h>

// This trick culls out a lot of Win32 cruft, making compilation a bit faster
#define WIN32_LEAN_AND_MEAN
#define WIN32_EXTRA_LEAN
#include <windows.h>
// for timeGetTime()
#include <mmsystem.h> 

#include <radplatform.hpp>
#include <radmemory.hpp>
#include <radthread.hpp>
#include <radfile.hpp>
#include <radtime.hpp>
#include <radload/radload.hpp>

//-------------------------------------------------------------------
// This appears in the window title bar
const char ApplicationName[] = "Pure3D Tutorial 1";

// These two values define the resolution of the rendering area
const int WindowSizeX = 640;
const int WindowSizeY = 480;

// The depth of the rendering area.  This value only has an effect
// when Pure3D has taken over the entire display.  When running in
// a window on the desktop, Pure3D uses the same bit depth as the
// desktop.  Pure3D only supports 16, and 32 rendering depths.
const int WindowBPP = 32;

// This specifies the PDDI DLL to use.  Currently, the OpenGL debug
// library is defined.
const char PDDILibraryName[] = "pddidx8d.dll";


//-------------------------------------------------------------------
// Win32 declaration of TrivialApp
class Win32App : public TrivialApp
{
public:
    Win32App(HINSTANCE instance);
    ~Win32App();

    virtual bool Init();
    virtual int Run();

    void EnableRendering(bool enable) { renderingEnabled = enable; }
    Tutorial1* GetRenderer() {return renderer;}

	HWND& GetHWnd() {return hWnd;}

private:
    // Win32 application instance handle
    HINSTANCE hInstance;
    // Win32 application window handle
    HWND hWnd;           
    // Win32 message handler
    static LRESULT CALLBACK WndProc(HWND, UINT, WPARAM, LPARAM);

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
static Win32App* app = NULL;

inline Win32App* GetApplication() { return app; }

// WinMain - Win32 application entry point
// Here, we create the application object, and call it's Run() method.
int PASCAL WinMain(HINSTANCE hInstance, HINSTANCE, LPSTR commandLine, int)
{
	radTimeInitialize();
    radThreadInitialize();
    radMemoryInitialize();

    app = new Win32App(hInstance);
    radPlatformInitialize( app->GetHWnd(), hInstance );
    radFileInitialize();
    radDriveMount( );
	radLoadInitialize();

    app->Init();
    int returnCode = app->Run();
    delete app;
    return returnCode;
}

//-------------------------------------------------------------------
// Win32App implementation
// This is where the Pure3D initialisation, and message loop handing goes
Win32App::Win32App(HINSTANCE hInst)
{
    // Store away application instance handle.
    hInstance = hInst;
    hWnd = NULL;
    platform = NULL;
    context = NULL;
    renderingEnabled = false;
}

Win32App::~Win32App()
{
    renderingEnabled = false;
    delete renderer;
    renderer = NULL;

    if(hWnd)
    {
        DestroyWindow(hWnd);
        hWnd = NULL;
    }

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

bool Win32App::Init()
{
    // Create a window
    const char appName[] = "Pure3D Testbed";

    // Create an application window
    WNDCLASS wndclass;
    wndclass.style = CS_HREDRAW | CS_VREDRAW | CS_OWNDC;
    wndclass.lpfnWndProc = Win32App::WndProc;
    wndclass.cbClsExtra = 0;
    wndclass.cbWndExtra = 0;
    wndclass.hInstance = hInstance;
    wndclass.hIcon = LoadIcon(NULL, IDI_APPLICATION);
    wndclass.hCursor = LoadCursor(NULL, IDC_ARROW);
    wndclass.hbrBackground = (HBRUSH)GetStockObject(DKGRAY_BRUSH);
    wndclass.lpszMenuName= NULL;
    wndclass.lpszClassName = ApplicationName;

    RegisterClass(&wndclass);
    
    RECT clientRect;
    clientRect.left = 0;
    clientRect.top = 0;
    clientRect.right = WindowSizeX;
    clientRect.bottom = WindowSizeY;

    AdjustWindowRect(&clientRect, WS_OVERLAPPEDWINDOW, FALSE);

    hWnd =
        CreateWindow
        (
            ApplicationName,
            ApplicationName,
            WS_OVERLAPPEDWINDOW,
            CW_USEDEFAULT,
            CW_USEDEFAULT,
            clientRect.right-clientRect.left, clientRect.bottom-clientRect.top,
            NULL,
            NULL,
            hInstance,
            NULL
        );

    assert(hWnd);
    ShowWindow(hWnd, SW_SHOW);

    // Initialise Pure3D platform object.
    // This call differs between different platforms.  The Win32 version,
    // for example requires the application instance to be passed in.
    platform = tPlatform::Create(hInstance);
    assert(platform);

    // Initialiase the Pure3D context object.
    // We have to create on of these for every window, and for every PDDI
    // instance we use for rendering.  Since almost every application only
    // uses one window and PDDI library at a time, we one need to create one
    // context.
    tContextInitData init;

    // This is the window we want to render into.
    init.hwnd = hWnd;

    // This application runs in a window.
    // To take over the entire display, choose PDDI_DISPLAY_FULLSCREEN.
    init.displayMode = PDDI_DISPLAY_WINDOW;

    // All applications should supply PDDI_BUFFER_COLOUR.  PDDI_BUFFER_DEPTH
    // specifies that we also want to allocate a Z-buffer.  Some applications
    // may want to also specifiy PDDI_BUFFER_STENCIL to allocate a stencil
    // buffer.
    init.bufferMask = PDDI_BUFFER_COLOUR | PDDI_BUFFER_DEPTH;
    
    // These values only take effect in fullscreen mode.  In windowed mode, the
    // dimensions of the window define the rendering area.  We'll define them
    // anyway for completeness sake.
    init.xsize = WindowSizeX;
    init.ysize = WindowSizeY;

    // Depth of the rendering buffer.  Again, this value only works in
    // fullscreen mode.  In window mode, the depth of the desktop is used.
    // This value should be either 16 or 32.  Depths of 4, 8, and 24 are not
    // supported by most 3D hardware, and not by Pure3D.
    init.bpp = WindowBPP;

    // Forces Pure3D to run on the primary display adaptor.  Set this value to
    // a different number to initialised Pure3D on a secondary video card.
    init.adapterID = 0;

    // This the name of the PDDI we will be using for rendering
    strncpy(init.PDDIlib, PDDILibraryName, 128);

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

// This is your basic Win32 message loop.  PeekMessage() is used instead of
// GetMessage(), so the application can render while there isn't any input
// events.  Ideally, the we should revert to GetMessage() when the
// application loses focus, since using PeekMessage() is like busy-waiting,
// but we don't bother here to keep things simple.  The Win32 multimedia
// timer is used to compute the time between rendering calls.

inline unsigned GetTick()
{
    LARGE_INTEGER tick;
    QueryPerformanceCounter(&tick);
    return tick.LowPart;
}


int Win32App::Run()
{
    bool done = false;
    MSG msg;

    float frequency = 1.0f;
    LARGE_INTEGER freq;
    QueryPerformanceFrequency(&freq);
    frequency = (float)freq.LowPart / 1000.0f;

    unsigned currentTime = GetTick();
    
    while(!done)
    {
        while(PeekMessage(&msg, NULL, 0, 0, PM_REMOVE))
        {
            if(msg.message == WM_QUIT)
            {
                done = true;
                break;
            }
            TranslateMessage(&msg);
            DispatchMessage(&msg);
        }

        unsigned now = GetTick();
        float elapsed = float(now - currentTime) / frequency;
        currentTime = now;

        if(!done && renderingEnabled)
        {
            renderer->Render(elapsed);
        }
    }

    return msg.wParam;
}

//-------------------------------------------------------------------
LRESULT Win32App::WndProc(HWND hwnd, UINT message, WPARAM wParam, LPARAM lParam)
{
    // Under Win32, Pure3D needs to get a crack at the Windows messages so
    // it can detect window moving, resizing, and activation.
    if(GetApplication()->platform)
    {
        p3d::platform->ProcessWindowsMessage(hwnd, message, wParam, lParam);
    }

    switch(message)
    {
        case WM_DESTROY:
            PostQuitMessage(0);
        break;

        // PDDI will sent this message to enable or disable rendering in response to an
        // application level window event.  For example, if the user clicks away from
        // the rendering window, or uses ALT-TAB to select another application, PDDI
        // will tell sent a WM_PDDI_DRAW_ENABLE(0) message.  When the application
        // regains focus, WM_PDDI_DRAW_ENABLE(1) will be sent.
        case WM_PDDI_DRAW_ENABLE:
            GetApplication()->EnableRendering(wParam == 1);
        break;
        default:
            return DefWindowProc(hwnd, message, wParam, lParam);
        break;
    }

    return 0;
}
