// ProjectSettingsDlg.cpp : implementation file
//

#include "pch.hpp"
//#include "RmBuilder.h"
#include "SourceControlDlg.h"


// CProjectSettingsDlg dialog

IMPLEMENT_DYNAMIC(CProjectSettingsDlg, CDialog)
CProjectSettingsDlg::CProjectSettingsDlg(CWnd* pParent /*=NULL*/)
	: CDialog(CProjectSettingsDlg::IDD, pParent)
{
}

CProjectSettingsDlg::~CProjectSettingsDlg()
{
}

void CProjectSettingsDlg::DoDataExchange(CDataExchange* pDX)
{
    CDialog::DoDataExchange(pDX);
    
    DDX_Text(pDX,  IDC_DATA_ROOT_PATH,  m_DataRootPath );
    DDX_Text(pDX,  IDC_PERFORCE_CLIENT, m_PerforceClient );
    DDX_Text(pDX,  IDC_PERFORCE_PORT,   m_PerforcePort );
    DDX_Text(pDX,  IDC_PERFORCE_USER,   m_PerforceUser );
    DDX_Text(pDX,  IDC_TEST_TARGET_ROOT_EDITBOX, m_TestTargetRootPath );
    DDX_Check(pDX, IDC_WORK_OFFLINE,   m_WorkOffline );
}


BEGIN_MESSAGE_MAP(CProjectSettingsDlg, CDialog)
END_MESSAGE_MAP()


// CProjectSettingsDlg message handlers
