/////////////////////////////////////////////////////////////////////////////
// DlgTrees.cpp : implementation file

#pragma warning( disable : 4786 )

#include <stack>

#include "StdAfx.h"
#include "PageDlg.h"
#include "XCon.h"
#include "XConView.h"
#include "TabView.h"
//#include "xUtil.h"

//#include "xStringOrID.h"
//#include "xDisplay.h"
//#include "xScreen.h"
//#include "xGroup.h"
//#include "xText.h"

#include "Strings\PCString.h"

#include "GUI\SelectionList.h"

#include "GUI\Undo\ActionMoveInHierarchy.h"
#include "GUI\Undo\ActionMoveLayerInPage.h"
#include "GUI\Undo\ActionMovePageInScreen.h"
#include "GUI\Undo\ActionMultiObjectSelection.h"
#include "GUI\Undo\ActionRename.h"
#include "GUI\Undo\ActionSelectionChange.h"
#include "GUI\Undo\ActionScreenSettings.h"
#include "GUI\Undo\ActionLayerSettings.h"

#include "FeData\Helpers\NameManager.h"
#include "FeData\Helpers\OutputMessage.h"

#include "FeData\NamedElements\Layer.h"
#include "FeData\NamedElements\Page.h"
#include "FeData\NamedElements\Screen.h"

#include "FeData\NamedElements\NamedElement.h"

#include "FeData\NamedElements\DrawingElement.h"
#include "FeData\NamedElements\BoxDrawingElement.h"

#include "FeData\NamedElements\Group.h"
#include "FeData\NamedElements\MultiSprite.h"
#include "FeData\NamedElements\MultiText.h"

#ifdef _DEBUG
#define new DEBUG_NEW
#undef THIS_FILE
static char THIS_FILE[] = __FILE__;
#endif


/////////////////////////////////////////////////////////////////////////////
// CPageDlg dialog

CPageDlg::CPageDlg()
{
    m_bDraggingNow          = FALSE;
    m_hDraggedItem          = NULL;
    m_pDragImageList        = NULL;

    m_tree.SetDoMultiSelect( true );
    m_tree.SetDoCustomKeyboard( true );
    m_tree.SetSelectionChangedCallBack( this );

    //{{AFX_DATA_INIT(CPageDlg)
    //}}AFX_DATA_INIT
}

BEGIN_MESSAGE_MAP(CPageDlg, CTreeDlg)
    //{{AFX_MSG_MAP(CPageDlg)
    ON_NOTIFY(TVN_BEGINLABELEDIT, IDC_TREE, OnBeginLabelEdit)
    ON_NOTIFY(TVN_SELCHANGED, IDC_TREE, OnSelChanged)
    ON_COMMAND(ID_OVERLAY_SHOW, OnOverlayShow)
    ON_COMMAND(ID_OVERLAY_HIDE, OnOverlayHide)
    ON_COMMAND(ID_OVERLAY_TOGGLE, OnOverlayToggle)
    ON_COMMAND(ID_OVERLAY_SHOW_ALL, OnOverlayShowAll)
    ON_COMMAND(ID_OVERLAY_HIDE_ALL, OnOverlayHideAll)
    ON_UPDATE_COMMAND_UI(ID_RENAME, OnUpdateRename)
    ON_COMMAND(ID_OVERLAY_EXPORT, OnOverlayExport)
    ON_UPDATE_COMMAND_UI(ID_OVERLAY_EXPORT, OnUpdateOverlayExport)
    ON_COMMAND(ID_LAYER_EDITABLE, OnLayerEditable)
    ON_UPDATE_COMMAND_UI(ID_LAYER_EDITABLE, OnUpdateLayerEditable)
    ON_COMMAND(ID_LAYER_VISIBLE, OnLayerVisible)
    ON_UPDATE_COMMAND_UI(ID_LAYER_VISIBLE, OnUpdateLayerVisible)
    ON_NOTIFY(TVN_ENDLABELEDIT, IDC_TREE, OnEndlabeleditTree)
    ON_COMMAND(ID_MOVE_DOWN, OnMoveDown)
    ON_UPDATE_COMMAND_UI(ID_MOVE_DOWN, OnUpdateMoveDown)
    ON_COMMAND(ID_MOVE_UP, OnMoveUp)
    ON_UPDATE_COMMAND_UI(ID_MOVE_UP, OnUpdateMoveUp)
    ON_NOTIFY(TVN_BEGINDRAG, IDC_TREE, OnBegindragTree)
    ON_WM_MOUSEMOVE()
    ON_WM_LBUTTONUP()
    ON_NOTIFY(NM_DBLCLK, IDC_TREE, OnDblclkTree)
    ON_NOTIFY(NM_SETFOCUS, IDC_TREE, OnSetfocusTree)
    ON_NOTIFY(NM_KILLFOCUS, IDC_TREE, OnKillfocusTree)
    ON_UPDATE_COMMAND_UI(ID_UNGROUP, OnUpdateUngroup)
    ON_COMMAND(ID_UNGROUP, OnUngroup)
    //}}AFX_MSG_MAP
END_MESSAGE_MAP()

void CPageDlg::GetContextMenu(HTREEITEM hItem, UINT* pIDResource, int* pPos)
{
    using namespace FeData;

    *pIDResource = IDR_OVERLAY;
    *pPos = -1;  // default to no menu

    if( hItem == m_tree.GetRootItem() )
    {
        *pPos = 0;
    }
    else
    {
        NamedElement* namedElement = (FeData::NamedElement*)m_tree.GetItemData( hItem );
        if( namedElement == NULL )
        {
            return;
        }
        else if( dynamic_cast<Page*>( namedElement ) != NULL )
        {
            Page* page = dynamic_cast<Page*>( namedElement );
            if( page->IsLoaded() )
            {
                *pPos = 1;
            }
        }
        else if( dynamic_cast<Layer*>( namedElement ) != NULL )
        {
            *pPos = 2;
        }
        else if( dynamic_cast<DrawingElement*>( namedElement ) != NULL )
        {
            *pPos = 3;
        }
//        else
//        {
//            *pPos = 4;
//        }
    }
}

void CPageDlg::ModifyContextMenu(CMenu* pMenu, int nPos)
{
    if (nPos == 0)
        return;
/*
    CXObject* pObject = GetSelectedObject();
    CObArray* pArray;
    if (nPos == 1)
    {
        //if (((CXOverlay*)pObject)->IsVisible())
        //    pMenu->RemoveMenu(ID_OVERLAY_SHOW, MF_BYCOMMAND);
        //else
        //    pMenu->RemoveMenu(ID_OVERLAY_HIDE, MF_BYCOMMAND);

        pArray = GetDocument()->GetObjectArray(DOC_OVERLAYS);
    }
    else if (nPos == 2)
    {
        if (((CXLayer*)pObject)->IsVisible())
            pMenu->RemoveMenu(ID_OVERLAY_SHOW, MF_BYCOMMAND);
        else
            pMenu->RemoveMenu(ID_OVERLAY_HIDE, MF_BYCOMMAND);

        pArray = ((CXLayer*)pObject)->GetOverlay()->GetLayerArray();
    }
    else if (nPos == 3)
    {
        CXGroup *pGroup;
        pGroup = ((CXContext*)pObject)->GetGroup();

        if (pGroup == NULL)
            pArray = ((CXContext*)pObject)->GetLayer()->GetContextArray();
        else
            pArray = pGroup->GetContextArray();
    }
    else
    {
        CXGroup *pGroup;
        pGroup = ((CXContext*)pObject)->GetGroup();

        if (pGroup == NULL)
            pArray = GetDisplayObject()->GetArray();
        else
            pArray = pGroup->GetContextArray(); 
    }
    
    ModifyMenuMove(pMenu, pArray, pObject);*/
}

void CPageDlg::InsertNewEntry(CXObject* pObject)
{/*
    HTREEITEM hInsertAfter = TVI_LAST;
    HTREEITEM hParent;
    BOOL bOverlay = pObject->IsKindOf(RUNTIME_CLASS(CXOverlay));
    BOOL bLayer = pObject->IsKindOf(RUNTIME_CLASS(CXLayer));
    if (bOverlay)
    {
        hParent = m_tree.GetRootItem();
        CXOverlay* pOverlay = GetOverlaySelected();
        if (pOverlay)
            hInsertAfter = FindObjectItem(pOverlay, hParent);
    }
    else if (bLayer)
    {
        hParent = m_tree.GetSelectedItem();
        CXObject* pSelObj = GetItemObject(hParent);
        if (pSelObj->IsKindOf(RUNTIME_CLASS(CXLayer)))
        {
            hParent = m_tree.GetParentItem(hParent);
            hInsertAfter = FindObjectItem(pSelObj, hParent);
        }
    }
    else
    {
        hParent = m_tree.GetSelectedItem();
        CXObject* pSelObj = GetItemObject(hParent);
        if ((pSelObj->IsKindOf(RUNTIME_CLASS(CXContext)))
            && !(pSelObj->IsKindOf(RUNTIME_CLASS(CXGroup))))
        {
            hParent = m_tree.GetParentItem(hParent);
            hInsertAfter = FindObjectItem(pSelObj, hParent);
        }
    }

    int nImage = pObject->GetImage();
    HTREEITEM hItem = m_tree.InsertItem(TVIF_TEXT|TVIF_IMAGE|TVIF_SELECTEDIMAGE|TVIF_PARAM,
        LPSTR_TEXTCALLBACK, nImage, nImage, 0, 0, (DWORD)pObject, hParent, hInsertAfter);
    m_tree.EnsureVisible(hItem);
    m_tree.SelectItem(hItem);

    if (bLayer || bOverlay || !pObject->IsKindOf(RUNTIME_CLASS(CXDisplay)))
        EditLabel(hItem);*/
}

