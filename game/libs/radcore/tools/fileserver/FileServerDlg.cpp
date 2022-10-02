//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


//=============================================================================
//
// File:        File Server Dialg.CPP
//
// Subsystem:   Radical File Server
//
// Description:	This file contains the file dialog
//
//=============================================================================

//=============================================================================
// Include Files
//=============================================================================

#include "stdafx.h"
#include <assert.h>
#include <windows.h>
#include <direct.h>
#include "FileServer.h"
#include "FileServerDlg.h"
#include "ExceptDlg.h"
#include <raddebugcommunication.hpp>
#include <radfile.hpp>
#include "..\..\src\radprotocols\FileProtocol.hpp"
#include <raddebugfileserver.hpp>
#include <shlobj.h>

#ifdef _DEBUG
#define new DEBUG_NEW
#undef THIS_FILE
static char THIS_FILE[] = __FILE__;
#endif

//=============================================================================
// Local Defintions
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
		// No message handlers
	//}}AFX_MSG_MAP
END_MESSAGE_MAP()

//=============================================================================
// CFileServerDialog Members
//=============================================================================

CFileServerDlg::CFileServerDlg(CWnd* pParent /*=NULL*/)
	: CDialog(CFileServerDlg::IDD, pParent), m_LogFileHandle(NULL)
{
	//{{AFX_DATA_INIT(CFileServerDlg)
	//}}AFX_DATA_INIT
	// Note that LoadIcon does not require a subsequent DestroyIcon in Win32
	m_hIcon = AfxGetApp()->LoadIcon(IDR_MAINFRAME);
}

void CFileServerDlg::DoDataExchange(CDataExchange* pDX)
{
	CDialog::DoDataExchange(pDX);
	//{{AFX_DATA_MAP(CFileServerDlg)
	DDX_Control(pDX, IDC_TARGETSELECT, m_TargetSelect);
	DDX_Control(pDX, IDC_OVERRIDEPATH, m_Override);
	DDX_Control(pDX, IDC_EDITFILENAME, m_Filename);
	DDX_Control(pDX, IDC_BUTTONTOPMOST, m_TopMost);
	DDX_Control(pDX, IDOK, m_Quit);
	DDX_Control(pDX, IDC_LISTOPENFILES, m_OpenFiles);
	DDX_Control(pDX, IDC_LISTEXCEPTIONS, m_Exceptions);
	DDX_Control(pDX, IDC_EDITSTATE, m_State);
	DDX_Control(pDX, IDC_EDITPATH, m_Path);
	DDX_Control(pDX, IDC_EDITLOGFILE, m_LogFile);
	DDX_Control(pDX, IDC_EDITMESSAGES, m_Messages);
	DDX_Control(pDX, IDC_BUTTONLOGENABLE, m_LogEnableButton);
	DDX_Control(pDX, IDC_BUTTONSHOWLOG, m_ShowLogButton);
	DDX_Control(pDX, IDC_BUTTONSAVE, m_SaveButton);
	DDX_Control(pDX, IDC_BUTTONPATH, m_PathButton);
	DDX_Control(pDX, IDC_BUTTONLOAD, m_LoadButton);
	DDX_Control(pDX, IDC_BUTTONDELETE, m_DeleteButton);
	DDX_Control(pDX, IDC_BUTTONATTACH, m_AttachButton);
	DDX_Control(pDX, IDC_BUTTONADD, m_AddButton);
	DDX_Control(pDX, IDC_BUTTONABOUT, m_AboutButton);
	DDX_Control(pDX, IDC_RADIOTARGET, m_TargetButton);
	DDX_Control(pDX, IDC_RADIOHOST, m_HostButton);
	//}}AFX_DATA_MAP
}

