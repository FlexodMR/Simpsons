/////////////////////////////////////////////////////////////////////////////
// DlgTrees.h : header file

#pragma once

#include "StdAfx.h"
#include "XCon.h"
#include "XConDoc.h"
#include "GUI\TreeState.h"
#include "GUI\MultiTreeCtrl.h"

enum
{
    OVERLAY_OVR_VISIBLE = 1,
    OVERLAY_LAYER_VISIBLE,
    OVERLAY_OBJ_VISIBLE,
};

enum
{
    FILE_NORMAL = 1,
    FILE_READ_ONLY,
    FILE_NOT_LOADED,
};

class CXObject;
class CTabView;

class CXDisplay;
class CXContext;

class CXScreen;
class CXOverlay;
class CXLayer;
//class CXGroup;

namespace FeData
{
    class NamedElement;
}


/////////////////////////////////////////////////////////////////////////////
// CTreeDlg dialog

class CTreeDlg : public CDialog
{
// Construction
public:
    CTreeDlg();

// Dialog Data
    //{{AFX_DATA(CTreeDlg)
    CMultiTreeCtrl    m_tree;
    //}}AFX_DATA

// Operations
public:
    void RenameObject();

    virtual void MoveObject(CXObject* pObject, BOOL bMoveUp, HTREEITEM hParent = NULL);
    virtual void InsertNewEntry(CXObject* pObject) {}
    virtual void InsertEntry(CXObject* pObject, int nExtra) {}
    virtual void OnInitialUpdate(CXConDoc* pDoc) {}
    virtual CXObject* GetSelection() { return NULL; }

    virtual FeData::NamedElement* GetSelectedElement() { return NULL; }

    virtual void DeleteObj(CXObject* pObject, CXOverlay* pOverlay = NULL, DWORD dwExtra = 0) {}

    virtual void SetupRebuildTree( CXConDoc* pDoc );
    virtual void RebuildTree( CXConDoc* pDoc );

    virtual void LockRebuild( bool setLocked );

    virtual void UpdateSelection();

protected:
    CTabView* GetView();
    CXConDoc* GetDocument();
    CXObject* GetSelectedObject();
    CXObject* GetItemObject(HTREEITEM hItem) { return (CXObject*)m_tree.GetItemData(hItem); }
    void ModifyMenuMove(CMenu* pMenu, CObArray* pArray, CXObject* pObject);
    HTREEITEM CopyItem(HTREEITEM hItem, HTREEITEM hParent, HTREEITEM hAfter);
    HTREEITEM CopyBranch(HTREEITEM hItem, HTREEITEM hParent, HTREEITEM hAfter);
    HTREEITEM FindObjectItem(CXObject* pObject, HTREEITEM hParent);

    // FeData
    HTREEITEM FindObjectItem(FeData::NamedElement* object, HTREEITEM hParent);

    void DeleteSubItems(HTREEITEM hParent);
    void EditLabel(HTREEITEM hItem);
    BOOL DoUpdateMove(BOOL bMoveUp);

    virtual void GetContextMenu(HTREEITEM hItem, UINT* pIDResource, int* nPos) {}
    virtual void ModifyContextMenu(CMenu* pMenu, int nPos) {}
    virtual CObArray* GetMoveArray() { return NULL; }




    TreeState m_TreeState;
    bool m_LockedRebuild;

    enum 
    {
        m_TimerId = 1
    };

    UINT m_Timer;


// Overrides
    // ClassWizard generated virtual function overrides
    //{{AFX_VIRTUAL(CTreeDlg)
    protected:
    virtual void DoDataExchange(CDataExchange* pDX);    // DDX/DDV support
    //}}AFX_VIRTUAL

// Implementation
protected:
    // Generated message map functions
    //{{AFX_MSG(CTreeDlg)
    afx_msg void OnSize(UINT nType, int cx, int cy);
    virtual BOOL OnInitDialog();
    afx_msg void OnContextMenu(CWnd* pWnd, CPoint point);
    afx_msg void OnBeginLabelEdit(NMHDR* pNMHDR, LRESULT* pResult);
    afx_msg void OnEndLabelEdit(NMHDR* pNMHDR, LRESULT* pResult);
    afx_msg void OnGetDispInfo(NMHDR* pNMHDR, LRESULT* pResult);
    afx_msg void OnUpdateRename(CCmdUI* pCmdUI);
    afx_msg void OnRename();
    afx_msg void OnTimer(UINT nIDEvent);
    //}}AFX_MSG
    DECLARE_MESSAGE_MAP()

// Common stuff
public:
    static BOOL InitImageList();

protected:
    static CImageList s_imagelist;
};
