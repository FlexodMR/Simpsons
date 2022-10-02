//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


//=============================================================================
//
// File:        ProjectSettingDlg.cpp
//
// Subsystem:   radTuner
//
// Description: implementation file for project setting dialog
//              
//
// Revisions:   V1.00 May 24, 2001       Creation
//
//=============================================================================

//===========================================================================
// Including
//===========================================================================
#include "stdafx.h"
#include "radtuner.h"
#include "MainFrm.h"
#include "ProjectSettingDlg.h"

//===========================================================================
// MFC Defines
//===========================================================================
#ifdef _DEBUG
#define new DEBUG_NEW
#undef THIS_FILE
static char THIS_FILE[] = __FILE__;
#endif

//===========================================================================
// MFC Message Mapping
//===========================================================================
BEGIN_MESSAGE_MAP(CProjectSettingDlg, CDialog)
//{{AFX_MSG_MAP(CProjectSettingDlg)
    ON_BN_CLICKED(IDC_BUTTON_RTI_BROWSE, OnButtonRtiBrowse)
    ON_BN_CLICKED(IDC_BUTTON_SCRIPT_BROWSE, OnButtonScriptBrowse)
//}}AFX_MSG_MAP
END_MESSAGE_MAP()

//===========================================================================
// CProjectSettingDlg::CProjectSettingDlg
//===========================================================================
// Description: 
// 
// Constraints: 
// 
// Parameter:
//             CWnd* pParent /*=NULL*/
// 
// Return: 
//===========================================================================
CProjectSettingDlg::CProjectSettingDlg(CWnd* pParent /*=NULL*/) :
    CDialog(CProjectSettingDlg::IDD, pParent)
{
    //{{AFX_DATA_INIT(CProjectSettingDlg)
    m_strRTIPath = _T("");
    m_strScriptPath = _T("");
    //}}AFX_DATA_INIT
}


//===========================================================================
// CProjectSettingDlg::DoDataExchange
//===========================================================================
// Description: 
// 
// Constraints: 
// 
// Parameter:
//             CDataExchange* pDX
// 
// Return: void 
//===========================================================================
void CProjectSettingDlg::DoDataExchange(CDataExchange* pDX)
{
    CDialog::DoDataExchange(pDX);
    //{{AFX_DATA_MAP(CProjectSettingDlg)
    DDX_Text(pDX, IDC_EDIT_RTI_PATH, m_strRTIPath);
    DDX_Text(pDX, IDC_EDIT_SCRIPT_PATH, m_strScriptPath);
    //}}AFX_DATA_MAP
}


//===========================================================================
// CProjectSettingDlg::OnOK
//===========================================================================
// Description: 
// 
// Constraints: 
// 
// Parameter:
// 
// Return: void 
//===========================================================================
void CProjectSettingDlg::OnOK()
{
    if (UpdateData(TRUE))
    {
        CDialog::OnOK();
    }
}


//===========================================================================
// CProjectSettingDlg::OnButtonRtiBrowse
//===========================================================================
// Description: 
// 
// Constraints: 
// 
// Parameter:
// 
// Return: void 
//===========================================================================
void CProjectSettingDlg::OnButtonRtiBrowse()
{
    CSelectFolderDialog oDlg(FALSE, (LPCSTR)m_strRTIPath,  OFN_HIDEREADONLY | OFN_OVERWRITEPROMPT | OFN_PATHMUSTEXIST, NULL, this);
    oDlg.SetTitle("Select type info path");

    if (oDlg.DoModal() == IDOK)
    {
        char szPath[256];
        ::PathRelativePathTo(szPath,
                             ((CMainFrame*)theApp.m_pMainWnd)->GetWorkSpaceDocPtr()->GetWorkSpacePath(), FILE_ATTRIBUTE_DIRECTORY,
                             oDlg.GetSelectedPath(), FILE_ATTRIBUTE_DIRECTORY);

        m_strRTIPath = szPath;

        // currently the ::PathRelativePathTo will add additional "\\" at the beginning
        m_strRTIPath.TrimLeft('\\');
    }
    UpdateData(FALSE);
}


//===========================================================================
// CProjectSettingDlg::OnButtonScriptBrowse
//===========================================================================
// Description: 
// 
// Constraints: 
// 
// Parameter:
// 
// Return: void 
//===========================================================================
void CProjectSettingDlg::OnButtonScriptBrowse()
{
    CSelectFolderDialog oDlg(FALSE, (LPCSTR)m_strScriptPath,  OFN_HIDEREADONLY | OFN_OVERWRITEPROMPT | OFN_PATHMUSTEXIST, NULL, this);
    oDlg.SetTitle("Select script path");

    if (oDlg.DoModal() == IDOK)
    {
        char szPath[256];
        ::PathRelativePathTo(szPath,
                             ((CMainFrame*)theApp.m_pMainWnd)->GetWorkSpaceDocPtr()->GetWorkSpacePath(), FILE_ATTRIBUTE_DIRECTORY,
                             oDlg.GetSelectedPath(), FILE_ATTRIBUTE_DIRECTORY);

        m_strScriptPath = szPath;
        
        // currently the ::PathRelativePathTo will add additional "\\" at the beginning
        m_strScriptPath.TrimLeft('\\');
    }
    UpdateData(FALSE);
}
