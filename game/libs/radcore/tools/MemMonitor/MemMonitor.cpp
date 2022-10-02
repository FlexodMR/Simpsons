//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


// MemMonitor.cpp : Defines the class behaviors for the application.
//

#include "stdafx.h"
#include "MemMonitor.h"

#include "MemMonitorHost.h"
#include "MemRawDataQueue.h"

#include "MainFrm.h"
#include "MemSectionFrame.h"
#include "MemContentFrame.h"

/////////////////////////////////////////////////////////////////////////////
// CMemMonitorApp

//=============================================================================
// MFC message mapping
//=============================================================================
BEGIN_MESSAGE_MAP(CMemMonitorApp, CWinApp)
	//{{AFX_MSG_MAP(CMemMonitorApp)
	ON_COMMAND(ID_APP_ABOUT, OnAppAbout)
		// NOTE - the ClassWizard will add and remove mapping macros here.
		//    DO NOT EDIT what you see in these blocks of generated code!
	//}}AFX_MSG_MAP
	// Standard file based document commands
	// Standard print setup command
	ON_COMMAND(ID_FILE_PRINT_SETUP, CWinApp::OnFilePrintSetup)
END_MESSAGE_MAP()

/////////////////////////////////////////////////////////////////////////////
// CMemMonitorApp construction

CMemMonitorApp::CMemMonitorApp() :
	CBCGWorkspace (TRUE /* m_bResourceSmartUpdate */)
{
}

/////////////////////////////////////////////////////////////////////////////
// The one and only CMemMonitorApp object

CMemMonitorApp theApp;

/////////////////////////////////////////////////////////////////////////////
// CMemMonitorApp initialization

BOOL CMemMonitorApp::InitInstance()
{
	AfxEnableControlContainer();

    ::OleInitialize( NULL );
	// Standard initialization
	// If you are not using these features and wish to reduce the size
	//  of your final executable, you should remove from the following
	//  the specific initialization routines you do not need.

	SetRegistryKey(_T("Radical Entertainment"));

	LoadStdProfileSettings();  // Load standard INI file options (including MRU)

    SetRegistryBase (_T("Memory Monitor"));

    // Initialize all Managers for usage. They are automatically constructed
	// if not yet present
//    InitSkinManager( );
//    GetSkinManager( )->EnableSkinsDownload (_T("http://www.bcgsoft.com/Skins"));

    GetWorkspace( )->InitContextMenuManager( );
    GetWorkspace( )->GetContextMenuManager( )->AddMenu( IDR_MENU_SECTION_SUMMARY, IDR_MENU_SECTION_SUMMARY );
    GetWorkspace( )->GetContextMenuManager( )->AddMenu( IDR_MENU_SECTION_LIST, IDR_MENU_SECTION_LIST );
    GetWorkspace( )->GetContextMenuManager( )->AddMenu( IDR_MENU_BLOCK_VIEW, IDR_MENU_BLOCK_VIEW );

	// Register the application's document templates.  Document templates
	//  serve as the connection between documents, frame windows and views.

#pragma message( __FILE__"("") : message: Implementing Shell open and drag drop file for Main Frame Wnd." )

/*
    CMultiDocTemplate* pDocTemplate;
	pDocTemplate = new CMultiDocTemplate(
		IDR_MMDTYPE,
		RUNTIME_CLASS(CMemMonitorDoc),
		RUNTIME_CLASS(CMemSectionFrame), // custom MDI child frame
		RUNTIME_CLASS(CMemMonitorView));
	AddDocTemplate(pDocTemplate);
*/
    // create main MDI Frame window
	CMainFrame* pMainFrame = new CMainFrame;
	if (!pMainFrame->LoadFrame(IDR_MAINFRAME))
		return FALSE;
	m_pMainWnd = pMainFrame;

/*
	// Enable drag/drop open
	m_pMainWnd->DragAcceptFiles();
	// Enable DDE Execute open
	EnableShellOpen();
	RegisterShellFileTypes(TRUE);

	// Parse command line for standard shell commands, DDE, file open
	CCommandLineInfo cmdInfo;
	ParseCommandLine(cmdInfo);

	// Dispatch commands specified on the command line
	if (!ProcessShellCommand(cmdInfo))
		return FALSE;
*/
    // The main window has been initialized, so show and update it.
	pMainFrame->ShowWindow(m_nCmdShow);
	pMainFrame->UpdateWindow();

    return TRUE;
}

int CMemMonitorApp::ExitInstance() 
{
    BCGCBCleanUp();

    ::OleUninitialize();

    return CWinApp::ExitInstance();
}

CDocument* CMemMonitorApp::OpenDocumentFile(LPCTSTR lpszFileName)
{
    if ( m_pMainWnd == NULL )
    {
        return NULL;
    }

    static_cast< CMainFrame * >( m_pMainWnd )->OpenFile( lpszFileName );
    return m_pMemSessionDataManager;
}

CMemSessionDataManager * CMemMonitorApp::GetMemSessionDataManagerPtr( )
{
    return m_pMemSessionDataManager;
}

const CMemSessionDataManager * CMemMonitorApp::GetMemSessionDataManagerPtr( ) const
{
    return m_pMemSessionDataManager;
}

CMemSessionViewManager * CMemMonitorApp::GetMemSessionViewManagerPtr( )
{
    return m_pMemSessionViewManager;
}

const CMemSessionViewManager * CMemMonitorApp::GetMemSessionViewManagerPtr( ) const
{
    return m_pMemSessionViewManager;
}


/////////////////////////////////////////////////////////////////////////////
// CAboutDlg dialog used for App About

class CAboutDlg :
    public CDialog
{
public:
	CAboutDlg();

// Dialog Data
	//{{AFX_DATA(CAboutDlg)
	enum { IDD = IDD_ABOUTBOX };
	CBCGURLLinkButton	m_btnURL;
	//}}AFX_DATA

	// ClassWizard generated virtual function overrides
	//{{AFX_VIRTUAL(CAboutDlg)
	protected:
	virtual void DoDataExchange(CDataExchange* pDX);    // DDX/DDV support
	//}}AFX_VIRTUAL

// Implementation
protected:
	//{{AFX_MSG(CAboutDlg)
	afx_msg int OnCreate(LPCREATESTRUCT lpCreateStruct);
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
	DDX_Control(pDX, IDC_COMPANY_URL, m_btnURL);
	//}}AFX_DATA_MAP
}

BEGIN_MESSAGE_MAP(CAboutDlg, CDialog)
	//{{AFX_MSG_MAP(CAboutDlg)
	ON_WM_CREATE()
	//}}AFX_MSG_MAP
END_MESSAGE_MAP()

// App command to run the dialog
void CMemMonitorApp::OnAppAbout()
{
	CAboutDlg aboutDlg;
	aboutDlg.DoModal();
}

/////////////////////////////////////////////////////////////////////////////
// CMemMonitorApp message handlers


int CAboutDlg::OnCreate(LPCREATESTRUCT lpCreateStruct) 
{
	if (CDialog::OnCreate(lpCreateStruct) == -1)
		return -1;
    return 0;
}
