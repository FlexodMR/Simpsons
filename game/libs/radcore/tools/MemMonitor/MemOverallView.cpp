//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


// MemOverallView.cpp : implementation file
//

#include "stdafx.h"
#include "MemMonitor.h"
#include "MemOverallView.h"
#include "MainFrm.h"

#include "MemHexView.h"
#include "MemoryImage.h"
#include "MemorySpace.h"
#include "MemorySection.h"

/////////////////////////////////////////////////////////////////////////////
// CMemOverallView

IMPLEMENT_DYNCREATE(CMemOverallView, CTreeView)

BEGIN_MESSAGE_MAP(CMemOverallView, CTreeView)
	//{{AFX_MSG_MAP(CMemOverallView)
	ON_WM_DESTROY()
	ON_NOTIFY_REFLECT(TVN_GETDISPINFO, OnGetdispinfo)
	ON_NOTIFY_REFLECT(NM_RCLICK, OnRclick)
	ON_COMMAND(ID_SECTIONSUMMARY_VIEWSECTIONDETAIL, OnSectionsummaryViewsectiondetail)
	ON_UPDATE_COMMAND_UI(ID_SECTIONSUMMARY_VIEWSECTIONDETAIL, OnUpdateSectionsummaryViewsectiondetail)
	ON_COMMAND(ID_SECTIONSUMMARY_VIEWSECTIONMEMORY, OnSectionsummaryViewsectionmemory)
	ON_UPDATE_COMMAND_UI(ID_SECTIONSUMMARY_VIEWSECTIONMEMORY, OnUpdateSectionsummaryViewsectionmemory)
	ON_WM_LBUTTONDBLCLK()
	ON_COMMAND(ID_SECTIONSUMMARY_EXPORTDATA, OnSectionsummaryExportdata)
	ON_UPDATE_COMMAND_UI(ID_SECTIONSUMMARY_EXPORTDATA, OnUpdateSectionsummaryExportdata)
	ON_NOTIFY_REFLECT(NM_CLICK, OnClick)
	//}}AFX_MSG_MAP
    ON_NOTIFY_REFLECT(TVN_SELCHANGED, OnTvnSelchanged)
END_MESSAGE_MAP()

CMemOverallView::CMemOverallView( ) :
    m_pMemoryImage( NULL ),
    m_pLastSelectedItem( NULL )
{
}

CMemOverallView::~CMemOverallView()
{
}

void CMemOverallView::ClearView( )
{
    CTreeCtrl & ctlTree = GetTreeCtrl( );
    ctlTree.DeleteAllItems( );
}

bool CMemOverallView::Initialize( const CMemoryImage * pImage, CWnd * pParentWnd )
{
    if ( pImage == NULL || pParentWnd == NULL )
    {
        ASSERT( false );
        return false;
    }

    m_pMemoryImage = pImage;

    CRect rectDummy; rectDummy.SetRectEmpty( );
    if ( ! Create( NULL, "Overall View", WS_CHILD | WS_VISIBLE, rectDummy, pParentWnd, 0, NULL ) )
    {
        return false;
    }

    ShowWindow( SW_SHOW );

    CTreeCtrl & ctlTree = GetTreeCtrl( );

    //
    // set style and extended style
    //
	ctlTree.ModifyStyle( TVS_EDITLABELS | TVS_LINESATROOT, TVS_HASLINES | TVS_HASBUTTONS | TVS_SHOWSELALWAYS | TVS_DISABLEDRAGDROP );

    if ( ! m_imgSectionImageList.Create( IDB_WORKSPACE, 16, 0, RGB( 255, 0, 255 ) ) )
    {
        AfxTrace( "Unable to create ImageList.\n" );
        return false;
    }
    ctlTree.SetImageList( & m_imgSectionImageList, TVSIL_NORMAL );

    return true;
}

void CMemOverallView::Terminate( )
{
    VERIFY( DestroyWindow( ) );
    m_pMemoryImage = NULL;
}

/////////////////////////////////////////////////////////////////////////////
// CMemOverallView drawing

