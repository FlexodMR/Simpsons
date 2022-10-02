#if !defined(AFX_PROJECTTREE_H__BEE8C7B2_8D6C_4E6C_8A0E_5D1ACDEDE8C6__INCLUDED_)
#define AFX_PROJECTTREE_H__BEE8C7B2_8D6C_4E6C_8A0E_5D1ACDEDE8C6__INCLUDED_

#if _MSC_VER > 1000
#pragma once
#endif // _MSC_VER > 1000
// ProjectTree.h : header file
//

/////////////////////////////////////////////////////////////////////////////
// CProjectTree window

class CProjectTree : public CTreeCtrl
{
// Construction
public:
    CProjectTree();

// Attributes
public:

// Operations
public:

// Overrides
    // ClassWizard generated virtual function overrides
    //{{AFX_VIRTUAL(CProjectTree)
    //}}AFX_VIRTUAL

// Implementation
public:
    virtual ~CProjectTree();

    // Generated message map functions
protected:
    //{{AFX_MSG(CProjectTree)
    afx_msg void OnDblclk(NMHDR* pNMHDR, LRESULT* pResult);
    afx_msg void OnContextMenu(CWnd* pWnd, CPoint point);
    afx_msg void OnRclick(NMHDR* pNMHDR, LRESULT* pResult);
    //}}AFX_MSG

    DECLARE_MESSAGE_MAP()
};

/////////////////////////////////////////////////////////////////////////////

//{{AFX_INSERT_LOCATION}}
// Microsoft Visual C++ will insert additional declarations immediately before the previous line.

#endif // !defined(AFX_PROJECTTREE_H__BEE8C7B2_8D6C_4E6C_8A0E_5D1ACDEDE8C6__INCLUDED_)
