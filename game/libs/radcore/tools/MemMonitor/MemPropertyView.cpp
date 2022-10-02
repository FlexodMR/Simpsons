//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


// MemPropertyView.cpp : implementation file
//

#include "stdafx.h"
#include "memmonitor.h"
#include "MemPropertyView.h"

#ifdef _DEBUG
#define new DEBUG_NEW
#undef THIS_FILE
static char THIS_FILE[] = __FILE__;
#endif

/////////////////////////////////////////////////////////////////////////////
// CMemPropertyView

IMPLEMENT_DYNCREATE(CMemPropertyView, CListView)

CMemPropertyView::CMemPropertyView( ) :
    m_pGUIItem( NULL )
{
}

CMemPropertyView::~CMemPropertyView( )
{
}

BEGIN_MESSAGE_MAP(CMemPropertyView, CListView)
	//{{AFX_MSG_MAP(CMemPropertyView)
		// NOTE - the ClassWizard will add and remove mapping macros here.
	//}}AFX_MSG_MAP
END_MESSAGE_MAP()

/////////////////////////////////////////////////////////////////////////////
// CMemPropertyView drawing

void CMemPropertyView::OnDraw(CDC* pDC)
{
	CDocument* pDoc = GetDocument();
	// TODO: add draw code here
}

/////////////////////////////////////////////////////////////////////////////
// CMemPropertyView diagnostics

#ifdef _DEBUG
void CMemPropertyView::AssertValid() const
{
	CListView::AssertValid();
}

void CMemPropertyView::Dump(CDumpContext& dc) const
{
	CListView::Dump(dc);
}
#endif //_DEBUG

/////////////////////////////////////////////////////////////////////////////
// CMemPropertyView message handlers
void CMemPropertyView::SetCurrGUIItem( CGUIItem * pItem )
{
    CListCtrl & ctlList = GetListCtrl( );
    ctlList.DeleteAllItems( );

    if ( pItem != NULL )
    {
        int nItemIndex = 0;
        unsigned int uPropertyCount = pItem->GetPropertyItemCount( );
        for ( unsigned int uIndex = 0; uIndex < uPropertyCount; uIndex ++ )
        {
            nItemIndex = ctlList.InsertItem( uIndex, pItem->GetPropertyItemName( uIndex ) );
            ctlList.SetItemText( nItemIndex, 1, pItem->GetPropertyItemValue( uIndex ) );
        }
    }
    m_pGUIItem = pItem;
}

CGUIItem * CMemPropertyView::GetCurrGUIItem( )
{
    return m_pGUIItem;
}

void CMemPropertyView::OnInitialUpdate() 
{
	CListView::OnInitialUpdate();

    CListCtrl & ctlList = GetListCtrl( );
	ctlList.ModifyStyle( LVS_EDITLABELS | LVS_SORTASCENDING | LVS_SORTDESCENDING, LVS_ALIGNLEFT | LVS_REPORT | LVS_SINGLESEL | LVS_SHOWSELALWAYS );
    ListView_SetExtendedListViewStyle( ctlList.GetSafeHwnd( ), LVS_EX_FULLROWSELECT | LVS_EX_GRIDLINES | LVS_EX_HEADERDRAGDROP | WS_EX_CLIENTEDGE );

    ctlList.InsertColumn( 1, "Property Name", LVCFMT_LEFT, 150 );
    ctlList.InsertColumn( 2, "Value", LVCFMT_LEFT, 100 );
}
