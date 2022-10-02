// BuildSettingsDlg.cpp : implementation file
//

#include "pch.hpp"
//#include "RmBuilder.h"
#include <plugins/buildman/BuildDlg.h>


// CBuildSettingsDlg dialog

IMPLEMENT_DYNAMIC(CBuildSettingsDlg, CDialog)
CBuildSettingsDlg::CBuildSettingsDlg(CWnd* pParent /*=NULL*/)
	: CDialog(CBuildSettingsDlg::IDD, pParent)
{
}

CBuildSettingsDlg::~CBuildSettingsDlg()
{
}

void CBuildSettingsDlg::DoDataExchange(CDataExchange* pDX)
{
    CDialog::DoDataExchange(pDX);
    
    DDX_Text(pDX,  IDC_DATA_ROOT_PATH,  m_DataRootPath );
    DDX_Text(pDX,  IDC_TEST_TARGET_ROOT_EDITBOX, m_TestTargetRootPath );
}


BEGIN_MESSAGE_MAP(CBuildSettingsDlg, CDialog)
END_MESSAGE_MAP()


// CBuildSettingsDlg message handlers
