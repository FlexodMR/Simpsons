//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


// movieviewerDlg.cpp : implementation file
//

#include "stdafx.h"
#include "movieviewer.h"
#include "movieviewerDlg.h"

#ifdef _DEBUG
#define new DEBUG_NEW
#undef THIS_FILE
static char THIS_FILE[] = __FILE__;
#endif

enum
{
    PC = 0,
    XBOX,
    GCN,
    PS2_TOOL,
    PS2_FIREWIRE
};

static char g_pConfigFileName[ MAX_PATH ];

/////////////////////////////////////////////////////////////////////////////
// CMovieviewerDlg dialog

CMovieviewerDlg::CMovieviewerDlg(CWnd* pParent /*=NULL*/)
	: CDialog(CMovieviewerDlg::IDD, pParent)
{
	// Determine the configuration file name
	char pModule[ MAX_PATH ];
	char pDrive[ MAX_PATH ];
	char pDirectory[ MAX_PATH ];
    ::GetModuleFileName( ::GetModuleHandle( NULL ), pModule, 256 );
    _splitpath( pModule, pDrive, pDirectory, NULL, NULL );
	sprintf( g_pConfigFileName, "%s%sviewerconfig.txt", pDrive, pDirectory );

	//{{AFX_DATA_INIT(CMovieviewerDlg)
	//}}AFX_DATA_INIT
	// Note that LoadIcon does not require a subsequent DestroyIcon in Win32
	m_hIcon = AfxGetApp()->LoadIcon(IDR_MAINFRAME);

    strcpy( m_pPlatformInfo[ PC ].m_pName, "PC" );
    strcpy( m_pPlatformInfo[ PC ].m_pLauncherName, "Something" );
    strcpy( m_pPlatformInfo[ XBOX ].m_pName, "XBox" );
    strcpy( m_pPlatformInfo[ XBOX ].m_pLauncherName,"xbreboot.exe" );
    strcpy( m_pPlatformInfo[ GCN ].m_pName, "Gamecube" );
    strcpy( m_pPlatformInfo[ GCN ].m_pLauncherName, "loadrun.bat" );
    strcpy( m_pPlatformInfo[ PS2_TOOL ].m_pName, "Ps2 Tool" );
    strcpy( m_pPlatformInfo[ PS2_TOOL ].m_pLauncherName, "ps2run.bat" );
    strcpy( m_pPlatformInfo[ PS2_FIREWIRE ].m_pName, "Ps2 Firewire" );
    strcpy( m_pPlatformInfo[ PS2_FIREWIRE ].m_pLauncherName, "ps2firewirerun.bat" );


    for( unsigned int i = 0; i < 5; i++ )
    {
        m_pIMovieLauncher[ i ] = NULL;
    }

    m_pIMovieLauncher[ PC ] = new PCMovieLauncher( );
    m_pIMovieLauncher[ XBOX ] = new XBoxMovieLauncher( );
	m_pIMovieLauncher[ PS2_TOOL ] = new Ps2DeciMovieLauncher( );

	::memset( ( void * )& m_ViewerConfig, 0, sizeof( m_ViewerConfig ) );
}

void CMovieviewerDlg::DoDataExchange(CDataExchange* pDX)
{
	CDialog::DoDataExchange(pDX);
	//{{AFX_DATA_MAP(CMovieviewerDlg)
	DDX_Control(pDX, IDC_STATUS_LIST, m_StatusList);
	DDX_Control(pDX, IDC_ATRACK_LIST, m_ATrackList);
	DDX_Control(pDX, IDC_PLAT_LIST, m_PlatList);
	DDX_Control(pDX, IDC_FILENAME_EDIT, m_CEdit);
	//}}AFX_DATA_MAP
	DDX_Control(pDX, IDC_PS2_IP_EDIT, m_CEdit_Ps2_IP);
}

BEGIN_MESSAGE_MAP(CMovieviewerDlg, CDialog)
	//{{AFX_MSG_MAP(CMovieviewerDlg)
	ON_WM_PAINT()
	ON_WM_QUERYDRAGICON()
	ON_EN_CHANGE(IDC_FILENAME_EDIT, OnChangeEdit1)
	ON_BN_CLICKED(IDC_PLAY_BUTTON, OnPlayButton)
	ON_WM_DROPFILES()
	ON_BN_CLICKED(IDC_BROWSE_BUTTON, OnBrowseButton)
	ON_WM_DESTROY()
	ON_WM_TIMER()
    ON_MESSAGE(WM_STATUS_TEXT, CMovieviewerDlg::OnStatusText)
	//}}AFX_MSG_MAP
	ON_BN_CLICKED(IDC_BUTTON_CONFIG, OnBnClickedButtonConfig)
END_MESSAGE_MAP()

/////////////////////////////////////////////////////////////////////////////
// CMovieviewerDlg message handlers

