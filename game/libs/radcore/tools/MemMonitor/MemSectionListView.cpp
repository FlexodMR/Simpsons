//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


// MemSectionListView.cpp : implementation file
//

#include "stdafx.h"
#include "MemMonitor.h"
#include "MemSectionListView.h"

#include "MemSectionCellView.h"
#include "MemSectionFrame.h"
#include "MemorySection.h"
#include "MemHexView.h"
#include "MemBlockView.h"

IMPLEMENT_DYNCREATE(CMemSectionListView, CListView)

BEGIN_MESSAGE_MAP(CMemSectionListView, CListView)
	ON_NOTIFY_REFLECT( NM_CUSTOMDRAW, OnCustomDraw )
    //{{AFX_MSG_MAP(CMemSectionListView)
	ON_NOTIFY_REFLECT(LVN_COLUMNCLICK, OnColumnclick)
	ON_NOTIFY_REFLECT(LVN_GETDISPINFO, OnGetDispInfo)
	ON_NOTIFY_REFLECT(NM_CLICK, OnClick)
	ON_COMMAND(ID_SECTIONLIST_MEMORYCONTENT, OnSectionlistMemorycontent)
	ON_UPDATE_COMMAND_UI(ID_SECTIONLIST_MEMORYCONTENT, OnUpdateSectionlistMemorycontent)
	ON_WM_CONTEXTMENU()
	ON_WM_KEYDOWN()
	ON_COMMAND(ID_SECTIONLIST_COPYADDRESS, OnSectionlistCopyaddress)
	ON_UPDATE_COMMAND_UI(ID_SECTIONLIST_COPYADDRESS, OnUpdateSectionlistCopyaddress)
	//}}AFX_MSG_MAP
END_MESSAGE_MAP()

//
// The comparison function must return a negative value if the first item
// should precede the second, a positive value if the first item should
// follow the second, or zero if the two items are equivalent.
//

static int CALLBACK CompareCallBack(LPARAM lParam1, LPARAM lParam2, LPARAM lParamSort)
{
    const CMemoryBlock * pBlock1 = reinterpret_cast< CMemoryBlock * >( lParam1 );
    const CMemoryBlock * pBlock2 = reinterpret_cast< CMemoryBlock * >( lParam2 );

    CMemSectionListView * pView = reinterpret_cast< CMemSectionListView * >( lParamSort );
    switch( pView->GetCurrentSortColumn( ) )
    {
        case 0: // address
        {
            if ( pBlock1->GetBegAddress( ) > pBlock2->GetBegAddress( ) )
            {
                return 1;
            }
            else if ( pBlock1->GetBegAddress( ) < pBlock2->GetBegAddress( ) )
            {
                return -1;
            }
            else
            {
                return 0;
            }
        }
        break;

        case 1: // size
        {
            if ( pBlock1->GetTotalSize( ) > pBlock2->GetTotalSize( ) )
            {
                return 1;
            }
            else if ( pBlock1->GetTotalSize( ) < pBlock2->GetTotalSize( ) )
            {
                return -1;
            }
            else
            {
                return 0;
            }
        }
        break;

        case 2: // group id
        {
            if ( pBlock1->IsFreeBlock( ) && ! pBlock2->IsFreeBlock( ) )
            {
                return 1;
            }
            else if ( ! pBlock1->IsFreeBlock( ) && pBlock2->IsFreeBlock( ) )
            {
                return -1;
            }
            else if ( pBlock1->IsFreeBlock( ) && pBlock2->IsFreeBlock( ) )
            {
                return 0;
            }
            else
            {
                if ( pBlock1->GetGroupID( ) > pBlock2->GetGroupID( ) )
                {
                    return 1;
                }
                else if ( pBlock1->GetGroupID( ) < pBlock2->GetGroupID( ) )
                {
                    return -1;
                }
                else
                {
                    return 0;
                }
            }
        }
        break;

        case 3: // allocation ID
        {
            if ( pBlock1->GetAllocationID( ) > pBlock2->GetAllocationID( ) )
            {
                return 1;
            }
            else if ( pBlock1->GetAllocationID( ) < pBlock2->GetAllocationID( ) )
            {
                return -1;
            }
            else
            {
                return 0;
            }
        }
        break;

        case 4: // object name
        {
            return ( pBlock1->GetObjectName( ).Compare( pBlock2->GetObjectName( ) ) );
        }
        break;
        
        case 5: // flag name
        {
            if ( pBlock1->IsFreeBlock( ) && ! pBlock2->IsFreeBlock( ) )
            {
                return 1;
            }
            else if ( ! pBlock1->IsFreeBlock( ) && pBlock2->IsFreeBlock( ) )
            {
                return -1;
            }
            else if ( pBlock1->IsFreeBlock( ) && pBlock2->IsFreeBlock( ) )
            {
                return 0;
            }
            else
            {
                if ( pBlock1->GetMemoryFlag( )->GetFlagName( ) > pBlock2->GetMemoryFlag( )->GetFlagName( ) )
                {
                    return 1;
                }
                else if ( pBlock1->GetMemoryFlag( )->GetFlagName( ) < pBlock2->GetMemoryFlag( )->GetFlagName( ) )
                {
                    return -1;
                }
                else
                {
                    return 0;
                }
            }
        }
        break;

        case 6: // ref count
        {
            if ( ! pBlock1->IsClientObjectRefCount( ) && pBlock2->IsClientObjectRefCount( ) )
            {
                return 1;
            }
            else if ( pBlock1->IsClientObjectRefCount( ) && ! pBlock2->IsClientObjectRefCount( ) )
            {
                return -1;
            }
            else if ( ! pBlock1->IsClientObjectRefCount( ) && ! pBlock2->IsClientObjectRefCount( ) )
            {
                return 0;
            }
            else
            {
                if ( pBlock1->GetClientObjectRefCount( ) > pBlock2->GetClientObjectRefCount( ) )
                {
                    return 1;
                }
                else if ( pBlock1->GetClientObjectRefCount( ) < pBlock2->GetClientObjectRefCount( ) )
                {
                    return -1;
                }
                else
                {
                    return 0;
                }
            }
        }
        break;

        default:
        {
            ASSERT( false );
        }
        break;
    }
    return 0;
}

