#pragma once
#include "stdafx.h"

class CXConDoc ;

/////////////////////////////////////////////////////////////////////////////
// TabView.h : interface of the CTabView class

enum
{
    PAGES_PAGE,
    RESOURCE_PAGE,
    LAYER_ORGANIZER_PAGE,
    NUM_PAGES
};

class CTreeDlg;
class CXObject;

namespace FeData
{
    class NamedElement;
}


/////////////////////////////////////////////////////////////////////////////
// CTabView

class CTabView : public CView
{
protected: // create from serialization only
    CTabView();
    DECLARE_DYNCREATE(CTabView)

// Attributes
protected:
    CTabCtrl* m_pTabCtrl;
    CTypedPtrArray<CObArray, CDialog*> m_arDialogs;
    HWND m_hEditLabel;
    int m_LastScreenChangeNumber;

// Operations
public:
    CXConDoc* GetDocument();
    void CreatePages();
    BOOL HandleKeyDownMsg(MSG* pMsg);
    void SetTreeEditLabel(HWND hEditLabel = NULL) { m_hEditLabel = hEditLabel; }
    CTreeDlg* GetPage(int nPage, BOOL bSelect = TRUE);
    int GetSelectedPage() { return m_pTabCtrl->GetCurSel(); }
    CDialog* GetCurPage() { return m_arDialogs[GetSelectedPage()]; }
    CXObject* GetSelection();

    FeData::NamedElement* GetSelectedElement();

    void InvalidatePage();
    void SelectTab(int nIndex);

    void SetupCheckRebuild();
    void CheckRebuild();
    void LockRebuild( bool setLocked );

protected:
    void SetDialogSize();
    BOOL CheckAccelerator(MSG* pMsg);

// Overrides
    // ClassWizard generated virtual function overrides
    //{{AFX_VIRTUAL(CTabView)
    public:
    virtual void OnDraw(CDC* pDC) {}  // overridden to draw this view
    virtual BOOL OnCmdMsg(UINT nID, int nCode, void* pExtra, AFX_CMDHANDLERINFO* pHandlerInfo);
    virtual void OnInitialUpdate();
    //}}AFX_VIRTUAL

// Implementation
public:
    virtual ~CTabView();

// Generated message map functions
protected:
    //{{AFX_MSG(CTabView)
    afx_msg int OnCreate(LPCREATESTRUCT lpCreateStruct);
    afx_msg void OnSize(UINT nType, int cx, int cy);
    afx_msg void OnSetFocus(CWnd* pOldWnd);
    //}}AFX_MSG
    afx_msg void OnTabSelChanging(NMHDR* pnmhdr, LRESULT* pResult);
    afx_msg void OnTabSelChange(NMHDR* pnmhdr, LRESULT* pResult);
    DECLARE_MESSAGE_MAP()
};

#ifndef _DEBUG  // debug version in TabView.cpp
inline CXConDoc* CTabView::GetDocument()
   { return (CXConDoc*)m_pDocument; }
#endif
