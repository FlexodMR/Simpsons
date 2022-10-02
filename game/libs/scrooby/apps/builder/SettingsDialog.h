#if !defined(AFX_SETTINGSDIALOG_H__9F97F9F9_3931_482C_9E09_9D338F2FB9A4__INCLUDED_)
#define AFX_SETTINGSDIALOG_H__9F97F9F9_3931_482C_9E09_9D338F2FB9A4__INCLUDED_


#define PC_VIEWER 0
#define PS2_VIEWER 1
#define XBOX_VIEWER 2
#define GC_VIEWER 3

#if _MSC_VER > 1000
#pragma once
#endif // _MSC_VER > 1000
// SettingsDialog.h : header file
//

/////////////////////////////////////////////////////////////////////////////
// CSettingsDialog dialog

class CSettingsDialog : public CDialog
{
// Construction
public:
    CSettingsDialog(CWnd* pParent = NULL);   // standard constructor

// Dialog Data
    //{{AFX_DATA(CSettingsDialog)
    enum { IDD = IDD_SETTINGS_DIALOG };
    CListBox    m_lstViewer;
    CString    m_strWorkingDirectory;
    //}}AFX_DATA

// Attributes
   unsigned int GetCurrentViewer() { return m_idViewer; };
   void SetCurrentViewer( unsigned int viewer ) { m_idViewer = viewer; };
    CString GetWorkingDir() { return m_strWorkingDirectory; };
    void SetWorkingDir( CString s ) { m_strWorkingDirectory = s; };

// Overrides
    // ClassWizard generated virtual function overrides
    //{{AFX_VIRTUAL(CSettingsDialog)
    protected:
    virtual void DoDataExchange(CDataExchange* pDX);    // DDX/DDV support
    //}}AFX_VIRTUAL

// Implementation
protected:

   unsigned int m_idViewer;

    // Generated message map functions
    //{{AFX_MSG(CSettingsDialog)
    afx_msg void OnSettingsButtonWdBrowseClicked();
    virtual void OnOK();
    virtual void OnCancel();
    virtual BOOL OnInitDialog();
    afx_msg void OnViewerSelectionChanged();
    //}}AFX_MSG
    DECLARE_MESSAGE_MAP()
};

//{{AFX_INSERT_LOCATION}}
// Microsoft Visual C++ will insert additional declarations immediately before the previous line.

#endif // !defined(AFX_SETTINGSDIALOG_H__9F97F9F9_3931_482C_9E09_9D338F2FB9A4__INCLUDED_)
