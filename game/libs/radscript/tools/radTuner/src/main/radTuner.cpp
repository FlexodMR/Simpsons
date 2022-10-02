//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


//=============================================================================
//
// File:        radTuner.cpp
//
// Subsystem:   Rad Tuner tool
//
// Description: Main application implementation
//
// Revisions:   V1.00 May 22, 2001       Creation
//
//=============================================================================

//=============================================================================
// Include Files
//=============================================================================
#include "stdafx.h"
#include "radTuner.h"

#include "MainFrm.h"
#include "ChildFrm.h"

//=============================================================================
// MFC Defines
//=============================================================================
#ifdef _DEBUG
#define new DEBUG_NEW
#undef THIS_FILE
static char THIS_FILE[] = __FILE__;
#endif

//=============================================================================
// MFC Message Mapping
//=============================================================================

BEGIN_MESSAGE_MAP(CRadTunerApp, CWinApp)
//{{AFX_MSG_MAP(CRadTunerApp)
ON_COMMAND(ID_APP_ABOUT, OnAppAbout)
//}}AFX_MSG_MAP
END_MESSAGE_MAP()

BEGIN_MESSAGE_MAP(CAboutDlg, CDialog)
//{{AFX_MSG_MAP(CAboutDlg)
// No message handlers
//}}AFX_MSG_MAP
END_MESSAGE_MAP()

//=============================================================================
// Local Function Prototypes
//=============================================================================

//=============================================================================
// Public Functions
//=============================================================================

//=============================================================================
// Globals
//=============================================================================
CRadTunerApp theApp;            // The one and only CRadTunerApp object

//===========================================================================
// CAboutDlg::CAboutDlg
//===========================================================================
// Description: Wizard Generated constructor
// 
// Constraints: 
// 
// Parameter:
// 
// Return: 
//===========================================================================
CAboutDlg::CAboutDlg():
    CDialog(CAboutDlg::IDD)
{
    //{{AFX_DATA_INIT(CAboutDlg)
    //}}AFX_DATA_INIT
}


//===========================================================================
// CAboutDlg::DoDataExchange
//===========================================================================
// Description: Wizard Generated data exchange function.
// 
// Constraints: 
// 
// Parameter:
//             CDataExchange* pDX
// 
// Return: void 
//===========================================================================
void CAboutDlg::DoDataExchange(CDataExchange* pDX)
{
    CDialog::DoDataExchange(pDX);
    //{{AFX_DATA_MAP(CAboutDlg)
    DDX_Control(pDX, IDC_COMPANY_URL, m_btnURL);
    //}}AFX_DATA_MAP
}

//===========================================================================
// CRadTunerApp::OnAppAbout
//===========================================================================
// Description: App command to run the about dialog
// 
// Constraints: 
// 
// Parameter:
// 
// Return: void 
//===========================================================================
void CRadTunerApp::OnAppAbout()
{
    CAboutDlg aboutDlg;
    aboutDlg.DoModal();
}

//===========================================================================
// CRadTunerApp::CRadTunerApp
//===========================================================================
// Description: Wizard Generated constructor
// 
// Constraints: 
// 
// Parameter:
// 
// Return: 
//===========================================================================
CRadTunerApp::CRadTunerApp() :
    CBCGWorkspace (TRUE /* m_bResourceSmartUpdate */)
{
    // TODO: add construction code here,
    // Place all significant initialization in InitInstance
}