void CPageDlg::InsertEntry(CXObject* pObject, int nExtra)
{/*
    HTREEITEM hRoot = m_tree.GetRootItem();

    HTREEITEM hParent = hRoot;
    BOOL bIsContext = pObject->IsKindOf(RUNTIME_CLASS(CXContext));
    if (bIsContext)
    {
        hParent = FindObjectItem(((CXContext*)pObject)->GetLayer()->GetOverlay(), hRoot);
        hParent = FindObjectItem(((CXContext*)pObject)->GetLayer(), hParent);

        if (((CXContext*)pObject)->GetGroup() != NULL)
        {
            hParent = TraceGroups((CXContext*)pObject, hParent);
        }
    }
    if (pObject->IsKindOf(RUNTIME_CLASS(CXLayer)))
    {
        hParent = FindObjectItem(((CXLayer*)pObject)->GetOverlay(), hRoot);
    }

    HTREEITEM hInsertAfter;
    if (nExtra == 0)
        hInsertAfter = TVI_FIRST;
    else
    {
        hInsertAfter = TVI_LAST;
        int nCount = 0;
        HTREEITEM hItem = m_tree.GetChildItem(hParent);
        while (hItem)
        {
            if (nCount == nExtra-1)
            {
                hInsertAfter = hItem;
                break;
            }
            hItem = m_tree.GetNextSiblingItem(hItem);
            nCount++;
        }
    }

    HTREEITEM hNew;
    if (bIsContext)
        hNew = InsertContext((CXContext*)pObject, hParent, hInsertAfter);
    else if (pObject->IsKindOf(RUNTIME_CLASS(CXLayer))) // WATCH
        hNew = InsertLayer((CXLayer*)pObject, hParent, hInsertAfter);
    else
        hNew = InsertOverlay(STATIC_DOWNCAST(CXOverlay, pObject), hRoot, hInsertAfter);

    m_tree.EnsureVisible(hNew);
    m_tree.SelectItem(hNew);*/
}

/*
HTREEITEM CPageDlg::InsertContext(CXContext* pContext, HTREEITEM hParent, HTREEITEM hInsertAfter)
{
       int nImage = pContext->GetImage();
    HTREEITEM hContext = m_tree.InsertItem(TVIF_TEXT|TVIF_IMAGE|TVIF_SELECTEDIMAGE|TVIF_PARAM,
        LPSTR_TEXTCALLBACK, nImage, nImage, 0, 0, (DWORD)pContext, hParent, hInsertAfter);

    if (pContext->IsKindOf(RUNTIME_CLASS(CXDisplay)))
        InsertMultiObject((CXDisplay*)pContext, hContext);

    if (pContext->IsKindOf(RUNTIME_CLASS(CXGroup)))
    {
        CXContextArray *pArray = ((CXGroup*)pContext)->GetContextArray();
        int nSize = pArray->GetSize();
        CXContext* pSubContext;
        HTREEITEM hSibling;

        for (int i = 0; i < nSize; i++)
        {
            pSubContext = pArray->GetAt(i);
            hSibling = InsertContext(pSubContext, hContext, hSibling);
        }
    }

    return NULL; //hContext;
}
*/

void CPageDlg::SelectObject(CXContext* pContext, CXLayer* pLayer /*=NULL*/)
{
    /*
    if (!pContext)
    {
        m_tree.SelectItem(m_tree.GetRootItem());
        return;
    }

    //m_tree.SelectItem(FindObjectItem(pContext, FindObjectItem(pLayer, FindObjectItem(pLayer->GetOverlay(), m_tree.GetRootItem()))));

    HTREEITEM hSelect = FindObjectItem(pLayer, FindObjectItem(pLayer->GetOverlay(), m_tree.GetRootItem()));

    hSelect = TraceGroups(pContext, hSelect);

    hSelect = FindObjectItem(pContext, hSelect);
    m_tree.SelectItem(hSelect);
*/
    
}


CXObject* CPageDlg::GetSelection()
{
    CXObject* pObject = NULL;
/*    HTREEITEM hSelItem = m_tree.GetSelectedItem();
    if (hSelItem && hSelItem != m_tree.GetRootItem())
        pObject = GetItemObject(hSelItem);*/
    return pObject;
}


FeData::NamedElement* CPageDlg::GetSelectedElement()
{
    HTREEITEM selectedItem = m_tree.GetSelectedItem();
    if( (selectedItem != NULL) &&
        (selectedItem != m_tree.GetRootItem()) )
    {
        return (FeData::NamedElement*)m_tree.GetItemData( selectedItem );
    }

    return NULL;
}


FeData::NamedElement* CPageDlg::GetSelectedElementParent()
{
    HTREEITEM selectedItem = m_tree.GetSelectedItem();
    if( (selectedItem != NULL) &&
        (selectedItem != m_tree.GetRootItem()) )
    {
        HTREEITEM parentItem = m_tree.GetParentItem( selectedItem );
        if( (parentItem != NULL) &&
            (parentItem != m_tree.GetRootItem()) )
        {
            return (FeData::NamedElement*)m_tree.GetItemData( parentItem );
        }
    }

    return NULL;
}


FeData::NamedElement* CPageDlg::GetSelectedElementNextSibling()
{
    HTREEITEM selectedItem = m_tree.GetSelectedItem();
    if( (selectedItem != NULL) &&
        (selectedItem != m_tree.GetRootItem()) )
    {
        HTREEITEM nextSiblingItem = m_tree.GetNextSiblingItem( selectedItem );
        if( (nextSiblingItem != NULL) &&
            (nextSiblingItem != m_tree.GetRootItem()) )
        {
            return (FeData::NamedElement*)m_tree.GetItemData( nextSiblingItem );
        }
    }

    return NULL;
}


bool CPageDlg::GetSelectedPageName( PascalCString& pageName )
{
    HTREEITEM hRoot = m_tree.GetRootItem();
    HTREEITEM hSelectedItem = m_tree.GetSelectedItem();

    if( hSelectedItem == NULL )
    {
        return false;
    }

    if( hRoot == hSelectedItem )
    {
        return false;
    }

    HTREEITEM hParent = m_tree.GetParentItem( hSelectedItem );
    while( hParent != hRoot )
    {
        hSelectedItem = hParent;
        hParent = m_tree.GetParentItem( hSelectedItem );
    }

    pageName = m_tree.GetItemText( hSelectedItem );
    return true;
}


void CPageDlg::ExpandSelectedElement()
{
    HTREEITEM hSelectedItem = m_tree.GetSelectedItem();

    if( (hSelectedItem != NULL) &&
        (m_tree.ItemHasChildren( hSelectedItem )) )
    {
        m_tree.Expand( hSelectedItem, TVE_EXPAND );
    }
}


/*
CXOverlay* CPageDlg::GetOverlaySelected()
{
    CXOverlay* pOverlay = NULL;
    CXObject* pObject = GetSelection();
    if (pObject)
    {
        if (pObject->IsKindOf(RUNTIME_CLASS(CXOverlay)))
            pOverlay = (CXOverlay*)pObject;
        else if (pObject->IsKindOf(RUNTIME_CLASS(CXLayer)))
            pOverlay = STATIC_DOWNCAST(CXLayer, pObject)->GetOverlay();
        else
        {
            if (IsMultiResourceObject(pObject))
                pObject = GetDisplayObject();
            pOverlay = STATIC_DOWNCAST(CXContext, pObject)->GetOverlay();
        }
    }
    return pOverlay;
}

CXLayer* CPageDlg::GetLayerSelected()
{
    CXLayer* pLayer = NULL;
    CXObject* pObject = GetSelection();
    if (pObject)
    {
        if (pObject->IsKindOf(RUNTIME_CLASS(CXLayer)))
            pLayer = (CXLayer*)pObject;
        else if (pObject->IsKindOf(RUNTIME_CLASS(CXContext)))
        {
            if (IsMultiResourceObject(pObject))
                pObject = GetDisplayObject();
            pLayer = STATIC_DOWNCAST(CXContext, pObject)->GetLayer();
        }
        else
            pLayer = NULL;
    }
    return pLayer;
}


CXGroup* CPageDlg::GetGroupSelected()
{
    CXGroup* pGroup = NULL;
    CXObject* pObject = GetSelection();
    if (pObject)
    {
        if (pObject->IsKindOf(RUNTIME_CLASS(CXGroup)))
            pGroup = (CXGroup*)pObject;
        else
        {
            if (IsMultiResourceObject(pObject))
                pObject = GetDisplayObject();
            if (pObject->IsKindOf(RUNTIME_CLASS(CXContext)))
                pGroup = STATIC_DOWNCAST(CXContext, pObject)->GetGroup();
            else
                pGroup = NULL;
        }
    }
    return pGroup;
}
*/