void CMemOverallView::OnDraw(CDC* pDC)
{
	CDocument* pDoc = GetDocument();
	// TODO: add draw code here
}

/////////////////////////////////////////////////////////////////////////////
// CMemOverallView diagnostics

#ifdef _DEBUG
void CMemOverallView::AssertValid() const
{
	CTreeView::AssertValid();
    ASSERT( m_pMemoryImage != NULL );
}

void CMemOverallView::Dump(CDumpContext& dc) const
{
	CTreeView::Dump(dc);
}
#endif //_DEBUG

/////////////////////////////////////////////////////////////////////////////
// CMemOverallView message handlers

void CMemOverallView::OnUpdate(CView* pSender, LPARAM lHint, CObject* pHint) 
{
    //
    // Sync CMemoryImage list with the current tree view
    //

    DeleteItemNotExisted( );
    InsertItemNewlyAdded( );

    Invalidate( );

}

void CMemOverallView::OnDestroy() 
{
	CTreeView::OnDestroy();
    Notify( SSC_MEM_VIEW_OVERALLVIEW_DESTROY, 0, this );
}

void CMemOverallView::OnGetdispinfo(NMHDR* pNMHDR, LRESULT* pResult) 
{
	NMTVDISPINFO* pTVDispInfo = (NMTVDISPINFO*)pNMHDR;

    if ( pTVDispInfo->item.mask & ( TVIF_TEXT | TVIF_IMAGE ) )
    {
        const CGUIItem * pItem = reinterpret_cast< CGUIItem * >( pTVDispInfo->item.lParam );
        if ( IsPointerToAnyMemoryImageOrSpaceOrSection( pItem ) )
        {
            if ( pTVDispInfo->item.mask & TVIF_TEXT )
            {
                const CString & strText = pItem->GetItemDisplayText( );
                pTVDispInfo->item.pszText = const_cast< TCHAR* >( (const TCHAR*)( strText ) );
            }
        }
    }

	*pResult = 0;
}

void CMemOverallView::OnInitialUpdate() 
{
	CTreeView::OnInitialUpdate();
}

void CMemOverallView::DeleteChildItemNotExisted( HTREEITEM hRootNode )
{
    //
    // nothing to delete
    //
    if ( hRootNode == NULL )
    {
        return;
    }

    CTreeCtrl & ctlTree = GetTreeCtrl( );
    //
    // go through each child node and check existence
    //
    HTREEITEM hChild = ctlTree.GetChildItem( hRootNode );

    if ( hChild == NULL )
    {
        return;
    }

    CMemorySection * pParentSection = reinterpret_cast< CMemorySection * >( ctlTree.GetItemData( hRootNode ) );
    ASSERT( pParentSection != NULL );

    while ( hChild != NULL )
    {
        CMemorySection * pStoredSection = reinterpret_cast< CMemorySection * >( ctlTree.GetItemData( hChild ) );
        ASSERT( pStoredSection != NULL );
        if ( ! IsMemorySectionInSection( pParentSection, pStoredSection ) )
        {
            ctlTree.SetItemData( hChild, 0 );
        }
        else
        {
            //
            // recusive delete
            //
            DeleteChildItemNotExisted( hChild );
        }
        hChild = ctlTree.GetNextSiblingItem( hChild );
    }

    //
    // delete item marked with 0
    //
    hChild = ctlTree.GetChildItem( hRootNode );

    while ( hChild != NULL )
    {
        if ( ctlTree.GetItemData( hChild ) == 0 )
        {
            ctlTree.DeleteItem( hChild );
            //
            // once an item is delete, start from beginning again ( we don't know how list item is implemented )
            //
            hChild = ctlTree.GetChildItem( hRootNode );
        }
        else
        {
            hChild = ctlTree.GetNextSiblingItem( hChild );
        }
    }
}