BEGIN_MESSAGE_MAP(CFileServerDlg, CDialog)
	//{{AFX_MSG_MAP(CFileServerDlg)
	ON_WM_SYSCOMMAND()
	ON_WM_PAINT()
	ON_WM_QUERYDRAGICON()
	ON_BN_CLICKED(IDC_BUTTONABOUT, OnButtonAbout)
	ON_BN_CLICKED(IDC_BUTTONATTACH, OnButtonAttach)
	ON_BN_CLICKED(IDC_BUTTONPATH, OnButtonPath)
	ON_BN_CLICKED(IDC_BUTTONLOGENABLE, OnButtonLogEnable)
	ON_BN_CLICKED(IDC_BUTTONSHOWLOG, OnButtonShowLog)
	ON_LBN_SELCHANGE(IDC_LISTEXCEPTIONS, OnSelchangeListexceptions)
	ON_BN_CLICKED(IDC_BUTTONADD, OnButtonAdd)
	ON_BN_CLICKED(IDC_BUTTONDELETE, OnButtonDelete)
	ON_BN_CLICKED(IDC_RADIOHOST, OnRadiohost)
	ON_BN_CLICKED(IDC_RADIOTARGET, OnRadiotarget)
	ON_BN_CLICKED(IDC_BUTTONLOAD, OnButtonload)
	ON_BN_CLICKED(IDC_BUTTONSAVE, OnButtonsave)
	ON_EN_SETFOCUS(IDC_EDITMESSAGES, OnSetfocusEditmessages)
	ON_BN_CLICKED(IDC_BUTTONTOPMOST, OnButtontopmost)
	ON_WM_DESTROY()
	ON_WM_CLOSE()
	ON_BN_CLICKED(IDC_OVERRIDEPATH, OnOverridepath)
	ON_WM_TIMER()
	ON_CBN_SELCHANGE(IDC_TARGETSELECT, OnSelchangeTargetselect)
	//}}AFX_MSG_MAP
END_MESSAGE_MAP()


/////////////////////////////////////////////////////////////////////////////
// CFileServerDlg message handlers




BOOL CFileServerDlg::OnInitDialog()
{
	CDialog::OnInitDialog();

    //
    // Remove unwanted system menu commands.
    //
	CMenu* pSysMenu = GetSystemMenu(FALSE);
    pSysMenu->DeleteMenu( SC_MAXIMIZE, MF_BYCOMMAND  );
    pSysMenu->DeleteMenu( SC_SIZE, MF_BYCOMMAND  );

	// Set the icon for this dialog.  The framework does this automatically
	//  when the application's main window is not a dialog
	SetIcon(m_hIcon, TRUE);			// Set big icon

    //
    // Assume no file parameters, Initialize default state.
    //
    strcpy( m_Config.m_Version, "George" );
    strcpy( m_Config.m_TargetName, "" );
    GetCurrentDirectory( 256, m_Config.m_Path );
    m_Config.m_DefaultHost = true;
    m_Config.m_ExceptionCount = 0;
    strcpy( m_Config.m_Executable, "" );
    m_Config.m_Override = false;

    m_TxOutstanding = false;

    for( int i = 0 ; i < 10 ; i++ )
    {
        m_Config.m_Exceptions[ i ][ 0 ] = '\0';
    } 
    m_ConfigAltered = false;
    m_ConfigFile[0] = '\0';
    m_CommandLineLaunch = false;
    m_ShowLog = true;

    //
    // Check if command line specified. Attempt to load data. If not valid
    // pretend it never happed. 1st arguement is filename, 2nd is the target name

    char* TargetName = NULL;

    if( theApp.m_lpCmdLine[0] != '\0' )
    {
        char* pFileName = strtok( theApp.m_lpCmdLine, " ,");
                  
        TargetName = strtok( NULL, " ,");

        if( LoadConfig( pFileName ) )
        {
            //
            // Config was good. Save file name.
            //
            m_CommandLineLaunch = true;

            //
            // Translate this to full path.
            //
            char*   pFilenamePortion;
    
            GetFullPathName( theApp.m_lpCmdLine, 256, m_ConfigFile, &pFilenamePortion );
        }
    }
    else
    {
        //
        // If there was nothing on the command line, try getting the last config
        // file name from the registry.
        //
        char regFilename[ 256 ];
        GetLastConfigName( regFilename );
        if( regFilename[ 0 ] != '\0' )
        {
            LoadConfig( regFilename );
        }
    }

    if( TargetName != NULL )
    {
        strcpy( m_Config.m_TargetName, TargetName );
    }      

    //
    // Get interface to the host file server.
    //
    radDebugFileServerInit();
    radDebugFileServerCreate( &m_FileServer, 10 );
    rAssert( m_FileServer != NULL );

    // register callbacks
    m_FileServer->RegisterFileCallback( this );
    m_FileServer->RegisterLogCallback( this );
    m_FileServer->RegisterStatusCallback( this );

    UpdateTargetName( m_Config.m_TargetName );

    //  
    // Intialize the dialog and the file server's internal state.
    //
    m_Path.SetWindowText( m_Config.m_Path );   
    m_FileServer->SetBasePath( m_Config.m_Path );

    m_Filename.SetWindowText( m_Config.m_Executable );
    if( strlen( m_Config.m_Executable ) > 0 )
    {
        m_FileServer->SetBootData( (unsigned char *)m_Config.m_Executable, 1 + strlen( m_Config.m_Executable ) );
    }
    else
    {
        m_FileServer->SetBootData( NULL, 0 );
    }

    
    m_TargetButton.SetCheck( !m_Config.m_DefaultHost );
    m_ShowLogButton.SetCheck( m_ShowLog );
    m_HostButton.SetCheck( m_Config.m_DefaultHost );
    m_FileServer->SetDefaultHost( m_Config.m_DefaultHost );

    m_Override.SetCheck( m_Config.m_Override );
    m_FileServer->SetPathOverride( m_Config.m_Override );

    for( unsigned int x = 0 ; x < m_Config.m_ExceptionCount ; x++ )
    {
        m_Exceptions.AddString( m_Config.m_Exceptions[ x ] );
        m_FileServer->AddException( m_Config.m_Exceptions[ x ] );
    }
       
    m_State.SetWindowText("Disconnected");    

    UpdateControls( );

    if( m_CommandLineLaunch )
    {
        OnButtonAttach();
    }

   	return TRUE;  // return TRUE  unless you set the focus to a control
}


