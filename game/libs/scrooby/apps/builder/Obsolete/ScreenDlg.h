/////////////////////////////////////////////////////////////////////////////
// DlgTrees.h : header file

#pragma once

#include "StdAfx.h"
#include "TreeDlg.h"


/////////////////////////////////////////////////////////////////////////////
// CScreenDlg dialog

class CScreenDlg : public CTreeDlg
{
// Construction
public:
    CScreenDlg();

// Dialog Data
    //{{AFX_DATA(CScreenDlg)
    enum { IDD = IDD_SCREENS };
    //}}AFX_DATA

// Operations
public:
    void SetOverlays(CXScreen* pScreen, BOOL bExpand = TRUE);

    virtual void InsertNewEntry(CXObject* pObject);
    virtual void InsertEntry(CXObject* pObject, int nExtra);
    virtual void OnInitialUpdate(CXConDoc* pDoc);
    virtual CXObject* GetSelection();
    virtual void DeleteObj(CXObject* pObject, CXOverlay* pOverlay = NULL, DWORD dwExtra = 0);

protected:
    HTREEITEM InsertScreen(CXScreen* pScreen, HTREEITEM hRoot, HTREEITEM hInsertAfter);

    virtual void GetContextMenu(HTREEITEM hItem, UINT* pIDResource, int* nPos);
    virtual void ModifyContextMenu(CMenu* pMenu, int nPos);
    virtual CObArray* GetMoveArray() ;

// Overrides
    // ClassWizard generated virtual function overrides
    //{{AFX_VIRTUAL(CScreenDlg)
    //}}AFX_VIRTUAL

// Implementation
protected:
    // Generated message map functions
    //{{AFX_MSG(CScreenDlg)
    afx_msg void OnBeginLabelEdit(NMHDR* pNMHDR, LRESULT* pResult);
    afx_msg void OnScreenShow();
    afx_msg void OnUpdateScreenShow(CCmdUI* pCmdUI);
    //}}AFX_MSG
    DECLARE_MESSAGE_MAP()
};