BOOL CMovieviewerDlg::OnInitDialog()
{
	CDialog::OnInitDialog();

	// Set the icon for this dialog.  The framework does this automatically
	//  when the application's main window is not a dialog
	SetIcon(m_hIcon, TRUE);			// Set big icon
	SetIcon(m_hIcon, FALSE);		// Set small icon
	
    // Fill the platform list

    CString str;
    for( unsigned int i = 0; i < 5; i++ )
    {
        str.Format( m_pPlatformInfo[ i ].m_pName );
        m_PlatList.AddString( str );
    }
    m_PlatList.SetCurSel( 0 );

    // Fill the list of audio tracks

    m_ATrackList.AddString( "None" );
    m_ATrackList.AddString( "1" );
    m_ATrackList.AddString( "2" );
    m_ATrackList.AddString( "3" );
    m_ATrackList.AddString( "4" );
    m_ATrackList.AddString( "5" );
    m_ATrackList.AddString( "6" );
    m_ATrackList.AddString( "7" );
    m_ATrackList.SetCurSel( 0 );

    // Accept drag and drop files

    DragAcceptFiles( );

	// See if a configuration file is available

	HANDLE hConfig = ::CreateFile( g_pConfigFileName,
		GENERIC_READ | GENERIC_WRITE,
		0,
		NULL,
		OPEN_EXISTING,
		FILE_ATTRIBUTE_NORMAL,
		NULL );

	if( hConfig != INVALID_HANDLE_VALUE )
	{
		DWORD bytesRead;
		::ReadFile( hConfig, & m_ViewerConfig, sizeof( m_ViewerConfig ), & bytesRead, NULL );
		::CloseHandle( hConfig );
	}
	else
	{
		sprintf( m_ViewerConfig.m_pPs2DeciIPDescription, "0.0.0.0" );
	}

	// Set the text of the ps2 ip address edit box

	m_CEdit_Ps2_IP.SetWindowText( m_ViewerConfig.m_pPs2DeciIPDescription );

	return TRUE;  // return TRUE  unless you set the focus to a control
}

// If you add a minimize button to your dialog, you will need the code below
//  to draw the icon.  For MFC applications using the document/view model,
//  this is automatically done for you by the framework.

void CMovieviewerDlg::OnPaint() 
{
	if (IsIconic())
	{
		CPaintDC dc(this); // device context for painting

		SendMessage(WM_ICONERASEBKGND, (WPARAM) dc.GetSafeHdc(), 0);

		// Center icon in client rectangle
		int cxIcon = GetSystemMetrics(SM_CXICON);
		int cyIcon = GetSystemMetrics(SM_CYICON);
		CRect rect;
		GetClientRect(&rect);
		int x = (rect.Width() - cxIcon + 1) / 2;
		int y = (rect.Height() - cyIcon + 1) / 2;

		// Draw the icon
		dc.DrawIcon(x, y, m_hIcon);
	}
	else
	{
		CDialog::OnPaint();
	}
}

// The system calls this to obtain the cursor to display while the user drags
//  the minimized window.
HCURSOR CMovieviewerDlg::OnQueryDragIcon()
{
	return (HCURSOR) m_hIcon;
}

void CMovieviewerDlg::OnChangeEdit1() 
{
	// TODO: If this is a RICHEDIT control, the control will not
	// send this notification unless you override the CDialog::OnInitDialog()
	// function and call CRichEditCtrl().SetEventMask()
	// with the ENM_CHANGE flag ORed into the mask.
	
	// TODO: Add your control notification handler code here
	
}

void CMovieviewerDlg::OnPlayButton() 
{

    // Play has been pressed.  We'll need to collect the name of the file to play
    // and the platform to play it on.

    unsigned int platformId = GetPlatformId( );

    char buf[ 256 ];
    GetFileName( buf, 256 );

    unsigned int audioTrack = GetAudioTrack( );

	// Update the viewer config info

	UpdateViewerConfig( );

    // Ensure that this is a valid filename

    if( ! SUCCEEDED( GetFileAttributes( buf ) ) )
    {
		CString appName;
		appName.LoadString(IDS_APPNAME);

        char buf2[ 512 ];
        sprintf( buf2, "File not found [%s]", buf );

        MessageBox( buf2, appName, MB_OK );
        return;
    }

    if( ! LaunchMovie( platformId, buf, audioTrack ) )
    {
		CString appName;
		appName.LoadString(IDS_APPNAME);

        MessageBox( "Error Launching movie on the console", appName, MB_OK );
    }
}

LRESULT CMovieviewerDlg::OnStatusText(WPARAM param, LPARAM)
{	
	CString msgText;
	msgText.LoadString( param );
    m_StatusList.ResetContent( );
    m_StatusList.InsertString( 0, msgText );

    return 0;
}

unsigned int CMovieviewerDlg::GetPlatformId()
{
    return m_PlatList.GetCurSel( );
}

