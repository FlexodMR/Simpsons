// WorkspaceBar.h : interface of the CWorkspaceBar class
//
/////////////////////////////////////////////////////////////////////////////

#if !defined(AFX_WORKSPACEBAR_H__794B4685_22AB_4FAE_8B54_05C209652029__INCLUDED_)
#define AFX_WORKSPACEBAR_H__794B4685_22AB_4FAE_8B54_05C209652029__INCLUDED_

#if _MSC_VER > 1000
#pragma once
#endif // _MSC_VER > 1000

#include "MemOverallView.h"

class CWorkspaceBar :
    public CBCGSizingControlBar
{
public:
    CWorkspaceBar();

    CMemOverallView * GetMemOverallViewPtr( )
    {
        return m_pMemoryOverallView;
    }

    const CMemOverallView * GetMemOverallViewPtr( ) const
    {
        return m_pMemoryOverallView;
    }

    CBCGTabWnd * GetTabWnd( )
    {
        return & m_wndTabs;
    }

    const CBCGTabWnd * GetTabWnd( ) const
    {
        return & m_wndTabs;
    }

// Attributes
protected:
    CMemOverallView *    m_pMemoryOverallView;

    CBCGTabWnd  m_wndTabs;

// Operations
public:

// Overrides
    // ClassWizard generated virtual function overrides
    //{{AFX_VIRTUAL(CWorkspaceBar)
    //}}AFX_VIRTUAL

// Implementation
public:
    virtual ~CWorkspaceBar();

// Generated message map functions
protected:
    //{{AFX_MSG(CWorkspaceBar)
    afx_msg int OnCreate(LPCREATESTRUCT lpCreateStruct);
    afx_msg void OnSize(UINT nType, int cx, int cy);
    //}}AFX_MSG
    DECLARE_MESSAGE_MAP()
};

/////////////////////////////////////////////////////////////////////////////

//{{AFX_INSERT_LOCATION}}
// Microsoft Visual C++ will insert additional declarations immediately before the previous line.

#endif // !defined(AFX_WORKSPACEBAR_H__794B4685_22AB_4FAE_8B54_05C209652029__INCLUDED_)
