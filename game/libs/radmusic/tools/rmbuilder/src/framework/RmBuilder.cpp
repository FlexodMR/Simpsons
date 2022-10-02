// RmBuilder.cpp : Defines the class behaviors for the application.
//

#include "pch.hpp"
#include "RmBuilder.h"
#include "MainFrm.h"
#include <radplatform.hpp>
#include <radmusic/radmusic.hpp>
#include <radsound.hpp>
#include <radfile.hpp>
#include <raddebug.hpp>
#include <radmemorymonitor.hpp>
#include <raddebugcommunication.hpp>
#include <radload/radload.hpp>
#include "..\..\..\..\radmusic\tools\inc\radmusictools.hpp"
#include <memory\memory.hpp>
#include "Splash.h"
#include <plugin/plugin.h>
#include <plugins/log/log.h>

/////////////////////////////////////////////////////////////////////////////
// CRmBuilderApp

BEGIN_MESSAGE_MAP(CRmBuilderApp, CWinApp)
	//{{AFX_MSG_MAP(CRmBuilderApp)
	ON_COMMAND(ID_APP_ABOUT, OnAppAbout)
	//}}AFX_MSG_MAP
END_MESSAGE_MAP()

static bool g_memory_initialized = false;
bool g_initialized = false;
static unsigned int allocations = 0;


void check_memory_init( void )
{
    if ( g_memory_initialized == false )
    {
        g_memory_initialized = true;
        ::radThreadInitialize( );
        ::radMemoryInitialize( );
    }
    
    allocations++;
}

void check_memory_destroy( void )
{
    rAssert( allocations > 0 );
    
    allocations --;
    
    if ( allocations == 0 )
    {
        ::radMemoryTerminate( );
	    ::radThreadTerminate( );        
        
        g_memory_initialized = false;
    }
}

/////////////////////////////////////////////////////////////////////////////
// CRmBuilderApp construction

CRmBuilderApp::CRmBuilderApp()
{
	// TODO: add construction code here,
	// Place all significant initialization in InitInstance
}

/////////////////////////////////////////////////////////////////////////////
// The one and only CRmBuilderApp object

CRmBuilderApp theApp;

void CRmBuilderApp::ProgressCallback( const char * pMessage )
{
	CMainFrame * pMainFrame = ((CMainFrame*)::AfxGetApp( )->GetMainWnd( ));

/* 	if ( pMainFrame && pMainFrame->m_hWnd )
	{
        pMainFrame->m_WndProgress.m_Progress.SetWindowText( pMessage );
    } */

    /* MSG msg;

    while ( ::PeekMessage( & msg, pMainFrame->m_WndProgress.m_hWnd, 0, 0, true ) )
    {
        ::TranslateMessage( & msg );
        ::DispatchMessage( & msg );
    } */
}

void CRmBuilderApp::MessageHandler( const char * pMessage )
{
    log( "raddebug", pMessage );
}

/////////////////////////////////////////////////////////////////////////////
// CRmBuilderApp initialization

_CRTIMP extern int __argc;          /* count of cmd line args */
_CRTIMP extern char ** __argv;      /* pointer to table of cmd line args */

BOOL CRmBuilderApp::InitInstance()
{
    // We sleep every 16 ms 

    //BOOL setThreadPriority = ::SetThreadPriority( ::GetCurrentThread( ), THREAD_PRIORITY_HIGHEST );

   // rAssert( setThreadPriority == TRUE );

    CMainFrame * pFrame = NULL;

	//CMyCommandLineInfo cmdInfo;
	//ParseCommandLine(cmdInfo);

	CSplashWnd::EnableSplashScreen( true );

	// Change the registry key under which our settings are stored.
	// TODO: You should modify this string to be something appropriate
	// such as the name of your company or organization.
	SetRegistryKey(_T("radmusic Builder"));

    LoadStdProfileSettings( );
        
	pFrame = new CMainFrame;
	m_pMainWnd = pFrame;
    
	// create and load the frame with its resources

	::radTimeInitialize( );
	
	pFrame->LoadFrame(IDR_MAINFRAME,
		WS_OVERLAPPEDWINDOW | FWS_ADDTOTITLE, NULL,
		NULL);
    
	pFrame->SetIcon( LoadIcon( MAKEINTRESOURCE( IDR_MAINFRAME ) ), false );
	pFrame->SetIcon( LoadIcon( MAKEINTRESOURCE( IDR_MAINFRAME ) ), true );


	::radPlatformInitialize( pFrame ? pFrame->m_hWnd : NULL , m_hInstance, RADMEMORY_ALLOC_DEFAULT );    
    check_memory_init( );
    
    ::radDbgComTargetInitialize( WinSocket ); 
    ::radMemoryMonitorInitialize( 1024 * 1024 );
    
	::radFileInitialize( 100, 100, RADMEMORY_ALLOC_DEFAULT );
    ::radLoadInitialize( NULL );  
    	
	rDebugChannelInitialize( RADMEMORY_ALLOC_DEFAULT );
	rDebugChannelEnable( "radmusic" );
	
	::radSoundHalSystemInitialize( RADMEMORY_ALLOC_DEFAULT );
	IRadSoundHalSystem::SystemDescription s;
	
	s.m_EnableStickyFocus   = true;
	s.m_MaxRootAllocations  = 20,
	s.m_NumAuxSends         = 0;
	s.m_ReservedSoundMemory = 1024 * 1024 * 8;
	s.m_SamplingRate        = 48000;
	
	::radSoundHalSystemGet( )->Initialize( s );
    radmusic::initialize( 0, 0, 64, RADMEMORY_ALLOC_DEFAULT );
    radmusic::register_radload_loaders( );

	rDebugSetOutputHandler( MessageHandler );
    radMusicToolsSetProgressCallback( ProgressCallback );
    radMusicToolsSetWarningCallback( MessageHandler );

	// rDebugHaltOnAsserts( false );

	// The one and only window has been g_memory_initialized, so show and update it.
	pFrame->ShowWindow(SW_SHOW);
	pFrame->UpdateWindow();
	
    g_initialized = true;
	
	
    
	return TRUE;
}



