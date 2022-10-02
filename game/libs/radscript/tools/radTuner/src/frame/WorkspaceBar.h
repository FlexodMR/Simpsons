// WorkspaceBar.h : interface of the CWorkSpaceBar class
//
/////////////////////////////////////////////////////////////////////////////

#if !defined(AFX_WORKSPACEBAR_H__63820E81_E5BB_4928_A1EB_16D0766BC5AF__INCLUDED_)
#define AFX_WORKSPACEBAR_H__63820E81_E5BB_4928_A1EB_16D0766BC5AF__INCLUDED_

#if _MSC_VER > 1000
#pragma once
#endif // _MSC_VER > 1000

#include "ClassTreeCtrl.h"
#include "FileTreeCtrl.h"


class CWorkSpaceBar : public CBCGSizingControlBar
{
public:
    CWorkSpaceBar();
    
    CClassTreeCtrl* GetClassTreeCtrl() const
    {
        return(m_pwndClassTree);
    }
    
    CFileTreeCtrl* GetFileTreeCtrl() const
    {
        return(m_pwndFileTree);
    }
    
    CBCGTabWnd* GetTabWnd()
    {
        return(&m_wndTabs);
    }

    void RemoveAllTab();
    
    int InsertAllTab();
    
// Attributes
protected:
    CBCGTabWnd          m_wndTabs;
    
    CClassTreeCtrl*     m_pwndClassTree;
    CFileTreeCtrl*      m_pwndFileTree;
// Operations
public:
    
// Overrides
    // ClassWizard generated virtual function overrides
    //{{AFX_VIRTUAL(CWorkSpaceBar)
    //}}AFX_VIRTUAL
    
    // Implementation
public:
    virtual ~CWorkSpaceBar();
    
// Generated message map functions
protected:
    //{{AFX_MSG(CWorkSpaceBar)
    afx_msg int OnCreate(LPCREATESTRUCT lpCreateStruct);
    afx_msg void OnSize(UINT nType, int cx, int cy);
    //}}AFX_MSG
    DECLARE_MESSAGE_MAP()
};

/////////////////////////////////////////////////////////////////////////////

//{{AFX_INSERT_LOCATION}}
// Microsoft Visual C++ will insert additional declarations immediately before the previous line.

#endif // !defined(AFX_WORKSPACEBAR_H__63820E81_E5BB_4928_A1EB_16D0766BC5AF__INCLUDED_)