//
// only delete items that is not in the memory image
//
void CMemOverallView::DeleteItemNotExisted( )
{
    CTreeCtrl & ctlTree = GetTreeCtrl( );

    HTREEITEM hRootNode = ctlTree.GetRootItem( );

    //
    // nothing to delete
    //
    if ( hRootNode == NULL )
    {
        return;
    }
    else
    {
        CMemoryImage * pImage = reinterpret_cast< CMemoryImage * >( ctlTree.GetItemData( hRootNode ) );

        CMemMonitorApp * pApp = static_cast< CMemMonitorApp * >( ::AfxGetApp( ) );

        if ( pImage != pApp->GetMemSessionDataManagerPtr( )->GetConcurrentMemoryImagePtr( ) )
        {
            ctlTree.DeleteAllItems( );
        }
        else
        {
            HTREEITEM hChild = ctlTree.GetChildItem( hRootNode );
            while ( hChild != NULL )
            {
                DeleteChildItemNotExisted( hChild );
                hChild = ctlTree.GetNextSiblingItem( hChild );
            }
        }
    }
}

void CMemOverallView::InsertChildItemNewlyAdded( HTREEITEM hRootNode )
{
    //
    // hRootNode must be a valid section to start with
    //
    ASSERT( hRootNode != NULL );
    CTreeCtrl & ctlTree = GetTreeCtrl( );

    CMemorySection * pSection = reinterpret_cast< CMemorySection * >( ctlTree.GetItemData( hRootNode ) );
    ASSERT( pSection != NULL );

    bool bEOF = ! pSection->MoveMemorySectionFirst( );

    //
    // insert only immediate level of child node
    //
    while( ! bEOF )
    {
        const CMemorySection * pChildSection = pSection->GetCurrentMemorySection( );
        if ( ! IsMemorySectionInTreeCtrl( pChildSection, hRootNode ) )
        {
            InsertMemorySectionNode( pChildSection, hRootNode );
        }

        bEOF = ! pSection->MoveMemorySectionNext( );
    }

    HTREEITEM hChildNode = ctlTree.GetChildItem( hRootNode );

    //
    // insert next level of child node
    //
    while ( hChildNode != NULL )
    {
        InsertChildItemNewlyAdded( hChildNode );
        hChildNode = ctlTree.GetNextSiblingItem( hChildNode );
    }
    ctlTree.Expand( hRootNode, TVE_EXPAND );
}

//
// only add items that is not in the tree view
//
void CMemOverallView::InsertItemNewlyAdded( )
{
    CTreeCtrl & ctlTree = GetTreeCtrl( );

    HTREEITEM hImageNode = ctlTree.GetRootItem( );
    HTREEITEM hSpaceNode = NULL;
    HTREEITEM hSectionNode = NULL;

    if ( hImageNode == NULL )
    {
        hImageNode = InsertMemoryImageNode( m_pMemoryImage, TVI_ROOT );
    }

    ASSERT( hImageNode != NULL );
    if ( hImageNode == NULL )
    {
        return;
    }

    //
    // add new memoryspace into the tree view
    //
    bool bMemSpaceEOF = ! m_pMemoryImage->MoveMemorySpaceFirst( );
    while ( ! bMemSpaceEOF )
    {
        const CMemorySpace * pAcutalMemorySpace = m_pMemoryImage->GetCurrentMemorySpace( );
        if ( ! IsMemorySpaceInTreeCtrl( pAcutalMemorySpace, hImageNode ) )
        {
            hSpaceNode = InsertMemorySectionNode( pAcutalMemorySpace, hImageNode );
            ASSERT( hSpaceNode != NULL );
        }

        bMemSpaceEOF = ! m_pMemoryImage->MoveMemorySpaceNext( );
    }

    ctlTree.Expand( hImageNode, TVE_EXPAND );
    //
    // add each memory section into the tree view
    //
    hSpaceNode = ctlTree.GetChildItem( hImageNode );
    while ( hSpaceNode != NULL )
    {
        const CMemorySection * pStoredMemorySection = reinterpret_cast< const CMemorySection * >( ctlTree.GetItemData( hSpaceNode ) );

        InsertChildItemNewlyAdded( hSpaceNode );

        hSpaceNode = ctlTree.GetNextSiblingItem( hSpaceNode );
    }
}