void CFileServerDlg::UpdateControls( void )
{
    if( !m_FileServer->IsConnected( ) )
    {
        //
        // Enable all controls.
        //
        m_TargetSelect.EnableWindow( true );
        m_Path.EnableWindow( true );
        m_PathButton.EnableWindow( true );
        m_HostButton.EnableWindow( true );
        m_TargetButton.EnableWindow( true );
        m_Filename.EnableWindow( true );
        m_Override.EnableWindow( true );

        m_Exceptions.EnableWindow( true );
 
        if( m_Config.m_ExceptionCount != 10 )
        {  
           m_AddButton.EnableWindow( true );
        }
        else
        {
           m_AddButton.EnableWindow( false );
        }
            
        if( (m_Config.m_ExceptionCount == 0) || (LB_ERR == m_Exceptions.GetCurSel( ) ) )
        {  
           m_DeleteButton.EnableWindow( false );
        }
        else
        {
           m_DeleteButton.EnableWindow( true );
        }
            
        m_AttachButton.EnableWindow( true );
        m_LoadButton.EnableWindow( true );
        m_SaveButton.EnableWindow( true );
        m_AboutButton.EnableWindow( true );
        m_Quit.EnableWindow( true );
        m_Messages.EnableWindow( true );

        m_AttachButton.SetWindowText("Attach");    
    }        
    else
    {
        //
        // Disable most controls.
        //
        m_TargetSelect.EnableWindow( false );
        m_Path.EnableWindow( false );
        m_PathButton.EnableWindow( false );
        m_HostButton.EnableWindow( false );
        m_TargetButton.EnableWindow( false );
        m_Exceptions.EnableWindow( false );
        m_AddButton.EnableWindow( false );
        m_DeleteButton.EnableWindow( false );
        m_LoadButton.EnableWindow( false );
        m_SaveButton.EnableWindow( false );
        m_AboutButton.EnableWindow( false );
        m_Quit.EnableWindow( false );
        m_Messages.EnableWindow( true );
        m_Filename.EnableWindow( false );
        m_Override.EnableWindow( false );
        m_AttachButton.EnableWindow( true );
        m_AttachButton.SetWindowText("Detach");    
    }
}