/////////////////////////////////////////////////////////////////////////////
// CMemSectionListView

CMemSectionListView::CMemSectionListView()
{
    m_nCurrentSortColumn = 0;
    m_nExtraPadding = 0;
}

CMemSectionListView::~CMemSectionListView()
{
}

/////////////////////////////////////////////////////////////////////////////
// CMemSectionListView drawing

void CMemSectionListView::OnDraw(CDC* pDC)
{
	const CMemorySection * pSection = GetMemorySectionPtr( );
}

const CMemorySection * CMemSectionListView::GetMemorySectionPtr( ) const
{
    return static_cast< CMemSectionFrame * >( GetParentFrame( ) )->GetMemorySectionPtr( );
}

void CMemSectionListView::SelectMemoryBlock( const CMemoryBlock * pBlock )
{
    ASSERT( pBlock );

    CListCtrl & ctlList = GetListCtrl( );

    LVFINDINFO info; ZeroMemory( & info, sizeof( info ) );
    info.flags = LVFI_PARAM;
    info.lParam = (LPARAM)pBlock;
    int nIndex = ctlList.FindItem( & info );

    if ( nIndex >= 0 )
    {
        ctlList.SetItemState( nIndex, LVIS_FOCUSED | LVIS_SELECTED, -1 );
        ctlList.EnsureVisible( nIndex, FALSE );
        SetActiveWindow( );
        SetFocus( );
    }
}

/////////////////////////////////////////////////////////////////////////////
// CMemSectionListView diagnostics

#ifdef _DEBUG
void CMemSectionListView::AssertValid() const
{
	CListView::AssertValid();
}

void CMemSectionListView::Dump(CDumpContext& dc) const
{
	CListView::Dump(dc);
}
#endif //_DEBUG

int CMemSectionListView::GetEndAllocationPadding( ) const
{
    return m_nExtraPadding;
}

