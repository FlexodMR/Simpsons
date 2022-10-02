// OutputBar.h : interface of the COutputBar class
//
/////////////////////////////////////////////////////////////////////////////

#if !defined(AFX_OUTPUTBAR_H__F74D8214_915C_435D_B874_1410341534B7__INCLUDED_)
#define AFX_OUTPUTBAR_H__F74D8214_915C_435D_B874_1410341534B7__INCLUDED_

#if _MSC_VER > 1000
#pragma once
#endif // _MSC_VER > 1000

#include "EditOutputWnd.h"

class COutputBar : public CBCGSizingControlBar
{
public:
    COutputBar();
    
    void OutputMsg(const char* const pszFmt, ...);
    void ClearOutput();
    
    void AddTab(CWnd* pTabWnd, LPCTSTR lpszTabLabel, UINT uiImageId = (UINT)-1);
    void AddTab(CWnd* pTabWnd, UINT uiResTabLabel, UINT uiImageId = (UINT)-1);
    
    void InsertTab(CWnd* pNewWnd, LPCTSTR lpszTabLabel, int nInsertAt, UINT uiImageId = (UINT)-1);
    void InsertTab(CWnd* pNewWnd, UINT uiResTabLabel, int nInsertAt, UINT uiImageId = (UINT)-1);
    
    int GetTabsNum() const;
    
    BOOL RemoveTab(int iTab);
    void RemoveAllTabs();

// Attributes
protected:

    CBCGTabWnd      m_wndTabs;

    CEditOutputWnd  m_wndOutputText;
// Operations
public:
    
    // Overrides
    // ClassWizard generated virtual function overrides
    //{{AFX_VIRTUAL(COutputBar)
    //}}AFX_VIRTUAL
    
// Implementation
public:
    virtual ~COutputBar();
    
// Generated message map functions
protected:
    //{{AFX_MSG(COutputBar)
    afx_msg int OnCreate(LPCREATESTRUCT lpCreateStruct);
    afx_msg void OnSize(UINT nType, int cx, int cy);
    //}}AFX_MSG
    DECLARE_MESSAGE_MAP()
};

/////////////////////////////////////////////////////////////////////////////

//{{AFX_INSERT_LOCATION}}
// Microsoft Visual C++ will insert additional declarations immediately before the previous line.

#endif // !defined(AFX_OUTPUTBAR_H__F74D8214_915C_435D_B874_1410341534B7__INCLUDED_)
