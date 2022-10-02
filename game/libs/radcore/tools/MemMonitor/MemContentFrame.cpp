//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


// MemContentFrame.cpp : implementation file
//

#include "stdafx.h"
#include "memmonitor.h"
#include "MemContentFrame.h"
#include "MemHexView.h"
#include "MemSessionViewManager.h"
#include "MemHexAddrComboBox.h"

/////////////////////////////////////////////////////////////////////////////
// CMemContentFrame

IMPLEMENT_DYNCREATE(CMemContentFrame, CMDIChildWnd)

BEGIN_MESSAGE_MAP(CMemContentFrame, CMDIChildWnd)
	//{{AFX_MSG_MAP(CMemContentFrame)
	ON_WM_CREATE()
	ON_WM_DESTROY()
	ON_COMMAND(ID_DATAWIDTH_BYTE, OnDatawidthByte)
	ON_UPDATE_COMMAND_UI(ID_DATAWIDTH_BYTE, OnUpdateDatawidthByte)
	ON_COMMAND(ID_DATAWIDTH_DWORD, OnDatawidthDword)
	ON_UPDATE_COMMAND_UI(ID_DATAWIDTH_DWORD, OnUpdateDatawidthDword)
	ON_COMMAND(ID_DATAWIDTH_WORD, OnDatawidthWord)
	ON_UPDATE_COMMAND_UI(ID_DATAWIDTH_WORD, OnUpdateDatawidthWord)
	ON_COMMAND(ID_HEXEDIT_ADDRESS, OnHexeditAddress)
	ON_UPDATE_COMMAND_UI(ID_HEXEDIT_ADDRESS, OnUpdateHexeditAddress)
	ON_COMMAND(ID_HEXEDIT_RELOAD, OnHexeditReload)
	ON_UPDATE_COMMAND_UI(ID_HEXEDIT_RELOAD, OnUpdateHexeditReload)
	ON_COMMAND(ID_RELOADTIME_1SEC, OnReloadtime1sec)
	ON_UPDATE_COMMAND_UI(ID_RELOADTIME_1SEC, OnUpdateReloadtime1sec)
	ON_COMMAND(ID_RELOADTIME_2SEC, OnReloadtime2sec)
	ON_UPDATE_COMMAND_UI(ID_RELOADTIME_2SEC, OnUpdateReloadtime2sec)
	ON_COMMAND(ID_RELOADTIME_5SEC, OnReloadtime5sec)
	ON_UPDATE_COMMAND_UI(ID_RELOADTIME_5SEC, OnUpdateReloadtime5sec)
	ON_COMMAND(ID_RELOADTIME_10SEC, OnReloadtime10sec)
	ON_UPDATE_COMMAND_UI(ID_RELOADTIME_10SEC, OnUpdateReloadtime10sec)
	ON_COMMAND(ID_RELOADTIME_15SEC, OnReloadtime15sec)
	ON_UPDATE_COMMAND_UI(ID_RELOADTIME_15SEC, OnUpdateReloadtime15sec)
	ON_COMMAND(ID_RELOADTIME_20SEC, OnReloadtime20sec)
	ON_UPDATE_COMMAND_UI(ID_RELOADTIME_20SEC, OnUpdateReloadtime20sec)
	ON_COMMAND(ID_RELOADTIME_NONE, OnReloadtimeNone)
	ON_UPDATE_COMMAND_UI(ID_RELOADTIME_NONE, OnUpdateReloadtimeNone)
	ON_WM_TIMER()
	ON_COMMAND(ID_HEXEDIT_ALIGNMENT, OnHexeditAlignment)
	ON_UPDATE_COMMAND_UI(ID_HEXEDIT_ALIGNMENT, OnUpdateHexeditAlignment)
	//}}AFX_MSG_MAP
END_MESSAGE_MAP()

CMemContentFrame::CMemContentFrame() :
    m_pView( NULL ),
    m_pViewManager( NULL ),
    m_uReloadTimerID( 0 ),
    m_uReloadTiming( 0 )
{
}

CMemContentFrame::~CMemContentFrame()
{
    //
    // in case of exception, delete the windows if not already
    //
    if ( GetSafeHwnd( ) != NULL )
    {
        MDIDestroy( );
    }
}

CMemHexView * CMemContentFrame::GetMemContentView( )
{
    return m_pView;
}

