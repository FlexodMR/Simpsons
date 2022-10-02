// SettingsDialog.cpp : implementation file
//

#include "stdafx.h"
#include "xcon.h"
#include "SettingsDialog.h"

#ifdef _DEBUG
#define new DEBUG_NEW
#undef THIS_FILE
static char THIS_FILE[] = __FILE__;
#endif

/////////////////////////////////////////////////////////////////////////////
// CSettingsDialog dialog


CSettingsDialog::CSettingsDialog(CWnd* pParent /*=NULL*/)
    : CDialog(CSettingsDialog::IDD, pParent),
     m_idViewer( 0 )
{
    //{{AFX_DATA_INIT(CSettingsDialog)
    m_strWorkingDirectory = _T("");
    //}}AFX_DATA_INIT
}


void CSettingsDialog::DoDataExchange(CDataExchange* pDX)
{
    CDialog::DoDataExchange(pDX);
    //{{AFX_DATA_MAP(CSettingsDialog)
    DDX_Control(pDX, IDC_SETTINGS_VIEWERLIST, m_lstViewer);
    DDX_Text(pDX, IDC_SETTINGS_FIELD_WD, m_strWorkingDirectory);
    //}}AFX_DATA_MAP
}


BEGIN_MESSAGE_MAP(CSettingsDialog, CDialog)
    //{{AFX_MSG_MAP(CSettingsDialog)
    ON_BN_CLICKED(IDC_SETTINGS_BUTTON_WD_BROWSE, OnSettingsButtonWdBrowseClicked)
    ON_LBN_SELCHANGE(IDC_SETTINGS_VIEWERLIST, OnViewerSelectionChanged)
    //}}AFX_MSG_MAP
END_MESSAGE_MAP()

/////////////////////////////////////////////////////////////////////////////
// CSettingsDialog message handlers

void CSettingsDialog::OnSettingsButtonWdBrowseClicked() 
{
    // TODO: Add your control notification handler code here
    char szDisplayName[256] = "";
    char szFullPath[256] = "";
    ITEMIDLIST *retval = NULL;
    BROWSEINFO bi;

    bi.hwndOwner = NULL;               // Handle of the owner window
    bi.pidlRoot = NULL;                 // Desktop folder is used
    bi.lpszTitle = "Select a Folder";              // Title of the dialog box
    bi.pszDisplayName = szDisplayName;        // Buffer for selected folder name
    bi.ulFlags = BIF_RETURNONLYFSDIRS; // Only returns file system directories
    bi.lpfn = NULL;
    bi.lParam = 0;

    retval = ::SHBrowseForFolder(&bi);

    if ( retval != NULL )
    {
        ::SHGetPathFromIDList( retval, szFullPath );
        this->m_strWorkingDirectory = szFullPath;
        UpdateData( FALSE );
    }
}

void CSettingsDialog::OnOK() 
{
    // Send the final settings to the App
    CDialog::OnOK();
}

void CSettingsDialog::OnCancel() 
{
    // TODO: Add extra cleanup here
    
    CDialog::OnCancel();
}

BOOL CSettingsDialog::OnInitDialog() 
{
    CDialog::OnInitDialog();
   m_lstViewer.InsertString( PC_VIEWER, "PC Viewer" );
   m_lstViewer.InsertString( PS2_VIEWER, "PS2 Viewer" );
   //m_lstViewer.InsertString( XBOX_VIEWER, "X-Box Viewer" );
   //m_lstViewer.InsertString( GC_VIEWER, "Gamecube Viewer" );
   m_lstViewer.SetCurSel( m_idViewer );
    return TRUE;  // return TRUE unless you set the focus to a control
                  // EXCEPTION: OCX Property Pages should return FALSE
}

void CSettingsDialog::OnViewerSelectionChanged() 
{
   m_idViewer = m_lstViewer.GetCurSel();
    
}
