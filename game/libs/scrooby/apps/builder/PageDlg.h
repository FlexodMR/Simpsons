/////////////////////////////////////////////////////////////////////////////
// DlgTrees.h : header file

#pragma once

#include "StdAfx.h"
#include "TreeDlg.h"
#include "XConDoc.h"

#include "Strings\PCString.h"

namespace FeData
{
    class Page;
    class Layer;
    class DrawingElement;
    class NamedElement;
    class PageElement;
}


/////////////////////////////////////////////////////////////////////////////
// CPageDlg dialog

class CPageDlg : public CTreeDlg, public MultiTreeCallback
{
// Construction
public:
    CPageDlg();

// Dialog Data
    //{{AFX_DATA(CPageDlg)
    enum { IDD = IDD_OVERLAYS };
    //}}AFX_DATA

// Operations
public:
    void SelectObject(CXContext* pContext, CXLayer* pLayer = NULL);
    void SetVisibleObject(int nIndex);
    void SetVisible(CXOverlay* pOverlay, BOOL bVisible);
//    void SetMultiObject(CXDisplay* pDisplay);

//    CXOverlay* GetOverlaySelected();
//    CXLayer* GetLayerSelected();
//    CXGroup* GetGroupSelected();
//    CXDisplay* GetDisplayObject();

    virtual void InsertNewEntry(CXObject* pObject);
    virtual void InsertEntry(CXObject* pObject, int nExtra);
    virtual void OnInitialUpdate(CXConDoc* pDoc);
    virtual CXObject* GetSelection();

    virtual FeData::NamedElement* GetSelectedElement();
    virtual FeData::NamedElement* GetSelectedElementParent();
    virtual FeData::NamedElement* GetSelectedElementNextSibling();

    virtual bool GetSelectedPageName( PascalCString& pageName );
    virtual void ExpandSelectedElement();

    virtual void UpdateSelection();

    virtual void SelectionChanged( HTREEITEM treeItem, MultiTreeSelectionEnum selectType );
    virtual bool CanSelect( HTREEITEM treeItem );
    virtual void MultiTreeOnKeyDown(UINT nChar, UINT nRepCnt, UINT nFlags);

//    virtual void DeleteObj(CXObject* pObject, CXOverlay* pOverlay = NULL, DWORD dwExtra = 0);
//    virtual void MoveObject(CXObject* pObject, BOOL bMoveUp, HTREEITEM hParent = NULL);
//    HTREEITEM TraceGroups(CXContext* pObject, HTREEITEM hParent);

protected:
    void SetVisible(BOOL bVisible = TRUE);
    void SetVisibleAll(BOOL bVisible = TRUE);
//    BOOL InsertMultiObject(CXDisplay* pDisplay, HTREEITEM hContext);


    void InsertPage( FeData::Page* page, HTREEITEM root, HTREEITEM insertAfter );
    void InsertLayer( FeData::Layer* layer, HTREEITEM pageItem, HTREEITEM insertAfter );
    void InsertDrawingElement( FeData::DrawingElement* drawingElement, HTREEITEM parentItem, HTREEITEM insertAfter );

    
 //   HTREEITEM InsertOverlay(CXOverlay* pOverlay, HTREEITEM hRoot, HTREEITEM hInsertAfter);
//    HTREEITEM InsertLayer(CXLayer* pLayer, HTREEITEM hOvrItem, HTREEITEM hInsertAfter);
//    HTREEITEM InsertContext(CXContext* pContext, HTREEITEM hParent, HTREEITEM hInsertAfter);

    virtual void GetContextMenu(HTREEITEM hItem, UINT* pIDResource, int* nPos);
    virtual void ModifyContextMenu(CMenu* pMenu, int nPos);
    //virtual CObArray* GetMoveArray();

    void MoveSelection( bool moveUp );
    
    BOOL ItemCanBeDragged(HTREEITEM hItem);
    void HandleDroppedOn(HTREEITEM hSource, HTREEITEM hTarget);

    int GetDrawingElementIndex( FeData::DrawingElement* element, FeData::PageElement* parent );

    void TryToChangeMultiObjectSelection();


    HTREEITEM m_hDraggedItem;
    BOOL m_bDraggingNow;
    CImageList *m_pDragImageList;


// Overrides
    // ClassWizard generated virtual function overrides
    //{{AFX_VIRTUAL(CPageDlg)
    //}}AFX_VIRTUAL

// Implementation
protected:
    // Generated message map functions
    //{{AFX_MSG(CPageDlg)
    afx_msg void OnBeginLabelEdit(NMHDR* pNMHDR, LRESULT* pResult);
    afx_msg void OnSelChanged(NMHDR* pNMHDR, LRESULT* pResult);
    afx_msg void OnOverlayShow();
    afx_msg void OnOverlayHide();
    afx_msg void OnOverlayToggle();
    afx_msg void OnOverlayShowAll();
    afx_msg void OnOverlayHideAll();
    afx_msg void OnUpdateRename(CCmdUI* pCmdUI);
    afx_msg void OnOverlayExport();
    afx_msg void OnUpdateOverlayExport(CCmdUI* pCmdUI);
    afx_msg void OnLayerEditable();
    afx_msg void OnUpdateLayerEditable(CCmdUI* pCmdUI);
    afx_msg void OnLayerVisible();
    afx_msg void OnUpdateLayerVisible(CCmdUI* pCmdUI);
    afx_msg void OnEndlabeleditTree(NMHDR* pNMHDR, LRESULT* pResult);
    afx_msg void OnMoveDown();
    afx_msg void OnUpdateMoveDown(CCmdUI* pCmdUI);
    afx_msg void OnMoveUp();
    afx_msg void OnUpdateMoveUp(CCmdUI* pCmdUI);
    afx_msg void OnBegindragTree(NMHDR* pNMHDR, LRESULT* pResult);
    afx_msg void OnMouseMove(UINT nFlags, CPoint point);
    afx_msg void OnLButtonUp(UINT nFlags, CPoint point);
    afx_msg void OnDblclkTree(NMHDR* pNMHDR, LRESULT* pResult);
    afx_msg void OnSetfocusTree(NMHDR* pNMHDR, LRESULT* pResult);
    afx_msg void OnKillfocusTree(NMHDR* pNMHDR, LRESULT* pResult);
    afx_msg void OnUpdateUngroup(CCmdUI* pCmdUI);
    afx_msg void OnUngroup();
    //}}AFX_MSG
    DECLARE_MESSAGE_MAP()
};
