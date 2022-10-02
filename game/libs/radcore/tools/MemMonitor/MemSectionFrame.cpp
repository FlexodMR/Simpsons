//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


// MemSectionFrame.cpp : implementation of the CMemSectionFrame class
//

#include "stdafx.h"
#include "MemMonitor.h"

#include "MemSectionFrame.h"
#include "MemSectionCellView.h"
#include "MemSectionListView.h"
#include "MemBlockView.h"
#include "MemorySection.h"
#include "MemSectionCreateProgressDlg.h"
#include "MemSessionViewManager.h"
#include "MemSectionListViewPaddingDlg.h"

/////////////////////////////////////////////////////////////////////////////
// CMemSectionFrame

IMPLEMENT_DYNCREATE(CMemSectionFrame, CMDIChildWnd)

BEGIN_MESSAGE_MAP(CMemSectionFrame, CMDIChildWnd)
    //{{AFX_MSG_MAP(CMemSectionFrame)
    ON_WM_CREATE()
	ON_COMMAND(ID_CELLVIEW_FIT, OnCellviewFit)
	ON_UPDATE_COMMAND_UI(ID_CELLVIEW_FIT, OnUpdateCellviewFit)
	ON_COMMAND(ID_CELLVIEW_OPTION, OnCellviewOption)
	ON_UPDATE_COMMAND_UI(ID_CELLVIEW_OPTION, OnUpdateCellviewOption)
	ON_COMMAND(ID_CELLVIEW_ZOOM, OnCellviewZoom)
	ON_UPDATE_COMMAND_UI(ID_CELLVIEW_ZOOM, OnUpdateCellviewZoom)
	ON_WM_DESTROY()
	ON_COMMAND(ID_CELLVIEWPADDING_16BYTES, OnCellviewpadding16bytes)
	ON_UPDATE_COMMAND_UI(ID_CELLVIEWPADDING_16BYTES, OnUpdateCellviewpadding16bytes)
	ON_COMMAND(ID_CELLVIEWPADDING_32BYTES, OnCellviewpadding32bytes)
	ON_UPDATE_COMMAND_UI(ID_CELLVIEWPADDING_32BYTES, OnUpdateCellviewpadding32bytes)
	ON_COMMAND(ID_CELLVIEWPADDING_CUSTOM, OnCellviewpaddingCustom)
	ON_UPDATE_COMMAND_UI(ID_CELLVIEWPADDING_CUSTOM, OnUpdateCellviewpaddingCustom)
	ON_COMMAND(ID_CELLVIEWPADDING_0BYTES, OnCellviewpadding0bytes)
	ON_UPDATE_COMMAND_UI(ID_CELLVIEWPADDING_0BYTES, OnUpdateCellviewpadding0bytes)
	ON_COMMAND(ID_CELLVIEW_PADDING, OnCellviewPadding)
	ON_UPDATE_COMMAND_UI(ID_CELLVIEW_PADDING, OnUpdateCellviewPadding)
	ON_COMMAND(ID_CELLVIEWPADDING_128BYTES, OnCellviewpadding128bytes)
	ON_UPDATE_COMMAND_UI(ID_CELLVIEWPADDING_128BYTES, OnUpdateCellviewpadding128bytes)
	ON_COMMAND(ID_CELLVIEWPADDING_64BYTES, OnCellviewpadding64bytes)
	ON_UPDATE_COMMAND_UI(ID_CELLVIEWPADDING_64BYTES, OnUpdateCellviewpadding64bytes)
	//}}AFX_MSG_MAP
END_MESSAGE_MAP()

/////////////////////////////////////////////////////////////////////////////
// CMemSectionFrame construction/destruction

CMemSectionFrame::CMemSectionFrame() :
    m_pMemorySection( NULL ),
    m_hMenu( NULL ),
    m_hAccel( NULL )
{
}

CMemSectionFrame::~CMemSectionFrame()
{
    // another bad hack, because section frame is owned by CMemorySection class
    // when it is released, we must destory the actual window as well.
    if ( IsWindow(m_hWnd) )
    {
        MDIDestroy( );
    }
}

