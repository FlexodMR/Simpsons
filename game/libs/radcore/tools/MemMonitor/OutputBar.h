// OutputBar.h : interface of the COutputBar class
//
/////////////////////////////////////////////////////////////////////////////
#if !defined(AFX_OUTPUTBAR_H__B961F415_542D_41AB_94F2_ABEE75DC8AB5__INCLUDED_)
#define AFX_OUTPUTBAR_H__B961F415_542D_41AB_94F2_ABEE75DC8AB5__INCLUDED_

#if _MSC_VER > 1000
#pragma once
#endif // _MSC_VER > 1000

#include "MemErrorListView.h"

class COutputBar :
    public CBCGSizingControlBar
{
public:
    COutputBar();

    CMemErrorListView * GetErrorListView( )
    {
        return m_pErrorListView;
    }

    const CMemErrorListView * GetErrorListView( ) const
    {
        return m_pErrorListView;
    }

// Attributes
protected:

    CBCGTabWnd          m_wndTabs;

    CMemErrorListView   * m_pErrorListView;

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

#endif // !defined(AFX_OUTPUTBAR_H__B961F415_542D_41AB_94F2_ABEE75DC8AB5__INCLUDED_)
