// ProjectTree.cpp : implementation file
//

#include "..\stdafx.h"
#include "..\xcon.h"
#include "ProjectTree.h"

#ifdef _DEBUG
#define new DEBUG_NEW
#undef THIS_FILE
static char THIS_FILE[] = __FILE__;
#endif

/////////////////////////////////////////////////////////////////////////////
// CProjectTree

CProjectTree::CProjectTree()
{
}

CProjectTree::~CProjectTree()
{
}


BEGIN_MESSAGE_MAP(CProjectTree, CTreeCtrl)
    //{{AFX_MSG_MAP(CProjectTree)
    ON_NOTIFY_REFLECT(NM_DBLCLK, OnDblclk)
    ON_WM_CONTEXTMENU()
    ON_NOTIFY_REFLECT(NM_RCLICK, OnRclick)
    //}}AFX_MSG_MAP
END_MESSAGE_MAP()

/////////////////////////////////////////////////////////////////////////////
// CProjectTree message handlers

void CProjectTree::OnDblclk(NMHDR* pNMHDR, LRESULT* pResult) 
{
    int index = 0;
    HTREEITEM hItem = GetSelectedItem();

    if( hItem != GetRootItem() )
    {
        while (hItem != NULL)
        {
            hItem = GetPrevSiblingItem(hItem);
            if (hItem != NULL)
                index++;
        }

        ((CXConApp*)App())->StartScreen(index);
    }

    *pResult = 0;
}

void CProjectTree::OnContextMenu(CWnd* pWnd, CPoint point) 
{
    int nPos = -1;
      UINT nFlags;

    CPoint ptWnd( point );
    ScreenToClient( &ptWnd );

      HTREEITEM hItem = HitTest(ptWnd, &nFlags);
    if( hItem == NULL )
    {
        return;
    }

    SelectItem( hItem );


    HTREEITEM hRoot = GetRootItem();
    if( hItem == hRoot )
    {
        nPos = 0;
    }
    else if( GetParentItem( hItem ) == hRoot )
    {
        nPos = 1;
    }

    CMenu menu;
    if( menu.LoadMenu( IDR_PROJECT ) )
    {
        CMenu* pPopup = menu.GetSubMenu( nPos );
        if( pPopup != NULL )
        {
            pPopup->TrackPopupMenu( TPM_LEFTALIGN|TPM_RIGHTBUTTON, point.x, point.y, AfxGetMainWnd() );
        }
    }
}


void CProjectTree::OnRclick(NMHDR* pNMHDR, LRESULT* pResult) 
{
    // TODO: Add your control notification handler code here
    POINT point;

    GetCursorPos( &point );
    SendMessage( WM_CONTEXTMENU, NULL, MAKELONG(point.x, point.y) ); 
    *pResult = 0;
}