void CMemContentFrame::Initialize( CWnd * pParentWnd, CMemSessionViewManager * pViewManager )
{
    ASSERT( pParentWnd != NULL );
    ASSERT( pViewManager != NULL );

    SetTitle( "MemData" );
    LoadFrame( IDR_MMCONTENT, WS_OVERLAPPEDWINDOW | FWS_ADDTOTITLE, NULL, NULL );

    m_hMenu = ::LoadMenu( ::AfxGetApp( )->m_hInstance, MAKEINTRESOURCE( IDR_MMDTYPE ) );
    m_hAccel = ::LoadAccelerators( ::AfxGetApp( )->m_hInstance, MAKEINTRESOURCE( IDR_MAINFRAME ) );

    SetHandles( m_hMenu, m_hAccel );
    BringWindowToTop( );
    SetFocus( );
    ShowWindow( SW_SHOW );
    UpdateWindow();

    m_pViewManager = pViewManager;
}

void CMemContentFrame::Terminate( )
{
    if ( GetSafeHwnd( ) != NULL )
    {
        MDIDestroy( );
    }
}

void CMemContentFrame::SetMemContent( MM_ClientMemorySpace eMemSpace, unsigned int uAddress )
{
    CMemorySpace * pSpace = static_cast< CMemMonitorApp * >( ::AfxGetApp( ) )->GetMemSessionDataManagerPtr( )->GetConcurrentMemoryImagePtr( )->FindMemorySpaceByType( eMemSpace );

    GetMemContentView( )->SetMemSpace( eMemSpace, pSpace->GetBegAddress( ), pSpace->GetTotalSize( ), uAddress );

    CString strTitle = ::MMGetMemorySpaceString( eMemSpace );
    SetTitle( strTitle );
    SetWindowText( strTitle );
}

/////////////////////////////////////////////////////////////////////////////
// CMemContentFrame message handlers

BOOL CMemContentFrame::OnCreateClient(LPCREATESTRUCT lpcs, CCreateContext* pContext) 
{
    CCreateContext context;
    context.m_pNewViewClass = RUNTIME_CLASS( CMemHexView );
    context.m_pCurrentFrame = this;

    m_pView = static_cast< CMemHexView * >( CreateView( & context ) );

    return CBCGMDIChildWnd::OnCreateClient(lpcs, pContext);
}

int CMemContentFrame::OnCreate(LPCREATESTRUCT lpCreateStruct) 
{
	if (CMDIChildWnd::OnCreate(lpCreateStruct) == -1)
		return -1;

    // Detect color depth. 256 color toolbars can be used in the
    // high or true color modes only (bits per pixel is > 8):
    CClientDC dc ( this );
    BOOL bIsHighColor = dc.GetDeviceCaps( BITSPIXEL ) > 8;

    UINT uiToolbarHotID = bIsHighColor ? IDB_TOOLBAR_HEXEDIT256 : 0;
    UINT uiToolbarColdID = bIsHighColor ? IDB_TOOLBAR_HEXEDITCOLD256 : 0;
    if ( ! m_wndToolBar.CreateEx( this, TBSTYLE_FLAT, WS_CHILD | WS_VISIBLE | CBRS_TOP | CBRS_GRIPPER | CBRS_TOOLTIPS | CBRS_FLYBY | CBRS_SIZE_DYNAMIC ) )
    {
        TRACE0("Failed to create toolbar\n");
        return -1;      // fail to create
    }

    if ( ! m_wndToolBar.LoadToolBar( IDR_HEXEDIT, uiToolbarColdID, 0, FALSE, 0, 0, uiToolbarHotID ) )
    {
        TRACE0("Failed to load toolbar\n");
        return -1;      // fail to create
    }

    m_imgImageList.Create( IDB_TOOLBAR_HEXEDIT256, 16, 0, RGB( 192, 192, 192 ) );

    m_wndToolBar.SetWindowText( "HexEdit View" );


    CMenu menu;

    VERIFY( menu.LoadMenu( IDR_MENU_HEXEDIT_DATAWIDTH ) );
    CMenu* pMenuDataWidth = menu.GetSubMenu( 0 );
    ASSERT( pMenuDataWidth != NULL );
    CBCGToolbarMenuButton btnDataWidth( ID_HEXEDIT_ALIGNMENT, pMenuDataWidth->GetSafeHmenu( ), CImageHash::GetImageOfCommand( ID_HEXEDIT_ALIGNMENT ) );
    m_wndToolBar.ReplaceButton( ID_HEXEDIT_ALIGNMENT, btnDataWidth);

    CMenu menu2;
    VERIFY( menu2.LoadMenu( IDR_MENU_HEXEDIT_RELOADTIME ) );
    CMenu * pMenuReloadTime = menu2.GetSubMenu( 0 );
    ASSERT( pMenuReloadTime != NULL );
    CBCGToolbarMenuButton btnReloadTime( ID_HEXEDIT_RELOAD, pMenuReloadTime->GetSafeHmenu( ), CImageHash::GetImageOfCommand( ID_HEXEDIT_RELOAD ) );
    m_wndToolBar.ReplaceButton( ID_HEXEDIT_RELOAD, btnReloadTime);

    CMemHexAddrComboButton cbxAddress;
    m_wndToolBar.ReplaceButton( ID_HEXEDIT_ADDRESS, cbxAddress );

	return 0;
}

