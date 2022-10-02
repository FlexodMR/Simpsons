//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


// MemBlockView.cpp : implementation file
//

#include "stdafx.h"
#include "memmonitor.h"
#include "MemBlockView.h"
#include "..\PEAddr2Line\src\PEAddr2Line.h"
/////////////////////////////////////////////////////////////////////////////
// CMemBlockView

IMPLEMENT_DYNCREATE(CMemBlockView, CListView)

CMemBlockView::CMemBlockView() :
    m_eViewMode( StackTraceView )
{
}

CMemBlockView::~CMemBlockView()
{
}

BEGIN_MESSAGE_MAP(CMemBlockView, CListView)
	//{{AFX_MSG_MAP(CMemBlockView)
	ON_NOTIFY_REFLECT(LVN_GETDISPINFO, OnGetDispInfo)
	ON_WM_CONTEXTMENU()
	ON_COMMAND(ID_BLOCKVIEW_CALLSTACKVIEW, OnBlockviewCallstackview)
	ON_UPDATE_COMMAND_UI(ID_BLOCKVIEW_CALLSTACKVIEW, OnUpdateBlockviewCallstackview)
	ON_COMMAND(ID_BLOCKVIEW_CHILDOBJECTLIST, OnBlockviewChildobjectlist)
	ON_UPDATE_COMMAND_UI(ID_BLOCKVIEW_CHILDOBJECTLIST, OnUpdateBlockviewChildobjectlist)
	ON_COMMAND(ID_BLOCKVIEW_PARENTOBJECTLIST, OnBlockviewParentobjectlist)
	ON_UPDATE_COMMAND_UI(ID_BLOCKVIEW_PARENTOBJECTLIST, OnUpdateBlockviewParentobjectlist)
	//}}AFX_MSG_MAP
    ON_COMMAND(ID_BLOCKVIEW_COPYSTACKLIST, OnBlockviewCopystacklist)
    ON_UPDATE_COMMAND_UI(ID_BLOCKVIEW_COPYSTACKLIST, OnUpdateBlockviewCopystacklist)
END_MESSAGE_MAP()

/////////////////////////////////////////////////////////////////////////////
// CMemBlockView drawing

void CMemBlockView::OnDraw(CDC* pDC)
{
	CDocument* pDoc = GetDocument();
	// TODO: add draw code here
}

/////////////////////////////////////////////////////////////////////////////
// CMemBlockView diagnostics

#ifdef _DEBUG
void CMemBlockView::AssertValid() const
{
	CListView::AssertValid();
}

void CMemBlockView::Dump(CDumpContext& dc) const
{
	CListView::Dump(dc);
}
#endif //_DEBUG

/////////////////////////////////////////////////////////////////////////////
// CMemBlockView message handlers
void CMemBlockView::ShowMemoryBlockInfo( )
{
    PopulateList( );
}

void CMemBlockView::OnUpdate(CView* pSender, LPARAM lHint, CObject* pHint) 
{
    if ( lHint == SSC_MEM_HOST_SUSPENDED )
    {
        PopulateList( );
    }
    else if ( lHint == SSC_MEM_HOST_RESUMED )
    {
        GetListCtrl( ).DeleteAllItems( );
    }
}

void CMemBlockView::OnInitialUpdate() 
{
    CListView::OnInitialUpdate();

    CListCtrl & ctlList = GetListCtrl( );

    //
    // set style and extended style, no sorting
    //
	ctlList.ModifyStyle( LVS_EDITLABELS | LVS_SORTASCENDING | LVS_SORTDESCENDING, LVS_ALIGNLEFT | LVS_REPORT | LVS_SINGLESEL | LVS_SHOWSELALWAYS );
    ListView_SetExtendedListViewStyle( ctlList.GetSafeHwnd( ), LVS_EX_FULLROWSELECT | LVS_EX_GRIDLINES | LVS_EX_HEADERDRAGDROP | WS_EX_CLIENTEDGE );

    SetViewMode( StackTraceView );

    CMemSessionDataManager * pDataManager = static_cast< CMemMonitorApp * >( ::AfxGetApp( ) )->GetMemSessionDataManagerPtr( );
    if ( pDataManager != NULL && pDataManager->GetMemMonitorHostPtr( ) != NULL )
    {
        if ( pDataManager->GetMemMonitorHostPtr( )->IsConnected( ) && pDataManager->GetMemMonitorHostPtr( )->IsClientSuspended( ) )
        {
            PopulateList( );
        }
    }
}

