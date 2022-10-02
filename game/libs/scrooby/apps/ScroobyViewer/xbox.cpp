/*
 * Pure3D Trivial application xbox specific code
 *
 * Created 9-Jan-2001 Nigel (nbrooke@radical.ca)
 *
 */

#include "viewer.h"
#include <p3d/pure3d.hpp>
#include <radplatform.hpp>
#include <radfile.hpp>
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

private:
    // Win32 application instance handle
    HINSTANCE hInstance;

    // To keep the system from bogging, rendering is disabled when
    // the application loses focus.
    bool renderingEnabled;
    tPlatform* m_pPlatform; 
    tContext* m_pContext;

    Viewer* m_pViewer;
};

//-------------------------------------------------------------------
// Global application pointer.  We need this in case the WndProc needs to talk
// to the application.
static XboxApp* app = NULL;

inline XboxApp* GetApplication() { return app; }

void main(void)
{
    ::radMemoryInitialize();
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
    renderingEnabled = false;
}

XboxApp::~XboxApp()
{
    renderingEnabled = false;

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
}

bool XboxApp::Init()
{
    // Create a window
    const char appName[] = "Scrooby Viewer";

    // Initialise Pure3D platform object.
    // This call differs between different platforms.  The Win32 version,
    // for example requires the application instance to be passed in.
//   platform = tPlatform::Create(hInstance);
    m_pPlatform = tPlatform::Create();
    assert( m_pPlatform );
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
    m_pContext = m_pPlatform->CreateContext( &init );
    assert( m_pContext );
    m_pPlatform->SetActiveContext( m_pContext );

    ::radPlatformInitialize();
    ::radFileInitialize();

    // Initialize the Trivial App, which will handle all of our scrooby initialization
    m_pViewer = new Viewer();
    // Add one (and there should only ever be one in this case) reference to the class
    m_pViewer->AddRef();

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
            m_pViewer->Run();
        }
    }

    return 0;
}


