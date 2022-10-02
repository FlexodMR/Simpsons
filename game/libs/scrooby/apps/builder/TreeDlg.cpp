/////////////////////////////////////////////////////////////////////////////
// DlgTrees.cpp : implementation file

#pragma warning( disable : 4786 )

#include "StdAfx.h"
#include "TreeDlg.h"
#include "PageDlg.h"
#include "XConView.h"
#include "TabView.h"
//#include "xUtil.h"

//#include "xDisplay.h"
//#include "xScreen.h"
//#include "xGroup.h"
//#include "xText.h"

#include "Strings\PCString.h"
#include "FeData\Helpers\NameManager.h"
#include "FeData\Helpers\OutputMessage.h"
#include "FeData\NamedElements\PageElement.h"
#include "FeData\NamedElements\Page.h"
#include "FeData\NamedElements\NamedElement.h"
#include "FeData\Resources\Resource.h"


#ifdef _DEBUG
#define new DEBUG_NEW
#undef THIS_FILE
static char THIS_FILE[] = __FILE__;
#endif

/////////////////////////////////////////////////////////////////////////////
// CTreeDlg dialog

CImageList CTreeDlg::s_imagelist;

CTreeDlg::CTreeDlg()
{
    m_LockedRebuild = false;

    m_Timer = 0;
         
    //{{AFX_DATA_INIT(CTreeDlg)
    //}}AFX_DATA_INIT
}






void CTreeDlg::DoDataExchange(CDataExchange* pDX)
{
    CDialog::DoDataExchange(pDX);
    //{{AFX_DATA_MAP(CTreeDlg)
    DDX_Control(pDX, IDC_TREE, m_tree);
    //}}AFX_DATA_MAP
}

BEGIN_MESSAGE_MAP(CTreeDlg, CDialog)
    //{{AFX_MSG_MAP(CTreeDlg)
    ON_WM_SIZE()
    ON_WM_CONTEXTMENU()
    ON_NOTIFY(TVN_ENDLABELEDIT, IDC_TREE, OnEndLabelEdit)
    ON_NOTIFY(TVN_GETDISPINFO, IDC_TREE, OnGetDispInfo)
    ON_UPDATE_COMMAND_UI(ID_RENAME, OnUpdateRename)
    ON_COMMAND(ID_RENAME, OnRename)
    ON_WM_TIMER()
    //}}AFX_MSG_MAP
END_MESSAGE_MAP()

BOOL CTreeDlg::InitImageList()
{
    if (!(HIMAGELIST)s_imagelist)
    {
        // create image list
        if (!s_imagelist.Create(16, 16, ILC_MASK, NUM_IMAGES, 0))
            return FALSE;

        // load images, pink mask
        for (int i = 0; i < NUM_IMAGES; i++)
        {
            CBitmap hBitmap;
            BOOL bLoad;
            bLoad = hBitmap.LoadBitmap(IDB_TREE1+i);
            if (s_imagelist.Add(&hBitmap, RGB(255,0,255)) == -1)
                return FALSE;
        }

        s_imagelist.SetOverlayImage(TREE_OVERLAY_VISIBLE, OVERLAY_OVR_VISIBLE);
        s_imagelist.SetOverlayImage(TREE_SPRITE_SHOW, OVERLAY_LAYER_VISIBLE);
        s_imagelist.SetOverlayImage(TREE_SPRITE_SHOW, OVERLAY_OBJ_VISIBLE);

        // Set readonly, not loaded overlay images
        s_imagelist.SetOverlayImage( TREE_READ_ONLY, FILE_READ_ONLY );
        s_imagelist.SetOverlayImage( TREE_NOT_LOADED, FILE_NOT_LOADED );
    }
    return TRUE;
}

CTabView* CTreeDlg::GetView()
{
    return (CTabView*)GetParent()->GetParent();
}

CXConDoc* CTreeDlg::GetDocument()
{
    return GetView()->GetDocument();
}

CXObject* CTreeDlg::GetSelectedObject()
{
    return (CXObject*)m_tree.GetItemData(m_tree.GetSelectedItem());
}

