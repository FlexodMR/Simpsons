#if !defined(AFX_PROJECTSETTINGDLG_H__4FC0E392_150A_45DC_AD21_5E489C25E09A__INCLUDED_)
#define AFX_PROJECTSETTINGDLG_H__4FC0E392_150A_45DC_AD21_5E489C25E09A__INCLUDED_

#if _MSC_VER > 1000
#pragma once
#endif // _MSC_VER > 1000
// ProjectSettingDlg.h : header file
//

/////////////////////////////////////////////////////////////////////////////
// CProjectSettingDlg dialog

class CProjectSettingDlg : public CDialog
{
    // Construction
public:
    CProjectSettingDlg(CWnd* pParent = NULL);   // standard constructor
    
    // Dialog Data
    //{{AFX_DATA(CProjectSettingDlg)
    enum { IDD = IDD_DIALOG_PROJECT_SETTING };
    CString    m_strRTIPath;
    CString    m_strScriptPath;
    //}}AFX_DATA
    
    
    // Overrides
    // ClassWizard generated virtual function overrides
    //{{AFX_VIRTUAL(CProjectSettingDlg)
protected:
    virtual void DoDataExchange(CDataExchange* pDX);    // DDX/DDV support
    //}}AFX_VIRTUAL
    
    // Implementation
protected:
    
    // Generated message map functions
    //{{AFX_MSG(CProjectSettingDlg)
    virtual void OnOK();
    afx_msg void OnButtonRtiBrowse();
    afx_msg void OnButtonScriptBrowse();
    //}}AFX_MSG
    DECLARE_MESSAGE_MAP()
};

//{{AFX_INSERT_LOCATION}}
// Microsoft Visual C++ will insert additional declarations immediately before the previous line.

#endif // !defined(AFX_PROJECTSETTINGDLG_H__4FC0E392_150A_45DC_AD21_5E489C25E09A__INCLUDED_)