//===========================================================================
// CRadTunerApp::InitInstance
//===========================================================================
// Description: Wizard Generated application initialization
// 
// Constraints: 
// 
// Parameter:
// 
// Return: BOOL 
//===========================================================================
BOOL CRadTunerApp::InitInstance()
{
    // Initialize OLE libraries
    if (!AfxOleInit())
    {
        AfxMessageBox(IDP_OLE_INIT_FAILED);
        return FALSE;
    }
    
    AfxEnableControlContainer();

    ::radThreadInitialize( );
    ::radMemoryInitialize( );
    ::radTimeInitialize( );
    ::radFileInitialize(50, 100, RADMEMORY_ALLOC_DEFAULT);
    ::radDriveMount( );

    try
    {
        IXMLDOMDocumentPtr pTestPtr = IXMLDOMDocumentPtr(__uuidof(MSXML::DOMDocument));

        if( pTestPtr == NULL )
        {
            ::AfxMessageBox( "Please install the newer version of XML parser from Microsoft, it can be found under T:\\FTech\\Users\\James Tan\\radTuner\\msxml3.exe" );
            return FALSE;
        }
    }
    catch( ... )
    {
        ::AfxMessageBox( "Please install the newer version of XML parser from Microsoft, it can be found under T:\\FTech\\Users\\James Tan\\radTuner\\msxml3.exe" );
        return FALSE;
    }

    // Standard initialization
    // If you are not using these features and wish to reduce the size
    //  of your final executable, you should remove from the following
    //  the specific initialization routines you do not need.
    
#ifdef _AFXDLL
    Enable3dControls();            // Call this when using MFC in a shared DLL
#else
    Enable3dControlsStatic();    // Call this when linking to MFC statically
#endif
    
    // Change the registry key under which our settings are stored.
    // TODO: You should modify this string to be something appropriate
    // such as the name of your company or organization.
	SetRegistryKey(_T("Radical Entertainment"));

	LoadStdProfileSettings();  // Load standard INI file options (including MRU)

    SetRegistryBase (_T("Application Setting"));

    // Initialize all Managers for usage. They are automatically constructed
	// if not yet present
    InitSkinManager( );
    GetSkinManager( )->EnableSkinsDownload (_T("http://www.bcgsoft.com/Skins"));
    

    // Initialize all Managers for usage. They are automatically constructed
    // if not yet present
    GetWorkspace( )->InitContextMenuManager( );
    
    // Enable user-defined tools. If you want allow more than 10 tools,
    // add tools entry to resources (ID_USER_TOOL11, ID_USER_TOOL12,...)
    //EnableUserTools (ID_TOOLS_ENTRY, ID_USER_TOOL1, ID_USER_TOOL10);
    
    // To create the main window, this code creates a new frame window
    // object and then sets it as the application's main window object.
    CMDIFrameWnd* pFrame = new CMainFrame;
    m_pMainWnd = pFrame;
    
    // create main MDI frame window
    if (!pFrame->LoadFrame(IDR_MAINFRAME))
        return FALSE;
    
    // try to load shared MDI menus and accelerator table
    //TODO: add additional member variables and load calls for
    //    additional menu types your application may need.
    HINSTANCE hInst = AfxGetResourceHandle( );
    m_hMDIMenu  = ::LoadMenu(hInst, MAKEINTRESOURCE(IDR_RADTUNTYPE));
    m_hMDIAccel = ::LoadAccelerators(hInst, MAKEINTRESOURCE(IDR_RADTUNTYPE));
    
    // The main window has been initialized, so show and update it.
    pFrame->ShowWindow(m_nCmdShow);
    pFrame->UpdateWindow();
    return TRUE;
}

//===========================================================================
// CRadTunerApp::ExitInstance
//===========================================================================
// Description: Wizard Generated application Termination
// 
// Constraints: 
// 
// Parameter:
// 
// Return: int 
//===========================================================================
int CRadTunerApp::ExitInstance()
{
    BCGCBCleanUp();
    
    //TODO: handle additional resources you may have added
    if (m_hMDIMenu != NULL)
        FreeResource(m_hMDIMenu);
    if (m_hMDIAccel != NULL)
        FreeResource(m_hMDIAccel);

    ::radDriveUnmount( );
    ::radFileTerminate( );
    ::radMemoryTerminate();
    ::radThreadTerminate();    
    ::radTimeTerminate( );
    return CWinApp::ExitInstance();
}

//===========================================================================
// Description: Wizard Generated application pre-startup loading
// 
// Constraints: 
// 
// Parameter:
// 
// Return: void CRadTunerApp::PreLoadState 
//===========================================================================
void CRadTunerApp::PreLoadState ()
{
    
    GetMouseManager()->AddView (IDR_RADTUNTYPE, _T("My view"), IDR_RADTUNTYPE);
    
    // TODO: add another views and windows were mouse double click
    // customization is required
    
    GetContextMenuManager()->AddMenu (_T("ContextMenu"), IDR_CONTEXT_MENU);
    GetContextMenuManager()->AddMenu (_T("ScriptDocMenu"), IDR_MENU_SCRIPT_DOC);
    GetContextMenuManager()->AddMenu (_T("ScriptObjectMenu"), IDR_MENU_SCRIPT_OBJECT);
    GetContextMenuManager()->AddMenu (_T("ScriptMethodMenu"), IDR_MENU_SCRIPT_METHOD);
    GetContextMenuManager()->AddMenu (_T("ClassViewMenu"), IDR_MENU_CLASS_VIEW);
    GetContextMenuManager()->AddMenu (_T("ParamSliderMenu"), IDR_MENU_PARAM_SLIDER);


    // TODO: add another context menus here
}



//===========================================================================
// CRadTunerApp::GetMDIMenu
//===========================================================================
// Description: 
// 
// Constraints: Do not free the HMENU, it is hold by the "theApp"
// 
// Parameter:
// 
// Return: HMENU 
//===========================================================================
HMENU CRadTunerApp::GetMDIMenu() const
{
    return(m_hMDIMenu);
}


//===========================================================================
// CRadTunerApp::GetMDIAccel
//===========================================================================
// Description: 
// 
// Constraints: Do not free the HACCEL, it is hold by the "theApp"
// 
// Parameter:
// 
// Return: HACCEL 
//===========================================================================
HACCEL CRadTunerApp::GetMDIAccel() const
{
    return(m_hMDIAccel);
}

CDocument* CRadTunerApp::OpenDocumentFile(LPCTSTR lpszFileName) 
{
    ((CMainFrame*)AfxGetMainWnd())->OpenWorkSpaceFile( lpszFileName );

    // return non-NULL pointer, anything will work.
	return (CDocument*)(0xffffffff);
}