void CTreeDlg::EditLabel(HTREEITEM hItem)
{
    GetParentFrame()->SetActiveView(GetView());
    m_tree.EditLabel(hItem);
}

void CTreeDlg::RenameObject()
{
    EditLabel(m_tree.GetSelectedItem());
}

HTREEITEM CTreeDlg::FindObjectItem(CXObject* pObject, HTREEITEM hParent)
{
    HTREEITEM hItem = m_tree.GetChildItem(hParent);
    while (hItem)
    {
        if (GetItemObject(hItem) == pObject)
            break;
        hItem = m_tree.GetNextSiblingItem(hItem);
    }
    return hItem;
}


HTREEITEM CTreeDlg::FindObjectItem(FeData::NamedElement* object, HTREEITEM hParent)
{
    HTREEITEM hItem = m_tree.GetChildItem(hParent);
    while (hItem)
    {
        if (GetItemObject(hItem) == (CXObject*)object)
            break;
        hItem = m_tree.GetNextSiblingItem(hItem);
    }
    return hItem;
}

HTREEITEM CTreeDlg::CopyItem(HTREEITEM hItem, HTREEITEM hParent, HTREEITEM hAfter)
{
    TVINSERTSTRUCT tvi;
    tvi.item.hItem = hItem;
    tvi.item.mask = TVIF_HANDLE|TVIF_IMAGE|TVIF_PARAM|TVIF_SELECTEDIMAGE;
    m_tree.GetItem(&tvi.item);

    tvi.hParent = hParent;
    tvi.hInsertAfter = hAfter;
    tvi.item.pszText = LPSTR_TEXTCALLBACK;
    tvi.item.mask |= TVIF_TEXT;
    return m_tree.InsertItem(&tvi);
}

HTREEITEM CTreeDlg::CopyBranch(HTREEITEM hItem, HTREEITEM hParent, HTREEITEM hAfter)
{
    HTREEITEM hNew = CopyItem(hItem, hParent, hAfter);
    HTREEITEM hChild = m_tree.GetChildItem(hItem);
    while (hChild)
    {
        // recursively transfer all the items
        CopyBranch(hChild, hNew, TVI_LAST);
        hChild = m_tree.GetNextSiblingItem(hChild);
    }
    return hNew;
}

void CTreeDlg::DeleteSubItems(HTREEITEM hParent)
{
    HTREEITEM hItem = m_tree.GetChildItem(hParent);
    while (hItem)
    {
        HTREEITEM hNext = m_tree.GetNextSiblingItem(hItem);
        m_tree.DeleteItem(hItem);
        hItem = hNext;
    }
}

void CTreeDlg::MoveObject(CXObject* pObject, BOOL bMoveUp, HTREEITEM hParent /*=NULL*/)
{
    if (!hParent)
        hParent = m_tree.GetRootItem();

    HTREEITEM hItem = m_tree.GetChildItem(hParent);
    HTREEITEM hPrev = hItem;
    HTREEITEM hAfter;
    int nIndex = 0;
    while (hItem)
    {
        if (GetItemObject(hItem) == pObject)
        {
            if (bMoveUp)
                hAfter = nIndex == 1 ? TVI_FIRST : m_tree.GetPrevSiblingItem(hPrev);
            else
                hAfter = m_tree.GetNextSiblingItem(hItem);
            break;
        }
        hPrev = hItem;
        hItem = m_tree.GetNextSiblingItem(hItem);
        nIndex++;
    }

    UINT nState = m_tree.GetItemState(hItem, TVIS_EXPANDED);
    HTREEITEM hNew = CopyBranch(hItem, hParent, hAfter);
    m_tree.DeleteItem(hItem);
    m_tree.SelectItem(hNew);
    if (nState & TVIS_EXPANDED)
        m_tree.Expand(hNew, TVE_EXPAND);
}

/////////////////////////////////////////////////////////////////////////////
// CTreeDlg message handlers

void CTreeDlg::OnSize(UINT nType, int cx, int cy) 
{
    CDialog::OnSize(nType, cx, cy);
    
    CWnd* pWnd = GetDlgItem(IDC_TREE);
    if (pWnd)
        pWnd->SetWindowPos(NULL, 0, 0, cx, cy, SWP_NOMOVE|SWP_NOZORDER|SWP_SHOWWINDOW);
}