void CMemSectionFrame::Initialize( CMemorySection * pSection, CWnd * pParentWnd, CMemSessionViewManager * pViewManager )
{
    ASSERT( pSection != NULL );
    ASSERT( pParentWnd != NULL );
    ASSERT( pViewManager != NULL );

    m_pViewManager = pViewManager;
    m_pMemorySection = pSection;

    CString strTitle;
    strTitle = MMGetMemorySectionString( m_pMemorySection->GetSectionType( ) );
    if ( ! m_pMemorySection->GetMemorySectionName( ).IsEmpty( ) )
    {
        strTitle += " - ";
        strTitle += m_pMemorySection->GetMemorySectionName( );
    }
    SetTitle( strTitle );
    LoadFrame( IDR_MMDTYPE, WS_OVERLAPPEDWINDOW | FWS_ADDTOTITLE, NULL, NULL );
    
    m_hMenu = ::LoadMenu( ::AfxGetApp( )->m_hInstance, MAKEINTRESOURCE( IDR_MMDTYPE ) );
    m_hAccel = ::LoadAccelerators( ::AfxGetApp( )->m_hInstance, MAKEINTRESOURCE( IDR_MAINFRAME ) );

    SetHandles( m_hMenu, m_hAccel );

    LoadWndState( );

    BringWindowToTop( );
    SetFocus( );
    ShowWindow( SW_SHOW );
	UpdateWindow();
}

void CMemSectionFrame::Terminate( )
{
    //
    // destory window if it still exsited.
    //
    if ( IsWindow(m_hWnd) )
    {
        MDIDestroy( );
    }
}

int CMemSectionFrame::OnCreate(LPCREATESTRUCT lpCreateStruct) 
{
    if (CMDIChildWnd::OnCreate(lpCreateStruct) == -1)
        return -1;

    // Detect color depth. 256 color toolbars can be used in the
    // high or true color modes only (bits per pixel is > 8):
    CClientDC dc ( this );
    BOOL bIsHighColor = dc.GetDeviceCaps( BITSPIXEL ) > 8;

    UINT uiToolbarHotID = bIsHighColor ? IDB_TOOBAR_CELLVIEW256 : 0;
    UINT uiToolbarColdID = bIsHighColor ? IDB_TOOBAR_CELLVIEWCOLD256 : 0;

    if ( ! m_wndToolBar.CreateEx( this, TBSTYLE_FLAT, WS_CHILD | WS_VISIBLE | CBRS_TOP | CBRS_GRIPPER | CBRS_TOOLTIPS | CBRS_FLYBY | CBRS_SIZE_DYNAMIC ) ||
         ! m_wndToolBar.LoadToolBar( IDR_CELLVIEW, uiToolbarColdID, 0, FALSE, 0, 0, uiToolbarHotID ) )
    {
        TRACE0("Failed to create toolbar\n");
        return -1;      // fail to create
    }

    m_imgImageList.Create( IDB_TOOBAR_CELLVIEW256, 16, 0, RGB( 192, 192, 192 ) );

    m_wndToolBar.SetWindowText( "Section View" );

    CMenu menu;
    VERIFY( menu.LoadMenu( IDR_MENU_SECTION_CELLVIEW_PADDING ) );
    CMenu * pMenuPadding = menu.GetSubMenu( 0 );
    ASSERT( pMenuPadding != NULL );
    CBCGToolbarMenuButton btnPadding( ID_CELLVIEW_PADDING, pMenuPadding->GetSafeHmenu( ), CImageHash::GetImageOfCommand( ID_CELLVIEW_PADDING ) );
    m_wndToolBar.ReplaceButton( ID_CELLVIEW_PADDING, btnPadding );

    return 0;
}

BOOL CMemSectionFrame::OnCreateClient( LPCREATESTRUCT /*lpcs*/, CCreateContext* pContext)
{
    m_dlgProgress.Initialize( );

    if ( ! m_wndSplitter.CreateStatic( this, 2, 1 ) )
    {
        return FALSE;
    }

    if ( ! m_wndSplitter.CreateView( 0, 0, RUNTIME_CLASS( CMemSectionCellView ), CSize( 100, 100 ), pContext ) )
    {
        return FALSE;
    }

    if ( ! m_wndSplitterSub.CreateStatic( & m_wndSplitter, 1, 2, WS_CHILD | WS_VISIBLE, m_wndSplitter.IdFromRowCol( 1, 0 ) ) )
    {
        return FALSE;
    }

    if ( ! m_wndSplitterSub.CreateView( 0, 0, RUNTIME_CLASS( CMemSectionListView ), CSize( 450, 100 ), pContext ) )
    {
        return FALSE;
    }

    if ( ! m_wndSplitterSub.CreateView( 0, 1, RUNTIME_CLASS( CMemBlockView ), CSize( 50, 100 ), pContext ) )
    {
        return FALSE;
    }
    
    return TRUE;
}