bool CFileServerDlg::GetConfig( void )
{
    //
    // raw path name string from user.
    //
    CString strDir;
    CString strExecutable;
    char temp[ 256 ] = { 0 };

    //
    // processed path name and args.
    //
    char szFullPathName[ 1024 ]  = { 0 };
    char szFileName[ 1024 ] = { 0 };
    char szArgs[ 256 ] = { 0 };

    char msg[ 200];

    //
    // Get user input.
    //
    m_Path.GetWindowText( strDir );
    m_Filename.GetWindowText( strExecutable );

    //
    // Validate the path.
    //
    if ( ! PathIsDirectory( strDir ) )
    {
        wsprintf( msg, "Invalid path \"%s\" specified", strDir );  

        AfxMessageBox( msg ); 

        GotoDlgCtrl( &m_Path );

        return( false );
    }

    //
    // Make sure executable is specified.
    //
    if ( strExecutable.GetLength( ) > 0 )
    {
        //
        // Create a full executable specification
        //
        char szExeSpec[ 1024 ] = { 0 };
        strcpy( szExeSpec, strDir );
        strcat( szExeSpec, "\\" );
        strcat( szExeSpec, strExecutable );

        //
        // get only the full path name
        //
        strcpy( szFullPathName, szExeSpec );
        PathRemoveArgs( szFullPathName );

        //
        // get only the args
        //
        strcpy( szArgs, & szExeSpec[ strlen( szFullPathName ) + 1 ] );

        //
        // get only the filename
        //
        strcpy( szFileName, szFullPathName );
        PathStripPath( szFileName );

        //
        // Make sure file exists.
        //
        if ( ! PathFileExists( szFullPathName ) )
        {
            wsprintf( msg, "Executable \"%s\" does not exist", szFullPathName );  

            AfxMessageBox( msg ); 

            GotoDlgCtrl( &m_Filename );
        
            return( false );
        }

        unsigned char pBootData[ 1024 ] = { 0 };
        strcpy( (char*)pBootData, szFileName );
        strcat( (char*)pBootData, " " );
        strcat( (char*)pBootData, szArgs );

        //
        // Write the filename containing the executable to load.
        //
        m_FileServer->SetBootData( pBootData, 1 + strlen( (char*)pBootData ) );
    }
    else
    {
        m_FileServer->SetBootData( NULL, 0 );
    }

    //
    // Good enough verification. Lets move the data. 
    //
    strcpy( m_Config.m_Executable, strExecutable );

    strcpy( m_Config.m_Path, strDir );

    m_Config.m_ExceptionCount = m_Exceptions.GetCount( );
    
    for( unsigned int i = 0 ; i < m_Config.m_ExceptionCount ; i++ )
    {
        m_Exceptions.GetText( i, temp );
        strcpy( m_Config.m_Exceptions[ i ], temp );
    } 

    m_TargetSelect.GetLBText( m_TargetSelect.GetCurSel( ), m_Config.m_TargetName );

    return( true );
}


bool CFileServerDlg::LoadConfig
( 
    const char* filename
)
{
    CFile File;
    Config config;

    if( !File.Open( filename, CFile::modeRead ) )
    {
        rDebugPrintf( "Error opening config %s\n", filename );
        return( false );
    }
         
    if( sizeof( Config ) != File.Read( &config, sizeof( Config ) ) )
    {
        File.Close( );
        rDebugPrintf( "Error reading config %s\n", filename );
        return( false );
    }

    File.Close( );
    
    //
    // Check my magic version hack,
    //
    if( 0 != strcmp( config.m_Version, "George" ) )
    {
        rDebugPrintf( "Invalid config %s\n", filename );
        return( false );
    }

    m_Config = config;

    return( true );
}
           
bool CFileServerDlg::SaveConfig
( 
    const char* filename
)
{
    CFile File;

    if( !File.Open( filename, CFile::modeCreate | CFile::modeWrite ) )
    {
        return( false );
    }
         
    File.Write( &m_Config, sizeof( Config ) ); 
    
    File.Close( );
    
    return( true );
}
           
void CFileServerDlg::OnSysCommand(UINT nID, LPARAM lParam)
{
    CDialog::OnSysCommand(nID, lParam);
}



// If you add a minimize button to your dialog, you will need the code below
//  to draw the icon.  For MFC applications using the document/view model,
//  this is automatically done for you by the framework.

void CFileServerDlg::OnPaint() 
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
HCURSOR CFileServerDlg::OnQueryDragIcon()
{
	return (HCURSOR) m_hIcon;
}

void CFileServerDlg::OnOK() 
{
    if( m_ConfigAltered )
    {
        if(IDYES == AfxMessageBox("Configuration has been altered. Save?",MB_YESNO ) )
        {
            if( GetConfig( ) )
            {   
   
                static char szFilter[ ] = "HFS Configurations|*.hfs|"
                                           "All Files|*.*||";

                CFileDialog FileDlg( false, "hfs", m_ConfigFile, OFN_HIDEREADONLY, szFilter, NULL );

                if( IDOK == FileDlg.DoModal( ) )
                {
                    strcpy( m_ConfigFile, FileDlg.GetFileName( ) );
            
                    if( !SaveConfig( m_ConfigFile ) )
                    {
                        char msg[ 200 ];
            
                        wsprintf( msg, "Error writing \"%s\".", m_ConfigFile ); 

                        AfxMessageBox( msg ); 
                        
                        return;
                    }
                    else
                    {
                        m_ConfigAltered = false;
                        //
                        // Save last-used config name in the registry.
                        //
                        SetLastConfigName( m_ConfigFile );
                    }
                }
                else
                {
                    return;
                }
            }
            else
            {
                return;
            }
        }
         
    }

	CDialog::OnOK();
}

