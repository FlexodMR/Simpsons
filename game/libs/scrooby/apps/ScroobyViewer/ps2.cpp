/*
 * Pure3D Trivial application Playstation2 specific code
 *
 * Created 20-Mar-2000 Neall (verheyde@radical.ca)
 *
 */

#ifndef __GNUC__
#include <mwutils.h> /* METROWORKS C++ support */ 
#endif 

#include "viewer.h"
#include <p3d/pure3d.hpp>
#include <radplatform.hpp>
#include <radfile.hpp>
#include <radthread.hpp>
#include <radtime.hpp>
#include <assert.h>


//-------------------------------------------------------------------
// PS2App declaration of TrivialApp
class PS2App
{
public:
    PS2App();
    virtual ~PS2App();

    virtual bool Init();
    virtual int Run();

    void EnableRendering(bool enable) { }

private:
    tPlatform* m_pPlatform; 
    tContext* m_pContext;

    Viewer* m_pViewer;
};

//-------------------------------------------------------------------
// Global application pointer.  We need this in case the WndProc needs to talk
// to the application.
static PS2App* app = NULL;

PS2App::PS2App()
{
    m_pPlatform = NULL;
    m_pContext = NULL;
}

PS2App::~PS2App()
{
    // Delete the Trivial class.  This will also do our scrooby cleanup.
    if( m_pViewer )
    {
        m_pViewer->Release();
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

bool PS2App::Init()
{
    m_pPlatform = tPlatform::Create();
    assert( m_pPlatform );

    // Initialiase the Pure3D context object.
    // We have to create on of these for every window, and for every PDDI
    // instance we use for rendering.  Since almost every application only
    // uses one window and PDDI library at a time, we one need to create one
    // context.
    tContextInitData init;
    init.bpp = 32;

    m_pContext = m_pPlatform->CreateContext( &init );
    assert( m_pContext );
    m_pPlatform->SetActiveContext( m_pContext );

    // Initialize the Trivial App, which will handle all of our scrooby initialization
    m_pViewer = new Viewer();
    // Add one (and there should only ever be one in this case) reference to the class
    m_pViewer->AddRef();

    return true;
}

// Playstation2 rendering loop
int PS2App::Run()
{
    while(1)
    {   
        // call Trivial::Run(), which will take care of our rendering for each frame
        m_pViewer->Run();
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

    // Do our RadCore platform and file system initialization.  This is required for the
    // Scrooby loading.
    radMemoryInitialize();
    radThreadInitialize();
    radTimeInitialize();
    radPlatformInitialize( "\\usr\\local\\sce\\iop\\modules\\",IOPMediaHost );
    radFileInitialize();

    app = new PS2App();
    app->Init();
    int returnCode = app->Run();
    delete app;

    #ifndef __GNUC__
    mwExit();    /* METROWORKS C++ - Clean up, destroy constructed global objects */
    #endif 

    return returnCode;
}