void CMemSectionListView::SetEndAllocationPadding( const int nPadding )
{
    if ( nPadding < 0 )
    {
        m_nExtraPadding = 0;
    }
    else
    {
        m_nExtraPadding = nPadding;
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

/////////////////////////////////////////////////////////////////////////////
// CMemSectionListView message handlers
void CMemSectionListView::OnInitialUpdate() 
{
    CListView::OnInitialUpdate();

    CListCtrl & ctlList = GetListCtrl( );

    //
    // set style and extended style
    //
	ctlList.ModifyStyle( LVS_EDITLABELS, LVS_ALIGNLEFT | LVS_REPORT | LVS_SINGLESEL | LVS_SHOWSELALWAYS | LVS_SORTASCENDING );
    ListView_SetExtendedListViewStyle( ctlList.GetSafeHwnd( ), LVS_EX_FULLROWSELECT | LVS_EX_GRIDLINES | LVS_EX_HEADERDRAGDROP | WS_EX_CLIENTEDGE );

    //
    // insert column
    //
    ctlList.InsertColumn( 1, "Address", LVCFMT_LEFT, 75 );
    ctlList.InsertColumn( 2, "Size (bytes)", LVCFMT_LEFT, 120 );
    ctlList.InsertColumn( 3, "Group ID", LVCFMT_LEFT, 100 );
    ctlList.InsertColumn( 4, "Alloc ID", LVCFMT_LEFT, 50 );
    ctlList.InsertColumn( 5, "Object", LVCFMT_LEFT, 100 );
    ctlList.InsertColumn( 6, "Flag", LVCFMT_LEFT, 100 );
    ctlList.InsertColumn( 7, "Reference Count", LVCFMT_LEFT, 50 );

    GetListCtrl( ).SortItems( CompareCallBack, (DWORD)this );

    m_dlgProgress.Initialize( );
    
    CMemSessionDataManager * pDataManager = static_cast< CMemMonitorApp * >( ::AfxGetApp( ) )->GetMemSessionDataManagerPtr( );
    if ( pDataManager != NULL && pDataManager->GetMemMonitorHostPtr( ) != NULL )
    {
        if ( 
             ( pDataManager->GetMemMonitorHostPtr( )->IsConnected( ) && pDataManager->GetMemMonitorHostPtr( )->IsClientSuspended( ) ) ||
             ! pDataManager->GetMemMonitorHostPtr( )->IsConnected( ) 
           )
        {
            PopulateList( );
        }
    }
}

void CMemSectionListView::OnUpdate(CView* pSender, LPARAM lHint, CObject* pHint) 
{
    if ( lHint == SSC_MEM_HOST_SUSPENDED || lHint == SSC_MEM_HOST_DISCONNECT )
    {
        PopulateList( );
    }
    else if ( lHint == SSC_MEM_HOST_RESUMED )
    {
        GetListCtrl( ).DeleteAllItems( );
    }
}

void CMemSectionListView::PopulateList( )
{
    CMemorySectionPtr pSection = GetMemorySectionPtr( );
    ASSERT( pSection != NULL );
    //
    // clear list first
    //
    GetListCtrl( ).DeleteAllItems( );

    //
    // make sure all data has been processed
    //
    CMemMonitorApp * pApp = static_cast< CMemMonitorApp * >( ::AfxGetApp( ) );
    CMemSessionDataManager * pData = pApp->GetMemSessionDataManagerPtr( );
    ASSERT( pData );
    CMemRawDataQueue * pQueue = pData->GetMemRawDataQueuePtr( );
    ASSERT( pQueue );
    while ( ! pQueue->IsEmpty( ) )
    {
        Sleep( 10 );
    }

    unsigned int uTotalMemoryBlockCount = pSection->GetMemoryBlockCount( );
    unsigned int uMemoryBlockProcessed = 0;
    float fPercentDone = 0.0f;

    if ( uTotalMemoryBlockCount == 0 )
    {
        return;
    }

    CWaitCursor cCursor;

    m_dlgProgress.ShowWindow( SW_SHOW );
    m_dlgProgress.SetProgress( fPercentDone );

    bool bIsLastBlockFree = false;

    bool bEOF = ! pSection->MoveMemoryBlockFirst( );

    float fNextPercentDone = 0.0f;
    while ( ! bEOF )
    {
        fNextPercentDone = (float)uMemoryBlockProcessed / (float)uTotalMemoryBlockCount;
        if ( ( fNextPercentDone - fPercentDone ) > 0.1f )
        {
            m_dlgProgress.SetProgress( fNextPercentDone );
            fPercentDone = fNextPercentDone;
        }

        InsertMemoryBlockItem( pSection->GetCurrentMemoryBlock( ) );
        bEOF = ! pSection->MoveMemoryBlockNext( );

        uMemoryBlockProcessed++;
    }
    m_dlgProgress.ShowWindow( SW_HIDE );
}

void CMemSectionListView::OnColumnclick(NMHDR* pNMHDR, LRESULT* pResult) 
{
	NM_LISTVIEW* pNMListView = (NM_LISTVIEW*)pNMHDR;

    //
    // if click on column twice, sort order switch
    //
    if ( m_nCurrentSortColumn == pNMListView->iSubItem )
    {
        if ( GetListCtrl( ).GetStyle( ) & LVS_SORTDESCENDING )
        {
            GetListCtrl( ).ModifyStyle( LVS_SORTDESCENDING | LVS_SORTASCENDING, LVS_SORTASCENDING );
        }
        else
        {
            GetListCtrl( ).ModifyStyle( LVS_SORTDESCENDING | LVS_SORTASCENDING, LVS_SORTDESCENDING );
        }
    }

    m_nCurrentSortColumn = pNMListView->iSubItem;

    GetListCtrl( ).SortItems( CompareCallBack, (DWORD)this  );

	*pResult = 0;
}

BOOL CMemSectionListView::InsertMemoryBlockItem( const CMemoryBlock * pBlock )
{
    ASSERT( pBlock );
    //
    // don't insert this block if it is free and smaller than extra padding block
    //
    if ( pBlock->IsFreeBlock( ) && pBlock->GetTotalSize( ) <= m_nExtraPadding )
    {
        return TRUE;
    }

    static char szText[ 64 ];
    sprintf( szText, "0x%08x", pBlock->GetBegAddress( ) );

    LVITEM vItem; ::memset( &vItem, 0, sizeof( vItem ) );
    vItem.mask = LVIF_TEXT | LVIF_PARAM;
    vItem.iItem = GetListCtrl( ).GetItemCount( );
    vItem.pszText = szText;
    vItem.lParam = reinterpret_cast< LPARAM >( pBlock );

    int nItemIndex = GetListCtrl( ).InsertItem( & vItem );
    return ( nItemIndex == -1 ) ? FALSE : TRUE;
}

void CMemSectionListView::OnGetDispInfo(NMHDR* pNMHDR, LRESULT* pResult) 
{
	LV_DISPINFO* pDispInfo = (LV_DISPINFO*)pNMHDR;

    static char szText[ 128 ];

    if ( pDispInfo->item.mask & LVIF_TEXT )
    {
        const CMemoryBlock * pBlock = reinterpret_cast< CMemoryBlock * >( pDispInfo->item.lParam );

        if ( pBlock == NULL )
        {
            ::lstrcpy( pDispInfo->item.pszText, "Out-of-Sync" );
            return;
        }

        switch( pDispInfo->item.iSubItem )
        {
            case 0: // address
            {
                sprintf( szText, "0x%08x", pBlock->GetBegAddress( ) );
                szText[ 64 ] = '\0';
                ::lstrcpy( pDispInfo->item.pszText, szText );
            }
            break;

            case 1: // size
            {
                sprintf( szText, "%u(%s)", pBlock->GetTotalSize( ), (LPCTSTR)MMFormatMemorySizeString( pBlock->GetTotalSize( ) ) );
                szText[ 64 ] = '\0';
                ::lstrcpy( pDispInfo->item.pszText, szText );
            }
            break;

            case 2: // group id
            {
                if ( pBlock->IsFreeBlock( ) )
                {
                    szText[ 64 ] = '\0';
                    ::lstrcpy( pDispInfo->item.pszText, "Free" );
                }
                else
                {
                    strcpy( szText, pBlock->GetGroupID( ) );
                    szText[ 64 ] = '\0';
                    ::lstrcpy( pDispInfo->item.pszText, szText );
                }
            }
            break;

            case 3: // allocation ID
            {
                szText[ 0 ] = '\0';
                if ( ! pBlock->IsFreeBlock( ) )
                {
                    ::itoa( pBlock->GetAllocationID( ), szText, 10 );
                    szText[ 64 ] = '\0';
                    ::lstrcpy( pDispInfo->item.pszText, szText );
                }
            }
            break;

            case 4: // object name
            {
                szText[ 64 ] = '\0';
                ::lstrcpy( pDispInfo->item.pszText, pBlock->GetObjectName( ) );
            }
            break;

            case 5: // flag name
            {
                if ( ! pBlock->IsFreeBlock( ) || pBlock->GetMemoryFlag( ) )
                {
                    strcpy( szText, pBlock->GetMemoryFlag( )->GetFlagName( ) );
                    szText[ 64 ] = '\0';
                    ::lstrcpy( pDispInfo->item.pszText, szText );
                }
                else
                {
                    ::lstrcpy( pDispInfo->item.pszText, "---" );
                }
            }
            break;

            case 6: // ref count
            {
                unsigned int uRefCount = pBlock->GetClientObjectRefCount( );
                if ( pBlock->IsFreeBlock( ) || ( ! pBlock->IsClientObjectRefCount( ) && uRefCount == 0 ) )
                {
                    szText[ 64 ] = '\0';
                    ::lstrcpy( pDispInfo->item.pszText, "---" );
                }
                else
                {
                    sprintf( szText, "%u", pBlock->GetClientObjectRefCount( ) );
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
    
	*pResult = 0;
}

void CMemSectionListView::OnClick(NMHDR* pNMHDR, LRESULT* pResult) 
{
    int nSelectedItem = GetListCtrl( ).GetSelectionMark( );

    if ( nSelectedItem >= 0 && nSelectedItem < GetListCtrl( ).GetItemCount( ) )
    {
        const CMemoryBlock * pBlock = reinterpret_cast< CMemoryBlock * >( GetListCtrl( ).GetItemData( nSelectedItem ) );

        static_cast< CMemSectionFrame * >( GetParentFrame( ) )->GetSectionCellView( )->ShowMemoryLocationCursor( pBlock->GetBegAddress( ) );
        static_cast< CMemSectionFrame * >( GetParentFrame( ) )->GetBlockView( )->ShowMemoryBlockInfo( );
    }

    *pResult = 0;
}

void CMemSectionListView::OnKeyDown(UINT nChar, UINT nRepCnt, UINT nFlags) 
{
    CListView::OnKeyDown(nChar, nRepCnt, nFlags);

    int nSelectedItem = GetListCtrl( ).GetSelectionMark( );

    if ( nSelectedItem >= 0 && nSelectedItem < GetListCtrl( ).GetItemCount( ) )
    {
        const CMemoryBlock * pBlock = reinterpret_cast< CMemoryBlock * >( GetListCtrl( ).GetItemData( nSelectedItem ) );

        static_cast< CMemSectionFrame * >( GetParentFrame( ) )->GetSectionCellView( )->ShowMemoryLocationCursor( pBlock->GetBegAddress( ) );
        static_cast< CMemSectionFrame * >( GetParentFrame( ) )->GetBlockView( )->ShowMemoryBlockInfo( );
    }
}

void CMemSectionListView::OnSectionlistMemorycontent() 
{
    int nSelectedItem = GetListCtrl( ).GetSelectionMark( );
    if ( nSelectedItem != -1 )
    {
        const CMemoryBlock * pBlock = reinterpret_cast< CMemoryBlock * >( GetListCtrl( ).GetItemData( nSelectedItem ) );

        CMemContentFrame * pFrame = static_cast< CMemMonitorApp * >( ::AfxGetApp( ) )->GetMemSessionViewManagerPtr( )->LoadContentViewFrame( );
        
        pFrame->SetMemContent( GetMemorySectionPtr( )->GetMemorySpaceType( ), pBlock->GetBegAddress( ) );
        pFrame->GetMemContentView( )->RequestViewData( );
    }
}

void CMemSectionListView::OnUpdateSectionlistMemorycontent(CCmdUI* pCmdUI) 
{
    int nSelectedItem = GetListCtrl( ).GetSelectionMark( );
    if ( nSelectedItem != -1 )
    {
        pCmdUI->Enable( TRUE );
    }
    else
    {
        pCmdUI->Enable( FALSE );
    }
}

void CMemSectionListView::OnContextMenu(CWnd* pWnd, CPoint point) 
{
    CString strMenuName;
    strMenuName.LoadString( IDR_MENU_SECTION_LIST );
    
    CMenu mnuSubMenu;
    mnuSubMenu.Attach( GetWorkspace( )->GetContextMenuManager( )->GetMenuByName( strMenuName ) );

    HMENU hMenu = mnuSubMenu.GetSubMenu( 0 )->GetSafeHmenu( );
    ASSERT( hMenu );

    mnuSubMenu.Detach( );

    GetWorkspace( )->GetContextMenuManager( )->ShowPopupMenu( hMenu, point.x, point.y, this, TRUE, TRUE );
}

const CMemoryBlock * CMemSectionListView::GetSelectedMemoryBlock( ) const
{
    int nSelectedItem = GetListCtrl( ).GetSelectionMark( );
    if ( nSelectedItem != -1 )
    {
        const CMemoryBlock * pBlock = reinterpret_cast< CMemoryBlock * >( GetListCtrl( ).GetItemData( nSelectedItem ) );
        return pBlock;
    }
    return NULL;
}

void CMemSectionListView::OnCustomDraw( NMHDR * pNMHDR, LRESULT * pResult )
{
    //
    // disable colouring for list view for now
    //
    NMLVCUSTOMDRAW * pLVCD = reinterpret_cast< NMLVCUSTOMDRAW * >( pNMHDR );

    // Take the default processing unless we set this to something else below.
    * pResult = CDRF_DODEFAULT;

    if ( CDDS_PREPAINT == pLVCD->nmcd.dwDrawStage )
    {
        *pResult = CDRF_NOTIFYITEMDRAW;
    }
    else if ( CDDS_ITEMPREPAINT == pLVCD->nmcd.dwDrawStage )
    {
        // Prepaint stage for an item, set text color and return value will tell
        // windows to draw the item itself, but it will use the new color we set
        // here.
        const CMemoryBlock * pBlock = reinterpret_cast< CMemoryBlock * >( pLVCD->nmcd.lItemlParam );

        if ( pBlock == NULL )
        {
            pLVCD->clrText = RGB( 0, 0, 0 );
        }
        else
        {
            if ( pBlock->IsFreeBlock( ) )
            {
                pLVCD->clrText = RGB( 0, 0, 0 );
            }
            else
            {
                pLVCD->clrText = RGB( 0, 0, 255 );
            }
        }
        *pResult = CDRF_DODEFAULT;
    }

}

COLORREF CMemSectionListView::GetGroupIDColour( const CString & strGroupID ) const
{
    CMemMonitorApp * pApp = static_cast< CMemMonitorApp * >( ::AfxGetApp( ) );

    if ( pApp->GetMemSessionDataManagerPtr( ) == NULL || pApp->GetMemSessionDataManagerPtr( )->GetMemConfigurationPtr( ) == NULL )
    {
        return RGB( 128, 128, 128 );
    }
    else
    {
        return pApp->GetMemSessionDataManagerPtr( )->GetMemConfigurationPtr( )->GetMemColourByGroupID( strGroupID );
    }
}



void CMemSectionListView::OnSectionlistCopyaddress() 
{
    int nSelectedItem = GetListCtrl( ).GetSelectionMark( );

    if ( nSelectedItem >= 0 && nSelectedItem < GetListCtrl( ).GetItemCount( ) )
    {
        const CMemoryBlock * pBlock = reinterpret_cast< CMemoryBlock * >( GetListCtrl( ).GetItemData( nSelectedItem ) );
        ASSERT( pBlock != NULL );
        //
        // copy address to clip board
        //
        HANDLE hStrData = ::GlobalAlloc( GMEM_MOVEABLE, 11 );      // string length of 8 + 2 + 1
        LPSTR pStrData = (LPSTR) ::GlobalLock( hStrData );
        ::sprintf( pStrData, "0x%08x", pBlock->GetBegAddress( ) );
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
}

void CMemSectionListView::OnUpdateSectionlistCopyaddress(CCmdUI* pCmdUI) 
{
    //
    // only enable UI when a valid memory block is selected
    //
    int nSelectedItem = GetListCtrl( ).GetSelectionMark( );
    if ( nSelectedItem != -1 )
    {
        pCmdUI->Enable( TRUE );
    }
    else
    {
        pCmdUI->Enable( FALSE );
    }
}