void CFileServerDlg::OnButtonAbout() 
{
    CAboutDlg dlg;

    dlg.DoModal( );
	
}


void CFileServerDlg::OnSetfocusEditmessages() 
{

    GotoDlgCtrl( &m_AttachButton );
	
}



//=============================================================================
// Path stuff.
//=============================================================================

static char g_Path[ 256 + 1 ];

int CALLBACK BrowseCallbackProc(
    HWND hwnd, 
    UINT uMsg, 
    LPARAM lParam, 
    LPARAM lpData
    )
{
    (void) lParam;
    (void) lpData;
    
    if( uMsg == BFFM_INITIALIZED )
    {
        SendMessage( hwnd, BFFM_SETSELECTION , true, (LPARAM) g_Path );
    }

    return( 0 );
}
 

void CFileServerDlg::OnButtonPath() 
{

    m_Path.GetWindowText( g_Path, 256 );

    char path[ 256 + 1];

    ITEMIDLIST* item;
    BROWSEINFO binfo;   
    
    binfo.hwndOwner = this->m_hWnd;
    binfo.pidlRoot = NULL;
    binfo.pszDisplayName = path;
    binfo.lpszTitle = "Select root path specification for files";
    binfo.ulFlags = BIF_RETURNONLYFSDIRS; 
    binfo.lpfn = BrowseCallbackProc;
 

    if( NULL != (item = SHBrowseForFolder( &binfo ))) 
    {

        SHGetPathFromIDList( item, path );

        m_Path.SetWindowText( path );
         
        UpdateControls( );   
        m_FileServer->SetBasePath( path );
        m_ConfigAltered = true;
   
    }
}

//=============================================================================
// Log file stuff.
//=============================================================================

static char g_LogFile[ 256 + 1 ];

void CFileServerDlg::OnButtonLogEnable() 
{
    CString temp1;

    if (m_LogFileHandle != NULL)
    {
        m_LogFileHandle->Close();
        m_LogFileHandle = NULL;
    }
    if (m_LogEnableButton.GetCheck())
    {
        m_LogFile.GetWindowText( temp1 );
 
        if( strlen( temp1 ) != 0 )
        {
            CString temp2;

            m_Path.GetWindowText( temp2 );
       
            int  len = strlen( temp2 );
            char filespec [ 200 ];
            strcpy( filespec , temp2);
            if( filespec[ len - 1 ] != '\\' )
            {
                filespec[ len ] = '\\';
                filespec[ len + 1] = '\0';
            }
            strcat( filespec, temp1 );
    
            m_LogFileHandle = new CFile( filespec, CFile::modeCreate | CFile::modeWrite );
        }
    }
}


void CFileServerDlg::OnButtonShowLog() 
{
    if (m_ShowLogButton.GetCheck())
    {
        m_ShowLog = true;
    }
    else
    {
        m_ShowLog = false;
    }
}

//=============================================================================
// Exception list box stuff
//=============================================================================

void CFileServerDlg::OnSelchangeListexceptions() 
{
    UpdateControls( );
}

void CFileServerDlg::OnButtonAdd() 
{
    CExceptDlg dlg;

    if( IDOK == dlg.DoModal( ) )
    {
        m_Exceptions.AddString( dlg.m_Spec );
         
        m_Config.m_ExceptionCount++;   

        UpdateControls( );   
        m_FileServer->AddException( dlg.m_Spec.GetBuffer( 256 ) );
        m_ConfigAltered = true;
    }
	
}

void CFileServerDlg::OnButtonDelete() 
{

    if( LB_ERR != m_Exceptions.GetCurSel( ) )
    {
        char tempException[ 256 + 1 ];
        m_Exceptions.GetText( m_Exceptions.GetCurSel( ), tempException );
        m_FileServer->RemoveException( tempException );
        m_Exceptions.DeleteString( m_Exceptions.GetCurSel( ) );
        m_Config.m_ExceptionCount--;   

        UpdateControls( );   

        m_ConfigAltered = true;
    }    
	
}

void CFileServerDlg::OnRadiohost() 
{
    m_Config.m_DefaultHost = true;
    m_FileServer->SetDefaultHost( true );

    m_ConfigAltered = true;
}

void CFileServerDlg::OnRadiotarget() 
{

    m_Config.m_DefaultHost = false;
    m_FileServer->SetDefaultHost( false );

    m_ConfigAltered = true;

}

//=============================================================================
// Save and restore stuff
//=============================================================================

