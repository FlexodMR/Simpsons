#if !defined(AFX_PROJECTPROPERTIESDLG_H__CA6C3838_2E8D_4CBC_86FC_6246839C5656__INCLUDED_)
#define AFX_PROJECTPROPERTIESDLG_H__CA6C3838_2E8D_4CBC_86FC_6246839C5656__INCLUDED_

#if _MSC_VER > 1000
#pragma once
#endif // _MSC_VER > 1000
// ProjectPropertiesDlg.h : header file
//

#include "../../Resource.h"

/////////////////////////////////////////////////////////////////////////////
// CProjectPropertiesDlg dialog

const int g_PCResolutionWidth = 640;
const int g_PCResolutionHeight = 480;
const int g_PS2ResolutionWidth = 640;
const int g_PS2ResolutionHeight = 448;

class CProjectPropertiesDlg : public CDialog
{
// Construction
public:
    CProjectPropertiesDlg(CWnd* pParent = NULL);   // standard constructor

// Dialog Data
    //{{AFX_DATA(CProjectPropertiesDlg)
    enum { IDD = IDD_PROJECT_PROPERTIES };
    CString    m_strPlatform;
    CString    m_strPagePath;
    int        m_nResolutionHeight;
    int        m_nResolutionWidth;
    CString    m_strResourcePath;
    CString    m_strScreenPath;
    //}}AFX_DATA

    void RemoveCancelButton();



// Overrides
    // ClassWizard generated virtual function overrides
    //{{AFX_VIRTUAL(CProjectPropertiesDlg)
    protected:
    virtual void DoDataExchange(CDataExchange* pDX);    // DDX/DDV support
    //}}AFX_VIRTUAL

// Implementation
protected:

    bool m_RemoveCancelButton;
    FeData::Project* m_pProject;

    // Generated message map functions
    //{{AFX_MSG(CProjectPropertiesDlg)
    virtual void OnOK();
    virtual BOOL OnInitDialog();
    afx_msg void OnSelchangeComboPlatform();
    //}}AFX_MSG
    DECLARE_MESSAGE_MAP()
};

//{{AFX_INSERT_LOCATION}}
// Microsoft Visual C++ will insert additional declarations immediately before the previous line.

#endif // !defined(AFX_PROJECTPROPERTIESDLG_H__CA6C3838_2E8D_4CBC_86FC_6246839C5656__INCLUDED_)
