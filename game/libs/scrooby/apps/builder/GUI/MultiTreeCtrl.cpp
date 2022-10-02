// MultiTreeCtrl.cpp : implementation file
//

#include "..\stdafx.h"
#include "..\xcon.h"
#include "MultiTreeCtrl.h"


#ifdef _DEBUG
#define new DEBUG_NEW
#undef THIS_FILE
static char THIS_FILE[] = __FILE__;
#endif

/////////////////////////////////////////////////////////////////////////////
// CMultiTreeCtrl

CMultiTreeCtrl::CMultiTreeCtrl() :
m_DoMultiSelect( false ),
m_DoCustomKeyboard( false ),
m_SelectionChangedCallBack( NULL )
{
}

CMultiTreeCtrl::~CMultiTreeCtrl()
{
}


BEGIN_MESSAGE_MAP(CMultiTreeCtrl, CTreeCtrl)
    //{{AFX_MSG_MAP(CMultiTreeCtrl)
    ON_WM_LBUTTONDOWN()
    ON_WM_KEYDOWN()
    ON_WM_RBUTTONDOWN()
    ON_WM_RBUTTONUP()
    ON_WM_CONTEXTMENU()
    //}}AFX_MSG_MAP
END_MESSAGE_MAP()

/////////////////////////////////////////////////////////////////////////////
// CMultiTreeCtrl message handlers

void CMultiTreeCtrl::SetDoMultiSelect( bool setting )
{
    m_DoMultiSelect = setting;
}


void CMultiTreeCtrl::SetDoCustomKeyboard( bool setting )
{
    m_DoCustomKeyboard = setting;
}


void CMultiTreeCtrl::SetSelectionChangedCallBack( MultiTreeCallback* selectionChangedCallBack )
{
    m_SelectionChangedCallBack = selectionChangedCallBack;
}


void CMultiTreeCtrl::OnLButtonDown(UINT nFlags, CPoint point) 
{
    if( !m_DoMultiSelect )
    {
        CTreeCtrl::OnLButtonDown(nFlags, point);
        return;
    }

    // Set focus to control if key strokes are needed.
    // Focus is not automatically given to control on lbuttondown

//    m_dwDragStart = GetTickCount();

    // Control key is down
    MultiTreeSelectionEnum type;
    UINT flag;
    HTREEITEM hItem = HitTest( point, &flag );
    if( hItem )
    {
        bool shiftClick = (nFlags & MK_CONTROL) || (nFlags & MK_SHIFT);
        bool canSelect = true;
        
        // Check if the item can be selected
        if( m_SelectionChangedCallBack != NULL )
        {
            canSelect = m_SelectionChangedCallBack->CanSelect( hItem );
        }

        UINT uNewSelState;
        if( !shiftClick )
        {
            uNewSelState = TVIS_SELECTED;
            type = MultiTreeSelectionSet;

            if( canSelect )
            {
                ClearSelection();
            }
        }
        else
        {
            // Toggle selection state
            if( GetItemState(hItem, TVIS_SELECTED) & TVIS_SELECTED )
            {
                uNewSelState = 0;
                type = MultiTreeSelectionRemove;
            }
            else
            {
                uNewSelState = TVIS_SELECTED;
                type = MultiTreeSelectionAdd;
            }
        }

        // Make sure we really can do the select
        if( !canSelect )
        {
            uNewSelState = 0;
        }
        
        // Get old selected (focus) item and state
        HTREEITEM hItemOld = GetSelectedItem();
        UINT uOldSelState;
        if( hItemOld == NULL )
        {
            uOldSelState = 0;
        }
        else
        {
            uOldSelState = GetItemState(hItemOld, TVIS_SELECTED);
        }

        // Select new item
        if( GetSelectedItem() == hItem )
        {
            SelectItem( NULL );             // to prevent edit
        }

        CTreeCtrl::OnLButtonDown(nFlags, point);

        // Set proper selection (highlight) state for new item
        SetItemState(hItem, uNewSelState,  TVIS_SELECTED);

        // Restore state of old selected item
        if (hItemOld && hItemOld != hItem)
        {
            SetItemState(hItemOld, uOldSelState, TVIS_SELECTED);
        }

        if( canSelect )
        {
            if( m_SelectionChangedCallBack != NULL )
            {
                m_SelectionChangedCallBack->SelectionChanged( hItem, type );
            }
        }

        // Redraw the tree.  This has to be done because the focus message
        // seems to get lost if the mouse is clicked directly on the tree
        // when it is not in focus.
        Invalidate();
        return;
    }

    CTreeCtrl::OnLButtonDown(nFlags, point);
}