void CFileServerDlg::OnButtonload() 
{
    static char szFilter[ ] = "HFS Configurations|*.hfs|"
                               "All Files|*.*||";

    CFileDialog FileDlg( true, "hfs", m_ConfigFile, OFN_HIDEREADONLY, szFilter, NULL );

    if( IDOK == FileDlg.DoModal( ) )
    {
        strcpy( m_ConfigFile, FileDlg.GetFileName( ) );
            
        if( !LoadConfig( m_ConfigFile ) )
        {
            char msg[ 200 ];
            
            wsprintf( msg, "Error accessing \"%s\". Possibly bad file format.", m_ConfigFile ); 

            AfxMessageBox( msg ); 
    
        
        }
        else
        {
            //  
            // Intialize the dialog and file server
            //
            OnFileServerLogMessage( "----- New config loaded -----" );
            m_Exceptions.ResetContent( );
            m_FileServer->ClearExceptions( );

            m_Path.SetWindowText( m_Config.m_Path );   
            m_FileServer->SetBasePath( m_Config.m_Path );

            m_TargetButton.SetCheck( !m_Config.m_DefaultHost );
            m_HostButton.SetCheck( m_Config.m_DefaultHost );
            m_FileServer->SetDefaultHost( m_Config.m_DefaultHost );

            m_Filename.SetWindowText( m_Config.m_Executable );
            if( strlen( m_Config.m_Executable ) > 0 )
            {
                m_FileServer->SetBootData( (unsigned char *)m_Config.m_Executable, 1 + strlen( m_Config.m_Executable ) );
            }
            else
            {
                m_FileServer->SetBootData( NULL, 0 );
            }

            m_Override.SetCheck( m_Config.m_Override );
            m_FileServer->SetPathOverride( m_Config.m_Override );

            for( unsigned int x = 0 ; x < m_Config.m_ExceptionCount ; x++ )
            {
                m_Exceptions.AddString( m_Config.m_Exceptions[ x ] );
                m_FileServer->AddException( m_Config.m_Exceptions[ x ] );
            } 

            UpdateTargetName( m_Config.m_TargetName );
       
            UpdateControls( );

            m_ConfigAltered = false;

            //
            // Save last-used config name in the registry.
            //
            SetLastConfigName( m_ConfigFile );
        }
    }
}

void CFileServerDlg::OnButtonsave() 
{
    if( GetConfig( ) )
    {   
   
        static char szFilter[ ] = "HFS Configurations|*.hfs|"
                                   "All Files|*.*||";

        CFileDialog FileDlg( false, "hfs", m_ConfigFile, OFN_HIDEREADONLY, szFilter, NULL );

        if( IDOK == FileDlg.DoModal( ) )
        {
            strcpy( m_ConfigFile, FileDlg.GetFileName( ) );
            
            if( !SaveConfig( m_ConfigFile ) )
            {
                char msg[ 200 ];
            
                wsprintf( msg, "Error writing \"%s\".", m_ConfigFile ); 

                AfxMessageBox( msg ); 
        
            }
            else
            {
                m_ConfigAltered = false;

                //
                // Save last-used config name in the registry.
                //
                SetLastConfigName( m_ConfigFile );
            }
        }
    }
}

void CFileServerDlg::OnButtontopmost() 
{
    static bool topmost = false;
        
    if( topmost )
    {
        topmost = false;
        m_TopMost.SetWindowText( "Top Most");
        SetWindowPos( &wndNoTopMost, 0,0,0,0, SWP_NOMOVE | SWP_NOSIZE );  
    }
    else
    {
        topmost = true;
        m_TopMost.SetWindowText( "Normal");
        SetWindowPos( &wndTopMost, 0,0,0,0, SWP_NOMOVE | SWP_NOSIZE );  
    }
}

void CFileServerDlg::OnDestroy() 
{
    if( m_FileServer != NULL )
    {
        m_FileServer->Release( );
        radDebugFileServerTerminate( );
        m_FileServer = NULL;
    }

	CDialog::OnDestroy();
}

void CFileServerDlg::OnClose() 
{
	CDialog::OnClose();
}

void CFileServerDlg::OnOverridepath() 
{
    m_Config.m_Override  = !m_Config.m_Override;
    m_FileServer->SetPathOverride( m_Config.m_Override );
    m_ConfigAltered = true;
}