/*
CXDisplay* CPageDlg::GetDisplayObject()
{
    return NULL; //STATIC_DOWNCAST(CXDisplay, GetItemObject(m_tree.GetParentItem(m_tree.GetSelectedItem())));
}
*/

/*
void CPageDlg::DeleteObj(CXObject* pObject, CXOverlay* pOverlay, DWORD dwExtra)
{
    HTREEITEM hParent = m_tree.GetRootItem();
    if (pOverlay)
    {
        hParent = FindObjectItem(pOverlay, hParent);
        if (pObject->IsKindOf(RUNTIME_CLASS(CXContext)))
        {
            hParent = FindObjectItem(((CXContext*)pObject)->GetLayer(), hParent);

            if (((CXGroup*)pObject)->GetGroup() != NULL)
            {
                hParent = TraceGroups((CXContext*)pObject, hParent);
            }
        }
    }

    HTREEITEM hItem = FindObjectItem(pObject, hParent);
    if (!dwExtra)
    {
        // delete context item
        m_tree.DeleteItem(hItem);
    }
    else if (dwExtra == (DWORD)-1)
    {
        // item is no longer a multi-object
        DeleteSubItems(hItem);
        int nImage = pObject->GetImage();
        m_tree.SetItemImage(hItem, nImage, nImage);
    }
    else
    {
        // remove only those objects corresponding to dwExtra
        // set the visible object to the first one
        hItem = m_tree.GetChildItem(hItem);
        int nCount = 0;
        while (hItem)
        {
            HTREEITEM hNext = m_tree.GetNextSiblingItem(hItem);
            if (m_tree.GetItemData(hItem) == dwExtra)
                m_tree.DeleteItem(hItem);
            else
            {
                m_tree.SetItemState(hItem, !nCount ? INDEXTOOVERLAYMASK(OVERLAY_OBJ_VISIBLE) : 0, TVIS_OVERLAYMASK);
                nCount++;
            }
            hItem = hNext;
        }
    }
}
*/

/*
void CPageDlg::MoveObject(CXObject* pObject, BOOL bMoveUp, HTREEITEM hParent )
{
    if (pObject->IsKindOf(RUNTIME_CLASS(CXOverlay)))
    {
        CTreeDlg::MoveObject(pObject, bMoveUp);
        
//        if (STATIC_DOWNCAST(CXOverlay, pObject)->IsVisible())
//        {
//            HTREEITEM hItem = FindObjectItem(pObject, m_tree.GetRootItem());
//            m_tree.SetItemState(hItem, INDEXTOOVERLAYMASK(OVERLAY_OVR_VISIBLE), TVIS_OVERLAYMASK);
//        }
        
        return;
    }
    // WATCH
    if (pObject->IsKindOf(RUNTIME_CLASS(CXLayer)))
    {
        CXOverlay* pOverlay = STATIC_DOWNCAST(CXLayer, pObject)->GetOverlay();
        CTreeDlg::MoveObject(pObject, bMoveUp, FindObjectItem(pOverlay, m_tree.GetRootItem()));
        
        if (STATIC_DOWNCAST(CXLayer, pObject)->IsVisible())
        {
            HTREEITEM hItem = FindObjectItem(pObject, FindObjectItem(((CXLayer*)pObject)->GetOverlay(), m_tree.GetRootItem()));
            m_tree.SetItemState(hItem, INDEXTOOVERLAYMASK(OVERLAY_LAYER_VISIBLE), TVIS_OVERLAYMASK);
        }
    }
    if (pObject->IsKindOf(RUNTIME_CLASS(CXContext)))
    {
        CXLayer* pLayer = STATIC_DOWNCAST(CXContext, pObject)->GetLayer();
        HTREEITEM hParent = FindObjectItem(pLayer, FindObjectItem(pLayer->GetOverlay(), m_tree.GetRootItem()));
        hParent = TraceGroups((CXContext*)pObject, hParent);
        CTreeDlg::MoveObject(pObject, bMoveUp, hParent);
    }
}
*/

/*
CObArray* CPageDlg::GetMoveArray()
{
    CXObject* pObject = GetSelection();
    if (pObject->IsKindOf(RUNTIME_CLASS(CXOverlay)))
        return GetDocument()->GetObjectArray(DOC_OVERLAYS);

    if (pObject->IsKindOf(RUNTIME_CLASS(CXContext)))
    {
        CXGroup* pGroup;
        pGroup = ((CXContext*)pObject)->GetGroup();

        if (pGroup == NULL)
            return ((CXContext*)pObject)->GetLayer()->GetContextArray();
        else
            return (pGroup->GetContextArray());
    }

    if (pObject->IsKindOf(RUNTIME_CLASS(CXLayer)))
        return ((CXLayer*)pObject)->GetOverlay()->GetLayerArray();

    // multi-item resource
    return GetDisplayObject()->GetArray();
    return NULL;
}*/

void CPageDlg::SetVisibleObject(int nIndex)
{
/*    HTREEITEM hItem = m_tree.GetChildItem(m_tree.GetSelectedItem());
    int i = 0;
    while (hItem)
    {
        m_tree.SetItemState(hItem, i == nIndex ? INDEXTOOVERLAYMASK(OVERLAY_OBJ_VISIBLE) : 0, TVIS_OVERLAYMASK);
        hItem = m_tree.GetNextSiblingItem(hItem);
        i++;
    }*/
}

/*
HTREEITEM CPageDlg::TraceGroups(CXContext* pObject, HTREEITEM hParent)
{
    CXContextArray* pArray = new CXContextArray;
    CXGroup* pGroup;
    int i = 0;

    pGroup = (CXGroup*)pObject;

    do
    {
        pGroup = pGroup->GetGroup();
        if (pGroup != NULL)
            pArray->SetAtGrow(i, pGroup);
        i++;
    }
    while (pGroup != NULL);

    for (i = pArray->GetSize() - 1; i >= 0; i--)
    {
        pGroup = (CXGroup*)pArray->GetAt(i);
        hParent = FindObjectItem(pGroup, hParent);
    }

    delete pArray;
    return hParent;
   
    return NULL;
}*/



/////////////////////////////////////////////////////////////////////////////
/*
void CPageDlg::SetMultiObject(CXDisplay* pDisplay)
{
    pDisplay->Refresh();

    // HTREEITEM hContext = FindObjectItem(pDisplay, FindObjectItem(pDisplay->GetLayer(), m_tree.GetRootItem()));
    // HTREEITEM hContext = FindObjectItem(pDisplay, FindObjectItem(pLayer, FindObjectItem(pLayer->GetOverlay(), m_tree.GetRootItem())));

    CXLayer* pLayer = pDisplay->GetLayer();
    HTREEITEM hContext = FindObjectItem(pLayer, FindObjectItem(pLayer->GetOverlay(), m_tree.GetRootItem()));
    hContext = TraceGroups(pDisplay, hContext);
    hContext = FindObjectItem(pDisplay, hContext);

    if (m_tree.GetSelectedItem() != hContext)
        m_tree.SelectItem(hContext);
    DeleteSubItems(hContext);

    int nImage = pDisplay->GetImage();
    m_tree.SetItemImage(hContext, nImage, nImage);
    if (InsertMultiObject(pDisplay, hContext))
        m_tree.Expand(hContext, TVE_EXPAND);
}*/

/*
BOOL CPageDlg::InsertMultiObject(CXDisplay* pDisplay, HTREEITEM hContext)
{
    CObArray* pArray = pDisplay->GetArray();
    int nSize = pArray->GetSize();
    if (nSize <= 1)
        return FALSE;

    int nShow = pDisplay->GetShowIndex();
    //BOOL bText = pDisplay->IsKindOf(RUNTIME_CLASS(CXText));

    int nImage;
    //if (!bText)
        nImage = ((CXObject*)pArray->GetAt(0))->GetImage();
    
    for (int i = 0; i < nSize; i++)
    {
        CObject* pObject = pArray->GetAt(i);
        //if (bText)
            nImage = STATIC_DOWNCAST(CXStringOrID, pObject)->GetImage();

        HTREEITEM hItem = m_tree.InsertItem(TVIF_TEXT|TVIF_IMAGE|TVIF_SELECTEDIMAGE|TVIF_PARAM,
            LPSTR_TEXTCALLBACK, nImage, nImage, 0, 0, (DWORD)pObject, hContext, TVI_LAST);
    
        if (i == nShow)
            m_tree.SetItemState(hItem, INDEXTOOVERLAYMASK(OVERLAY_OBJ_VISIBLE), TVIS_OVERLAYMASK);
    }

    return TRUE;
}*/

/////////////////////////////////////////////////////////////////////////////
// CPageDlg message handlers

void CPageDlg::OnBeginLabelEdit(NMHDR* pNMHDR, LRESULT* pResult) 
{
/*    *pResult = FALSE;

    TVITEM& tvi = ((TV_DISPINFO*)pNMHDR)->item;
    if (tvi.hItem == m_tree.GetRootItem() || IsMultiResourceObject(GetItemObject(tvi.hItem)))
        *pResult = TRUE;
*/


    *pResult = FALSE;

    TVITEM& tvi = ((TV_DISPINFO*)pNMHDR)->item;
    if( (tvi.hItem == m_tree.GetRootItem()) || 
        (m_tree.GetParentItem( tvi.hItem ) == m_tree.GetRootItem()) ) 
    {
        *pResult = TRUE;
    }

    CTreeDlg::OnBeginLabelEdit(pNMHDR, pResult);
}

