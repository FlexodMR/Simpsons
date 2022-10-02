//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


// MemErrorListView.cpp : implementation file
//

#include "stdafx.h"
#include "memmonitor.h"
#include "MemErrorListView.h"

/////////////////////////////////////////////////////////////////////////////
// CMemErrorListView

IMPLEMENT_DYNCREATE(CMemErrorListView, CTreeView)

CMemErrorListView::CMemErrorListView()
{
}

CMemErrorListView::~CMemErrorListView()
{
}

BEGIN_MESSAGE_MAP(CMemErrorListView, CTreeView)
	//{{AFX_MSG_MAP(CMemErrorListView)
	ON_WM_CREATE()
	//}}AFX_MSG_MAP
END_MESSAGE_MAP()

/////////////////////////////////////////////////////////////////////////////
// CMemErrorListView drawing

void CMemErrorListView::OnDraw(CDC* pDC)
{
	CDocument* pDoc = GetDocument();
	// TODO: add draw code here
}

/////////////////////////////////////////////////////////////////////////////
// CMemErrorListView diagnostics

#ifdef _DEBUG
void CMemErrorListView::AssertValid() const
{
	CTreeView::AssertValid();
}

void CMemErrorListView::Dump(CDumpContext& dc) const
{
	CTreeView::Dump(dc);
}
#endif //_DEBUG

/////////////////////////////////////////////////////////////////////////////
// CMemErrorListView message handlers
void CMemErrorListView::OnInitialUpdate() 
{
    CTreeView::OnInitialUpdate();
    CTreeCtrl & ctlTree = GetTreeCtrl( );

    ctlTree.ModifyStyle( TVS_LINESATROOT | TVS_EDITLABELS,
                         TVS_HASLINES | TVS_HASBUTTONS | TVS_SHOWSELALWAYS | TVS_DISABLEDRAGDROP );
}

void CMemErrorListView::ClearView( )
{
    CTreeCtrl & ctlTree = GetTreeCtrl( );
    ctlTree.DeleteAllItems( );
}

void CMemErrorListView::OnUpdate(CView* pSender, LPARAM lHint, CObject* pHint) 
{
    CMemMonitorApp * pApp = static_cast< CMemMonitorApp * >( ::AfxGetApp( ) );
    ASSERT( pApp != NULL );
    CMemSessionDataManager * pData = pApp->GetMemSessionDataManagerPtr( );
    if ( pData == NULL )
    {
        return;
    }

    CMemMonitorErrorHandlerPtr pError = pData->GetMemErrorHandlerPtr( );
    if ( pError == NULL )
    {
        return;
    }

    CTreeCtrl & ctlTree = GetTreeCtrl( );

    int nTreeNodeImage = 0;

    while ( ! pError->IsEmpty( ) )
    {
        CMemErrorMsgPtr pMsg = pError->Remove( );

        if ( pMsg != NULL )
        {
            if ( pMsg->IsError( ) )
            {
                nTreeNodeImage = IconError;
            }
            else if ( pMsg->IsMessage( ) )
            {
                nTreeNodeImage = IconMessage;
            }

            HTREEITEM hItem = ctlTree.InsertItem( pMsg->GetMsg( ), nTreeNodeImage, nTreeNodeImage );

            if ( pMsg->HasSubTextEntry( ) )
            {
                const vector< CString > & arySubTextEntry = pMsg->GetSubTextEntry( );
                for ( unsigned int i = 0; i < arySubTextEntry.size( ); i ++ )
                {
                    ctlTree.InsertItem( arySubTextEntry.at( i ), IconEntry, IconEntry, hItem );
                }
            }
        }
    }
}


int CMemErrorListView::OnCreate(LPCREATESTRUCT lpCreateStruct) 
{
	if ( CTreeView::OnCreate(lpCreateStruct) == -1 )
    {
        return -1;
    }

    if ( ! m_imgIcons.Create( IDB_WORKSPACE, 16, 0, RGB( 255, 0, 255 ) ) )
    {
        AfxTrace( "Unable to create image list from IDB_WORKSPACE.\n" );
        return -1;
    }

    GetTreeCtrl( ).SetImageList( &m_imgIcons, TVSIL_NORMAL );

    return 0;
}