BOOL CMemSectionFrame::PreCreateWindow(CREATESTRUCT& cs)
{
    if( !CMDIChildWnd::PreCreateWindow(cs) )
        return FALSE;

    return TRUE;
}

CMemSectionListView * CMemSectionFrame::GetSectionListView( )
{
    if ( m_wndSplitterSub.GetSafeHwnd( ) )
    {
        return reinterpret_cast< CMemSectionListView * >( m_wndSplitterSub.GetPane( 0, 0 ) );
    }
    else
    {
        return NULL;
    }
}

CMemSectionCellView * CMemSectionFrame::GetSectionCellView( )
{
    if ( m_wndSplitter.GetSafeHwnd( ) )
    {
        return reinterpret_cast< CMemSectionCellView * >( m_wndSplitter.GetPane( 0, 0 ) );
    }
    else
    {
        return NULL;
    }
}

CMemBlockView * CMemSectionFrame::GetBlockView( )
{
    if ( m_wndSplitterSub.GetSafeHwnd( ) )
    {
        return reinterpret_cast< CMemBlockView * >( m_wndSplitterSub.GetPane( 0, 1 ) );
    }
    else
    {
        return NULL;
    }
}

/////////////////////////////////////////////////////////////////////////////
// CMemSectionFrame diagnostics

#ifdef _DEBUG
void CMemSectionFrame::AssertValid() const
{
    CMDIChildWnd::AssertValid();
}

void CMemSectionFrame::Dump(CDumpContext& dc) const
{
    CMDIChildWnd::Dump(dc);
}

#endif //_DEBUG

/////////////////////////////////////////////////////////////////////////////
// CMemSectionFrame message handlers

void CMemSectionFrame::OnCellviewFit() 
{
    GetSectionCellView( )->ReSizeCellToFitWnd( );
}

void CMemSectionFrame::OnUpdateCellviewFit(CCmdUI* pCmdUI) 
{
    pCmdUI->Enable( );
    pCmdUI->SetCheck( GetSectionCellView( )->IsFitToWnd( ) );
}

void CMemSectionFrame::OnCellviewOption() 
{
    GetSectionCellView( )->ShowOptionDialog( );
}

void CMemSectionFrame::OnUpdateCellviewOption(CCmdUI* pCmdUI) 
{
    pCmdUI->Enable( );
}

void CMemSectionFrame::OnCellviewZoom() 
{
    if ( ! GetSectionCellView( )->IsZoomMode( ) )
    {
        GetSectionCellView( )->StartZoomMode( );
    }
    else
    {
        GetSectionCellView( )->StopZoomMode( );
    }
}

void CMemSectionFrame::OnUpdateCellviewZoom(CCmdUI* pCmdUI) 
{
    pCmdUI->Enable( );
    pCmdUI->SetCheck( GetSectionCellView( )->IsZoomMode( ) );
}