/////////////////////////////////////////////////////////////////////////////
// CRmBuilderApp message handlers





/////////////////////////////////////////////////////////////////////////////
// CAboutDlg dialog used for App About

class CAboutDlg : public CDialog
{
public:
	CAboutDlg();

// Dialog Data
	//{{AFX_DATA(CAboutDlg)
	enum { IDD = IDD_ABOUTBOX };
	//}}AFX_DATA

	// ClassWizard generated virtual function overrides
	//{{AFX_VIRTUAL(CAboutDlg)
	protected:
	virtual void DoDataExchange(CDataExchange* pDX);    // DDX/DDV support
	//}}AFX_VIRTUAL

// Implementation
protected:
	//{{AFX_MSG(CAboutDlg)
		// No message handlers
	//}}AFX_MSG
	DECLARE_MESSAGE_MAP()
};

CAboutDlg::CAboutDlg() : CDialog(CAboutDlg::IDD)
{
	//{{AFX_DATA_INIT(CAboutDlg)
	//}}AFX_DATA_INIT
}

void CAboutDlg::DoDataExchange(CDataExchange* pDX)
{
	CDialog::DoDataExchange(pDX);
	//{{AFX_DATA_MAP(CAboutDlg)
	//}}AFX_DATA_MAP
}

BEGIN_MESSAGE_MAP(CAboutDlg, CDialog)
	//{{AFX_MSG_MAP(CAboutDlg)
		// No message handlers
	//}}AFX_MSG_MAP
END_MESSAGE_MAP()

// App command to run the dialog
void CRmBuilderApp::OnAppAbout()
{
	CAboutDlg aboutDlg;
	aboutDlg.DoModal();
}

/////////////////////////////////////////////////////////////////////////////
// CRmBuilderApp message handlers

extern void rmbSleep( void );

int CRmBuilderApp::ExitInstance() 
{
	rDebugHaltOnAsserts( true );
	rDebugSetOutputHandler( NULL );

    for ( unsigned int i = 0; i < 100; i ++ )
    {
        rmbSleep( );
    }
    
    radmusic::terminate( );
	::radSoundHalSystemTerminate();
	rDebugChannelTerminate( );	
	radLoadTerminate( );
	
	::radFileTerminate( );
	::radTimeInitialize( );
	radMemoryMonitorSuspend( );	
	::radMemoryMonitorTerminate( );
    ::radDbgComTargetTerminate( );
	::radPlatformTerminate( );
    check_memory_destroy( );
	
    #ifdef RAD_DEBUG

    radObject::DumpObjects( );
    
    #endif 
	
	return CWinApp::ExitInstance();
}

BOOL CRmBuilderApp::OnIdle(LONG lCount) 
{
	return 	CWinApp::OnIdle(lCount);
}

CDocument* CRmBuilderApp::OpenDocumentFile(LPCTSTR lpszFileName) 
{
    ((CMainFrame*)m_pMainWnd)->OpenRecentFile( lpszFileName );

    return (CDocument*) 0xFFFFFFFF; // Trick framework 
}

void* __cdecl operator new(size_t nSize, LPCSTR lpszFileName, int nLine)
{
    check_memory_init( );
    
    char buf[ 1024 ];
    sprintf( buf, "File: [%s] Line: [%d]", lpszFileName, nLine );
    
    return memory::malloc( nSize, buf);
}
void* __cdecl operator new[](size_t nSize, LPCSTR lpszFileName, int nLine)
{
    check_memory_init( );
    
    char buf[ 1024 ];
    sprintf( buf, "File: [%s] Line: [%d]", lpszFileName, nLine );
    
    return memory::malloc( nSize, buf);
}

void __cdecl operator delete[](void* p, LPCSTR lpszFileName, int nLine)
{
    memory::free( p );
    check_memory_destroy( );    
}

void __cdecl operator delete(void* p, LPCSTR lpszFileName, int nLine)
{
    memory::free( p );
    check_memory_destroy( );
}

void * operator new[]( size_t size )
{
    check_memory_init( );
    
    return memory::malloc( size, "MFC allocation" );
}

void * operator new( size_t size )
{    
    check_memory_init( );
    
    return memory::malloc( size, "MFC allocation" );
}

void operator delete( void * p_mem )
{
    memory::free( p_mem );
    
    check_memory_destroy( );

}

void operator delete[]( void * p_mem )
{
    memory::free( p_mem );
    
    check_memory_destroy( );
}