bool CFileServerDlg::UpdateTargetName(char *targetName)
{
    //
    // Enumerate the defined targets and add them to the combo box.
    //
    m_TargetSelect.ResetContent( );

    //
    // Get the target enumeration interface.
    //
    IRadDbgComTargetTable* targetInterface;
    m_FileServer->GetTargetInterface( &targetInterface );
    targetInterface->EnumerateTargets( this, EnumeratorCallback );

    //
    // Get the count. If zero, display message and exit.
    //
    if( m_TargetSelect.GetCount( ) == 0 )
    {
         AfxMessageBox( "No target definitions exist. Create targets using the \nFoundation Technologies TargetEditor" ); 
        
         targetInterface->Release( );
         return( false );
    }

    if( strlen( targetName ) != 0 )
    {
        if( m_TargetSelect.FindString( 0, targetName ) == CB_ERR )
        {
            char outbuf[ 200 ];
            wsprintf( outbuf, "No target definitions exist for %s. Create targets using the \nFoundation Technologies TargetEditor", targetName );  
            AfxMessageBox( outbuf );
        }
        else
        {
            m_TargetSelect.SelectString( 0, targetName );
            targetInterface->Release( );
            return( true );
        } 
    }

    radDbgComTargetName defaultName;

    if( targetInterface->GetDefaultTarget( defaultName ) )
    {
        m_TargetSelect.SelectString( 0, defaultName );
    }  

    targetInterface->Release( );
    return( true );
}

CFileServerDlg::~CFileServerDlg()
{
}


void CFileServerDlg::EnumeratorCallback( void* context, const radDbgComTargetName pName, const radDbgComIPAddress pIpAddress, unsigned short port, bool InUse )
{
    (void) port;
    (void) InUse;
    (void) pIpAddress;

    CFileServerDlg* pDlg = (CFileServerDlg*) context;

    pDlg->m_TargetSelect.AddString( pName );

} 

void CFileServerDlg::OnSelchangeTargetselect() 
{
    m_ConfigAltered = true;
}


//=============================================================================
// Connection stuff
//=============================================================================

void CFileServerDlg::OnButtonAttach() 
{
    if( !m_FileServer->IsConnected( ) )
    {
        // We are not connected.

        // Check configuration.
        if( !GetConfig( ) )
        {
            //
            // Bad configuration. Stay in this state.
            //
            UpdateControls( );
            return;
        }
  
        //
        // Get a channel.
        //
        char message[ 512 ];
        message[ 0 ] = '\0';
        if (!m_FileServer->Attach( m_Config.m_TargetName, message ) )
        {
            AfxMessageBox( message );

            UpdateControls( );
            return;
        }

        //
        // Initiate the connection.
        //
        m_State.SetWindowText("Connecting");    

        UpdateControls( );
    }
    else
    {
        m_FileServer->Detach( );

        m_State.SetWindowText( "Disconnected" );    

        OnFileServerLogMessage( "Connection terminated by user." );
       
        UpdateControls( );
    }
	
}

//=============================================================================
// File Stuff
//=============================================================================

void CFileServerDlg::CloseFiles()
{
    //
    // Get each open file from the list box;
    //
    while( m_OpenFiles.GetCount( ) > 0 )
    {
        m_OpenFiles.DeleteString( 0 );
    }
}  


void CFileServerDlg::OnStatusChange( IRadDbgComChannel::ConnectionState connectionState,  const char* Message )
{
    (void) connectionState;

    // convert message to non-const string so we cna log it
    if( Message != NULL ) 
    {
        OnFileServerLogMessage( (char *)Message );
    }

    m_State.SetWindowText( Message );
    CloseFiles( );
    UpdateControls( );
}


void CFileServerDlg::OnFileServerLogMessage( char *pMessage )
{
    if( m_ShowLog )
    {
        char olddata[ 4 ];

        int end = m_Messages.GetWindowTextLength( );
        m_Messages.SetSel( end, end ); // return selection to end
        m_Messages.ReplaceSel( pMessage );
        olddata[ 0 ] = (char) 13;
        olddata[ 1 ] = (char) 10;
        olddata[ 2 ] = (char) 0;
   
        m_Messages.ReplaceSel( olddata );

        // Limit number of log lines visible to 300 for easy scrolling
        if( m_Messages.GetLineCount( ) > 300 )
        {
            int length = m_Messages.LineLength( 0 ) + 2; // +2 is for CR/LF
            m_Messages.SetSel( 0, length );
            m_Messages.Clear( );           
            m_Messages.SetSel( end, end ); // return selection to end
        }
    }

    if (m_LogFileHandle != NULL)
    {
        char newLine[] = "\r\n";

        m_LogFileHandle->Write( pMessage, strlen( pMessage ) );
        m_LogFileHandle->Write( newLine, strlen( newLine ));
    }
}


