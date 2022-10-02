#ifndef ATG_BUILDSETTINGS_H
#define ATG_BUILDSETTINGS_H

#include "afxwin.h"
#include <res/resource.h>


// CBuildSettingsDlg dialog

class CBuildSettingsDlg : public CDialog
{
	DECLARE_DYNAMIC(CBuildSettingsDlg)

public:
	CBuildSettingsDlg(CWnd* pParent = NULL);   // standard constructor
	virtual ~CBuildSettingsDlg();

// Dialog Data
	enum { IDD = IDD_PROJECT_SETTINGS };

protected:
	virtual void DoDataExchange(CDataExchange* pDX);    // DDX/DDV support

	DECLARE_MESSAGE_MAP()
public:
    CString m_DataRootPath;
    CString m_TestTargetRootPath;
};

#endif