void CMemBlockView::SetViewMode( const CMemBlockView::ViewMode eViewMode )
{
    CListCtrl & ctlList = GetListCtrl( );
    m_eViewMode = eViewMode;

    //
    // delete all columns
    //
    int nColSize = ctlList.GetHeaderCtrl( )->GetItemCount( );
    for ( int nColCount = 0; nColCount < nColSize; nColCount ++ )
    {
        ctlList.DeleteColumn( 0 );
    }

    //
    // insert column
    //
    if ( ( eViewMode == ChildRefObjectView ) || ( eViewMode == ParentRefObjectView ) )
    {
        ctlList.InsertColumn( 1, "RefObj Addr", LVCFMT_LEFT, 68 );
        ctlList.InsertColumn( 2, "Size", LVCFMT_LEFT, 100 );
        ctlList.InsertColumn( 3, "ID", LVCFMT_LEFT, 100 );
        ctlList.InsertColumn( 5, "Obj", LVCFMT_LEFT, 100 );
        ctlList.InsertColumn( 4, "Flag", LVCFMT_LEFT, 100 );
        ctlList.InsertColumn( 6, "RefCount", LVCFMT_LEFT, 50 );
    }
    else if ( eViewMode == StackTraceView )
    {
        ctlList.InsertColumn( 1, "Function Name", LVCFMT_LEFT, 200 );
        ctlList.InsertColumn( 2, "File and Line", LVCFMT_LEFT, 500 );
        ctlList.InsertColumn( 2, "Raw Address", LVCFMT_LEFT, 75 );
    }
    else
    {
        ASSERT( false );
    }

    CMemSessionDataManager * pDataManager = static_cast< CMemMonitorApp * >( ::AfxGetApp( ) )->GetMemSessionDataManagerPtr( );
    if ( pDataManager != NULL && pDataManager->GetMemMonitorHostPtr( ) != NULL )
    {
        if ( ! pDataManager->GetMemMonitorHostPtr( )->IsConnected( ) ||
             ( pDataManager->GetMemMonitorHostPtr( )->IsConnected( ) && pDataManager->GetMemMonitorHostPtr( )->IsClientSuspended( ) )
           )
        {
            PopulateList( );
        }
    }
}

CMemBlockView::ViewMode CMemBlockView::GetViewMode( ) const
{
    return m_eViewMode;
}

const CMemoryBlock * CMemBlockView::GetMemoryBlockPtr( ) const
{
    CMemSectionFrame * pFrame = static_cast< CMemSectionFrame * >( GetParentFrame( ) );
    return pFrame->GetSectionListView( )->GetSelectedMemoryBlock( );
}

