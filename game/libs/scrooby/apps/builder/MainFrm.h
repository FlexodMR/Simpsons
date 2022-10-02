/////////////////////////////////////////////////////////////////////////////
// MainFrm.h : interface of the CMainFrame class

#pragma once

#include "GUI\ProjectWindow.h"
#include "GUI\OutputWindow.h"

/////////////////////////////////////////////////////////////////////////////
// CChildFrame

class CChildFrame : public CMDIChildWnd
{
    DECLARE_DYNCREATE(CChildFrame)
public:
    CChildFrame() {}

// Attributes
protected:
    CSplitterWnd m_wndSplitter;

// Operations
public:

// Overrides
    // ClassWizard generated virtual function overrides
    //{{AFX_VIRTUAL(CChildFrame)
    public:
    virtual BOOL OnCreateClient(LPCREATESTRUCT lpcs, CCreateContext* pContext);
    //}}AFX_VIRTUAL

// Implementation
public:
    virtual ~CChildFrame() {}

// Generated message map functions
protected:
    //{{AFX_MSG(CChildFrame)
    afx_msg void OnSetFocus(CWnd* pOldWnd);
    //}}AFX_MSG
    DECLARE_MESSAGE_MAP()
};

/////////////////////////////////////////////////////////////////////////////
// CWndInfo
class CWndInfo : public CWnd
{
    DECLARE_DYNAMIC(CWndInfo)
public:
    CWndInfo() { m_rect.SetRectEmpty(); }

    void SetText(const CString& strText) { m_edit.SetWindowText(strText); }

    CRect m_rect;
    CEdit m_edit;

// Message map functions
protected:
    afx_msg int OnCreate(LPCREATESTRUCT lpCreateStruct);
    afx_msg void OnSize(UINT nType, int cx, int cy);
    afx_msg void OnDestroy();
    DECLARE_MESSAGE_MAP()
};

/////////////////////////////////////////////////////////////////////////////
// CMainFrame

class CMainFrame : public CMDIFrameWnd
{
    DECLARE_DYNAMIC(CMainFrame)
public:
    CMainFrame() {}

// Attributes
protected:
    CWndInfo m_wndInfo;
// Operations
public:
    CToolBar& GetToolBar() { return m_wndToolBar; }
    void SetResourceUsageText(const CString& strText);

// Overrides
    // ClassWizard generated virtual function overrides
    //{{AFX_VIRTUAL(CMainFrame)
    public:
    virtual BOOL DestroyWindow();
    virtual BOOL PreTranslateMessage(MSG* pMsg);
    //}}AFX_VIRTUAL

// Implementation
public:
    virtual ~CMainFrame() {}

protected:  // control bar embedded members
    CStatusBar  m_wndStatusBar;
    CToolBar    m_wndToolBar;
    CProjectWindow m_wndProject;
    COutputWindow  m_wndOutputWindow;

// Generated message map functions
protected:
    //{{AFX_MSG(CMainFrame)
    afx_msg int OnCreate(LPCREATESTRUCT lpCreateStruct);
    afx_msg void OnUpdatePlatformIndicator(CCmdUI* pCmdUI);
    afx_msg void OnUpdateResIndicator(CCmdUI* pCmdUI);
    afx_msg void OnUpdateXYIndicator(CCmdUI* pCmdUI);
    afx_msg void OnViewProjectWindow();
    afx_msg void OnUpdateViewProjectWindow(CCmdUI* pCmdUI);
    afx_msg void OnViewOutputWindow();
    afx_msg void OnUpdateViewOutputWindow(CCmdUI* pCmdUI);
    afx_msg void OnDeleteScreen();
    //}}AFX_MSG
    DECLARE_MESSAGE_MAP()

public:
    void OnInitProjectTree();
    void OnUpdateProjectTree();
    void OnClearProjectTree();
    bool InsertToProjectTree(FeData::FileName fileName);
};
