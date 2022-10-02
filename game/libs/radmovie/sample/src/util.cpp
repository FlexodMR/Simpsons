//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


#include "util.hpp"

#include <radthread.hpp>
#include <radfile.hpp>
#include <radmemory.hpp>
#include <radplatform.hpp>
#include <radsound.hpp>
#include <p3d/pure3d.hpp>
#include <raddebugcommunication.hpp>
#include <raddebugwatch.hpp>
#include <radprofiler.hpp>
#include <radcontroller.hpp>
#include <radmovie2.hpp>

#ifdef RAD_PS2
    #define SOUND_MEMORY 0
    #define AUX_SENDS 0
    #define SOUND_MAX_ROOT_ALLOCATIONS 8
#else
    #define SOUND_MEMORY 2 * 1024 * 1024
    #define AUX_SENDS 0
    #define SOUND_MAX_ROOT_ALLOCATIONS 8
#endif

#ifdef RAD_WIN32
HWND g_hWnd = 0;
HINSTANCE g_hInstance = 0;
extern bool g_Done;
#endif

//-------------------------------------------------------------------
#ifdef RAD_WIN32
LRESULT CALLBACK WndProc(HWND hwnd, UINT message, WPARAM wParam, LPARAM lParam)
{
    if( p3d::platform != NULL )
    {
        p3d::platform->ProcessWindowsMessage(hwnd, message, wParam, lParam);
    }

    switch(message)
    {
        case WM_DESTROY:
            PostQuitMessage(0);
            break;
        default:
            return DefWindowProc(hwnd, message, wParam, lParam);
            break;
    }

    return 0;
}
#endif // RAD_WIN32


