#if !defined(AFX_MULTITREECTRL_H__F044DC54_532F_11D4_8A57_0050DA803311__INCLUDED_)
#define AFX_MULTITREECTRL_H__F044DC54_532F_11D4_8A57_0050DA803311__INCLUDED_

#if _MSC_VER > 1000
#pragma once
#endif // _MSC_VER > 1000
// MultiTreeCtrl.h : header file
//

enum MultiTreeSelectionEnum
{
    MultiTreeSelectionAdd,
    MultiTreeSelectionRemove,
    MultiTreeSelectionSet
};



class MultiTreeCallback
{
public:
    MultiTreeCallback() {};
    virtual ~MultiTreeCallback() {};

    virtual void SelectionChanged( HTREEITEM treeItem, MultiTreeSelectionEnum selectType ) = 0;
    virtual bool CanSelect( HTREEITEM treeItem ) = 0;
    virtual void MultiTreeOnKeyDown(UINT nChar, UINT nRepCnt, UINT nFlags) = 0;
};


/////////////////////////////////////////////////////////////////////////////
// CMultiTreeCtrl window

class CMultiTreeCtrl : public CTreeCtrl
{
// Construction
public:
    CMultiTreeCtrl();

    void SetDoMultiSelect( bool setting );
    void SetDoCustomKeyboard( bool setting );

    void SetSelectionChangedCallBack( MultiTreeCallback* selectionChangedCallBack ); 

// Attributes
public:

// Operations
public:

// Overrides
    // ClassWizard generated virtual function overrides
    //{{AFX_VIRTUAL(CMultiTreeCtrl)
    //}}AFX_VIRTUAL

// Implementation
public:
    virtual ~CMultiTreeCtrl();

    // Generated message map functions
protected:

    void ClearSelection();


    bool m_DoMultiSelect;
    bool m_DoCustomKeyboard;
    MultiTreeCallback* m_SelectionChangedCallBack;


    //{{AFX_MSG(CMultiTreeCtrl)
    afx_msg void OnLButtonDown(UINT nFlags, CPoint point);
    afx_msg void OnKeyDown(UINT nChar, UINT nRepCnt, UINT nFlags);
    afx_msg void OnRButtonDown(UINT nFlags, CPoint point);
    afx_msg void OnRButtonUp(UINT nFlags, CPoint point);
    afx_msg void OnContextMenu(CWnd* pWnd, CPoint point);
    //}}AFX_MSG

    DECLARE_MESSAGE_MAP()
};

/////////////////////////////////////////////////////////////////////////////

//{{AFX_INSERT_LOCATION}}
// Microsoft Visual C++ will insert additional declarations immediately before the previous line.

#endif // !defined(AFX_MULTITREECTRL_H__F044DC54_532F_11D4_8A57_0050DA803311__INCLUDED_)
