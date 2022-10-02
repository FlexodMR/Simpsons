//=============================================================================
// Copyright (C) 2001 Radical Entertainment Ltd.  All Rights Reserved
//
// Component   : Scrooby
//
// Description : The win32 specific pure3d initialization stuff.  None of the
//               initialization in here is specific to scrooby.
//
// Author(s)   : Mike Perzel
//
//=============================================================================

//=============================================================================
// Includes
//=============================================================================

#define WIN32_LEAN_AND_MEAN
#define WIN32_EXTRA_LEAN
#include <windows.h>
#include <assert.h>

#include <p3d/pure3d.hpp>
#include <p3d/fileftt.hpp>

#include <radplatform.hpp>
#include <radfile.hpp>
#include <radtime.hpp>
#include <radthread.hpp>
#include <raddebugcommunication.hpp>

#include "viewer.h"

//=============================================================================
// Constants, Typedefs, and Macro Definitions
//=============================================================================
// Screen Resolution
const int g_WindowSizeX = 640;
const int g_WindowSizeY = 480;
// Colour Depth
const int g_WindowBPP = 32;
// Window / Application title
const char* g_ApplicationName = "Scrooby Viewer";
// specifies which p3d dll to use under windows.

#ifdef RAD_DEBUG
const char* g_PDDILibraryName = "pddidx8d.dll";
#elif defined( RAD_TUNE )
const char* g_PDDILibraryName = "pddidx8t.dll";
#else
const char* g_PDDILibraryName = "pddidx8r.dll";
#endif


//=============================================================================
// Interface Definitions
//=============================================================================

class ViewerApp
//=============================================================================
// Description : A class to encapsulate all the win32 functionality
//
// Constraints : used only by the OS
//=============================================================================
{
public:
    ViewerApp( HINSTANCE instance );
    ~ViewerApp();
    
    void EnableRendering(bool enable) { renderingEnabled = enable; }
    virtual bool Init();
    virtual int Run();
    void Load( const char* projectName ) { m_pViewer->Load( projectName ); };
    
protected:
    // Win32 application instance handle
    HINSTANCE hInstance;
    // Win32 application window handle
    HWND hWnd;           
    // Win32 message handler
    static LRESULT CALLBACK WndProc(HWND, UINT, WPARAM, LPARAM);
    
    tPlatform* m_pPlatform; 
    tContext* m_pContext;
    
    Viewer* m_pViewer;
    bool renderingEnabled;
    
private:
};

static ViewerApp* app = NULL;

inline ViewerApp* GetApplication() { return app; }

//=============================================================================
// ViewerApp::ViewerApp
//=============================================================================
// Description : Creates a new TrivialApp, and does the CWinApp initialization
//
// Parameters  : lpszAppName - name of the application
//
//=============================================================================
ViewerApp::ViewerApp( HINSTANCE hInst )
{
    hInstance = hInst;
    hWnd = NULL;
    m_pPlatform = NULL;
    m_pContext = NULL;
    renderingEnabled = false;
    
}

//=============================================================================
// ViewerApp::~ViewerApp
//=============================================================================
// Description : deletes the trivial app, and all of the p3d context objects
//
//=============================================================================
ViewerApp::~ViewerApp()
{
    renderingEnabled = false;
    
    if(hWnd)
    {
        DestroyWindow(hWnd);
        hWnd = NULL;
    }
    
    // Delete the Trivial class.  This will also do our scrooby cleanup.
    if( m_pViewer )
    {
        // Because we were the only ones to use a Trivial instance, we
        // want to make sure that no one else has added references to it
        rAssert( m_pViewer->Release() == 0 );
    }
    
    // The following two deletes are order specific
    // Delete the P3D context
    if( m_pContext )
    {
        m_pPlatform->DestroyContext( m_pContext );
        m_pContext = NULL;
    }
    // Delete the P3D platform
    if( m_pPlatform )
    {
        tPlatform::Destroy( m_pPlatform );
    }
    
    ::radPlatformTerminate();
    ::radDbgComTargetTerminate();
}

