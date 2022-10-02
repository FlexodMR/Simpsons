#pragma once
#include "afxwin.h"
#include <res/resource.h>


// CProjectSettingsDlg dialog

class CProjectSettingsDlg : public CDialog
{
	DECLARE_DYNAMIC(CProjectSettingsDlg)

public:
	CProjectSettingsDlg(CWnd* pParent = NULL);   // standard constructor
	virtual ~CProjectSettingsDlg();

// Dialog Data
	enum { IDD = IDD_PROJECT_SETTINGS };

protected:
	virtual void DoDataExchange(CDataExchange* pDX);    // DDX/DDV support

	DECLARE_MESSAGE_MAP()
public:
    CString m_DataRootPath;
    CString m_PerforceClient;
    CString m_PerforcePort;
    CString m_PerforceUser;
    CString m_TestTargetRootPath;
    
    INT    m_WorkOffline;
};