bool CMemOverallView::IsMemorySpaceInImage( const CMemoryImage * pImage, const CMemorySpace * pSpace )
{
    ASSERT( pImage != NULL );

    if ( pImage == NULL || pSpace == NULL )
    {
        return false;
    }

    bool bEOF = ! pImage->MoveMemorySpaceFirst( );

    while ( ! bEOF )
    {
        if ( pImage->GetCurrentMemorySpace( ) == pSpace )
        {
            return true;
        }
        bEOF = ! pImage->MoveMemorySpaceNext( );
    }
    return false;
}

bool CMemOverallView::IsMemorySectionInSection( const CMemorySection * pParentSection, const CMemorySection * pChildSection )
{
    ASSERT( pParentSection != NULL );

    if ( pParentSection == NULL || pChildSection == NULL )
    {
        return false;
    }

    bool bEOF = ! pParentSection->MoveMemorySectionFirst( );

    while ( ! bEOF )
    {
        const CMemorySection * pNextChildSection = pParentSection->GetCurrentMemorySection( );

        if ( pNextChildSection == pChildSection )
        {
            return true;
        }
        else
        {
            if ( IsMemorySectionInSection( pNextChildSection, pChildSection ) )
            {
                return true;
            }

        }
        bEOF = ! pParentSection->MoveMemorySectionNext( );
    }
    return false;
}

bool CMemOverallView::IsMemorySpaceInTreeCtrl( const CMemorySpace * pSpace, HTREEITEM hImageNode )
{
    ASSERT ( pSpace != NULL && hImageNode != NULL );
    if ( pSpace == NULL || hImageNode == NULL )
    {
        return false;
    }

    CTreeCtrl & ctlTree = GetTreeCtrl( );

    HTREEITEM hSpace = ctlTree.GetChildItem( hImageNode );

    while ( hSpace != NULL )
    {
        if ( ctlTree.GetItemData( hSpace ) == reinterpret_cast< DWORD >( pSpace ) )
        {
            return true;
        }
        hSpace = ctlTree.GetNextSiblingItem( hSpace );
    }

    return false;
}

bool CMemOverallView::IsMemorySectionInTreeCtrl( const CMemorySection * pSection, HTREEITEM hSectionNode )
{
    ASSERT ( pSection != NULL && hSectionNode != NULL );
    if ( pSection == NULL || hSectionNode == NULL )
    {
        return false;
    }

    CTreeCtrl & ctlTree = GetTreeCtrl( );

    HTREEITEM hChildSection = ctlTree.GetChildItem( hSectionNode );

    while ( hChildSection != NULL )
    {
        if ( ctlTree.GetItemData( hChildSection ) == reinterpret_cast< DWORD >( pSection ) )
        {
            return true;
        }
        hChildSection = ctlTree.GetNextSiblingItem( hChildSection );
    }

    return false;
}

HTREEITEM CMemOverallView::InsertMemoryImageNode( const CMemoryImage * pImage, HTREEITEM hParentNode )
{
    ASSERT( hParentNode != NULL );

    CTreeCtrl & ctlTree = GetTreeCtrl( );
    
    TVINSERTSTRUCT tvi;
    ::ZeroMemory( & tvi, sizeof( tvi ) );

    tvi.hParent = hParentNode;
    tvi.hInsertAfter = TVI_SORT;
    tvi.itemex.mask = TVIF_PARAM | TVIF_TEXT | TVIF_IMAGE | TVIF_SELECTEDIMAGE;
    tvi.itemex.lParam = reinterpret_cast< LPARAM >( pImage );
    tvi.itemex.pszText = LPSTR_TEXTCALLBACK;
    tvi.itemex.cchTextMax = 255;
    tvi.itemex.iImage = 3;
    tvi.itemex.iSelectedImage = 3;

    return ctlTree.InsertItem( & tvi );
}