BOOL CTreeDlg::OnInitDialog() 
{
    CDialog::OnInitDialog();
    
    m_tree.SetImageList(&s_imagelist, TVSIL_NORMAL);

    CString str;
    GetWindowText(str);
    m_tree.InsertItem(str, TREE_FOLDER, TREE_FOLDER_SEL);

    return TRUE;  // return TRUE unless you set the focus to a control
                  // EXCEPTION: OCX Property Pages should return FALSE
}

void CTreeDlg::OnBeginLabelEdit(NMHDR* pNMHDR, LRESULT* pResult)
{
    if (!*pResult)
    {
        GetView()->SetTreeEditLabel(*m_tree.GetEditControl());
    }
}

void CTreeDlg::OnEndLabelEdit(NMHDR* pNMHDR, LRESULT* pResult) 
{
//    GetView()->SetTreeEditLabel();



/*
    TVITEM& tvi = ((TV_DISPINFO*)pNMHDR)->item;
    if (tvi.pszText && lstrlen(tvi.pszText))
    {
        App()->FixSpacesInName(tvi.pszText);

        // check if items in current tree level have unique names
        BOOL bUnique = TRUE;
        HTREEITEM hItem = m_tree.GetChildItem(m_tree.GetParentItem(tvi.hItem));
        while (hItem)
        {
            if (hItem != tvi.hItem && !lstrcmp(m_tree.GetItemText(hItem), tvi.pszText))
            {
                AfxMessageBox(IDP_INVALID_NAME);
                bUnique = FALSE;
                break;
            }
            hItem = m_tree.GetNextSiblingItem(hItem);
        }

        if (bUnique)
        {
            CXObjectName* pObject = (CXObjectName*)tvi.lParam;
            ASSERT_KINDOF(CXObjectName, pObject);
            pObject->AddUndoObjectModify();
            pObject->SetName(tvi.pszText);
            *pResult = TRUE;    // accept new text
        }
    }
    */
}

void CTreeDlg::OnGetDispInfo(NMHDR* pNMHDR, LRESULT* pResult) 
{
    using namespace FeData;

    TVITEM& tvi = ((TV_DISPINFO*)pNMHDR)->item;
    if (tvi.mask & TVIF_TEXT)
    {
        NamedElement* treeEntry = (NamedElement*)tvi.lParam;
        if( treeEntry != NULL )
        {
            PascalCString name( treeEntry->GetName() );

            if( name.Length() < tvi.cchTextMax )
            {
                lstrcpy( tvi.pszText, name );
            }
            else
            {
                lstrcpyn( tvi.pszText, name, tvi.cchTextMax-4 );
                lstrcat(tvi.pszText, _T("..."));
            }
        }


/*
        PascalCString* string = (PascalCString*)tvi.lParam;
        if( string != NULL )
        {
            if( string->Length() < tvi.cchTextMax )
            {
                lstrcpy( tvi.pszText, *string );
            }
            else
            {
                lstrcpyn( tvi.pszText, *string, tvi.cchTextMax-4 );
                lstrcat(tvi.pszText, _T("..."));
            }
        }*/
        /*
        else
        {
            LPCTSTR pName = ((CXObject*)tvi.lParam)->GetName();
            if (lstrlen(pName) < tvi.cchTextMax)
                lstrcpy(tvi.pszText, pName);
            else
            {
                lstrcpyn(tvi.pszText, pName, tvi.cchTextMax-4);
                lstrcat(tvi.pszText, _T("..."));
            }
        }
        */
    }
    
    *pResult = 0;
}

void CTreeDlg::OnUpdateRename(CCmdUI* pCmdUI) 
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
//    pCmdUI->Enable( TRUE ); //GetSelection() != NULL);
}

void CTreeDlg::OnRename() 
{
    RenameObject();
}