void CPageDlg::OnSelChanged(NMHDR* pNMHDR, LRESULT* pResult) 
{
    using namespace FeData;

    *pResult = 0;
/*
    TVITEM& tvi = ((NM_TREEVIEW*)pNMHDR)->itemNew;

    SelectionList* selectionList = GetDocument()->GetSelectionList();
    if( selectionList == NULL )
    {
        return;
    }

    if( (tvi.lParam != NULL) && (tvi.lParam != TVC_UNKNOWN) )
    {
        NamedElement* namedElement = (NamedElement*)tvi.lParam;
        DrawingElement* drawingElement = dynamic_cast<DrawingElement*>( namedElement );

        if( drawingElement != NULL )
        {
            // Don't add an element from a read only page
            if( drawingElement->GetPage()->IsReadOnly() )
            {
                return;
            }

            // Only change the selection if this is not the current selection
            if( (selectionList->GetNumberOfElements() != 1) ||
                (selectionList->GetElement( 0 ) != drawingElement) )
            {
                GetDocument()->AddAction( new ActionSelectionChange( GetDocument()->GetScreen(),
                                                             selectionList, 
                                                             drawingElement,
                                                             ACTION_SELECTION_CHANGE_SET ) );
            }
        }
    }
*/



/*
    *pResult = 0;

    CXContext* pObject = NULL;
    TVITEM& tvi = ((NM_TREEVIEW*)pNMHDR)->itemNew;
    if (tvi.hItem)
    {
        HTREEITEM hRoot = m_tree.GetRootItem();
        HTREEITEM hParent = m_tree.GetParentItem(tvi.hItem);
        if (tvi.hItem != hRoot && hParent != hRoot)
        {
            CXObject* pParent = GetItemObject(hParent);
            if (pParent->IsKindOf(RUNTIME_CLASS(CXOverlay)))
            {*/
                /*if (STATIC_DOWNCAST(CXOverlay, pParent)->IsVisible())
                    pObject = (CXContext*)m_tree.GetItemData(tvi.hItem);*/
        /*    }
            else if (pParent->IsKindOf(RUNTIME_CLASS(CXLayer))) // WATCH
            {
                if (((CXLayer*)pParent)->IsVisible())
                    pObject = (CXContext*)m_tree.GetItemData(tvi.hItem);
            }
            else if (pParent->IsKindOf(RUNTIME_CLASS(CXGroup)))
            {
                if (((CXGroup*)pParent)->GetLayer()->IsVisible())
                    pObject = (CXContext*)m_tree.GetItemData(tvi.hItem);
            }
            else
            {
                // find the index of new item
                int nIndex = 0;
                int nShow;
                HTREEITEM hItem = m_tree.GetChildItem(hParent);
                while (hItem)
                {
                    if (hItem == tvi.hItem)
                    {
                        nShow = nIndex;
                        m_tree.SetItemState(hItem, INDEXTOOVERLAYMASK(OVERLAY_OBJ_VISIBLE), TVIS_OVERLAYMASK);
                    }
                    else
                        m_tree.SetItemState(hItem, 0, TVIS_OVERLAYMASK);
                    hItem = m_tree.GetNextSiblingItem(hItem);
                    nIndex++;
                }

                if (pParent->IsKindOf(RUNTIME_CLASS(CXDisplay))) // WATCH
                {
                    CXDisplay* pDisplay = STATIC_DOWNCAST(CXDisplay, pParent);
                    pDisplay->SetShowIndex(nShow);
                    if (pDisplay->GetLayer()->IsVisible())
                        pObject = pDisplay;
                }
            }
        }
    }

    CXConView* pView = GetDocument()->GetXConView();
    if (pView)
        pView->SetSelection(pObject);*/
}







void CPageDlg::OnInitialUpdate(CXConDoc* pDoc)
{
    using namespace FeData;
//    DWORD startTime = ::GetTickCount();

    Screen* screen = pDoc->GetScreen();
    if( screen == NULL )
    {
        return;
    }

    HTREEITEM root = m_tree.GetRootItem();

    for( int i = 0; i < screen->GetNumberOfPages(); i++ )
    {
        Page* page = screen->GetPage( i );
        if( page != NULL )
        {
            InsertPage( page, root, TVI_LAST );
        }
    }

    m_tree.Expand(root, TVE_EXPAND);


/*
    DWORD endTime = ::GetTickCount();

    char timeString[80];
    sprintf( timeString, "%d", (endTime - startTime) );

    PascalCString timeMessage( "Screen tree rebuild in: " );
    timeMessage += timeString;
    timeMessage += "ms.";

    g_OutputMessage.Add( timeMessage, DebugOutputMessage );
*/  
    

 /*   HTREEITEM hRoot = m_tree.GetRootItem();
    CXOverlayArray* pArray = (CXOverlayArray*)pDoc->GetObjectArray(DOC_OVERLAYS);
    int nSize = pArray->GetSize();
    for (int i = 0; i < nSize; i++)
        InsertOverlay(pArray->GetAt(i), hRoot, TVI_LAST);

    m_tree.Expand(hRoot, TVE_EXPAND);
    */
}


void CPageDlg::InsertPage( FeData::Page* page, HTREEITEM root, HTREEITEM insertAfter )
{
    using namespace FeData;

    HTREEITEM pageItem = m_tree.InsertItem( TVIF_TEXT|TVIF_IMAGE|TVIF_SELECTEDIMAGE|TVIF_PARAM,  // nMask
                                LPSTR_TEXTCALLBACK,           // lpszItem
                                TREE_OVERLAY,                 // nImage
                                TREE_OVERLAY,                 // nSelectedImage
                                0,                            // nState
                                0,                            // nStateMask
                                (DWORD)page,                  // lParam
                                root,                         // hParent
                                insertAfter );                // hInsertAfter

    
    if( page->IsReadOnly() )
    {
        if( !page->IsLoaded() )
        {
            m_tree.SetItemState( pageItem, INDEXTOOVERLAYMASK( FILE_NOT_LOADED ), TVIS_OVERLAYMASK );
        }
        else
        {
            m_tree.SetItemState( pageItem, INDEXTOOVERLAYMASK( FILE_READ_ONLY ), TVIS_OVERLAYMASK );
        }
    }

    for( int i = 0; i < page->GetNumberOfLayers(); i++ )
    {
        Layer* layer = page->GetLayer( i );
        if( page != NULL )
        {
            InsertLayer( layer, pageItem, TVI_LAST );
        }
    }
}


void CPageDlg::InsertLayer( FeData::Layer* layer, HTREEITEM pageItem, HTREEITEM insertAfter )
{
    using namespace FeData;

    HTREEITEM layerItem = m_tree.InsertItem( TVIF_TEXT|TVIF_IMAGE|TVIF_SELECTEDIMAGE|TVIF_PARAM,  // nMask
                                LPSTR_TEXTCALLBACK,           // lpszItem
                                TREE_LAYER,                   // nImage
                                TREE_LAYER,                   // nSelectedImage
                                0,                            // nState
                                0,                            // nStateMask
                                (DWORD)layer,                 // lParam
                                pageItem,                     // hParent
                                insertAfter );                // hInsertAfter

    
    for( int i = 0; i < layer->GetNumberOfDrawingElements(); i++ )
    {
        DrawingElement* drawingElement = layer->GetDrawingElement( i );
        if( drawingElement != NULL )
        {
            InsertDrawingElement( drawingElement, layerItem, TVI_LAST );
        }
    }
}