//=============================================================================
// ViewerApp::InitInstance
//=============================================================================
// Description : Overridden CWinApp function which initializes the app instance.
//               In this function, we do all of the system specific initializations.
//
// Constraints : called by Windows only
//
//=============================================================================
bool ViewerApp::Init()
{
    // Create an application window
    WNDCLASS wndclass;
    wndclass.style = CS_HREDRAW | CS_VREDRAW | CS_OWNDC;
    wndclass.lpfnWndProc = ViewerApp::WndProc;
    wndclass.cbClsExtra = 0;
    wndclass.cbWndExtra = 0;
    wndclass.hInstance = hInstance;
    wndclass.hIcon = LoadIcon(NULL, IDI_APPLICATION);
    wndclass.hCursor = LoadCursor(NULL, IDC_ARROW);
    wndclass.hbrBackground = (HBRUSH)GetStockObject(DKGRAY_BRUSH);
    wndclass.lpszMenuName= NULL;
    wndclass.lpszClassName = g_ApplicationName;
    
    RegisterClass(&wndclass);
    
    RECT clientRect;
    clientRect.left = 0;
    clientRect.top = 0;
    clientRect.right = g_WindowSizeX;
    clientRect.bottom = g_WindowSizeY;
    
    AdjustWindowRect(&clientRect, WS_OVERLAPPEDWINDOW, FALSE);
    
    hWnd =
        CreateWindow
        (
        g_ApplicationName,
        g_ApplicationName,
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
    m_pPlatform = tPlatform::Create(hInstance);
    assert(m_pPlatform);
    
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
    init.xsize = g_WindowSizeX;
    init.ysize = g_WindowSizeY;
    
    // Depth of the rendering buffer.  Again, this value only works in
    // fullscreen mode.  In window mode, the depth of the desktop is used.
    // This value should be either 16 or 32.  Depths of 4, 8, and 24 are not
    // supported by most 3D hardware, and not by Pure3D.
    init.bpp = g_WindowBPP;
    
    // Forces Pure3D to run on the primary display adaptor.  Set this value to
    // a different number to initialised Pure3D on a secondary video card.
    init.adapterID = 0;
    
    // This the name of the PDDI we will be using for rendering
    strncpy(init.PDDIlib, g_PDDILibraryName, 128);
    
    // Create the context.
    m_pContext = m_pPlatform->CreateContext(&init);
    assert(m_pContext);
    
    // Assign this context to the platform.
    m_pPlatform->SetActiveContext(m_pContext);
    
    ::radPlatformInitialize( hWnd, hInstance );
    ::radDbgComTargetInitialize( WinSocket );
    
    // Initialize the Trivial App, which will handle all of our scrooby initialization
    m_pViewer = new Viewer();
    // Add one (and there should only ever be one in this case) reference to the class
    m_pViewer->AddRef();

    
    return true;
}

//=============================================================================
// ViewerApp::Run
//=============================================================================
// Description : Overridden CWinApp function which is run to process messages
//
// Constraints : called by Windows only
//
//=============================================================================
int ViewerApp::Run()
{
    bool done = false;
    MSG msg;
    
    // Loop until we recieve some sort of exit command, either from menus or
    // by closing the application window
    while( !done )
    {
        // Check for messages on the queue, and process them
        while( PeekMessage( &msg, NULL, 0, 0, PM_REMOVE ) )
        {
            if(msg.message == WM_QUIT)
            {
                done = true;
                break;
            }
            // If it's not a quit message, let windows handle the message how
            // ever it normally would
            TranslateMessage( &msg );
            DispatchMessage( &msg );
        }
        
        // call Trivial::Run(), which will take care of our rendering for each frame
        m_pViewer->Run();
    }
    
    // Once we reach this point, we have recieved a quit message, and we want
    // to start closing up so we can terminate the application
    
    return msg.wParam;
}

LRESULT ViewerApp::WndProc(HWND hwnd, UINT message, WPARAM wParam, LPARAM lParam)
{
    // Under Win32, Pure3D needs to get a crack at the Windows messages so
    // it can detect window moving, resizing, and activation.
    if(GetApplication()->m_pPlatform)
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


// WinMain - Win32 application entry point
// Here, we create the application object, and call it's Run() method.
int PASCAL WinMain(HINSTANCE hInstance, HINSTANCE, LPSTR commandLine, int)
{
#if defined(P3D_USE_FTT_FILE) || defined(P3D_USE_FTT_MEM) || defined(P3D_USE_FTT_THREADING) 
    ::radTimeInitialize();
    ::radThreadInitialize();
    ::radMemoryInitialize();
    ::radFileInitialize();
#endif

    app = new ViewerApp(hInstance);
    app->Init();

    if( strlen( commandLine ) > 1 )
    {
        app->Load( commandLine );
    }
    else
    {
        tFileFTT* file = new tFileFTT( "scrooby.cfg" );
        file->AddRef();
        if( p3d::load( file ) )
        {
            unsigned int length = file->GetSize();
            char* filename = new char[length+1];
            int i = 0;
            file->GetData( filename, length, tFile::BYTE );
            file->Release();

            filename[length] = 0;
            app->Load( filename );
            delete [] filename;
        }
    }
    int returnCode = app->Run();
    delete app;

#if defined(P3D_USE_FTT_FILE) || defined(P3D_USE_FTT_MEM) || defined(P3D_USE_FTT_THREADING) 
    ::radFileTerminate();
    ::radTimeTerminate();
    ::radMemoryTerminate();
    ::radThreadTerminate();
#endif
    return returnCode;
}
