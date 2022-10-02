/////////////////////////////////////////////////////////////////////////////
// DlgTrees.h : header file

#pragma once

#include "StdAfx.h"
#include "TreeDlg.h"

#include "Strings\PCString.h"

namespace FeData
{
    class Page;
    class Resource;
}


/////////////////////////////////////////////////////////////////////////////
// CResourceDlg dialog

class CResourceDlg : public CTreeDlg
{
// Construction
public:
    CResourceDlg();

// Dialog Data
    //{{AFX_DATA(CResourceDlg)
    enum { IDD = IDD_RESOURCES };
    //}}AFX_DATA

protected:
    HTREEITEM m_hItems[NUM_RES_ITEMS];

// Operations
public:
    virtual void InsertNewEntry(CXObject* pObject);
    
    // FeData
    virtual void OnInitialUpdate(CXConDoc* pDoc);
    virtual void DeleteObj(CXObject* pObject, CXOverlay* pOverlay = NULL, DWORD dwExtra = 0);

    virtual bool GetSelectedPageName( PascalCString& pageName );
    virtual FeData::NamedElement* GetSelectedElement();

protected:
    virtual void GetContextMenu(HTREEITEM hItem, UINT* pIDResource, int* pPos);
    virtual void ModifyContextMenu(CMenu* pMenu, int nPos);
    virtual CXObject* GetSelection();

// Overrides
    // ClassWizard generated virtual function overrides
    //{{AFX_VIRTUAL(CResourceDlg)
    //}}AFX_VIRTUAL

// Implementation
protected:
    // Generated message map functions
    //{{AFX_MSG(CResourceDlg)
    virtual BOOL OnInitDialog();
    afx_msg void OnBeginLabelEdit(NMHDR* pNMHDR, LRESULT* pResult);
    afx_msg void OnEndlabeleditTree(NMHDR* pNMHDR, LRESULT* pResult);
    afx_msg void OnUpdateRename(CCmdUI* pCmdUI);
    afx_msg void OnDblclkTree(NMHDR* pNMHDR, LRESULT* pResult);
    //}}AFX_MSG
    DECLARE_MESSAGE_MAP()

private:
 //   virtual void InsertResource( PascalCString& imageName, PascalCString& pageName, PascalCString& page );

};
