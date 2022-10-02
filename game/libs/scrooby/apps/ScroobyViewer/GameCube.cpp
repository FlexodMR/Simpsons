
/*
 * Pure3D Trivial application, GameCube specific code
 *
 *
 */

#include "viewer.h"
#include <p3d/pure3d.hpp>
#include <p3d/fileftt.hpp>
#include <dolphin.h>
#include <radplatform.hpp>
#include <radfile.hpp>
#include <assert.h>
#include <cstdlib>
#include <pool_alloc.h>
#include <raddebugcommunication.hpp>
#include <radthread.hpp>
#include <radtime.hpp>
#include <radcontroller.hpp>

static void CPPInit(void);

#define HEAP_ID 0

static BOOL IsHeapInitialized = FALSE;


//-------------------------------------------------------------------
// GameCubePCApp declaration of TrivialApp
class GameCubePCApp
{
public:
    GameCubePCApp();
    virtual ~GameCubePCApp();

    virtual bool Init();
    virtual int Run();

    void EnableRendering(bool enable) { }

    void Load( const char* projectName ) { m_pViewer->Load( projectName ); }

private:
    tPlatform* m_pPlatform; 
    tContext* m_pContext;

    Viewer* m_pViewer;
};

//-------------------------------------------------------------------
// Global application pointer.  We need this in case the WndProc needs to talk
// to the application.
static GameCubePCApp* app = NULL;

GameCubePCApp::GameCubePCApp()
{
}

GameCubePCApp::~GameCubePCApp()
{
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

}

bool GameCubePCApp::Init()
{

    // Do our RadCore platform and file system initialization.  This is required for the
    // Scrooby loading.
    ::radTimeInitialize();
    ::radPlatformInitialize();
    ::radFileInitialize();
    ::radDbgComTargetInitialize( HostIO );

    // Initialise Pure3D platform object.
    // This call differs between different platforms.  The Win32 version,
    // for example requires the application instance to be passed in.
    m_pPlatform = tPlatform::Create();
    assert( m_pPlatform );

    // Initialiase the Pure3D context object.
    // We have to create on of these for every window, and for every PDDI
    // instance we use for rendering.  Since almost every application only
    // uses one window and PDDI library at a time, we one need to create one
    // context.
    tContextInitData init;
    init.bufferMask  = PDDI_BUFFER_COLOUR | PDDI_BUFFER_DEPTH;
    init.xsize       = 640;
    init.ysize       = 480;
    init.fieldmode   = false;   // true for interlaced display
    init.aa          = false;   // true for anti-alising, only works if fieldmode && ysize <= 264
    init.progressive = false;   // true for non-interlaced display
    init.pal         = false;   // true for pal

    m_pContext = m_pPlatform->CreateContext( &init );
    assert( m_pContext );
    m_pPlatform->SetActiveContext( m_pContext );

    // Initialize the Trivial App, which will handle all of our scrooby initialization
    m_pViewer = new Viewer();
    // Add one (and there should only ever be one in this case) reference to the class
    m_pViewer->AddRef();

    GXSetVerifyLevel( GX_WARN_NONE );

    return true;
}

// Playstation2 rendering loop
int GameCubePCApp::Run()
{
    while(1)
    {   
        m_pViewer->Run();
    }
    return 0;
}

//-----------------------------------------------------------------------------
// Here, we create the application object, and call it's Run() method.

static bool meminit = false;
int main(int argc, char** argv)
{
    OSInit();

    if (!meminit) 
    {
        ::radMemoryInitialize();
        meminit = true;
    }
    ::radThreadInitialize();

   
    printf("Memory is initialized.\n");

    app = new GameCubePCApp();
    app->Init();

    IRadDrive* pDrive;
    ::radDriveOpen( &pDrive, "REMOTEDRIVE:" );
    pDrive->AddRef();

    if (argc > 1)
    {
        app->Load( argv[1] );
    }
    else
    {
        tFileFTT* file = new tFileFTT( "REMOTEDRIVE:/scrooby.cfg" );
        file->AddRef();
        p3d::load( file );
        char filename[256];
        int i = 0;
        do
        {
            filename[i++] = file->GetByte();
        } while( filename[i-1] != ';' );
        filename[i-1] = 0;
        file->Release();
        app->Load( filename );
    }

    int returnCode = app->Run();
    delete app;

    pDrive->Release();

    return returnCode;
}



extern "C"
{
void *malloc (unsigned int size)
{
    if (!meminit) 
    {
        ::radMemoryInitialize();
        meminit = true;
    }
 //   printf("Alloating %d bytes\n", size);
    return OSAllocFromHeap(HEAP_ID, size);
}

void free(void *mem)
{
    OSFreeToHeap(HEAP_ID, mem);
}
}