HTREEITEM CMemOverallView::InsertMemorySectionNode( const CMemorySection * pSection, HTREEITEM hParentNode )
{
    ASSERT( hParentNode != NULL );

    CTreeCtrl & ctlTree = GetTreeCtrl( );
    
    TVINSERTSTRUCT tvi;
    ::ZeroMemory( & tvi, sizeof( tvi ) );

    unsigned int uImage = SectionTextIcon;

    if ( pSection->GetSectionType( ) == IRadMemoryMonitor::MemorySectionType_Code )
    {
        uImage = SectionTextIcon;
    }
    else if ( pSection->GetSectionType( ) == IRadMemoryMonitor::MemorySectionType_StaticData )
    {
        uImage = SectionTextIcon;
    }
    else if ( pSection->GetSectionType( ) == IRadMemoryMonitor::MemorySectionType_DynamicData )
    {
        uImage = SectionHeapIcon;
    }
    else if ( pSection->GetSectionType( ) == IRadMemoryMonitor::MemorySectionType_Stack )
    {
        uImage = SectionOtherIcon;
    }


    tvi.hParent = hParentNode;
    tvi.hInsertAfter = TVI_SORT;
    tvi.itemex.mask = TVIF_PARAM | TVIF_TEXT | TVIF_IMAGE | TVIF_SELECTEDIMAGE;
    tvi.itemex.lParam = reinterpret_cast< LPARAM >( pSection );
    tvi.itemex.pszText = LPSTR_TEXTCALLBACK;
    tvi.itemex.cchTextMax = 255;
    tvi.itemex.iImage =  uImage;
    tvi.itemex.iSelectedImage = uImage;

    return ctlTree.InsertItem( & tvi );
}

bool CMemOverallView::IsPointerToAnyMemoryImageOrSpaceOrSection( const void * pItem )
{
    ASSERT( m_pMemoryImage != NULL );

    if ( m_pMemoryImage == NULL )
    {
        return false;
    }

    if ( m_pMemoryImage == pItem )
    {
        return true;
    }

    if ( IsMemorySpaceInImage( m_pMemoryImage, reinterpret_cast<const CMemorySpace * >( pItem ) ) )
    {
        return true;
    }

    bool bEOF = ! m_pMemoryImage->MoveMemorySpaceFirst( );

    while ( ! bEOF )
    {
        const CMemorySpace * pSpace = m_pMemoryImage->GetCurrentMemorySpace( );

        if ( pSpace != NULL )
        {
            if ( IsMemorySectionInSection( pSpace, reinterpret_cast<const CMemorySection * >( pItem ) ) )
            {
                return true;
            }
        }
        bEOF = ! m_pMemoryImage->MoveMemorySpaceNext( );
    }
    return false;
}

void CMemOverallView::OnClick(NMHDR* pNMHDR, LRESULT* pResult) 
{
    CPoint ptClick( ::GetMessagePos( ) );
    CPoint ptClickOffset( ptClick );
    CTreeCtrl & ctlTree = GetTreeCtrl( );
    ctlTree.ScreenToClient( & ptClickOffset );
    HTREEITEM hItem = ctlTree.HitTest( ptClickOffset );

    if ( hItem != NULL )
    {
        m_pLastSelectedItem = reinterpret_cast< CGUIItem * >( ctlTree.GetItemData( hItem ) );
    }
    else
    {
        m_pLastSelectedItem = NULL;
    }
    *pResult = 0;
}

void CMemOverallView::OnRclick(NMHDR* pNMHDR, LRESULT* pResult) 
{
    CPoint ptClick( ::GetMessagePos( ) );
    CPoint ptClickOffset( ptClick );
    CTreeCtrl & ctlTree = GetTreeCtrl( );
    ctlTree.ScreenToClient( & ptClickOffset );
    HTREEITEM hItem = ctlTree.HitTest( ptClickOffset );

    if ( hItem != NULL )
    {
        CGUIItem * pItem = reinterpret_cast< CGUIItem * >( ctlTree.GetItemData( hItem ) );
        if ( dynamic_cast< CMemorySection * >( pItem ) )
        {
            CString strMenuName;
            strMenuName.LoadString( IDR_MENU_SECTION_SUMMARY );

            CMenu mnuSubMenu;
            mnuSubMenu.Attach( GetWorkspace( )->GetContextMenuManager( )->GetMenuByName( strMenuName ) );

            HMENU hMenu = mnuSubMenu.GetSubMenu( 0 )->GetSafeHmenu( );
            ASSERT( hMenu );

            mnuSubMenu.Detach( );

            GetWorkspace( )->GetContextMenuManager( )->ShowPopupMenu( hMenu, ptClick.x, ptClick.y, this, TRUE, TRUE );
        }
        m_pLastSelectedItem = pItem;
    }
    else
    {
        m_pLastSelectedItem = NULL;
    }

	*pResult = 0;
}