BOOL CTreeDlg::DoUpdateMove(BOOL bMoveUp)
{
    BOOL bEnable = FALSE;
/*    CXObject* pObject = GetSelection();
    if (pObject)
    {
        CObArray* pArray = GetMoveArray();
        if (pArray && pArray->GetAt(bMoveUp ? 0 : pArray->GetUpperBound()) != pObject)
            bEnable = TRUE;
    }*/
    return bEnable;
}


/////////////////////////////////////////////////////////////////////////////

void CTreeDlg::OnContextMenu(CWnd* pWnd, CPoint point) 
{
    CPoint ptWnd( point );
    ScreenToClient( &ptWnd );

    UINT nFlags;
    HTREEITEM hItem = m_tree.HitTest(ptWnd, &nFlags);
    if( !hItem )
    {
        return;
    }

    m_tree.SelectItem( hItem );

    int nPos;
    UINT nIDResource;
    GetContextMenu( hItem, &nIDResource, &nPos );
    if( nPos == -1 )
    {
        return;
    }

    CMenu menu;
    if (menu.LoadMenu(nIDResource))
    {
        CMenu* pPopup = menu.GetSubMenu(nPos);
        ModifyContextMenu(pPopup, nPos);
        pPopup->TrackPopupMenu(TPM_LEFTALIGN|TPM_RIGHTBUTTON, point.x, point.y, AfxGetMainWnd());
    }
}

void CTreeDlg::ModifyMenuMove(CMenu* pMenu, CObArray* pArray, CXObject* pObject)
{
    /*
    if (pArray != NULL)
    {
        int nSize = pArray->GetSize();
        if (nSize == 1)
        {
            pMenu->RemoveMenu(ID_MOVE_DOWN, MF_BYCOMMAND);
            pMenu->RemoveMenu(ID_MOVE_UP, MF_BYCOMMAND);
        }
        else if (pArray->GetAt(0) == pObject)
            pMenu->RemoveMenu(ID_MOVE_UP, MF_BYCOMMAND);
        else if (pArray->GetAt(nSize-1) == pObject)
            pMenu->RemoveMenu(ID_MOVE_DOWN, MF_BYCOMMAND);
    }*/
}


void CTreeDlg::SetupRebuildTree( CXConDoc* pDoc )
{
    if( !m_LockedRebuild )
    {
        // Store the state of the tree
        m_TreeState.Store( m_tree );
    }
}


void CTreeDlg::RebuildTree( CXConDoc* pDoc )
{
    if( !m_LockedRebuild )
    {
        // Set up a timer to rebuild the tree.
        // We have to do this because some actions on the tree 
        // (double click for example) may cause the tree to rebuild.  
        // If this is done without a timer a crash will occur because 
        // the calling structure will be gone and the stack will 
        // become corrupt.
        m_Timer = SetTimer( m_TimerId, 50, NULL );
        if( m_Timer == 0 )
        {
            FeData::g_OutputMessage.Add( "CTreeDlg::RebuildTree: SetTimer failed!",
                                         FeData::ErrorOutputMessage );
        }
    }
}


void CTreeDlg::LockRebuild( bool setLocked )
{
    m_LockedRebuild = setLocked;
}



void CTreeDlg::OnTimer(UINT nIDEvent) 
{
    BeginWaitCursor();

    // Don't let windows redraw the tree while we create it
    LockWindowUpdate();

    // Delete the old tree
    m_tree.DeleteAllItems();

    // Add the starting folder
    CString str;
    GetWindowText(str);
    m_tree.InsertItem(str, TREE_FOLDER, TREE_FOLDER_SEL);

    // Build the tree again
    OnInitialUpdate( GetDocument() );

    // Restore the state of the tree
    m_TreeState.Restore( m_tree );

    UpdateSelection();

    // Unlock the window
    UnlockWindowUpdate();

    EndWaitCursor();

    // Kill the timer
    if( m_Timer != 0 )
    {
        if( !KillTimer( m_TimerId ) )
        {
            FeData::g_OutputMessage.Add( "CTreeDlg::OnTimer: KillTimer failed!",
                                         FeData::ErrorOutputMessage );
        }
        m_Timer = 0;
    }

    CDialog::OnTimer(nIDEvent);
}


void CTreeDlg::UpdateSelection()
{

}