void CPageDlg::InsertDrawingElement( FeData::DrawingElement* drawingElement, HTREEITEM parentItem, HTREEITEM insertAfter )
{
    using namespace FeData;
    NameManager nameManager;

    UINT image = TREE_FOLDER;
    DrawingElementsEnum elementType = nameManager.GetDrawingElementsType( drawingElement );
    switch( elementType )
    {
        case DRAWING_ELEMENT_GROUP:
        {
            image = TREE_GROUP;
            break;
        }

        case DRAWING_ELEMENT_POLYGON:
        {
            image = TREE_POLY;
            break;
        }

        case DRAWING_ELEMENT_SPRITE:
        {
            image = TREE_SPRITE;
            break;
        }

        case DRAWING_ELEMENT_MULTI_SPRITE:
        {
            image = TREE_MULTI_SPRITE;
            break;
        }

        case DRAWING_ELEMENT_TEXT:
        {
            image = TREE_TEXT;
            break;
        }

        case DRAWING_ELEMENT_MULTI_TEXT:
        {
            image = TREE_MULTI_TEXT;
            break;
        }

        case DRAWING_ELEMENT_MOVIE:
        {
            image = TREE_MOVIE;
            break;
        }

        case DRAWING_ELEMENT_PURE3DOBJECT:
        {
            image = TREE_PURE3DOBJECT;
            break;
        }

        default:
        {
            g_OutputMessage.Add( "CPageDlg::InsertDrawingElement: Invalid Drawing Element Type!",
                                 DebugOutputMessage );
            break;
        }
    }  // switch


    HTREEITEM drawingElementItem = m_tree.InsertItem( TVIF_TEXT|TVIF_IMAGE|TVIF_SELECTEDIMAGE|TVIF_PARAM,  // nMask
                                LPSTR_TEXTCALLBACK,           // lpszItem
                                image,                        // nImage
                                image,                        // nSelectedImage
                                0,                            // nState
                                0,                            // nStateMask
                                (DWORD)drawingElement,        // lParam
                                parentItem,                   // hParent
                                insertAfter );                // hInsertAfter

    // Recursively call for groups
    Group* group = dynamic_cast<Group*>( drawingElement );
    if( group != NULL )
    {
        for( int i = 0; i < group->GetNumberOfDrawingElements(); i++ )
        {
            DrawingElement* groupDrawingElement = group->GetDrawingElement( i );
            if( groupDrawingElement != NULL )
            {
                InsertDrawingElement( groupDrawingElement, drawingElementItem, TVI_LAST );
            }
        }
        return;
    }


    // Add sub elements for MultiSprite
    MultiSprite* multiSprite = dynamic_cast<MultiSprite*>( drawingElement );
    if( (multiSprite != NULL) && (elementType == DRAWING_ELEMENT_MULTI_SPRITE) )
    {
        for( int i = 0; i < multiSprite->GetNumberOfImages(); i++ )
        {
            PascalCString spriteName;
            if( multiSprite->GetSpriteName( i, spriteName ) )
            {
                HTREEITEM subItem = m_tree.InsertItem( TVIF_TEXT|TVIF_IMAGE|TVIF_SELECTEDIMAGE|TVIF_PARAM,  // nMask
                                   spriteName,                   // lpszItem
                                   TREE_SPRITE,                  // nImage
                                   TREE_SPRITE,                  // nSelectedImage
                                   0,                            // nState
                                   0,                            // nStateMask
                                   NULL,                         // lParam
                                   drawingElementItem,           // hParent
                                   TVI_LAST );                   // hInsertAfter

                  if( i == multiSprite->GetCurrentImage() )
                {
                    m_tree.SetItemState(subItem, INDEXTOOVERLAYMASK(OVERLAY_OBJ_VISIBLE), TVIS_OVERLAYMASK);
                }
            }
        }
        return;
    }


    // Add sub elements for MultiText
    MultiText* multiText = dynamic_cast<MultiText*>( drawingElement );
    if( (multiText != NULL) && (elementType == DRAWING_ELEMENT_MULTI_TEXT) )
    {
        for( int i = 0; i < multiText->GetNumberOfTexts(); i++ )
        {
            PascalCString textDescription;
            if( multiText->GetTextDescription( i, textDescription ) )
            {
                HTREEITEM subItem = m_tree.InsertItem( TVIF_TEXT|TVIF_IMAGE|TVIF_SELECTEDIMAGE|TVIF_PARAM,  // nMask
                                   textDescription,              // lpszItem
                                   TREE_TEXT,                    // nImage
                                   TREE_TEXT,                    // nSelectedImage
                                   0,                            // nState
                                   0,                            // nStateMask
                                   NULL,                         // lParam
                                   drawingElementItem,           // hParent
                                   TVI_LAST );                   // hInsertAfter
                 
                if( i == multiText->GetCurrentText() )
                {
                    m_tree.SetItemState(subItem, INDEXTOOVERLAYMASK(OVERLAY_OBJ_VISIBLE), TVIS_OVERLAYMASK);
                }
            }
        }
        return;
    }
}



/*
HTREEITEM CPageDlg::InsertOverlay(CXOverlay* pOverlay, HTREEITEM hRoot, HTREEITEM hInsertAfter)
{
    int nImage = pOverlay->GetImage();
    HTREEITEM hOvrItem = m_tree.InsertItem(TVIF_TEXT|TVIF_IMAGE|TVIF_SELECTEDIMAGE|TVIF_PARAM,
        LPSTR_TEXTCALLBACK, nImage, nImage, 0, 0, (DWORD)pOverlay, hRoot, hInsertAfter);

    //if (pOverlay->IsVisible())
    //    m_tree.SetItemState(hOvrItem, INDEXTOOVERLAYMASK(OVERLAY_OVR_VISIBLE), TVIS_OVERLAYMASK);

    CXLayerArray* pLayerArray = pOverlay->GetLayerArray(); // WATCH
    int nSize = pLayerArray->GetSize();
    for (int i = 0; i < nSize; i++)
        InsertLayer((CXLayer*)pLayerArray->GetAt(i), hOvrItem, TVI_LAST);

    return hOvrItem;
    return NULL;
}
*/

/*
HTREEITEM CPageDlg::InsertLayer(CXLayer* pLayer, HTREEITEM hOvrItem, HTREEITEM hInsertAfter)
{
    int nImage = pLayer->GetImage();
    HTREEITEM hLayerItem = m_tree.InsertItem(TVIF_TEXT|TVIF_IMAGE|TVIF_SELECTEDIMAGE|TVIF_PARAM,
        LPSTR_TEXTCALLBACK, nImage, nImage, 0, 0, (DWORD)pLayer, hOvrItem, hInsertAfter);

    if (pLayer->IsVisible())
        m_tree.SetItemState(hLayerItem, INDEXTOOVERLAYMASK(OVERLAY_LAYER_VISIBLE), TVIS_OVERLAYMASK);

    CXContextArray* pContextArray = pLayer->GetContextArray();
    int nSize = pContextArray->GetSize();
    for (int i = 0; i < nSize; i++)
        InsertContext((CXContext*)pContextArray->GetAt(i), hLayerItem, TVI_LAST);

    return hLayerItem;
    return NULL;
}*/

void CPageDlg::OnUpdateRename(CCmdUI* pCmdUI) 
{
    using namespace FeData;

    PageElement* element = dynamic_cast<PageElement*>( GetSelectedElement() );  
    if( element == NULL )
    {
        pCmdUI->Enable( FALSE );
    }
    else
    {
        pCmdUI->Enable( ! element->GetPage()->IsReadOnly() );
    }

    /*
    CXObject* pObject = GetSelection();
    pCmdUI->Enable(pObject && !IsMultiResourceObject(pObject));
    */
}

/////////////////////////////////////////////////////////////////////////////

void CPageDlg::SetVisible(CXOverlay* pOverlay, BOOL bVisible)
{
/*    HTREEITEM hItem = FindObjectItem(pOverlay, m_tree.GetRootItem());
    //m_tree.SetItemState(hItem, bVisible ? INDEXTOOVERLAYMASK(OVERLAY_OVR_VISIBLE) : 0, TVIS_OVERLAYMASK);
    
    HTREEITEM hChild = m_tree.GetChildItem(hItem);

    while (hChild)
    {
        m_tree.SetItemState(hChild, bVisible ? INDEXTOOVERLAYMASK(OVERLAY_LAYER_VISIBLE) : 0, TVIS_OVERLAYMASK);
        hChild = m_tree.GetNextSiblingItem(hChild);
    }*/
}

void CPageDlg::SetVisible(BOOL bVisible /*=TRUE*/)
{
/*    HTREEITEM hItem = m_tree.GetSelectedItem();
    //CXOverlay* pOverlay = (CXOverlay*)m_tree.GetItemData(hItem);
    
    CXObject* pObject = GetSelection();

    if (pObject->IsKindOf(RUNTIME_CLASS(CXOverlay)))
    {
        ((CXOverlay*)pObject)->EnableVisible(bVisible);
        HTREEITEM hChild = m_tree.GetChildItem(hItem);
        while (hChild)
        {
            m_tree.SetItemState(hChild, bVisible ? INDEXTOOVERLAYMASK(OVERLAY_LAYER_VISIBLE) : 0, TVIS_OVERLAYMASK);
            hChild = m_tree.GetNextSiblingItem(hChild);
        }
    }
    else if (pObject->IsKindOf(RUNTIME_CLASS(CXLayer)))
    {
        ((CXLayer*)pObject)->EnableVisible(bVisible);
        m_tree.SetItemState(hItem, bVisible ? INDEXTOOVERLAYMASK(OVERLAY_LAYER_VISIBLE) : 0, TVIS_OVERLAYMASK);
    }*/
}

void CPageDlg::SetVisibleAll(BOOL bVisible /*=TRUE*/)
{
/*    UINT nState = bVisible ? INDEXTOOVERLAYMASK(OVERLAY_OVR_VISIBLE) : 0;
    HTREEITEM hItem = m_tree.GetChildItem(m_tree.GetRootItem());
    while (hItem)
    {
        CXOverlay* pOverlay = (CXOverlay*)m_tree.GetItemData(hItem);
        //if (bVisible != pOverlay->IsVisible())
        {
            pOverlay->EnableVisible(bVisible);
            //m_tree.SetItemState(hItem, nState, TVIS_OVERLAYMASK);
            HTREEITEM hChild = m_tree.GetChildItem(hItem);
            while (hChild)
            {
                m_tree.SetItemState(hChild, bVisible ? INDEXTOOVERLAYMASK(OVERLAY_LAYER_VISIBLE) : 0, TVIS_OVERLAYMASK);
                hChild = m_tree.GetNextSiblingItem(hChild);
            }
        }
        hItem = m_tree.GetNextSiblingItem(hItem);
    }*/
}

void CPageDlg::OnOverlayShow() 
{
//    SetVisible();
}

void CPageDlg::OnOverlayHide() 
{
//    SetVisible(FALSE);
}