void CMemBlockView::PopulateList( )
{
    const CMemoryBlock * pBlock = GetMemoryBlockPtr( );

    CListCtrl & ctlList = GetListCtrl( );

    VERIFY( ctlList.DeleteAllItems( ) );
    if ( pBlock == NULL )
    {
        return;
    }

    if ( m_eViewMode == ChildRefObjectView )
    {
        CMemMonitorApp * pApp = static_cast< CMemMonitorApp * >( ::AfxGetApp( ) );
        ASSERT( pApp );

        CMemSessionDataManager * pDataManager = pApp->GetMemSessionDataManagerPtr( );
        const CMemoryImage * pImage = NULL;
        const CMemorySpace * pSpace = NULL;

        if ( pDataManager != NULL )
        {
            pImage = pApp->GetMemSessionDataManagerPtr( )->GetConcurrentMemoryImagePtr( );
        }
        else
        {
            return;
        }

        if ( pImage != NULL )
        {
            pSpace = pImage->FindMemorySpaceByType( pBlock->GetMemorySpace( ) );
        }
        else
        {
            return;
        }

        if ( pSpace != NULL )
        {
            static char szText[ 64 ];

            bool bEOF = ! pBlock->MoveChildObjectFirst( );

            while( ! bEOF )
            {
                unsigned int uChildRefObjectAddr = pBlock->GetCurrentChildObjectAddr( );
                const CMemoryBlock * pChildRefObject = pSpace->FindMemoryBlockWithInAddr( uChildRefObjectAddr );

                if ( pChildRefObject != NULL )
                {
                    sprintf( szText, "0x%08x", uChildRefObjectAddr );

                    int nItemIndex = ctlList.InsertItem( ctlList.GetItemCount( ), szText );
                    ctlList.SetItemData( nItemIndex, reinterpret_cast< LPARAM >( pChildRefObject ) );
                }
                else
                {
                    strcpy( szText, "Child object NULL pointer" );

                    int nItemIndex = ctlList.InsertItem( ctlList.GetItemCount( ), szText );
                    ctlList.SetItemData( nItemIndex, 0 );
                }
                bEOF = ! pBlock->MoveChildObjectNext( );
            }
        }
    }
    else if ( m_eViewMode == ParentRefObjectView )
    {
        CMemMonitorApp * pApp = static_cast< CMemMonitorApp * >( ::AfxGetApp( ) );
        ASSERT( pApp );

        CMemSessionDataManager * pDataManager = pApp->GetMemSessionDataManagerPtr( );
        const CMemoryImage * pImage = NULL;
        const CMemorySpace * pSpace = NULL;

        if ( pDataManager != NULL )
        {
            pImage = pApp->GetMemSessionDataManagerPtr( )->GetConcurrentMemoryImagePtr( );
        }
        else
        {
            return;
        }

        if ( pImage != NULL )
        {
            pSpace = pImage->FindMemorySpaceByType( pBlock->GetMemorySpace( ) );
        }
        else
        {
            return;
        }

        if ( pSpace != NULL )
        {
            static char szText[ 64 ];

            bool bEOF = ! pBlock->MoveParentObjectFirst( );

            while( ! bEOF )
            {
                unsigned int uParentRefObjectAddr = pBlock->GetCurrentParentObjectAddr( );
                const CMemoryBlock * pParentRefObject = pSpace->FindMemoryBlockByAddr( uParentRefObjectAddr );

                ASSERT( uParentRefObjectAddr == pParentRefObject->GetBegAddress( ) );
                if ( pParentRefObject != NULL )
                {
                    sprintf( szText, "0x%08x", uParentRefObjectAddr );

                    int nItemIndex = ctlList.InsertItem( ctlList.GetItemCount( ), szText );
                    ctlList.SetItemData( nItemIndex, reinterpret_cast< LPARAM >( pParentRefObject ) );
                }
                else
                {
                    strcpy( szText, "Parent object NULL pointer" );

                    int nItemIndex = ctlList.InsertItem( ctlList.GetItemCount( ), szText );
                    ctlList.SetItemData( nItemIndex, 0 );
                }
                bEOF = ! pBlock->MoveParentObjectNext( );
            }
        }
    }
    else if ( m_eViewMode == StackTraceView )
    {
        CMemMonitorApp * pApp = static_cast< CMemMonitorApp * >( ::AfxGetApp( ) );
        ASSERT( pApp );

        CMemSessionDataManager * pDataManager = pApp->GetMemSessionDataManagerPtr( );
        const CMemoryImage * pImage = NULL;
        const CMemorySpace * pSpace = NULL;

        if ( pDataManager != NULL )
        {
            pImage = pApp->GetMemSessionDataManagerPtr( )->GetConcurrentMemoryImagePtr( );
        }
        else
        {
            return;
        }

        if ( pImage != NULL )
        {
            pSpace = pImage->FindMemorySpaceByType( pBlock->GetMemorySpace( ) );
        }
        else
        {
            return;
        }

        if ( pSpace != NULL )
        {
            unsigned int uCallStackSize = pBlock->GetCallStackDepth( );
            ASSERT( uCallStackSize <= MM_MAX_CALLSTACK_DEPTH );

            unsigned int uCallStackIdx = 0;
            unsigned int uCallStackAddr[ MM_MAX_CALLSTACK_DEPTH ] = { 0 };
            char * szText[ MM_MAX_CALLSTACK_DEPTH ] = { NULL };
            char * szLine[ MM_MAX_CALLSTACK_DEPTH ] = { NULL };
            char szAddr[ MM_MAX_CALLSTACK_DEPTH ];

            if ( ! radPEAddr2LineIsExeLoaded( ) )
            {
                radPEAddr2LineLoadExe( pDataManager->GetMemConfigurationPtr( )->GetClientExecutablePath( ) );
            }

            for ( uCallStackIdx = 0; uCallStackIdx < uCallStackSize; uCallStackIdx ++ )
            {
                szText[ uCallStackIdx ] = new char[ 512 ];
                szLine[ uCallStackIdx ] = new char[ 512 ];
            }

            for ( uCallStackIdx = 0; uCallStackIdx < uCallStackSize; uCallStackIdx ++ )
            {
                uCallStackAddr[ uCallStackIdx ] = pBlock->GetCallStackAtIndex( uCallStackIdx );
            }

            bool bEvaluated = radPEAddr2LineV( uCallStackAddr, uCallStackSize, szText, szLine );

            for ( uCallStackIdx = 0; uCallStackIdx < uCallStackSize; uCallStackIdx ++ )
            {
                int nItemIndex = 0;
                if ( bEvaluated )
                {
                    nItemIndex = ctlList.InsertItem( ctlList.GetItemCount( ), szText[ uCallStackIdx ] );
                    ctlList.SetItemText(nItemIndex, 1, szLine[ uCallStackIdx ] );
                }
                else
                {
                    nItemIndex = ctlList.InsertItem( ctlList.GetItemCount( ), "-Failed to Evaluate-" );
                    ctlList.SetItemText(nItemIndex, 1, "" );
                }

                ctlList.SetItemData( nItemIndex, reinterpret_cast< LPARAM >( pBlock ) );

                sprintf( szAddr, "0x%08x", uCallStackAddr[ uCallStackIdx ] );
                ctlList.SetItemText(nItemIndex, 2, szAddr);
            }

            for ( uCallStackIdx = 0; uCallStackIdx < uCallStackSize; uCallStackIdx ++ )
            {
                delete[] szText[ uCallStackIdx ];
                delete[] szLine[ uCallStackIdx ];
            }
        }
    }
}

