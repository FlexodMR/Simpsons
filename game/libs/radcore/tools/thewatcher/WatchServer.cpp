//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


//=============================================================================
//
// File:        WatchServer.cpp
//
// Subsystem:   Radical Foundation Technologies Watch Server
//
// Description:	This file contains the implementation in the watch server 
//				application.
//
// Revisions:	Jan 11, 2000
//
// Usage:       
//
//=============================================================================

//=============================================================================
// Include Files
//=============================================================================

#include "stdafx.h"
#include "WatchServer.h"
#include "MainFrm.h"
#include <raddebugcommunication.hpp>
#include "../../src/radprotocols/DebugWatchProtocol.hpp"

//=============================================================================
// Local Definitions
//=============================================================================

#ifdef _DEBUG
#define new DEBUG_NEW
#undef THIS_FILE
static char THIS_FILE[] = __FILE__;
#endif

//=============================================================================
// Static Definitions
//=============================================================================

CWatchServerApp theApp;

static const char CommandLineUsage[ ] = "Invalid command line option specified. Valid options include:\n\n" \
										" /T[TargetName]   - specify target name\n" \
										" /P[Path]         - specify root path for files\n" \
										" /R[UpdatePeriod] - specify update period in ms\n" \
										"  Example: GameTuner /TArtistStation /R500\n";

extern bool GetRadCoreApiVersion( unsigned int * pMajor, unsigned int * pMinor );
extern bool GetGuiKitApiVersion( unsigned int * pMajor, unsigned int * pMinor );

//=============================================================================
// Message map for the application. 
//=============================================================================

BEGIN_MESSAGE_MAP(CWatchServerApp, CWinApp)
	//{{AFX_MSG_MAP(CWatchServerApp)
	ON_COMMAND(ID_APP_ABOUT, OnAppAbout)
		// NOTE - the ClassWizard will add and remove mapping macros here.
		//    DO NOT EDIT what you see in these blocks of generated code!
	//}}AFX_MSG_MAP
END_MESSAGE_MAP()

//=============================================================================
// Construction of application,
//=============================================================================

CWatchServerApp::CWatchServerApp()
{
    CoInitialize(NULL);
    //
    // Get host target table.
    //
    radDbgComHostGetTargetTable( &m_Host );
    assert( m_Host != NULL );
}

//=============================================================================
// Destructor of application,
//=============================================================================

CWatchServerApp::~CWatchServerApp()
{
    if( m_Host )
    {
        m_Host->Release( );
    }
    CoUninitialize();
}

//=============================================================================
// InitInstance
//=============================================================================