unsigned int CMovieviewerDlg::GetAudioTrack( void )
{
    // remember that noaudio track is equivalent to 0xFFFFFFFF in radmovie.
    // So we can subtract one from the index in the a track list and get
    // a good value

    return m_ATrackList.GetCurSel( ) - 1;
}

void CMovieviewerDlg::UpdateViewerConfig( void )
{
	m_CEdit_Ps2_IP.GetWindowText( m_ViewerConfig.m_pPs2DeciIPDescription, PS2_IP_DESC_SIZE );
}

void CMovieviewerDlg::GetFileName(char *pBuf, unsigned int size)
{
    m_CEdit.GetWindowText( pBuf, size );
}

bool CMovieviewerDlg::LaunchMovie(unsigned int platformId, char *pFileName, unsigned int audioTrack )
{
    if( m_pIMovieLauncher[ platformId ] != NULL )
    {
        return m_pIMovieLauncher[ platformId ]->LaunchMovie( pFileName, audioTrack, & m_ViewerConfig );
    }
    else
    {
        return false;
    }
}

void CMovieviewerDlg::TestDropTarget( UINT resource, CPoint & point, CString & text )
{
    CWnd * pWnd = GetDlgItem( resource );

    if ( pWnd )
    {
        CRect rect;
        pWnd->GetWindowRect( & rect );
        ScreenToClient( & rect );

        if ( rect.PtInRect( point ) )
        {
            pWnd->SetWindowText( text );
        }
    }

}

void CMovieviewerDlg::OnDropFiles(HDROP hDropInfo) 
{
    UINT numFiles = ::DragQueryFile( hDropInfo, 0xFFFFFFFF, NULL, 0 );
    
    if ( numFiles > 1 )
    {
		CString appName;
		appName.LoadString(IDS_APPNAME);

        MessageBox( "You can only drop one file at a time", appName, MB_OK );
    }
    else if ( numFiles == 1 )
    {
        CPoint point;
        DragQueryPoint( hDropInfo, & point );

        char buffer[ 256 ];
        DragQueryFile( hDropInfo, 0, buffer, 256 );

        // check which edit box this file was dropped in

        TestDropTarget( IDC_FILENAME_EDIT, point, CString( buffer ) );
    }
}

void CMovieviewerDlg::OnBrowseButton() 
{
    CWnd * pTarget = GetDlgItem( IDC_FILENAME_EDIT );
    
    if ( pTarget )
    {
        CString currentName;

        pTarget->GetWindowText( currentName );         

        CFileDialog openDlg( true,
            NULL, currentName , OFN_HIDEREADONLY,
            "Movie Files|*.*" );

        if ( openDlg.DoModal( ) == IDOK )
        {
            pTarget->SetWindowText( openDlg.GetPathName( ) );
        }
    }	
}

void CMovieviewerDlg::OnDestroy() 
{
    for( unsigned int i = 0; i < 5; i++ )
    {
        if( m_pIMovieLauncher[ i ] != NULL )
        {
            m_pIMovieLauncher[ i ]->OnDestroy( );
            delete m_pIMovieLauncher[ i ];
        }
    }

	// Write the updated config file

	HANDLE hConfig = ::CreateFile( g_pConfigFileName,
		GENERIC_WRITE,
		0,
		NULL,
		OPEN_ALWAYS,
		FILE_ATTRIBUTE_NORMAL,
		NULL );

	if( hConfig != INVALID_HANDLE_VALUE )
	{
		DWORD bytesWritten;
		::SetFilePointer( hConfig, 0, 0, FILE_BEGIN );
		::WriteFile( hConfig, & m_ViewerConfig, sizeof( m_ViewerConfig ), & bytesWritten, NULL );
		::CloseHandle( hConfig );
	}
}


LRESULT CMovieviewerDlg::WindowProc(UINT message, WPARAM wParam, LPARAM lParam) 
{

 // TODO: Add your specialized code here and/or call the base class
	
	return CDialog::WindowProc(message, wParam, lParam);
}

void CMovieviewerDlg::OnTimer(UINT nIDEvent) 
{
    // TODO: Add your message handler code here and/or call default
	
	CDialog::OnTimer(nIDEvent);
}

void CMovieviewerDlg::OnBnClickedButtonConfig()
{
    CWnd * pTarget = GetDlgItem( IDD_CONFIG_DIALOG );
    
    if ( pTarget )
    {
        CString currentName;

        pTarget->GetWindowText( currentName );         

        CFileDialog openDlg( true,
            NULL, currentName , OFN_HIDEREADONLY );

        if ( openDlg.DoModal( ) == IDOK )
        {
            pTarget->SetWindowText( openDlg.GetPathName( ) );
        }
    }	
}

void CMovieviewerDlg::OnBnClickedConfigButton()
{
}