void CMemBlockView::OnGetDispInfo(NMHDR* pNMHDR, LRESULT* pResult) 
{
	LV_DISPINFO* pDispInfo = (LV_DISPINFO*)pNMHDR;

    static char szText[ 128 ];

    if ( pDispInfo->item.mask & LVIF_TEXT )
    {
        CMemoryBlock * pBlock = reinterpret_cast< CMemoryBlock * >( pDispInfo->item.lParam );

        if ( ( m_eViewMode == ChildRefObjectView ) || ( m_eViewMode == ParentRefObjectView ) )
        {
            switch( pDispInfo->item.iSubItem )
            {
                case 0: // address
                {
                    if ( pBlock != NULL )
                    {
                        sprintf( szText, "0x%08x", pBlock->GetBegAddress( ) );
                    }
                    else
                    {
                        strcpy( szText, "internal error" );
                    }
                    szText[ 64 ] = '\0';
                    ::lstrcpy( pDispInfo->item.pszText, szText );
                }
                break;

                case 1: // size
                {
                    if ( pBlock != NULL )
                    {
                        sprintf( szText, "%u(%s)", pBlock->GetTotalSize( ), (LPCTSTR)MMFormatMemorySizeString( pBlock->GetTotalSize( ) ) );
                    }
                    else
                    {
                        strcpy( szText, "" );
                    }
                    szText[ 64 ] = '\0';
                    ::lstrcpy( pDispInfo->item.pszText, szText );
                }
                break;

                case 2: // group id
                {
                    if ( pBlock != NULL )
                    {
                        if ( pBlock->IsFreeBlock( ) )
                        {
                            ::lstrcpy( pDispInfo->item.pszText, "Free" );
                        }
                        else
                        {
                            strcpy( szText, pBlock->GetGroupID( ) );
                            szText[ 64 ] = '\0';
                            ::lstrcpy( pDispInfo->item.pszText, szText );
                        }
                    }
                    else
                    {
                        ::lstrcpy( pDispInfo->item.pszText, "" );
                    }
                }
                break;

                case 3: // object name
                {
                    if ( pBlock != NULL )
                    {
                        ::strcpy( szText, pBlock->GetObjectName( ) );
                        szText[ 64 ] = '\0';
                        ::lstrcpy( pDispInfo->item.pszText, szText );
                    }
                    else
                    {
                        ::lstrcpy( pDispInfo->item.pszText, "" );
                    }
                }
                break;

                case 4: // memory flag name
                {
                    if ( pBlock != NULL )
                    {
                        if ( ! pBlock->IsFreeBlock( ) )
                        {
                            const CMemoryFlag * pFlag = pBlock->GetMemoryFlag( );
                            if ( pFlag )
                            {
                                ::strcpy( szText, pFlag->GetFlagName( ) );
                                szText[ 64 ] = '\0';
                                ::lstrcpy( pDispInfo->item.pszText, szText );
                            }
                            else
                            {
                                ::lstrcpy( pDispInfo->item.pszText, "" );
                            }
                        }
                        else
                        {
                            ::lstrcpy( pDispInfo->item.pszText, "" );
                        }
                    }
                    else
                    {
                        ::lstrcpy( pDispInfo->item.pszText, "" );
                    }
                }
                break;
                
                case 5: // ref count
                {
                    if ( pBlock != NULL )
                    {
                        unsigned int uRefCount = pBlock->GetClientObjectRefCount( );
                        if ( pBlock->IsFreeBlock( ) || ( ! pBlock->IsClientObjectRefCount( ) && uRefCount == 0 ) )
                        {
                            ::lstrcpy( pDispInfo->item.pszText, "---" );
                        }
                        else
                        {
                            sprintf( szText, "%u", pBlock->GetClientObjectRefCount( ) );
                            szText[ 64 ] = '\0';
                            ::lstrcpy( pDispInfo->item.pszText, szText );
                        }
                    }
                    else
                    {
                        strcpy( szText, "" );
                        szText[ 64 ] = '\0';
                        ::lstrcpy( pDispInfo->item.pszText, szText );
                    }
                }
                break;

                default:
                {
                    ASSERT( false );
                }
                break;
            }
        }
        else if ( m_eViewMode == StackTraceView )
        {

        }
    }
    
	*pResult = 0;
}