BOOL CWatchServerApp::InitInstance()
{
    //------------------------------------------------------------------------
    // DLL version check
    //========================================================================
    unsigned int uMajor;
    unsigned int uMinor;

    //
    // radcore API version must be 1.0.x.x or above
    //
    GetRadCoreApiVersion( &uMajor, &uMinor );
    if ( !( uMajor >= 0x00010000 ) )
    {
        CString strError;
        strError.Format( "radcoreapi.dll version must be version [1, 0, 0, 0] or above, version [%x, %x, x, x] found.", ( uMajor & 0xffff0000 ) >> 16, uMajor & 0x0000ffff );
        AfxMessageBox(strError, MB_OK|MB_ICONERROR );
        return FALSE;
    }

    //
    // GuiKit API version must be 1.0.x.x or above
    //
    GetGuiKitApiVersion( &uMajor, &uMinor );
    if ( !( uMajor >= 0x00010000 ) )
    {
        CString strError;
        strError.Format( "guikit.dll version must be version [1, 0, 0, 0] or above, version [%x, %x, x, x] found.", ( uMajor & 0xffff0000 ) >> 16, uMajor & 0x0000ffff );
        AfxMessageBox(strError, MB_OK|MB_ICONERROR );
        return FALSE;
    }

    SetRegistryKey( "Radical Entertainment" );

	//
	// Lets parse command line. Set default values first.
	//
	GetCurrentDirectory( sizeof(m_RootPath), m_RootPath );
	m_UpdatePeriod = 500;
	m_TargetName[ 0 ] = '\0';

	char* pToken = strtok( m_lpCmdLine, " ," );

	while( pToken != NULL )
	{
		if(0 == strnicmp( "/p", pToken, 2 ) )
		{
			//
			// Path specification. Save it.
			//
			strcpy( m_RootPath, &pToken[ 2 ] );
		}
		else if(0 == strnicmp( "/r", pToken, 2 ) ) 
		{
			//
			// Update period.
			//
			m_UpdatePeriod = atoi( &pToken[2 ] );
            if( (m_UpdatePeriod < 10) || (m_UpdatePeriod < 10000) )
            {
        		MessageBox( NULL, "Invalid update period. Valid values\n are 10 to 10000.", m_pszAppName, MB_ICONERROR | MB_OK );
		        return( false );
            }
		}
		else if(0 == strnicmp( "/t", pToken, 2 ) ) 
		{
			//
			// TargetName
			//
			strcpy( m_TargetName, &pToken[ 2 ] );
		}
		else
		{
			MessageBox( NULL, CommandLineUsage, m_pszAppName, MB_ICONERROR | MB_OK );
			return( false );
		}
		//
		// Get next token.
		//
		pToken = strtok( NULL, " ,");
	}
	
	//
	// Lets validate the filepath and the target name.
	//
    char olddir[ 500 ];
    GetCurrentDirectory( 500, olddir );
	
    if( !SetCurrentDirectory( m_RootPath ) )
    {
		SetCurrentDirectory( olddir );
		char msg[ 200 ];
		wsprintf( msg, "Command line path \"%s\" does not exist.", m_RootPath );  
		MessageBox( NULL, msg, m_pszAppName, MB_ICONERROR | MB_OK );
		return( false );
	}		
	SetCurrentDirectory( olddir );

	if( strlen( m_TargetName ) == 0 )
	{
		//
		// No target. Get default name.
		//
		if( !m_Host->GetDefaultTarget( m_TargetName ) )
		{
			MessageBox( NULL, "No target specified and default target not defined.\nUse TargetEditor to create target", m_pszAppName, MB_ICONERROR | MB_OK );
			return( false );
		}
	}
	
	//
	// Attemp to create a communication channel.
	//
	IRadDbgComChannel* pChannel;

    radDbgComHostCreateChannel( m_TargetName, WATCH_PROTOCOL, &pChannel );
      
    if( pChannel == NULL )
    {
		char msg[ 200 ];
		wsprintf( msg, "Target \"%s\" may be in use or may not exist.", m_TargetName );  
		MessageBox( NULL, msg, m_pszAppName, MB_ICONERROR | MB_OK );
		return( false );
	}

	//
	// Create and load the main frame object. It occustrates contruction of other 
	// windows and controls. Pass it the channel to use.
	//
	CMainFrame* pFrame = new CMainFrame( pChannel );
	pChannel->Release( );
	m_pMainWnd = pFrame;
	pFrame->LoadFrame( IDR_MAINFRAME, WS_OVERLAPPEDWINDOW | WS_SYSMENU | FWS_ADDTOTITLE, NULL, NULL);
    
	//
	// Show and update the window
	//
	pFrame->ShowWindow(SW_SHOW);
	pFrame->UpdateWindow();

    return( true );
}

//=============================================================================
// ExitInstance
//=============================================================================

int CWatchServerApp::ExitInstance()
{
    return CWinApp::ExitInstance();
}

//=============================================================================
// CAbout Dialog stuff
//=============================================================================

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
	//}}AFX_MSG_MAP
END_MESSAGE_MAP()

//=============================================================================
// OnAppAbout
//=============================================================================

void CWatchServerApp::OnAppAbout()
{
	CAboutDlg aboutDlg;
	aboutDlg.DoModal();
}
