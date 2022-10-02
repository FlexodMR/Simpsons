#if !defined(AFX_CLASSTREECTRL_H__408F8E63_1015_4397_8A51_28151FBAFDA2__INCLUDED_)
#define AFX_CLASSTREECTRL_H__408F8E63_1015_4397_8A51_28151FBAFDA2__INCLUDED_

#if _MSC_VER > 1000
#pragma once
#endif // _MSC_VER > 1000
// ClassTreeCtrl.h : header file
//

/////////////////////////////////////////////////////////////////////////////
// CClassTreeCtrl window

class CClassTreeCtrl : public CTreeCtrl
{
// Construction
public:
    CClassTreeCtrl();

// Attributes
public:
    enum
    {
        IDB_CLASS,
            IDB_FILE,
            IDB_FUNCTION,
            IDB_PARAMETER,
            IDB_PROJECT,
            IDB_INVALID,
            IDB_PROPERTY,
    };

    int PopulateClassView(IRadTypeInfoSystem *pTypeInfoSystem);

// Operations
public:

    // Overrides
    // ClassWizard generated virtual function overrides
    //{{AFX_VIRTUAL(CClassTreeCtrl)
    //}}AFX_VIRTUAL

// Implementation
public:
    virtual ~CClassTreeCtrl();

// Generated message map functions
protected:
    CImageList      m_imgImageList;
    CPoint          m_ptLastMousePos;
    //{{AFX_MSG(CClassTreeCtrl)
    afx_msg int OnCreate(LPCREATESTRUCT lpCreateStruct);
    afx_msg void OnRButtonDown(UINT nFlags, CPoint point);
    afx_msg void OnContextMenu(CWnd* pWnd, CPoint point);
	afx_msg void OnRclick(NMHDR* pNMHDR, LRESULT* pResult);
	afx_msg void OnMove(int x, int y);
	afx_msg void OnClick(NMHDR* pNMHDR, LRESULT* pResult);
	afx_msg void OnKillFocus(CWnd* pNewWnd);
	//}}AFX_MSG

    DECLARE_MESSAGE_MAP()
};

/////////////////////////////////////////////////////////////////////////////

//{{AFX_INSERT_LOCATION}}
// Microsoft Visual C++ will insert additional declarations immediately before the previous line.

#endif // !defined(AFX_CLASSTREECTRL_H__408F8E63_1015_4397_8A51_28151FBAFDA2__INCLUDED_)