void CMemBlockView::OnContextMenu(CWnd* pWnd, CPoint point) 
{
    CString strMenuName;
    strMenuName.LoadString( IDR_MENU_BLOCK_VIEW );
    
    CMenu mnuSubMenu;
    mnuSubMenu.Attach( GetWorkspace( )->GetContextMenuManager( )->GetMenuByName( strMenuName ) );

    HMENU hMenu = mnuSubMenu.GetSubMenu( 0 )->GetSafeHmenu( );
    ASSERT( hMenu );

    mnuSubMenu.Detach( );

    GetWorkspace( )->GetContextMenuManager( )->ShowPopupMenu( hMenu, point.x, point.y, this, TRUE, TRUE );
}

void CMemBlockView::OnBlockviewCallstackview() 
{
    if ( m_eViewMode != StackTraceView )
    {
        SetViewMode( StackTraceView );
    }
}

void CMemBlockView::OnUpdateBlockviewCallstackview(CCmdUI* pCmdUI) 
{
    if ( m_eViewMode == StackTraceView )
    {
        pCmdUI->SetCheck( 1 );
    }

    pCmdUI->Enable( TRUE );
}


void CMemBlockView::OnBlockviewChildobjectlist() 
{
    if ( m_eViewMode != ChildRefObjectView )
    {
        SetViewMode( ChildRefObjectView );
    }
}

void CMemBlockView::OnUpdateBlockviewChildobjectlist(CCmdUI* pCmdUI) 
{
    if ( m_eViewMode == ChildRefObjectView )
    {
        pCmdUI->SetCheck( 1 );
    }

    pCmdUI->Enable( TRUE );
}

void CMemBlockView::OnBlockviewParentobjectlist() 
{
    if ( m_eViewMode != ParentRefObjectView )
    {
        SetViewMode( ParentRefObjectView );
    }
}

void CMemBlockView::OnUpdateBlockviewParentobjectlist(CCmdUI* pCmdUI) 
{
    if ( m_eViewMode == ParentRefObjectView )
    {
        pCmdUI->SetCheck( 1 );
    }

    pCmdUI->Enable( TRUE );
}