void CMemSectionFrame::LoadWndState( )
{
    ASSERT( m_pViewManager != NULL );

    CString strID; strID.Format( "%s %s", (LPCTSTR)MMGetMemorySectionString( m_pMemorySection->GetSectionType( ) ), (LPCTSTR)m_pMemorySection->GetMemorySectionName( ) );
    unsigned int uID = radMakeKey32( strID );

    CMemSectionListView * pListView = GetSectionListView( );
    CMemSectionCellView * pCellView = GetSectionCellView( );
    CMemBlockView * pBlockView = GetBlockView( );
    ASSERT( pListView && pCellView && pBlockView );

    CMemWndState * pFrameWndState = m_pViewManager->FindWindowState( GetRuntimeClass( ), uID );
    if ( pFrameWndState == NULL )
    {
        return;
    }

    ShowWindow( pFrameWndState->GetWndState( ) );

    if ( pFrameWndState->IsNormalized( ) )
    {
        MoveWindow( & pFrameWndState->GetWndRect( ) );
    }

    CMemWndState * pWndCellViewState = pFrameWndState->FindChildWndState( pCellView->GetRuntimeClass( ), uID );
    ASSERT( pWndCellViewState != NULL );
    m_wndSplitter.SetRowInfo( 0,  pWndCellViewState->GetWndRect( ).Height( ), 0 );
    m_wndSplitter.RecalcLayout( );

    CMemWndState * pWndListViewState = pFrameWndState->FindChildWndState( pListView->GetRuntimeClass( ), uID );
    ASSERT( pWndListViewState != NULL );
    m_wndSplitterSub.SetColumnInfo( 0, pWndListViewState->GetWndRect( ).Width( ), 0 );
    m_wndSplitterSub.RecalcLayout( );
}

void CMemSectionFrame::SaveWndState( )
{
    ASSERT( m_pViewManager != NULL );

    CString strID; strID.Format( "%s %s", (LPCTSTR)MMGetMemorySectionString( m_pMemorySection->GetSectionType( ) ), (LPCTSTR)m_pMemorySection->GetMemorySectionName( ) );
    unsigned int uID = radMakeKey32( strID );
    WINDOWPLACEMENT wndPL;
    CRect rcWndRect;
    CMemSectionListView * pListView = GetSectionListView( );
    CMemSectionCellView * pCellView = GetSectionCellView( );
    CMemBlockView * pBlockView = GetBlockView( );

    //
    // add window state for frame
    //
    GetWindowPlacement( & wndPL );
    GetWindowRect( & rcWndRect ); GetParent( )->ScreenToClient( & rcWndRect );
    m_pViewManager->AddWindowState( GetRuntimeClass( ), uID, wndPL.showCmd, rcWndRect );

    CMemWndState * pFrameWndState = m_pViewManager->FindWindowState( GetRuntimeClass( ), uID );
    ASSERT( pFrameWndState != NULL );

    //
    // add list view to frame state
    //
    CMemWndStatePtr pWndListViewState = static_cast< CMemWndState * >( RUNTIME_CLASS( CMemWndState )->CreateObject( ) );
    pListView->GetWindowPlacement( & wndPL );
    pListView->GetWindowRect( & rcWndRect ); pListView->GetParent( )->ScreenToClient( & rcWndRect );
    pWndListViewState->Initialize( pListView->GetRuntimeClass( ), uID, wndPL.showCmd, rcWndRect );
    pFrameWndState->AddChildWndState( pWndListViewState );

    //
    // add cell view to frame state
    //
    CMemWndStatePtr pWndCellViewState = static_cast< CMemWndState * >( RUNTIME_CLASS( CMemWndState )->CreateObject( ) );
    pCellView->GetWindowPlacement( & wndPL );
    pCellView->GetWindowRect( & rcWndRect ); pCellView->GetParent( )->ScreenToClient( & rcWndRect );
    pWndCellViewState->Initialize( pCellView->GetRuntimeClass( ), uID, wndPL.showCmd, rcWndRect );
    pFrameWndState->AddChildWndState( pWndCellViewState );

    //
    // add block view to frame state
    //
    CMemWndStatePtr pWndBlockViewState = static_cast< CMemWndState * >( RUNTIME_CLASS( CMemWndState )->CreateObject( ) );
    pBlockView->GetWindowPlacement( & wndPL );
    pBlockView->GetWindowRect( & rcWndRect ); pBlockView->GetParent( )->ScreenToClient( & rcWndRect );
    pWndBlockViewState->Initialize( pBlockView->GetRuntimeClass( ), uID, wndPL.showCmd, rcWndRect );
    pFrameWndState->AddChildWndState( pWndBlockViewState );
}

void CMemSectionFrame::OnDestroy() 
{
    SaveWndState( );

    if ( m_pMemorySection != NULL )
    {
        m_pMemorySection->SetBuildMemCellMap( false, 0 );
    }

    if ( m_hMenu )
    {
        DestroyMenu( m_hMenu );
        m_hMenu = NULL;
    }

    if ( m_hAccel )
    {
        DestroyAcceleratorTable( m_hAccel );
        m_hAccel = NULL;
    }

	CMDIChildWnd::OnDestroy();
}