BOOL CMemContentFrame::PreCreateWindow(CREATESTRUCT& cs) 
{
    return CMDIChildWnd::PreCreateWindow(cs);
}


void CMemContentFrame::OnDestroy() 
{
    ASSERT( m_pViewManager != NULL );

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

void CMemContentFrame::PostNcDestroy() 
{
    m_pViewManager->UnLoadContentViewFrame( this );
}

void CMemContentFrame::OnHexeditAlignment() 
{
    ASSERT( m_pView != NULL );
    m_pView->SetDigitsInData( 2 );
}

void CMemContentFrame::OnUpdateHexeditAlignment(CCmdUI* pCmdUI) 
{
    pCmdUI->Enable( TRUE );
}

void CMemContentFrame::OnDatawidthByte() 
{
    ASSERT( m_pView != NULL );
    m_pView->SetDigitsInData( 2 );
}

void CMemContentFrame::OnUpdateDatawidthByte(CCmdUI* pCmdUI) 
{
    if ( m_pView->GetDigitsInData( ) == 2 )
    {
        pCmdUI->SetCheck( 1 );
    }
    else
    {
        pCmdUI->SetCheck( 0 );
    }

    pCmdUI->Enable( TRUE );
}

void CMemContentFrame::OnDatawidthDword() 
{
    ASSERT( m_pView != NULL );
    m_pView->SetDigitsInData( 8 );
}

void CMemContentFrame::OnUpdateDatawidthDword(CCmdUI* pCmdUI) 
{
    if ( m_pView->GetDigitsInData( ) == 8 )
    {
        pCmdUI->SetCheck( 1 );
    }
    else
    {
        pCmdUI->SetCheck( 0 );
    }

    pCmdUI->Enable( TRUE );
}

void CMemContentFrame::OnDatawidthWord() 
{
    ASSERT( m_pView != NULL );
    m_pView->SetDigitsInData( 4 );
}

void CMemContentFrame::OnUpdateDatawidthWord(CCmdUI* pCmdUI) 
{
    if ( m_pView->GetDigitsInData( ) == 4 )
    {
        pCmdUI->SetCheck( 1 );
    }
    else
    {
        pCmdUI->SetCheck( 0 );
    }

    pCmdUI->Enable( TRUE );
}

void CMemContentFrame::OnHexeditAddress() 
{
	CBCGToolbarComboBoxButton* pSrcCombo = NULL;

	CObList listButtons;
	if (CBCGToolBar::GetCommandButtons (ID_HEXEDIT_ADDRESS, listButtons) > 0)
	{
		for (POSITION posCombo = listButtons.GetHeadPosition (); 
			pSrcCombo == NULL && posCombo != NULL;)
		{
			CBCGToolbarComboBoxButton* pCombo = 
				DYNAMIC_DOWNCAST (CBCGToolbarComboBoxButton, listButtons.GetNext (posCombo));

			if (pCombo != NULL &&
				CBCGToolBar::IsLastCommandFromButton (pCombo))
			{
				pSrcCombo = pCombo;
			}
		}
	}

	if (pSrcCombo != NULL)
	{
		LPCSTR lpszText = pSrcCombo->GetText( );
		CString strText = (lpszText == NULL) ? _T("") : lpszText;

        strText.TrimLeft( );
        strText.TrimRight( );

		if (!strText.IsEmpty( ))
		{
            unsigned int uAddress = m_pView->GetCurrentViewAddress( );

            if ( strText.GetAt( 0 ) == '0' && ( strText.GetAt( 1 ) == 'x' || strText.GetAt( 1 ) == 'X' ) )
            {
                sscanf( strText, " %x ", & uAddress );
            }
            else
            {
                sscanf( strText, " %u ", & uAddress );
            }

            if ( !m_pView->SetViewMemAddr( uAddress ) )
			{
                AfxMessageBox( "Cannot jump to that address." );
			}
			else
			{
				pSrcCombo->AddItem (strText);
			}
		}
	}
}

void CMemContentFrame::OnUpdateHexeditAddress(CCmdUI* pCmdUI) 
{
    pCmdUI->Enable( TRUE );
}

void CMemContentFrame::OnHexeditReload() 
{
    m_pView->RequestViewData( );
}

void CMemContentFrame::OnUpdateHexeditReload(CCmdUI* pCmdUI) 
{
    CMemMonitorHost * pHost = static_cast< CMemMonitorApp * >( ::AfxGetApp( ) )->GetMemSessionDataManagerPtr( )->GetMemMonitorHostPtr( );
    if ( pHost->IsConnected( ) )
    {
        pCmdUI->Enable( TRUE );
    }
    else
    {
        pCmdUI->Enable( FALSE );
    }
}

void CMemContentFrame::OnReloadtime1sec() 
{
    if ( m_uReloadTimerID != 0 )
    {
        KillTimer( m_uReloadTimerID );
        m_uReloadTimerID = 0;
    }

    m_uReloadTiming = 1000;
    m_uReloadTimerID = SetTimer( ID_HEXEDIT_RELOAD, 1000, NULL );
}

void CMemContentFrame::OnUpdateReloadtime1sec(CCmdUI* pCmdUI) 
{
    CMemMonitorHost * pHost = static_cast< CMemMonitorApp * >( ::AfxGetApp( ) )->GetMemSessionDataManagerPtr( )->GetMemMonitorHostPtr( );

    if ( m_uReloadTiming == 1000 )
    {
        pCmdUI->SetCheck( 1 );
    }
    else
    {
        pCmdUI->SetCheck( 0 );
    }

    if ( pHost->IsConnected( ) )
    {
        pCmdUI->Enable( TRUE );
    }
    else
    {
        pCmdUI->Enable( FALSE );
    }
}

void CMemContentFrame::OnReloadtime2sec() 
{
    if ( m_uReloadTimerID != 0 )
    {
        KillTimer( m_uReloadTimerID );
        m_uReloadTimerID = 0;
    }

    m_uReloadTiming = 2000;
    m_uReloadTimerID = SetTimer( ID_HEXEDIT_RELOAD, 2000, NULL );
}

void CMemContentFrame::OnUpdateReloadtime2sec(CCmdUI* pCmdUI) 
{
    CMemMonitorHost * pHost = static_cast< CMemMonitorApp * >( ::AfxGetApp( ) )->GetMemSessionDataManagerPtr( )->GetMemMonitorHostPtr( );

    if ( m_uReloadTiming == 2000 )
    {
        pCmdUI->SetCheck( 1 );
    }
    else
    {
        pCmdUI->SetCheck( 0 );
    }

    if ( pHost->IsConnected( ) )
    {
        pCmdUI->Enable( TRUE );
    }
    else
    {
        pCmdUI->Enable( FALSE );
    }
}

void CMemContentFrame::OnReloadtime5sec() 
{
    if ( m_uReloadTimerID != 0 )
    {
        KillTimer( m_uReloadTimerID );
        m_uReloadTimerID = 0;
    }

    m_uReloadTiming = 5000;
    m_uReloadTimerID = SetTimer( ID_HEXEDIT_RELOAD, 5000, NULL );
}

void CMemContentFrame::OnUpdateReloadtime5sec(CCmdUI* pCmdUI) 
{
    CMemMonitorHost * pHost = static_cast< CMemMonitorApp * >( ::AfxGetApp( ) )->GetMemSessionDataManagerPtr( )->GetMemMonitorHostPtr( );

    if ( m_uReloadTiming == 5000 )
    {
        pCmdUI->SetCheck( 1 );
    }
    else
    {
        pCmdUI->SetCheck( 0 );
    }

    if ( pHost->IsConnected( ) )
    {
        pCmdUI->Enable( TRUE );
    }
    else
    {
        pCmdUI->Enable( FALSE );
    }
}

void CMemContentFrame::OnReloadtime10sec() 
{
    if ( m_uReloadTimerID != 0 )
    {
        KillTimer( m_uReloadTimerID );
        m_uReloadTimerID = 0;
    }

    m_uReloadTiming = 10000;
    m_uReloadTimerID = SetTimer( ID_HEXEDIT_RELOAD, 10000, NULL );
}

void CMemContentFrame::OnUpdateReloadtime10sec(CCmdUI* pCmdUI) 
{
    CMemMonitorHost * pHost = static_cast< CMemMonitorApp * >( ::AfxGetApp( ) )->GetMemSessionDataManagerPtr( )->GetMemMonitorHostPtr( );

    if ( m_uReloadTiming == 10000 )
    {
        pCmdUI->SetCheck( 1 );
    }
    else
    {
        pCmdUI->SetCheck( 0 );
    }

    if ( pHost->IsConnected( ) )
    {
        pCmdUI->Enable( TRUE );
    }
    else
    {
        pCmdUI->Enable( FALSE );
    }
}

void CMemContentFrame::OnReloadtime15sec() 
{
    if ( m_uReloadTimerID != 0 )
    {
        KillTimer( m_uReloadTimerID );
        m_uReloadTimerID = 0;
    }

    m_uReloadTiming = 15000;
    m_uReloadTimerID = SetTimer( ID_HEXEDIT_RELOAD, 15000, NULL );
}

void CMemContentFrame::OnUpdateReloadtime15sec(CCmdUI* pCmdUI) 
{
    CMemMonitorHost * pHost = static_cast< CMemMonitorApp * >( ::AfxGetApp( ) )->GetMemSessionDataManagerPtr( )->GetMemMonitorHostPtr( );

    if ( m_uReloadTiming == 15000 )
    {
        pCmdUI->SetCheck( 1 );
    }
    else
    {
        pCmdUI->SetCheck( 0 );
    }

    if ( pHost->IsConnected( ) )
    {
        pCmdUI->Enable( TRUE );
    }
    else
    {
        pCmdUI->Enable( FALSE );
    }
}

void CMemContentFrame::OnReloadtime20sec() 
{
    if ( m_uReloadTimerID != 0 )
    {
        KillTimer( m_uReloadTimerID );
        m_uReloadTimerID = 0;
    }

    m_uReloadTiming = 20000;
    m_uReloadTimerID = SetTimer( ID_HEXEDIT_RELOAD, 20000, NULL );
}

void CMemContentFrame::OnUpdateReloadtime20sec(CCmdUI* pCmdUI) 
{
    CMemMonitorHost * pHost = static_cast< CMemMonitorApp * >( ::AfxGetApp( ) )->GetMemSessionDataManagerPtr( )->GetMemMonitorHostPtr( );

    if ( m_uReloadTiming == 20000 )
    {
        pCmdUI->SetCheck( 1 );
    }
    else
    {
        pCmdUI->SetCheck( 0 );
    }

    if ( pHost->IsConnected( ) )
    {
        pCmdUI->Enable( TRUE );
    }
    else
    {
        pCmdUI->Enable( FALSE );
    }
}

void CMemContentFrame::OnReloadtimeNone() 
{
    if ( m_uReloadTimerID != 0 )
    {
        KillTimer( m_uReloadTimerID );
        m_uReloadTimerID = 0;
    }
    m_uReloadTiming = 0;
}

void CMemContentFrame::OnUpdateReloadtimeNone(CCmdUI* pCmdUI) 
{
    CMemMonitorHost * pHost = static_cast< CMemMonitorApp * >( ::AfxGetApp( ) )->GetMemSessionDataManagerPtr( )->GetMemMonitorHostPtr( );

    if ( m_uReloadTiming == 0 )
    {
        pCmdUI->SetCheck( 1 );
    }
    else
    {
        pCmdUI->SetCheck( 0 );
    }
    
    if ( pHost->IsConnected( ) )
    {
        pCmdUI->Enable( TRUE );
    }
    else
    {
        pCmdUI->Enable( FALSE );
    }
}

void CMemContentFrame::OnTimer(UINT nIDEvent) 
{
    if ( nIDEvent == m_uReloadTimerID )
    {
        m_pView->RequestViewData( );
    }
    CMDIChildWnd::OnTimer(nIDEvent);
}