void CFileServerDlg::OnTargetFileAction( char *pName, HfpCommand pCommand, int pPosition, int pLength )
{
    (void) pPosition;
    (void) pLength;

    switch( pCommand )
    {
        case HfsOpen:
        {
            m_OpenFiles.AddString( pName );
            break;
        }

        case HfsClose:
        {
            UINT i = m_OpenFiles.FindString( -1, pName );
            if( i != LB_ERR )
            {
                m_OpenFiles.DeleteString( i );
            }
            break;
        }
        default:
        {
            break;
        }
    }
}



//=============================================================================
// Function:    CFileServerDlg::GetLastConfigName
//=============================================================================
// Description: This member function tries to obtain the name of the user's
//              most recently used file server config file from the registry.
//              On success, it returns a file name for the caller to try to
//              load.
//
// Parameters:  pFilename - On success, the name of the last-used config file is
//              copied here. On failure, the result is an empty string.
//------------------------------------------------------------------------------

void CFileServerDlg::GetLastConfigName( char* pFilename )
{
    rAssert( pFilename != NULL );

    pFilename[ 0 ] = '\0';

    //
    // Open the file server config area of the registry.
    //
    HKEY RegKey;    
    DWORD Disposition;        
    LONG result = RegCreateKeyEx( HKEY_CURRENT_USER, 
                                  REG_KEY_CONFIG,
                                  0,
                                  NULL,
                                  REG_OPTION_NON_VOLATILE,
                                  KEY_ALL_ACCESS,
                                  NULL,  
                                  &RegKey,
                                  &Disposition );

    rAssertMsg( result == ERROR_SUCCESS, "Error Getting MRU config entry." );

    //
    // Query the value of the most-recently-used key.
    //
    char buf[ 256 ];
    DWORD size = 256;
    RegQueryValueEx( RegKey, REG_KEY_CONFIG_MRU, 0, NULL, (unsigned char*) buf, &size );
    

    rAssertMsg( size <= 256, "MRU config file name is too long." );
    if( result == ERROR_SUCCESS )
    {
        //
        // On success, return the file name to the caller.
        //
        rDebugPrintf( "Got MRU filename %s\n", buf );
        strcpy( pFilename, buf );
    }
    else
    {
        rDebugString( "Failed to obtain MRU config file name.\n" );
    }

    RegCloseKey( RegKey );
}


//=============================================================================
// Function:    CFileServerDlg::SetLastConfigName
//=============================================================================
// Description: This member function saves a given file name in the Windows
//              registry as the user's most-recently-used config.
//
//              NOTE: The file selection dialog that is used to select file
//              names does not give us the full path to the file. In order to
//              ensure correct reloading next time the program starts, we
//              need to save an absolute path to the config. This function
//              automatically prepends the current working directory to the
//              filename, which works - apparently using the file dialog
//              changes the CWD.
//
// Parameters:  pFilename - The file name to store.
//------------------------------------------------------------------------------

void CFileServerDlg::SetLastConfigName( const char *pFilename )
{
    if( pFilename == NULL )
    {
        return;
    }

    //
    // Open the file server config area of the registry.
    //
    HKEY RegKey;
    DWORD Disposition;
    LONG result = RegCreateKeyEx( HKEY_CURRENT_USER, 
                                  REG_KEY_CONFIG,
                                  0,
                                  NULL,
                                  REG_OPTION_NON_VOLATILE,
                                  KEY_ALL_ACCESS,
                                  NULL,  
                                  &RegKey,
                                  &Disposition );

    rAssertMsg( result == ERROR_SUCCESS, "Error saving MRU config entry." );

    //
    // Add current working directory to form full path to config, if
    // the filename is not already an absolute path.
    //
    char fullPath[ 256 ];
    strcpy( fullPath, "" );
    if( strchr( pFilename, ':' ) == NULL )
    {
        _getcwd( fullPath, 255 );
        bool appendSlash = true;
        int length = strlen( fullPath );
        if( length > 0 )
        {
            if( fullPath[ length - 1 ] == '\\' )
            {
                appendSlash = false;
            }
        }
    
        if( appendSlash )
        {
            strcat( fullPath, "\\" );
        }
    }
    strcat( fullPath, pFilename );

    //
    // Save the key value.
    //
    RegSetValueEx( RegKey, REG_KEY_CONFIG_MRU, 0, REG_SZ, (const unsigned char*) fullPath, strlen( fullPath ) + 1 );
    RegCloseKey( RegKey );
    rDebugPrintf( "Set MRU config file name to %s\n", fullPath );
}