void CMemBlockView::OnBlockviewCopystacklist()
{
    CMemMonitorApp * pApp = static_cast< CMemMonitorApp * >( ::AfxGetApp( ) );
    ASSERT( pApp );

    CMemSessionDataManager * pDataManager = pApp->GetMemSessionDataManagerPtr( );

    const CMemoryBlock * pBlock = GetMemoryBlockPtr( );
    const CMemoryImage * pImage = NULL;
    const CMemorySpace * pSpace = NULL;

    if ( pDataManager != NULL )
    {
        pImage = pDataManager->GetConcurrentMemoryImagePtr( );
    }
    else
    {
        return;
    }

    if ( pImage != NULL )
    {
        pSpace = pImage->FindMemorySpaceByType( pBlock->GetMemorySpace( ) );
    }
    else
    {
        return;
    }

    if ( pSpace == NULL )
    {
        return;
    }

    const unsigned int uCallStackSize = pBlock->GetCallStackDepth( );
    unsigned int uCallStackIdx = 0;
    unsigned int uCallStackAddr[ MM_MAX_CALLSTACK_DEPTH ] = { 0 };
    char * szText[ MM_MAX_CALLSTACK_DEPTH ] = { NULL };
    char * szLine[ MM_MAX_CALLSTACK_DEPTH ] = { NULL };

    if ( ! radPEAddr2LineIsExeLoaded( ) )
    {
        radPEAddr2LineLoadExe( pDataManager->GetMemConfigurationPtr( )->GetClientExecutablePath( ) );
    }

    for ( uCallStackIdx = 0; uCallStackIdx < uCallStackSize; uCallStackIdx ++ )
    {
        szText[ uCallStackIdx ] = new char[ 512 ];
        szLine[ uCallStackIdx ] = new char[ 512 ];
    }

    for ( uCallStackIdx = 0; uCallStackIdx < uCallStackSize; uCallStackIdx ++ )
    {
        uCallStackAddr[ uCallStackIdx ] = pBlock->GetCallStackAtIndex( uCallStackIdx );
    }

    bool bEvaluated = radPEAddr2LineV( uCallStackAddr, uCallStackSize, szText, szLine );

    CString strCopy;
    CString strLine;

    strCopy.Append( "Function Name:\tFile Name(Line Number)\tRaw Address\r\n" );
    for ( uCallStackIdx = 0; uCallStackIdx < uCallStackSize; uCallStackIdx ++ )
    {
        strLine.Format( "%s\t%s\t0x%08x\r\n", szText[ uCallStackIdx ], szLine[ uCallStackIdx ], uCallStackAddr[ uCallStackIdx ] );
        strCopy.Append( strLine );
    }

    //
    // copy address to clip board
    //
    HANDLE hStrData = ::GlobalAlloc( GMEM_MOVEABLE, strCopy.GetLength( ) + 1 );      // string length of 8 + 2 + 1
    LPSTR pStrData = (LPSTR) ::GlobalLock( hStrData );
    ::strcpy( pStrData, strCopy );
    ::GlobalUnlock( hStrData );

    //
    // this will cause memory leak if clip board is not cleared before exit, but it is acceptable
    // to have this memory leak, since Ole clipboard is shared between all applications.
    //
    COleDataSource* pData = new COleDataSource;     // our evil OLE "friend"
    pData->CacheGlobalData( CF_TEXT, hStrData );

    // The Clipboard now owns the allocated memory
    // and will delete this data object
    // when new data is put on the Clipboard
    pData->SetClipboard( );
}

void CMemBlockView::OnUpdateBlockviewCopystacklist(CCmdUI *pCmdUI)
{
    CMemMonitorApp * pApp = static_cast< CMemMonitorApp * >( ::AfxGetApp( ) );
    ASSERT( pApp );

    CMemSessionDataManager * pDataManager = pApp->GetMemSessionDataManagerPtr( );

    const CMemoryBlock * pBlock = GetMemoryBlockPtr( );
    const CMemoryImage * pImage = NULL;
    const CMemorySpace * pSpace = NULL;

    if ( pDataManager != NULL )
    {
        pImage = pDataManager->GetConcurrentMemoryImagePtr( );
    }
    else
    {
        pCmdUI->Enable( FALSE );
        return;
    }

    if ( pImage != NULL )
    {
        pSpace = pImage->FindMemorySpaceByType( pBlock->GetMemorySpace( ) );
    }
    else
    {
        pCmdUI->Enable( FALSE );
        return;
    }

    if ( pSpace == NULL )
    {
        pCmdUI->Enable( FALSE );
        return;
    }

    pCmdUI->Enable( TRUE );
}