void CPageDlg::OnOverlayToggle() 
{
//    SetVisible(!STATIC_DOWNCAST(CXOverlay, GetSelectedObject())->IsVisible());
}

void CPageDlg::OnOverlayShowAll() 
{
//    SetVisibleAll();
}

void CPageDlg::OnOverlayHideAll() 
{
//    SetVisibleAll(FALSE);
}


void CPageDlg::OnOverlayExport() 
{
    using namespace FeData;

    Page* page = dynamic_cast<Page*>( GetSelectedElement() );
    if( page == NULL )
    {
        return;
    }

    Screen* screen = GetDocument()->GetScreen();
    if( screen == NULL )
    {
        return;
    }

    for( int i = 0; i < screen->GetNumberOfPages(); i++ )
    {
        if( page == screen->GetPage( i ) )
        {
            GetDocument()->AddAction( new ActionScreenSettings( screen, 
                                                                !screen->IsExportable( i ), 
                                                                i,
                                                                ACTION_SCREEN_SETTINGS_PAGE_EXPORTABLE ));
            return;
        }
    }
}


void CPageDlg::OnUpdateOverlayExport(CCmdUI* pCmdUI) 
{
    using namespace FeData;

    Page* page = dynamic_cast<Page*>( GetSelectedElement() );
    if( page == NULL )
    {
        return;
    }

    Screen* screen = GetDocument()->GetScreen();
    if( screen == NULL )
    {
        return;
    }

    pCmdUI->Enable( !screen->IsReadOnly() );

    for( int i = 0; i < screen->GetNumberOfPages(); i++ )
    {
        if( page == screen->GetPage( i ) )
        {
            if( screen->IsExportable( i ) )
            {
                pCmdUI->SetCheck( 1 );
            }
            else
            {
                pCmdUI->SetCheck( 0 );
            }
            return;
        }
    }
}


void CPageDlg::OnLayerEditable() 
{
    using namespace FeData;

    Layer* layer = dynamic_cast<Layer*>( GetSelectedElement() );
    if( layer == NULL )
    {
        return;
    }

    GetDocument()->AddAction( new ActionLayerSettings( layer->GetPage(),
                                                       layer, 
                                                       !layer->IsEditable(),
                                                       ACTION_LAYER_SETTINGS_EDITABLE ) );
}


void CPageDlg::OnUpdateLayerEditable(CCmdUI* pCmdUI) 
{
    using namespace FeData;

    Layer* layer = dynamic_cast<Layer*>( GetSelectedElement() );  
    if( layer == NULL )
    {
        return;
    }

    pCmdUI->Enable( ! layer->GetPage()->IsReadOnly() );

    if( layer->IsEditable() )
    {
        pCmdUI->SetCheck( 1 );
    }
    else
    {
        pCmdUI->SetCheck( 0 );
    }
}


void CPageDlg::OnLayerVisible() 
{
    using namespace FeData;

    Layer* layer = dynamic_cast<Layer*>( GetSelectedElement() );   
    if( layer == NULL )
    {
        return;
    }

    GetDocument()->AddAction( new ActionLayerSettings( layer->GetPage(),
                                                       layer, 
                                                       !layer->IsVisible(),
                                                       ACTION_LAYER_SETTINGS_VISIBLE ) );
}


void CPageDlg::OnUpdateLayerVisible(CCmdUI* pCmdUI) 
{
    using namespace FeData;

    Layer* layer = dynamic_cast<Layer*>( GetSelectedElement() );
    if( layer == NULL )
    {
        return;
    }

    pCmdUI->Enable( ! layer->GetPage()->IsReadOnly() );

    if( layer->IsVisible() )
    {
        pCmdUI->SetCheck( 1 );
    }
    else
    {
        pCmdUI->SetCheck( 0 );
    }

    GetDocument()->GetXConView()->Invalidate();
}



void CPageDlg::OnEndlabeleditTree(NMHDR* pNMHDR, LRESULT* pResult) 
{
    using namespace FeData;

    *pResult = FALSE;    // default to reject new text

    TVITEM& tvi = ((TV_DISPINFO*)pNMHDR)->item;

    if( (tvi.pszText == NULL) || (lstrlen(tvi.pszText) == 0) )
    {
        return;
    }

    NamedElement* element = (NamedElement*)tvi.lParam;
    if( element == NULL )
    {
        return;
    }

    PascalCString oldName( element->GetName() );
    PascalCString newName( tvi.pszText );
    if( oldName == newName )
    {
        return;
    }

    //
    // See if we are renaming a page element
    //
    PageElement* pageElement = dynamic_cast< PageElement* >( element );
    if( pageElement != NULL )
    {
        NameManager nameManager;

        if( !nameManager.IsNameValid( newName ) )
        {
            MessageBox( "This name is not valid. Names can only use the characters: a-z, A-Z, 0-9, _ and SPACE." );
            return;
        }

        if( nameManager.IsPageElementNameUnique( pageElement, newName ) )
        {
            Page* page = pageElement->GetPage();
            if( (page != NULL) && 
                GetDocument()->AddAction( new ActionRename( page, pageElement, newName ) ) )
            {
                *pResult = TRUE;    // accept new text
            }
        }
        else
        {
            MessageBox( "The chosen name is already being used by another object of the same type." );
            g_OutputMessage.Add( "The chosen name is already being used by another object of the same type.",
                                 WarningOutputMessage );
        }
        return;
    }
}


void CPageDlg::OnMoveDown() 
{
    MoveSelection( false );
}


void CPageDlg::OnUpdateMoveDown(CCmdUI* pCmdUI) 
{
    using namespace FeData;

    Page* page = dynamic_cast<Page*>( GetSelectedElement() );
    if( page == NULL )
    {
        PageElement* element = dynamic_cast<PageElement*>( GetSelectedElement() );
        if( element == NULL )
        {
            pCmdUI->Enable( FALSE );
            return;
        }

        pCmdUI->Enable( !element->GetPage()->IsReadOnly() );
    }
    else
    {
        Screen* screen = GetDocument()->GetScreen();
        if( screen == NULL )
        {
            pCmdUI->Enable( FALSE );
            return;
        }

        pCmdUI->Enable( !screen->IsReadOnly() );
    }
}


void CPageDlg::OnMoveUp() 
{
    MoveSelection( true );
}


void CPageDlg::OnUpdateMoveUp(CCmdUI* pCmdUI) 
{
    using namespace FeData;

    Page* page = dynamic_cast<Page*>( GetSelectedElement() );
    if( page == NULL )
    {
        PageElement* element = dynamic_cast<PageElement*>( GetSelectedElement() );
        if( element == NULL )
        {
            pCmdUI->Enable( FALSE );
            return;
        }

        pCmdUI->Enable( !element->GetPage()->IsReadOnly() );
    }
    else
    {
        Screen* screen = GetDocument()->GetScreen();
        if( screen == NULL )
        {
            pCmdUI->Enable( FALSE );
            return;
        }

        pCmdUI->Enable( !screen->IsReadOnly() );
    }
}


void CPageDlg::MoveSelection( bool moveUp )
{
    using namespace FeData;

    int oldIndex = 0;
    int newIndex = 0;

    Page* page = NULL;
    Layer* layer = NULL;

    
    //
    // Are we moving a Page?
    //
    page = dynamic_cast<Page*>( GetSelectedElement() );
    if( page != NULL )
    {
        Screen* screen = GetDocument()->GetScreen();
        if( screen == NULL )
        {
            g_OutputMessage.Add( "CXConDoc::MoveSelection: Cannot get screen!",
                                 DebugOutputMessage );
            return;
        }

        oldIndex = screen->GetPageIndex( page );
        if( oldIndex == -1 )
        {
            return;
        }

        if( moveUp )
        {
            newIndex = oldIndex - 1;
            if( newIndex < 0 )
            {
                return;
            }
        }
        else
        {
            newIndex = oldIndex + 1;
            if( newIndex >= screen->GetNumberOfPages() )
            {
                return;
            }
        }

        GetDocument()->AddAction( new ActionMovePageInScreen( screen, 
                                                              page,
                                                              oldIndex,
                                                              newIndex ) );
        return;
    }


    //
    // Are we moving a Layer?
    //
    layer = dynamic_cast<Layer*>( GetSelectedElement() );
    if( layer != NULL )
    {
        page = layer->GetPage();
        if( page == NULL )
        {
            g_OutputMessage.Add( "CXConDoc::MoveSelection: Cannot get page from the layer!",
                                 DebugOutputMessage );
            return;
        }

        oldIndex = page->GetLayerIndex( layer );
        if( oldIndex == -1 )
        {
            return;
        }

        if( moveUp )
        {
            newIndex = oldIndex - 1;
            if( newIndex < 0 )
            {
                return;
            }
        }
        else
        {
            newIndex = oldIndex + 1;
            if( newIndex >= page->GetNumberOfLayers() )
            {
                return;
            }
        }

        GetDocument()->AddAction( new ActionMoveLayerInPage( page, 
                                                             layer,
                                                             oldIndex,
                                                             newIndex ) );
        return;
    }


    //
    // Are we moving a DrawingElement?
    //
    DrawingElement* element = dynamic_cast<DrawingElement*>( GetSelectedElement() );
    if( element == NULL )
    {
        g_OutputMessage.Add( "CPageDlg::MoveSelection: Selection invalid!",
                             DebugOutputMessage );
        return;
    }

    page = element->GetPage();
    if( page == NULL )
    {
        g_OutputMessage.Add( "CXConDoc::MoveSelection: Cannot get page from the screen!",
                             DebugOutputMessage );
        return;
    }

    // Find the location to add the drawing element
    NamedElement* selectionParent = GetSelectedElementParent();
    if( selectionParent == NULL )
    {
        g_OutputMessage.Add( "CXConDoc::MoveSelection: Cannot get the selection parent!",
                             DebugOutputMessage );
        return;
    }

    PageElement* parent = NULL;
    Group* group = NULL;


    // Is the parent a layer or group?
    if( (layer = dynamic_cast<Layer*>( selectionParent )) != NULL )
    {
        oldIndex = layer->GetDrawingElementIndex( element );
        if( oldIndex == -1 )
        {
            return;
        }

        if( moveUp )
        {
            newIndex = oldIndex - 1;
            if( newIndex < 0 )
            {
                return;
            }
        }
        else
        {
            newIndex = oldIndex + 1;
            if( newIndex >= layer->GetNumberOfDrawingElements() )
            {
                return;
            }
        }

        parent = layer;
    }
    else if( (group = dynamic_cast<Group*>( selectionParent )) != NULL )
    {
        oldIndex = group->GetDrawingElementIndex( element );
        if( oldIndex == -1 )
        {
            return;
        }

        if( moveUp )
        {
            newIndex = oldIndex - 1;
            if( newIndex < 0 )
            {
                return;
            }
        }
        else
        {
            newIndex = oldIndex + 1;
            if( newIndex >= group->GetNumberOfDrawingElements() )
            {
                return;
            }
        }

        parent = group;
    }
    else
    {
        g_OutputMessage.Add( "CXConDoc::MoveSelection: Invalid parent!",
                             DebugOutputMessage );
        return;
    }

    GetDocument()->AddAction( new ActionMoveInHierarchy( page, 
                                                         element,
                                                         parent, 
                                                         oldIndex,
                                                         parent,
                                                         newIndex ) );
}


