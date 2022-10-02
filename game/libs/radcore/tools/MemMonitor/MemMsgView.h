#if !defined(AFX_MEMMSGVIEW_H__59F0BFC4_4B4D_41B2_AF7B_C864F4C8FE32__INCLUDED_)
#define AFX_MEMMSGVIEW_H__59F0BFC4_4B4D_41B2_AF7B_C864F4C8FE32__INCLUDED_

#if _MSC_VER > 1000
#pragma once
#endif // _MSC_VER > 1000
// MemMsgView.h : header file
//

/////////////////////////////////////////////////////////////////////////////
// CMemMsgView view

class CMemMsgView :
    public CListView
{
protected:
    CMemMsgView();           // protected constructor used by dynamic creation
    DECLARE_DYNCREATE(CMemMsgView)

// Attributes
public:

// Operations
public:

// Overrides
    // ClassWizard generated virtual function overrides
    //{{AFX_VIRTUAL(CMemMsgView)
    protected:
    virtual void OnDraw(CDC* pDC);      // overridden to draw this view
    //}}AFX_VIRTUAL

// Implementation
protected:
    virtual ~CMemMsgView();
#ifdef _DEBUG
    virtual void AssertValid() const;
    virtual void Dump(CDumpContext& dc) const;
#endif

    // Generated message map functions
protected:
    //{{AFX_MSG(CMemMsgView)
        // NOTE - the ClassWizard will add and remove member functions here.
    //}}AFX_MSG
    DECLARE_MESSAGE_MAP()
};

/////////////////////////////////////////////////////////////////////////////

//{{AFX_INSERT_LOCATION}}
// Microsoft Visual C++ will insert additional declarations immediately before the previous line.

#endif // !defined(AFX_MEMMSGVIEW_H__59F0BFC4_4B4D_41B2_AF7B_C864F4C8FE32__INCLUDED_)