void CMemOverallView::OnSectionsummaryViewsectiondetail() 
{
    if ( dynamic_cast< CMemorySection * >( m_pLastSelectedItem ) )
    {
        CMemorySection * pMemorySection = static_cast< CMemorySection* >( m_pLastSelectedItem );
        CMemMonitorApp * pApp = static_cast< CMemMonitorApp * >( ::AfxGetApp( ) );
        if ( pApp->GetMemSessionViewManagerPtr( )->GetMemSectionFramePtr( pMemorySection ) == NULL )
        {
            pApp->GetMemSessionViewManagerPtr( )->LoadSectionViewFrame( pMemorySection );
        }
        else
        {
            pApp->GetMemSessionViewManagerPtr( )->GetMemSectionFramePtr( pMemorySection )->BringWindowToTop( );
        }
    }
}

void CMemOverallView::OnUpdateSectionsummaryViewsectiondetail(CCmdUI* pCmdUI) 
{
    pCmdUI->Enable( TRUE );
}

void CMemOverallView::OnSectionsummaryViewsectionmemory() 
{
    if ( dynamic_cast< CMemorySection * >( m_pLastSelectedItem ) )
    {
        CMemorySection * pMemorySection = static_cast< CMemorySection* >( m_pLastSelectedItem );
        CMemContentFrame * pFrame = static_cast< CMemMonitorApp * >( ::AfxGetApp( ) )->GetMemSessionViewManagerPtr( )->LoadContentViewFrame( );

        pFrame->SetMemContent( pMemorySection->GetMemorySpaceType( ), pMemorySection->GetBegAddress( ) );
        pFrame->GetMemContentView( )->RequestViewData( );
    }
}

void CMemOverallView::OnUpdateSectionsummaryViewsectionmemory(CCmdUI* pCmdUI) 
{
    pCmdUI->Enable( TRUE );
}

void CMemOverallView::OnLButtonDblClk(UINT nFlags, CPoint point) 
{
    CPoint ptClick( ::GetMessagePos( ) );
    CPoint ptClickOffset( ptClick );
    CTreeCtrl & ctlTree = GetTreeCtrl( );
    ctlTree.ScreenToClient( & ptClickOffset );
    HTREEITEM hItem = ctlTree.HitTest( ptClickOffset );

    if ( hItem != NULL )
    {
        CGUIItem * pItem = reinterpret_cast< CGUIItem * >( ctlTree.GetItemData( hItem ) );
        m_pLastSelectedItem = pItem;
    }
    else
    {
        m_pLastSelectedItem = NULL;
    }

    OnSectionsummaryViewsectiondetail( );
	CTreeView::OnLButtonDblClk(nFlags, point);
}