void CPageDlg::OnBegindragTree(NMHDR* pNMHDR, LRESULT* pResult) 
{
    NM_TREEVIEW* pNMTreeView = (NM_TREEVIEW*)pNMHDR;

    if (!m_bDraggingNow)
    {
        if (ItemCanBeDragged(pNMTreeView->itemNew.hItem))
        {
            SetCapture();
            m_bDraggingNow = TRUE;
            m_hDraggedItem = pNMTreeView->itemNew.hItem;
            m_tree.Select(m_hDraggedItem, TVGN_CARET);
            m_pDragImageList = m_tree.CreateDragImage(m_hDraggedItem);
            m_pDragImageList->DragEnter(&m_tree, pNMTreeView->ptDrag);
            m_pDragImageList->BeginDrag(0, CPoint(0, 0));
        }
    }

    *pResult = 0;
}


void CPageDlg::OnMouseMove(UINT nFlags, CPoint point) 
{
    if (m_bDraggingNow)
    {
        m_pDragImageList->DragEnter(&m_tree, point);
        m_pDragImageList->DragMove(point);
    }

    CTreeDlg::OnMouseMove(nFlags, point);
}


void CPageDlg::OnLButtonUp(UINT nFlags, CPoint point) 
{
    if (m_bDraggingNow)
    {
        ReleaseCapture();

        m_bDraggingNow = FALSE;
        m_pDragImageList->EndDrag();
        delete m_pDragImageList;
        m_pDragImageList = NULL;

        UINT flags;
        HTREEITEM hTargetItem = m_tree.HitTest(point, &flags);
        if( hTargetItem != NULL )
        {
            HandleDroppedOn( m_hDraggedItem, hTargetItem );
        
            /*
            if ( (nFlags & MK_CONTROL) != MK_CONTROL)
            {
                m_tree.DeleteItem(m_hDraggedItem);
            }
            */
        }       

        m_hDraggedItem = NULL;
    }

    CTreeDlg::OnLButtonUp(nFlags, point);
}


BOOL CPageDlg::ItemCanBeDragged( HTREEITEM hItem )
{
    using namespace FeData;

    if( (hItem != NULL) &&
        (hItem != m_tree.GetRootItem()) )
    {
        FeData::NamedElement* namedElement = (FeData::NamedElement*)m_tree.GetItemData( hItem );
        if( (namedElement != NULL) &&
            (dynamic_cast<DrawingElement*>( namedElement ) != NULL) )
        {
            return TRUE;
        }
        else
        {
            return FALSE;
        }
    }
    else
    {
        return FALSE;
    }
}


void CPageDlg::HandleDroppedOn(HTREEITEM hSource, HTREEITEM hTarget)
{
    using namespace FeData;

    // Get the parents of the elements
    HTREEITEM hSourceParent = m_tree.GetParentItem( hSource );
    HTREEITEM hTargetParent = m_tree.GetParentItem( hTarget );

    HTREEITEM hRootItem = m_tree.GetRootItem();

    // Make sure everything is in order
    if( (hTarget == NULL) ||
        (hTarget == hRootItem) ||
        (hSourceParent == NULL) ||
        (hSourceParent == hRootItem) ||  // Can't move pages
        (hTargetParent == NULL) ||
        (hTargetParent == hRootItem) ||  // Can't move pages
        (hSource == hTarget ))
    {
        return;   
    }

    // Get the named elements
    NamedElement* sourceNamedElement = (NamedElement*)m_tree.GetItemData( hSource );
    NamedElement* targetNamedElement = (NamedElement*)m_tree.GetItemData( hTarget );
    NamedElement* sourceParentNamedElement = (NamedElement*)m_tree.GetItemData( hSourceParent );
    NamedElement* targetParentNamedElement = (NamedElement*)m_tree.GetItemData( hTargetParent );

    if( (sourceNamedElement == NULL) ||
        (targetNamedElement == NULL) ||
        (sourceParentNamedElement == NULL) ||
        (targetParentNamedElement == NULL) )
    {
        g_OutputMessage.Add( "CPageDlg::HandleDroppedOn: Could not get the NamedElements from the tree!",
                             DebugOutputMessage );
        return;
    }

    // Convert the named elements to elements we can use
    DrawingElement* sourceElement = dynamic_cast<DrawingElement*>( sourceNamedElement );
    PageElement* targetElement = dynamic_cast<PageElement*>( targetNamedElement );
    PageElement* sourceParentElement = dynamic_cast<PageElement*>( sourceParentNamedElement );

    if( (sourceElement == NULL) ||
        (targetElement == NULL) ||
        (sourceParentElement == NULL) )
    {
        g_OutputMessage.Add( "CPageDlg::HandleDroppedOn: Could not get the all the heirarchy elements from the tree!",
                             DebugOutputMessage );
        return;
    }

    // Make sure the elements are in the same page
    /*
    if( sourceElement->GetPage() != targetElement->GetPage() )
    {
        g_OutputMessage.Add( "Cannot move elements to different pages.",
                             WarningOutputMessage );
        return;
    }
    */

    int oldIndex = GetDrawingElementIndex( sourceElement, sourceParentElement );
    int newIndex = 0;

    PageElement* newParent = NULL;

    // Is the target element a group or a layer?
    if( (dynamic_cast<Layer*>( targetElement ) != NULL) ||
        (dynamic_cast<Group*>( targetElement ) != NULL) )
    {
        newParent = targetElement;
        newIndex = 0;
    }   
    else  // we have to use the targets parent
    {
        DrawingElement* targetDrawingElement = dynamic_cast<DrawingElement*>( targetElement );
        if( targetDrawingElement == NULL )
        {
            g_OutputMessage.Add( "CPageDlg::HandleDroppedOn: Invalid target type!",
                                 DebugOutputMessage );
            return;
        }
        
        newParent = dynamic_cast<PageElement*>( targetParentNamedElement );
        if( newParent == NULL )
        {
            g_OutputMessage.Add( "CPageDlg::HandleDroppedOn: Cannot get the target's PageElement parent!",
                                 DebugOutputMessage );
            return;
        }

        newIndex = GetDrawingElementIndex( targetDrawingElement, newParent );
    }

    // Make sure we are not moving a group into one of it's children.
    Group* sourceGroup = dynamic_cast<Group*>( sourceElement );
    Group* targetGroup = dynamic_cast<Group*>( newParent );
    if( (sourceGroup != NULL) && (targetGroup != NULL) )
    {
        // Make sure the source group does not contain the target group
        if( sourceGroup->Contains( targetGroup ) )
        {
            g_OutputMessage.Add( "Cannot move a group within one of its subgroups.",
                                 WarningOutputMessage );
            return;
        }
    }
    
    // Add the action
    GetDocument()->AddAction( new ActionMoveInHierarchy( sourceElement->GetPage(), 
                                                         sourceElement,
                                                         sourceParentElement, 
                                                         oldIndex,
                                                         newParent,
                                                         newIndex ) );
}