void CMultiTreeCtrl::ClearSelection()
{
    // This can be time consuming for very large trees 
    // and is called every time the user does a normal selection
    // If performance is an issue, it may be better to maintain 
    // a list of selected items
    for ( HTREEITEM hItem = GetRootItem(); 
          hItem != NULL; 
          hItem = GetNextVisibleItem( hItem ) )
    {
        if ( GetItemState( hItem, TVIS_SELECTED ) & TVIS_SELECTED )
        {
            SetItemState( hItem, 0, TVIS_SELECTED );
        }
    }
}



void CMultiTreeCtrl::OnKeyDown(UINT nChar, UINT nRepCnt, UINT nFlags) 
{
    if( !m_DoCustomKeyboard )
    {
        CTreeCtrl::OnKeyDown(nChar, nRepCnt, nFlags);
        return;
    }

    if( m_SelectionChangedCallBack != NULL )
    {
        m_SelectionChangedCallBack->MultiTreeOnKeyDown( nChar, nRepCnt, nFlags );
    }
}

void CMultiTreeCtrl::OnRButtonDown(UINT nFlags, CPoint point) 
{
    // Only call the standard handler if this does not have multi select
    if( !m_DoMultiSelect )
    {
        CTreeCtrl::OnRButtonDown(nFlags, point);
    }
}

void CMultiTreeCtrl::OnRButtonUp(UINT nFlags, CPoint point) 
{
    if( !m_DoMultiSelect )
    {
        CTreeCtrl::OnRButtonUp(nFlags, point);
        return;
    }

    /*
    UINT flag;
    HTREEITEM hItem = HitTest( point, &flag );
    if( hItem )
    {
        UINT uNewSelState = GetItemState(hItem, TVIS_SELECTED) & TVIS_SELECTED;
        
        // Get old selected (focus) item and state
        HTREEITEM hItemOld = GetSelectedItem();
        UINT uOldSelState;
        if( hItemOld == NULL )
        {
            uOldSelState = 0;
        }
        else
        {
            uOldSelState = GetItemState(hItemOld, TVIS_SELECTED);
        }

        // Select new item
        if( GetSelectedItem() == hItem )
        {
            SelectItem( NULL );             // to prevent edit
        }

        CTreeCtrl::OnRButtonUp(nFlags, point);

        // Set proper selection (highlight) state for new item
        SetItemState(hItem, uNewSelState,  TVIS_SELECTED);

        // Restore state of old selected item
        if( hItemOld && hItemOld != hItem )
        {
            SetItemState(hItemOld, uOldSelState, TVIS_SELECTED);
        }

        // Redraw the tree.  This has to be done because the focus message
        // seems to get lost if the mouse is clicked directly on the tree
        // when it is not in focus.
        Invalidate();
        return;
    }
    */

    CTreeCtrl::OnRButtonUp(nFlags, point);

}

void CMultiTreeCtrl::OnContextMenu(CWnd* pWnd, CPoint point) 
{
    // TODO: Add your message handler code here
    
    HTREEITEM hItem = GetRootItem();

    if( GetItemText(hItem) == "Pages")
    {
        for ( ; 
              hItem != NULL; 
              hItem = GetNextVisibleItem( hItem ) )
        {
            if ( GetItemState( hItem, TVIS_SELECTED ) & TVIS_SELECTED )
            {
                SetItemState( hItem, 0, TVIS_SELECTED );
                m_SelectionChangedCallBack->SelectionChanged( hItem, MultiTreeSelectionRemove );
            }
        }

        Invalidate();
    }
  

    CTreeCtrl::OnContextMenu( pWnd, point );
}