void utilATGLibInit
( 
    #ifdef RAD_WIN32
    HINSTANCE hInstance
    #elif defined RAD_PS2
    int argc, char** argv
    #else
    void 
    #endif
)
{
    ::radThreadInitialize();

    #ifndef RAD_GAMECUBE
    ::radMemoryInitialize();
    #else
    ::radMemoryInitialize( 0, 0 );
    #endif

    //
    // Windows nonesense
    //

    #ifdef RAD_WIN32

    g_hInstance = hInstance;

    // Create a window
    const char appName[] = "FTech RadMovie Simple Movie Player";

    // Create an application window
    WNDCLASS wndclass;
    wndclass.style = CS_HREDRAW | CS_VREDRAW | CS_OWNDC;
    wndclass.lpfnWndProc = WndProc;
    wndclass.cbClsExtra = 0;
    wndclass.cbWndExtra = 0;
    wndclass.hInstance = hInstance;
    wndclass.hIcon = LoadIcon(NULL, IDI_APPLICATION);
    wndclass.hCursor = LoadCursor(NULL, IDC_ARROW);
    wndclass.hbrBackground = (HBRUSH)GetStockObject(DKGRAY_BRUSH);
    wndclass.lpszMenuName= NULL;
    wndclass.lpszClassName = appName;

    RegisterClass(&wndclass);
    
    RECT clientRect;
    clientRect.left = 0;
    clientRect.top = 0;
    clientRect.right = 640;
    clientRect.bottom = 480;

    AdjustWindowRect(&clientRect, WS_OVERLAPPEDWINDOW, FALSE);

    g_hWnd =
        CreateWindow
        (
            appName,
            appName,
            WS_OVERLAPPEDWINDOW,
            CW_USEDEFAULT,
            CW_USEDEFAULT,
            clientRect.right-clientRect.left, clientRect.bottom-clientRect.top,
            NULL,
            NULL,
            hInstance,
            NULL
        );

    assert(g_hWnd);
    ShowWindow(g_hWnd, SW_SHOW);

    #endif // RAD_WIN32

    //
    // Initialize the platform and debug comm
    //
    char Media_Drive[ radFileDrivenameMax + 1 ] = "";

    #if defined RAD_WIN32 

        ::radPlatformInitialize( g_hWnd, hInstance );
        ::radTimeInitialize( );
        ::radDbgComTargetInitialize( WinSocket );

    #elif defined RAD_XBOX

        ::radPlatformInitialize( );
        ::radTimeInitialize( );
        ::radDbgComTargetInitialize( WinSocket );

    #elif defined RAD_PS2

        enum PS2_Media
        {
            Media_CDROM,
            Media_DVD,
            Media_HOST,
            Media_FIREWIRE,
            Media_DECI
        };
        PS2_Media ps2_media = Media_HOST;

        //
        // We only take one argument so far ...
        //
        rAssertMsg( argc <= 2, "Bad command line argument" );

        for ( int i = 1; i < argc; i++ )
        {
            if ( strcmp( argv[ i ], "FIREWIRE" ) == 0 )
            {
                ps2_media = Media_FIREWIRE;
            }
            else if ( strcmp( argv[ i ], "HOST" ) == 0 )
            {
                ps2_media = Media_HOST;
            }
            else if ( strcmp( argv[ i ], "CD" ) == 0 )
            {
                ps2_media = Media_CDROM;
            }
            else if ( strcmp( argv[ i ], "DVD" ) == 0 )
            {
                ps2_media = Media_DVD;
            }
            else if ( strcmp( argv[ i ], "DECI" ) == 0 )
            {
                ps2_media = Media_DECI;
            }
            else
            {
                rAssertMsg( false, "Bad command line argument" );
            }
        }

        switch( ps2_media )
        {
        case Media_CDROM:
            ::radPlatformInitialize( "irx\\", IOPMediaCDVD, GameMediaCD );
            ::radTimeInitialize( );
            ::radDbgComTargetInitialize( Deci );
            strcpy( Media_Drive, "CDROM:" );
            break;

        case Media_DVD:
            ::radPlatformInitialize( "irx\\", IOPMediaCDVD, GameMediaDVD );
            ::radTimeInitialize( );
            ::radDbgComTargetInitialize( Deci );
            strcpy( Media_Drive, "CDROM:" );
            break;

        case Media_HOST:
            ::radPlatformInitialize( "irx\\", IOPMediaHost, GameMediaCD );
            ::radTimeInitialize( );
            ::radDbgComTargetInitialize( Deci );
            strcpy( Media_Drive, "HOSTDRIVE:" );
            break;

        case Media_FIREWIRE:
            ::radPlatformInitialize( "irx\\", IOPMediaCDVD, GameMediaCD, NULL, RADMEMORY_ALLOC_DEFAULT );
            ::radTimeInitialize( );
            ::radDbgComTargetInitialize( FireWire );
            strcpy( Media_Drive, "REMOTEDRIVE:" );
            break;

        case Media_DECI:
            ::radPlatformInitialize( "irx\\", IOPMediaHost, GameMediaCD );
            ::radTimeInitialize( );
            ::radDbgComTargetInitialize( Deci );
            strcpy( Media_Drive, "REMOTEDRIVE:" );
            break;
        }

    #elif defined RAD_GAMECUBE

        ::radPlatformInitialize( );
        ::radTimeInitialize( );
        ::radDbgComTargetInitialize( HostIO );

    #endif        

    radDbgWatchInitialize_Macro( ( "\\" ) );
    ::radFileInitialize( );

    if ( Media_Drive[ 0 ] != '\0' )
    {
        ::radSetDefaultDrive( Media_Drive );
    }
    ::radDriveMount( );

    ::radLoadInitialize( );
    radProfilerInitialize( );
    ::radControllerInitialize( NULL, RADMEMORY_ALLOC_DEFAULT );
    ::radSoundHalSystemInitialize( RADMEMORY_ALLOC_DEFAULT );
    ::radSoundHalSystemGet( )->InitializeMemory( SOUND_MEMORY, SOUND_MAX_ROOT_ALLOCATIONS, AUX_SENDS );
}