int CPageDlg::GetDrawingElementIndex( FeData::DrawingElement* element, FeData::PageElement* parent )
{
    using namespace FeData;

    Layer* layer = NULL;
    Group* group = NULL;

    // Is the parent a layer or group?
    if( (layer = dynamic_cast<Layer*>( parent )) != NULL )
    {
        return layer->GetDrawingElementIndex( element );
    }
    else if( (group = dynamic_cast<Group*>( parent )) != NULL )
    {
        return group->GetDrawingElementIndex( element );
    }
    else
    {
        g_OutputMessage.Add( "CPageDlg::GetDrawingElementIndex: Invalid parent type!",
                             DebugOutputMessage );
        return -1;
    }
}


void CPageDlg::OnDblclkTree(NMHDR* pNMHDR, LRESULT* pResult) 
{
    if( GetSelectedElement() == NULL )
    {
        TryToChangeMultiObjectSelection();
    }
    else
    {
        GetDocument()->DoProperties();
    }

    *pResult = 0;
}


void CPageDlg::TryToChangeMultiObjectSelection()
{
    using namespace FeData;

    HTREEITEM selectedItem = m_tree.GetSelectedItem();
    if( (selectedItem == NULL) ||
        (selectedItem == m_tree.GetRootItem()) )
    {
        return;
    }

    HTREEITEM parentItem = m_tree.GetParentItem( selectedItem );
    if( (parentItem == NULL) ||
        (parentItem == m_tree.GetRootItem()) )
    {
        return;
    }

    NamedElement* namedElement = (NamedElement*)m_tree.GetItemData( parentItem );
    if( namedElement == NULL )
    {
        return;
    }

    
    PascalCString selectedName = m_tree.GetItemText( selectedItem );


    // Do we have a MultiSprite
    MultiSprite* multiSprite = dynamic_cast<MultiSprite*>( namedElement );
    if( multiSprite != NULL )
    {
        int index = 0;
        HTREEITEM element = m_tree.GetChildItem( parentItem );
        while( element != NULL )        
        {
            if( element == selectedItem )
            {
                GetDocument()->AddAction( new ActionMultiObjectSelection( multiSprite->GetPage(),
                                                                          multiSprite, 
                                                                          index ) );
                return;
            }
            index++;
            element = m_tree.GetNextSiblingItem( element );
        }
        return;
    }

    // Do we have a MultiText
    MultiText* multiText = dynamic_cast<MultiText*>( namedElement );
    if( multiText != NULL )
    {
        int index = 0;
        HTREEITEM element = m_tree.GetChildItem( parentItem );
        while( element != NULL )        
        {
            if( element == selectedItem )
            {
                GetDocument()->AddAction( new ActionMultiObjectSelection( multiText->GetPage(),
                                                                          multiText, 
                                                                          index ) );
                return;
            }
            index++;
            element = m_tree.GetNextSiblingItem( element );
        }
        return;
    }
}




void CPageDlg::UpdateSelection()
{
    using namespace FeData;

    SelectionList* mainSelectionList = GetDocument()->GetSelectionList();
    if( mainSelectionList == NULL )
    {
        return;
    }

    // Make a copy of the selection list
    SelectionList selectionList; 
    selectionList = *mainSelectionList;

    std::stack< HTREEITEM >openParentsItem;
    openParentsItem.push( m_tree.GetRootItem() );

    while( !openParentsItem.empty() )
    {
        HTREEITEM element = openParentsItem.top();
        openParentsItem.pop();

        DrawingElement* currentDrawingElement = dynamic_cast< DrawingElement* >( (NamedElement*)m_tree.GetItemData( element ) );

        if( currentDrawingElement != NULL )
        {
            bool selected = false;
            for( int i = 0; i < selectionList.GetNumberOfElements(); i++ )
            {
                if( currentDrawingElement == selectionList.GetElement( i ) )
                {
                    m_tree.SetItemState( element, TVIS_SELECTED, TVIS_SELECTED );
                    m_tree.EnsureVisible( element );
                    selected = true;

                    selectionList.Remove( i );
                    break;
                }
            }
            if( !selected )
            {
               m_tree.SetItemState( element, 0, TVIS_SELECTED );
            }
        }

        element = m_tree.GetChildItem( element );
        while( element != NULL )        
        {
            openParentsItem.push( element );
            element = m_tree.GetNextSiblingItem( element );
        }
    }
}


void CPageDlg::SelectionChanged( HTREEITEM treeItem, MultiTreeSelectionEnum selectType )
{
    using namespace FeData;

    SelectionList* selectionList = GetDocument()->GetSelectionList();
    if( selectionList == NULL )
    {
        return;
    }

    NamedElement* namedElement = (NamedElement*)m_tree.GetItemData( treeItem );
    if( namedElement == NULL )
    {
        return;
    }

    DrawingElement* drawingElement = dynamic_cast<DrawingElement*>( namedElement );
    if( drawingElement == NULL )
    {
        return;
    }

    switch( selectType )
    {
        case MultiTreeSelectionAdd:
        {
            if( !GetDocument()->AddAction( new ActionSelectionChange( GetDocument()->GetScreen(),
                                                                      selectionList, 
                                                                      drawingElement,
                                                                      ACTION_SELECTION_CHANGE_ADD ) ) )
            {
                // Update the selection if the action was not done
                UpdateSelection();
            }
            break;
        }

        case MultiTreeSelectionRemove:
        {
            GetDocument()->AddAction( new ActionSelectionChange( GetDocument()->GetScreen(),
                                                                 selectionList, 
                                                                 drawingElement,
                                                                 ACTION_SELECTION_CHANGE_REMOVE ) );

            break;
        }

        case MultiTreeSelectionSet:
        {
            GetDocument()->AddAction( new ActionSelectionChange( GetDocument()->GetScreen(),
                                                                 selectionList, 
                                                                 drawingElement,
                                                                 ACTION_SELECTION_CHANGE_SET ) );
            break;
        }

        default:
        {
            g_OutputMessage.Add( "CPageDlg::SelectionChanged: Selection change type not supported.", 
                                  DebugOutputMessage );
            break;
        }
    }
}


bool CPageDlg::CanSelect( HTREEITEM treeItem )
{
    using namespace FeData;

    SelectionList* selectionList = GetDocument()->GetSelectionList();
    if( selectionList == NULL )
    {
        return false;
    }

    NamedElement* namedElement = (NamedElement*)m_tree.GetItemData( treeItem );
    if( namedElement == NULL )
    {
        return false;
    }

    DrawingElement* drawingElement = dynamic_cast<DrawingElement*>( namedElement );
    if( drawingElement == NULL )
    {
        return false;
    }

    return true;
}


void CPageDlg::MultiTreeOnKeyDown(UINT nChar, UINT nRepCnt, UINT nFlags)
{
    // Send the keyboard message to the layout view
    GetDocument()->GetXConView()->DoOnKeyDown( nChar, nRepCnt, nFlags );
}


void CPageDlg::OnSetfocusTree(NMHDR* pNMHDR, LRESULT* pResult) 
{
    // Redraw the tree so that the selection are a consistent colour
    m_tree.Invalidate();    
    *pResult = 0;
}

void CPageDlg::OnKillfocusTree(NMHDR* pNMHDR, LRESULT* pResult) 
{
    // Redraw the tree so that the selection are a consistent colour
    m_tree.Invalidate();
    *pResult = 0;
}

void CPageDlg::OnUpdateUngroup(CCmdUI* pCmdUI) 
{
    using namespace FeData;

    Group* group = dynamic_cast<Group*>( GetSelectedElement() );
    if( group == NULL )
    {
        pCmdUI->Enable( FALSE );
    }
    else
    {
        pCmdUI->Enable( TRUE );
    }

}

void CPageDlg::OnUngroup() 
{
    using namespace FeData;

    Group* group = dynamic_cast<Group*>( GetSelectedElement() );
    if( group == NULL )
    {
        return;
    }

    HTREEITEM selectedItem = m_tree.GetSelectedItem();
    if( (selectedItem == NULL) ||
        (selectedItem == m_tree.GetRootItem()) )
    {
        return;
    }

    HTREEITEM parentItem = m_tree.GetParentItem( selectedItem );
    if( (parentItem == NULL) ||
        (parentItem == m_tree.GetRootItem()) )
    {
        return;
    }

    NamedElement* namedElement = (NamedElement*)m_tree.GetItemData( parentItem );
    if( namedElement == NULL )
    {
        return;
    }

    m_tree.Expand( parentItem, TVE_COLLAPSE );

    Layer* parentLayer = dynamic_cast<Layer*>( namedElement );
    if( parentLayer != NULL )
    {
        for( int i = 0; i < group->GetNumberOfDrawingElements(); i++)
        {
            DrawingElement* elem = group->GetDrawingElement( i );
            parentLayer->AddDrawingElement( elem );
        }
        parentLayer->RemoveDrawingElementWithoutDelete( group );
        RebuildTree( GetDocument() );
        //m_tree.Invalidate();
        //Invalidate();
    }

    Group* parentGroup = dynamic_cast<Group*>( namedElement );
    if( parentGroup != NULL )
    {
        for( int i = 0; i < group->GetNumberOfDrawingElements(); i++)
        {
            DrawingElement* elem = group->GetDrawingElement( i );
            parentGroup->AddDrawingElement( elem );
        }
        parentGroup->RemoveDrawingElementWithoutDelete( group );
        RebuildTree( GetDocument() );
        //m_tree.Invalidate();
        //Invalidate();
    }

    //m_tree.Expand( parentItem, TVE_EXPAND );
    
}
