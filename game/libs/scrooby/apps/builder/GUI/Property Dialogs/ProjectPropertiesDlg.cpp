// ProjectPropertiesDlg.cpp : implementation file
//

#include "..\..\stdafx.h"
#include "..\..\xcon.h"
#include "ProjectPropertiesDlg.h"

#include "..\..\FeData\NamedElements\Project.h"
#include "strings\pcstring.h"

#ifdef _DEBUG
#define new DEBUG_NEW
#undef THIS_FILE
static char THIS_FILE[] = __FILE__;
#endif

/////////////////////////////////////////////////////////////////////////////
// CProjectPropertiesDlg dialog


CProjectPropertiesDlg::CProjectPropertiesDlg(CWnd* pParent /*=NULL*/)
    : CDialog(CProjectPropertiesDlg::IDD, pParent)
{
    //{{AFX_DATA_INIT(CProjectPropertiesDlg)
    m_strPlatform = _T("");
    m_strPagePath = _T("");
    m_nResolutionHeight = 0;
    m_nResolutionWidth = 0;
    m_strResourcePath = _T("");
    m_strScreenPath = _T("");
    //}}AFX_DATA_INIT

   m_pProject = ((CXConApp*)App())->GetProject();

   m_strPlatform = m_pProject->GetPlatform();
   m_strPagePath = m_pProject->GetPagePath();
   m_strScreenPath = m_pProject->GetScreenPath();
   m_strResourcePath = m_pProject->GetResourcePath();

   m_nResolutionHeight = m_pProject->GetResolutionHeight();
   m_nResolutionWidth = m_pProject->GetResolutionWidth();

   m_RemoveCancelButton = false;

   if( (m_strPlatform == "") && (m_nResolutionHeight == 0)  && (m_nResolutionWidth == 0) )
   {
       m_strPlatform = _T("PC");
       m_nResolutionWidth = g_PCResolutionWidth;
       m_nResolutionHeight = g_PCResolutionHeight;
       m_pProject->SetPlatform( (PascalCString)m_strPlatform );
       m_pProject->SetResolutionHeight( m_nResolutionHeight );
       m_pProject->SetResolutionWidth( m_nResolutionWidth );
   }
}


void CProjectPropertiesDlg::DoDataExchange(CDataExchange* pDX)
{
    CDialog::DoDataExchange(pDX);
    //{{AFX_DATA_MAP(CProjectPropertiesDlg)
    DDX_CBString(pDX, IDC_COMBO_PLATFORM, m_strPlatform);
    DDX_Text(pDX, IDC_EDIT_PAGE_PATH, m_strPagePath);
    DDX_Text(pDX, IDC_EDIT_RESOLUTION_HEIGHT, m_nResolutionHeight);
    DDX_Text(pDX, IDC_EDIT_RESOLUTION_WIDTH, m_nResolutionWidth);
    DDX_Text(pDX, IDC_EDIT_RESOURCE_PATH, m_strResourcePath);
    DDX_Text(pDX, IDC_EDIT_SCREEN_PATH, m_strScreenPath);
    //}}AFX_DATA_MAP
}


BEGIN_MESSAGE_MAP(CProjectPropertiesDlg, CDialog)
    //{{AFX_MSG_MAP(CProjectPropertiesDlg)
    ON_CBN_SELCHANGE(IDC_COMBO_PLATFORM, OnSelchangeComboPlatform)
    //}}AFX_MSG_MAP
END_MESSAGE_MAP()

/////////////////////////////////////////////////////////////////////////////
// CProjectPropertiesDlg message handlers

void CProjectPropertiesDlg::OnOK() 
{
    UpdateData();

    PascalCString strPlatform = m_strPlatform;
    PascalCString strPagePath = m_strPagePath;
    PascalCString strScreenPath = m_strScreenPath;
    PascalCString strResourcePath = m_strResourcePath;

    m_pProject->SetPlatform( strPlatform );
    m_pProject->SetResolutionWidth( m_nResolutionWidth );
    m_pProject->SetResolutionHeight( m_nResolutionHeight );
    m_pProject->SetPagePath( strPagePath );
    m_pProject->SetScreenPath( strScreenPath );
    m_pProject->SetResourcePath( strResourcePath );
    
    CDialog::OnOK();
}


void CProjectPropertiesDlg::RemoveCancelButton()
{
    m_RemoveCancelButton = true;
}


BOOL CProjectPropertiesDlg::OnInitDialog() 
{
    CDialog::OnInitDialog();
    
    if( m_RemoveCancelButton )
    {
        GetDlgItem(IDCANCEL)->ShowWindow( FALSE );
    }
        
    return TRUE;  // return TRUE unless you set the focus to a control
                  // EXCEPTION: OCX Property Pages should return FALSE
}

void CProjectPropertiesDlg::OnSelchangeComboPlatform() 
{
    CComboBox* combo = (CComboBox*)GetDlgItem( IDC_COMBO_PLATFORM );
    CString strSel;
    combo->GetLBText( combo->GetCurSel(), strSel );

    CWnd* wndWidth = GetDlgItem( IDC_EDIT_RESOLUTION_WIDTH );
    CWnd* wndHeight = GetDlgItem( IDC_EDIT_RESOLUTION_HEIGHT );

    char buf[100];
    if( strSel == "PC" )
    {        
        _itoa( g_PCResolutionWidth, buf, 10 );
        wndWidth->SetWindowText( buf );

        _itoa( g_PCResolutionHeight, buf, 10 );
        wndHeight->SetWindowText( buf );
    }
    else if( strSel == "PS2" )
    {
        _itoa( g_PS2ResolutionWidth, buf, 10 );
        wndWidth->SetWindowText( buf );

        _itoa( g_PS2ResolutionHeight, buf, 10 );
        wndHeight->SetWindowText( buf );
    }
    
}