void ExportSectionData( CMemorySection * pMemorySection )
{
    ASSERT( pMemorySection != NULL );
    //
    // ask for text file name first
    //
    CBCGFileDialog dlgTextFile( TRUE, "Export As...", FALSE, "txt", NULL, OFN_HIDEREADONLY | OFN_OVERWRITEPROMPT, "Text Files (*.txt)|*.txt|All Files (*.*)|*.*||" );
    CString strFileName;

    if ( dlgTextFile.DoModal( ) == IDOK )
    {
        if( dlgTextFile.GetPage( ) == CBCGFileDialog::BCGFileOpen )
        {
            strFileName = dlgTextFile.GetPathName( );
        }
        else if( dlgTextFile.GetPage( ) == CBCGFileDialog::BCGFileRecent )
        {
            strFileName = dlgTextFile.GetRecentFilePath( );
        }
    }

    if ( strFileName.IsEmpty( ) )
    {
        return;
    }

    char szText[ 1024 ];

    try
    {
        CFile fExportFile( strFileName, CFile::modeReadWrite | CFile::shareExclusive | CFile::modeCreate );

        //
        // write header
        //
        strcpy( szText, "Address\tSize\tGroup ID\tName\tAlloc ID\tReference Count\tFree\r\n" );
        fExportFile.Write( szText, strlen( szText ) );

        //
        // write each entry
        //
        bool bEOF = ! pMemorySection->MoveMemoryBlockFirst( );

        const char szFree[ ] = "Free";
        const char szNoName[ ] = "(__unnamed__)";

        const char * pGroupID = NULL;
        const char * pObjectName = NULL;
        const char * pFlagName = NULL;

        unsigned int uAllocID = 0;
        unsigned int uRefCount = 0;
        while ( ! bEOF )
        {
            const CMemoryBlock * pBlock = pMemorySection->GetCurrentMemoryBlock( );
            bEOF = ! pMemorySection->MoveMemoryBlockNext( );

            if ( pBlock->IsFreeBlock( ) )
            {
                pGroupID = szFree;
                pObjectName = szFree;
                uAllocID = 0;
                pFlagName = szFree;
                uRefCount = 0;
            }
            else
            {
                pGroupID = pBlock->GetGroupID( ).IsEmpty( ) ? szNoName : (LPCTSTR)pBlock->GetGroupID( );
                pObjectName = pBlock->GetObjectName( ).IsEmpty( ) ? szNoName : (LPCTSTR)pBlock->GetObjectName( );
                uAllocID = pBlock->GetAllocationID( );
                pFlagName = pBlock->GetMemoryFlag()->GetFlagName();
                uRefCount = pBlock->GetClientObjectRefCount( );
            }

            sprintf( szText, "%u\t%u\t%s\t%s\t%u\t%s\t%u\t%d\r\n",
                             pBlock->GetBegAddress( ),
                             pBlock->GetTotalSize( ),
                             pGroupID,
                             pObjectName,
                             uAllocID,
                             pFlagName,
                             uRefCount,
                             pBlock->IsFreeBlock( ) ? 1 : 0 );
            fExportFile.Write( szText, strlen( szText ) );
        }
        fExportFile.Flush( );
    }
    catch( ... )
    {
        AfxMessageBox( "Failed to export file." );
    }
}

void CMemOverallView::OnSectionsummaryExportdata() 
{
    if ( dynamic_cast< CMemorySection * >( m_pLastSelectedItem ) )
    {
        CMemorySection * pMemorySection = static_cast< CMemorySection* >( m_pLastSelectedItem );

        ExportSectionData( pMemorySection );
    }
}

void CMemOverallView::OnUpdateSectionsummaryExportdata(CCmdUI* pCmdUI) 
{
    pCmdUI->Enable( TRUE );
}


void CMemOverallView::OnTvnSelchanged(NMHDR *pNMHDR, LRESULT *pResult)
{
    LPNMTREEVIEW pNMTreeView = reinterpret_cast<LPNMTREEVIEW>(pNMHDR);

    if ( pNMTreeView->itemNew.hItem != NULL )
    {
        CTreeCtrl & ctlTree = GetTreeCtrl( );
        CGUIItem * pItem = reinterpret_cast< CGUIItem * >( ctlTree.GetItemData( pNMTreeView->itemNew.hItem ) );
        if ( dynamic_cast< CMemorySection * >( pItem ) )
        {
            CMainFrame * pFrame = static_cast< CMainFrame * >( ::AfxGetMainWnd( ) );
            ASSERT( pFrame );
            pFrame->GetPropertyBar( )->GetPropertyView( )->SetCurrGUIItem( pItem );
        }
        m_pLastSelectedItem = pItem;
    }
    else
    {
        m_pLastSelectedItem = NULL;
    }

    *pResult = 0;
}
