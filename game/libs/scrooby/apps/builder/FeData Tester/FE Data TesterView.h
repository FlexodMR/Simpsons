// FE Data TesterView.h : interface of the CFEDataTesterView class
//
/////////////////////////////////////////////////////////////////////////////

#if !defined(AFX_FEDATATESTERVIEW_H__B1D4CD67_20E5_11D4_8A57_0050DA803311__INCLUDED_)
#define AFX_FEDATATESTERVIEW_H__B1D4CD67_20E5_11D4_8A57_0050DA803311__INCLUDED_

#if _MSC_VER > 1000
#pragma once
#endif // _MSC_VER > 1000


class CFEDataTesterView : public CView
{
protected: // create from serialization only
    CFEDataTesterView();
    DECLARE_DYNCREATE(CFEDataTesterView)

// Attributes
public:
    CFEDataTesterDoc* GetDocument();

// Operations
public:

// Overrides
    // ClassWizard generated virtual function overrides
    //{{AFX_VIRTUAL(CFEDataTesterView)
    public:
    virtual void OnDraw(CDC* pDC);  // overridden to draw this view
    virtual BOOL PreCreateWindow(CREATESTRUCT& cs);
    protected:
    virtual BOOL OnPreparePrinting(CPrintInfo* pInfo);
    virtual void OnBeginPrinting(CDC* pDC, CPrintInfo* pInfo);
    virtual void OnEndPrinting(CDC* pDC, CPrintInfo* pInfo);
    //}}AFX_VIRTUAL

// Implementation
public:
    virtual ~CFEDataTesterView();
#ifdef _DEBUG
    virtual void AssertValid() const;
    virtual void Dump(CDumpContext& dc) const;
#endif

protected:

// Generated message map functions
protected:
    //{{AFX_MSG(CFEDataTesterView)
        // NOTE - the ClassWizard will add and remove member functions here.
        //    DO NOT EDIT what you see in these blocks of generated code !
    //}}AFX_MSG
    DECLARE_MESSAGE_MAP()
};

#ifndef _DEBUG  // debug version in FE Data TesterView.cpp
inline CFEDataTesterDoc* CFEDataTesterView::GetDocument()
   { return (CFEDataTesterDoc*)m_pDocument; }
#endif

/////////////////////////////////////////////////////////////////////////////

//{{AFX_INSERT_LOCATION}}
// Microsoft Visual C++ will insert additional declarations immediately before the previous line.

#endif // !defined(AFX_FEDATATESTERVIEW_H__B1D4CD67_20E5_11D4_8A57_0050DA803311__INCLUDED_)