void CMemSectionFrame::PostNcDestroy() 
{
    m_pViewManager->UnLoadSectionViewFrame( this );
}

void CMemSectionFrame::OnCellviewpadding0bytes() 
{
    GetSectionListView( )->SetEndAllocationPadding( 0 );
}

void CMemSectionFrame::OnUpdateCellviewpadding0bytes(CCmdUI* pCmdUI) 
{
    if ( GetSectionListView( )->GetEndAllocationPadding( ) == 0 )
    {
        pCmdUI->SetCheck( TRUE );
    }
    else
    {
        pCmdUI->SetCheck( FALSE );
    }

    pCmdUI->Enable( TRUE );
}

void CMemSectionFrame::OnCellviewpadding16bytes() 
{
    GetSectionListView( )->SetEndAllocationPadding( 16 );
}

void CMemSectionFrame::OnUpdateCellviewpadding16bytes(CCmdUI* pCmdUI) 
{
    if ( GetSectionListView( )->GetEndAllocationPadding( ) == 16 )
    {
        pCmdUI->SetCheck( TRUE );
    }
    else
    {
        pCmdUI->SetCheck( FALSE );
    }

    pCmdUI->Enable( TRUE );
}

void CMemSectionFrame::OnCellviewpadding32bytes() 
{
    GetSectionListView( )->SetEndAllocationPadding( 32 );
}

void CMemSectionFrame::OnUpdateCellviewpadding32bytes(CCmdUI* pCmdUI) 
{
    if ( GetSectionListView( )->GetEndAllocationPadding( ) == 32 )
    {
        pCmdUI->SetCheck( TRUE );
    }
    else
    {
        pCmdUI->SetCheck( FALSE );
    }

    pCmdUI->Enable( TRUE );
}

void CMemSectionFrame::OnCellviewpaddingCustom() 
{
    CMemSectionListViewPaddingDlg dlgPadding;

    dlgPadding.m_nPadding = GetSectionListView( )->GetEndAllocationPadding( );

    if ( dlgPadding.DoModal( ) == IDOK )
    {
        GetSectionListView( )->SetEndAllocationPadding( dlgPadding.m_nPadding );
    }
}

void CMemSectionFrame::OnUpdateCellviewpaddingCustom(CCmdUI* pCmdUI) 
{
    int nPadding = GetSectionListView( )->GetEndAllocationPadding( );
    if ( nPadding != 0 && nPadding != 16 && nPadding != 32 && nPadding != 64 && nPadding != 128 )
    {
        pCmdUI->SetCheck( TRUE );
    }
    else
    {
        pCmdUI->SetCheck( FALSE );
    }

    pCmdUI->Enable( TRUE );
}

void CMemSectionFrame::OnCellviewPadding() 
{
    OnCellviewpaddingCustom( );
}

void CMemSectionFrame::OnUpdateCellviewPadding(CCmdUI* pCmdUI) 
{
    pCmdUI->Enable( TRUE );
}

void CMemSectionFrame::OnCellviewpadding64bytes() 
{
    GetSectionListView( )->SetEndAllocationPadding( 64 );
}

void CMemSectionFrame::OnUpdateCellviewpadding64bytes(CCmdUI* pCmdUI) 
{
    if ( GetSectionListView( )->GetEndAllocationPadding( ) == 64 )
    {
        pCmdUI->SetCheck( TRUE );
    }
    else
    {
        pCmdUI->SetCheck( FALSE );
    }

    pCmdUI->Enable( TRUE );
}

void CMemSectionFrame::OnCellviewpadding128bytes() 
{
    GetSectionListView( )->SetEndAllocationPadding( 128 );
}

void CMemSectionFrame::OnUpdateCellviewpadding128bytes(CCmdUI* pCmdUI) 
{
    if ( GetSectionListView( )->GetEndAllocationPadding( ) == 128 )
    {
        pCmdUI->SetCheck( TRUE );
    }
    else
    {
        pCmdUI->SetCheck( FALSE );
    }

    pCmdUI->Enable( TRUE );
}