void utilATGLibTerminate( void )
{
    for( unsigned int cleanup = 0; cleanup < 500; cleanup++ )
    {
        ::radControllerSystemService( );
		::radMovieService2( );
        ::radSoundHalSystemGet( )->Service( );
        ::radSoundHalSystemGet( )->ServiceOncePerFrame( );      
        ::radFileService( );
    }

    ::radSoundHalSystemTerminate( );
    ::radControllerTerminate( );
    radProfilerTerminate( );
    ::radLoadTerminate( );

    ::radDriveUnmount( );
    ::radFileTerminate( );
    radDbgWatchTerminate_Macro( ( ) );
    radDbgComTargetTerminate( );
    ::radTimeTerminate( );
    ::radPlatformTerminate( );
    ::radMemoryTerminate();

    //
    // This will assert on the ps2 because the 
    // pure3d context doesn't actually get destroyed
    // on that platform
    //

    ::radThreadTerminate();    

    #ifdef RAD_DEBUG
        radObject::DumpObjects( );
    #endif
}

void utilATGLibService( void )
{
    #ifdef RAD_WIN32
        MSG msg;

        while(PeekMessage(&msg, NULL, 0, 0, PM_REMOVE))
        {
            if(msg.message == WM_QUIT)
            {
                g_Done = true;
                break;
            }
            TranslateMessage(&msg);
            DispatchMessage(&msg);
        }
    #endif // RAD_WIN32

    ::radControllerSystemService( );
    ::radSoundHalSystemGet( )->Service( );
    ::radSoundHalSystemGet( )->ServiceOncePerFrame( );      
    ::radFileService( );
}

void utilPure3DInit( void )
{
    // Initialise Pure3D platform object.

    tPlatform * m_pPlatform = tPlatform::Create
    (
        #ifdef RAD_WIN32
        g_hInstance
        #endif // RAD_WIN32
    );
    rAssert( m_pPlatform );

    // Initialise the Pure3D context object.

    #ifdef RAD_PS2

    tContextInitData init;
    init.xsize      = 640;

    #endif // RAD_PS2

    #ifdef RAD_XBOX

    tContextInitData init;
    init.xsize = 640;
    init.ysize = 480;
    init.lockToVsync = true;

    #endif // RAD_XBOX

    #ifdef RAD_GAMECUBE

    tContextInitData init;

    init.xsize = 640;
    init.ysize = 480;
    init.lockToVsync = true;

    #endif // RAD_GAMECUBE

    #ifdef RAD_WIN32

    tContextInitData init;
    init.hwnd = g_hWnd;
    init.xsize = 640;
    init.ysize = 480;
    init.adapterID = 0;
    init.lockToVsync = true;
    init.displayMode = PDDI_DISPLAY_WINDOW;//PDDI_DISPLAY_FULLSCREEN; 
    init.bufferMask = PDDI_BUFFER_COLOUR | PDDI_BUFFER_DEPTH;
    strncpy(init.PDDIlib, "..\\..\\..\\..\\pure3d\\build\\lib\\pddidx8d.dll", 128);

    #endif // RAD_WIN32

    tContext * m_pContext = m_pPlatform->CreateContext( & init );
    rAssert( m_pContext );   

    // Assign this context to the platform.

    m_pPlatform->SetActiveContext( m_pContext );

    // Set up Pddi

    p3d::pddi->EnableStatsOverlay( false );   // Turn stats on or off here
    p3d::pddi->EnableZBuffer( false );
    p3d::InstallDefaultLoaders();
	p3d::pddi->SetProjectionMode(PDDI_PROJECTION_DEVICE);
	p3d::pddi->SetCullMode(PDDI_CULL_NONE);
	p3d::pddi->Clear(PDDI_BUFFER_COLOUR | PDDI_BUFFER_DEPTH);
}

void utilPure3DTerminate( void )
{
    p3d::platform->DestroyContext( p3d::context );
    tPlatform::Destroy( p3d::platform );
}


#ifdef RAD_GAMECUBE
void* operator new( size_t size )
{
	return radMemoryAlloc( radMemoryGetCurrentAllocator( ), size );
}

void operator delete( void* data )
{
	radMemoryFree( data );
}

void* operator new[]( size_t size )
{
	return radMemoryAlloc( radMemoryGetCurrentAllocator( ), size );
}

void operator delete[]( void* data )
{
	radMemoryFree( data );
}
#endif
