//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


// MainFrmMsg.cpp : implementation of the CMainFrame class
//

#include "stdafx.h"
#include "MemMonitor.h"

#include "MainFrm.h"
#include "MemSessionViewManager.h"
#include "MemMonitorHostTargetComboBox.h"

static UINT indicators[] =
{
    ID_SEPARATOR,           // status line indicator
    ID_INDICATOR_DATA_BUFFER,
    ID_INDICATOR_CAPS,
    ID_INDICATOR_NUM,
    ID_INDICATOR_SCRL,
};

int CMainFrame::OnCreate(LPCREATESTRUCT lpCreateStruct)
{
    if (CMDIFrameWnd::OnCreate(lpCreateStruct) == -1)
        return -1;

    // enable Office XP look:
    CBCGVisualManager::SetDefaultManager( RUNTIME_CLASS( CBCGVisualManagerXP ) );

    EnableMDITabs ();

    if (!m_wndMenuBar.Create (this))
    {
        TRACE0("Failed to create menubar\n");
        return -1;      // fail to create
    }

    m_wndMenuBar.SetBarStyle(m_wndMenuBar.GetBarStyle() | CBRS_SIZE_DYNAMIC);

    // Detect color depth. 256 color toolbars can be used in the
    // high or true color modes only (bits per pixel is > 8):
    CClientDC dc (this);
    BOOL bIsHighColor = dc.GetDeviceCaps (BITSPIXEL) > 8;

    UINT uiToolbarHotID = bIsHighColor ? IDB_TOOLBAR256 : 0;
    UINT uiToolbarColdID = bIsHighColor ? IDB_TOOLBARCOLD256 : 0;

    if (!m_wndToolBar.CreateEx(this, TBSTYLE_FLAT, WS_CHILD | WS_VISIBLE | CBRS_TOP
        | CBRS_GRIPPER | CBRS_TOOLTIPS | CBRS_FLYBY | CBRS_SIZE_DYNAMIC) ||
        !m_wndToolBar.LoadToolBar(IDR_MAINFRAME, uiToolbarColdID, 0, FALSE, 0, 0, uiToolbarHotID))
    {
        TRACE0("Failed to create toolbar\n");
        return -1;      // fail to create
    }

    if (!m_wndStatusBar.Create(this) ||
        !m_wndStatusBar.SetIndicators(indicators,
          sizeof(indicators)/sizeof(UINT)))
    {
        TRACE0("Failed to create status bar\n");
        return -1;      // fail to create
    }

    if (!m_wndWorkSpace.Create (_T(""), this, CSize (200, 200),
        TRUE /* Has gripper */, ID_VIEW_WORKSPACE,
        WS_CHILD | WS_VISIBLE | CBRS_LEFT))
    {
        TRACE0("Failed to create workspace bar\n");
        return -1;      // fail to create
    }

    if (!m_wndOutput.Create (_T("Output"), this, CSize (150, 150),
        TRUE /* Has gripper */, ID_VIEW_OUTPUT,
        WS_CHILD | WS_VISIBLE | CBRS_BOTTOM))
    {
        TRACE0("Failed to create output bar\n");
        return -1;      // fail to create
    }

    if (!m_wndProperty.Create(_T("Property"), this, CSize( 200, 200 ),
        TRUE /* Has gripper */, ID_VIEW_PROPERTY,
        WS_CHILD | WS_VISIBLE | CBRS_BOTTOM))
    {
        TRACE0("Failed to create property bar\n");
        return -1;
    }

    m_imgImageList.Create( IDB_TOOLBAR256, 16, 0, RGB( 192, 192, 192 ) );

    CString strMainToolbarTitle;
    strMainToolbarTitle.LoadString (IDS_MAIN_TOOLBAR);
    m_wndToolBar.SetWindowText (strMainToolbarTitle);

    // TODO: Delete these three lines if you don't want the toolbar to
    //  be dockable
    m_wndMenuBar.EnableDocking(CBRS_ALIGN_ANY);
    m_wndToolBar.EnableDocking(CBRS_ALIGN_ANY);
    m_wndWorkSpace.EnableDocking(CBRS_ALIGN_ANY);
    m_wndOutput.EnableDocking(CBRS_ALIGN_ANY);
    m_wndProperty.EnableDocking(CBRS_ALIGN_ANY);
    EnableDocking(CBRS_ALIGN_ANY);
    DockControlBar(&m_wndMenuBar);
    DockControlBar(&m_wndToolBar);
    DockControlBar(&m_wndWorkSpace);
    DockControlBar(&m_wndProperty);
    DockControlBar(&m_wndOutput);
    DockControlBarLeftOf( &m_wndOutput, &m_wndProperty );

    // Enable windows manager:
    EnableWindowsDialog (ID_WINDOW_MANAGER, IDS_WINDOWS_MANAGER, TRUE);


    m_uNotifyMsgTimer = SetTimer( 1, 100, NULL );

    return 0;
}

afx_msg LRESULT CMainFrame::OnToolbarReset( WPARAM wp, LPARAM )
{
    UINT uiToolBarId = (UINT) wp;

    switch (uiToolBarId)
    {
        case IDR_MAINFRAME:
        {
            CMemMonitorHostTargetComboButton cbxTarget;
            m_wndToolBar.ReplaceButton( ID_HOST_TARGETLIST, cbxTarget );
        }
        break;
    }

    return 0;
}

BOOL CMainFrame::PreCreateWindow(CREATESTRUCT& cs)
{
    if( !CMDIFrameWnd::PreCreateWindow(cs) )
        return FALSE;
    // TODO: Modify the Window class or styles here by modifying
    //  the CREATESTRUCT cs

    return TRUE;
}

LRESULT CMainFrame::OnToolbarContextMenu(WPARAM,LPARAM lp)
{
    CPoint point (BCG_GET_X_LPARAM(lp), BCG_GET_Y_LPARAM(lp));

    CMenu menu;
    VERIFY(menu.LoadMenu (IDR_POPUP_TOOLBAR));

    CMenu* pPopup = menu.GetSubMenu(0);
    ASSERT(pPopup != NULL);

    CBCGPopupMenu* pPopupMenu = new CBCGPopupMenu;
    pPopupMenu->Create (this, point.x, point.y, pPopup->Detach ());

    return 0;
}

BOOL CMainFrame::OnShowPopupMenu (CBCGPopupMenu* pMenuPopup)
{
    //---------------------------------------------------------
    // Replace ID_VIEW_TOOLBARS menu item to the toolbars list:
    //---------------------------------------------------------
    CMDIFrameWnd::OnShowPopupMenu (pMenuPopup);

    if (pMenuPopup != NULL &&
        pMenuPopup->GetMenuBar ()->CommandToIndex (ID_VIEW_TOOLBARS) >= 0)
    {
        if (CBCGToolBar::IsCustomizeMode ())
        {
            //----------------------------------------------------
            // Don't show toolbars list in the cuztomization mode!
            //----------------------------------------------------
            return FALSE;
        }

        pMenuPopup->RemoveAllItems ();

        CMenu menu;
        VERIFY(menu.LoadMenu (IDR_POPUP_TOOLBAR));

        CMenu* pPopup = menu.GetSubMenu(0);
        ASSERT(pPopup != NULL);

        pMenuPopup->GetMenuBar ()->ImportFromMenu (*pPopup, TRUE);
    }

    return TRUE;
}

void CMainFrame::OnViewWorkspace() 
{
    ShowControlBar (&m_wndWorkSpace,
                    !(m_wndWorkSpace.GetStyle () & WS_VISIBLE),
                    FALSE);
    RecalcLayout ();
}

void CMainFrame::OnUpdateViewWorkspace(CCmdUI* pCmdUI) 
{
    pCmdUI->SetCheck (m_wndWorkSpace.GetStyle () & WS_VISIBLE);
}

void CMainFrame::OnViewOutput() 
{
    ShowControlBar (&m_wndOutput,
                    !(m_wndOutput.GetStyle () & WS_VISIBLE),
                    FALSE);
    RecalcLayout ();
}

void CMainFrame::OnUpdateViewOutput(CCmdUI* pCmdUI) 
{
    pCmdUI->SetCheck (m_wndOutput.GetStyle () & WS_VISIBLE);
}

void CMainFrame::OnViewProperty() 
{
    ShowControlBar (&m_wndProperty,
                    !(m_wndProperty.GetStyle () & WS_VISIBLE),
                    FALSE);
    RecalcLayout ();
}

void CMainFrame::OnUpdateViewProperty(CCmdUI* pCmdUI) 
{
    pCmdUI->SetCheck (m_wndProperty.GetStyle () & WS_VISIBLE);
}

void CMainFrame::OnWindowManager() 
{
    ShowWindowsDialog( );
}

void CMainFrame::OnUpdateFileNew(CCmdUI* pCmdUI) 
{
    pCmdUI->Enable( TRUE );
}

void CMainFrame::OnFileNew() 
{
    CMemMonitorApp * pApp = static_cast< CMemMonitorApp * >( ::AfxGetApp( ) );
    if ( pApp->GetMemSessionDataManagerPtr( ) != NULL )
    {
        if ( AfxMessageBox( "Do you want to close the current session data file first?", MB_YESNO ) == IDNO )
        {
            return;
        }
    }

    //
    // close last document
    //
    OnFileClose( );

    //
    // new memory monitor session data
    //
    CMemSessionDataManagerPtr pMemSessionDataManager = static_cast< CMemSessionDataManager * >( RUNTIME_CLASS( CMemSessionDataManager )->CreateObject( ) );
    ASSERT( pMemSessionDataManager != NULL );
    pMemSessionDataManager->Initialize( );
    pApp->SetMemSessionDataManagerPtr( pMemSessionDataManager );

    //
    // new memory monitor session view
    //
    CMemSessionViewManagerPtr pMemSessionViewManager = static_cast< CMemSessionViewManager * >( RUNTIME_CLASS( CMemSessionViewManager )->CreateObject( ) );
    ASSERT( pMemSessionViewManager != NULL );
    pMemSessionViewManager->Initialize( pMemSessionDataManager );
    pApp->SetMemSessionViewManagerPtr( pMemSessionViewManager );

    //
    // attach view to the data
    //
    pMemSessionDataManager->Attach( pMemSessionViewManager );

}

void CMainFrame::OnFileSettings( )
{
    CMemMonitorApp * pApp = static_cast< CMemMonitorApp * >( ::AfxGetApp( ) );
    CConfigurationPps * pConfig = pApp->GetMemSessionViewManagerPtr( )->GetConfigurationPpsPtr( );
    ASSERT( pConfig != NULL );
    pConfig->m_psh.dwFlags &= ~PSH_WIZARD;

    if ( pConfig->DoModal( ) == IDOK )
    {
//        pConfig->GetFilePpg( ).OnApply( );
        pConfig->GetTargetPpg( ).OnApply( );
        pConfig->GetColourPpg( ).OnApply( );
        pConfig->GetSymbolPpg( ).OnApply( );
    }

}

void CMainFrame::OnUpdateFileSettings(CCmdUI* pCmdUI) 
{
    CMemMonitorApp * pApp = static_cast< CMemMonitorApp * >( ::AfxGetApp( ) );

    if ( pApp->GetMemSessionDataManagerPtr( ) == NULL )
    {
        pCmdUI->Enable( FALSE );
    }
    else
    {
        pCmdUI->Enable( TRUE );
    }
}

void CMainFrame::OpenFile( const CString & strFileName )
{
    CMemMonitorApp * pApp = static_cast< CMemMonitorApp * >( ::AfxGetApp( ) );
    //
    // close last document
    //
    OnFileClose( );

    //
    // new memory monitor session data
    //
    CMemSessionDataManagerPtr pMemSessionDataManager = static_cast< CMemSessionDataManager * >( RUNTIME_CLASS( CMemSessionDataManager )->CreateObject( ) );
    ASSERT( pMemSessionDataManager != NULL );
    pMemSessionDataManager->Initialize( );
    pMemSessionDataManager->OnOpenDocument( strFileName );
    pApp->SetMemSessionDataManagerPtr( pMemSessionDataManager );

    pMemSessionDataManager->GetMemConfigurationPtr( )->OnOpenDocument( strFileName );
    pMemSessionDataManager->GetMemConfigurationPtr( )->SetPathName( strFileName );

    //
    // new memory monitor session view
    //
    CMemSessionViewManagerPtr pMemSessionViewManager = static_cast< CMemSessionViewManager * >( RUNTIME_CLASS( CMemSessionViewManager )->CreateObject( ) );
    ASSERT( pMemSessionViewManager != NULL );
    pMemSessionViewManager->Initialize( pMemSessionDataManager );
    pApp->SetMemSessionViewManagerPtr( pMemSessionViewManager );

    //
    // attach view to the data
    //
    pMemSessionDataManager->Attach( pMemSessionViewManager );
    pMemSessionDataManager->SetModifiedFlag( FALSE );
    pMemSessionViewManager->SetModifiedFlag( FALSE );

}


void CMainFrame::OnFileOpen() 
{
    CMemMonitorApp * pApp = static_cast< CMemMonitorApp * >( ::AfxGetApp( ) );

    if ( pApp->GetMemSessionDataManagerPtr( ) != NULL )
    {
        if ( AfxMessageBox( "Do you want to close the current session data file first?", MB_YESNO ) == IDNO )
        {
            return;
        }
    }

    CBCGFileDialog dlgFileNew( TRUE, "Open...", FALSE, "rmm", NULL, OFN_HIDEREADONLY | OFN_OVERWRITEPROMPT, "RadMemoryMonitor Files (*.rmm)|*.rmm|All Files (*.*)|*.*||" );

    if ( dlgFileNew.DoModal( ) == IDOK )
    {
        CString strFileName;
        if( dlgFileNew.GetPage( ) == CBCGFileDialog::BCGFileOpen )
        {
            strFileName = dlgFileNew.GetPathName( );
        }
        else if( dlgFileNew.GetPage( ) == CBCGFileDialog::BCGFileRecent )
        {
            strFileName = dlgFileNew.GetRecentFilePath( );
        }

        OpenFile( strFileName );
    }
}

void CMainFrame::OnUpdateFileOpen(CCmdUI* pCmdUI) 
{
    pCmdUI->Enable( TRUE );
}

void CMainFrame::OnFileClose() 
{
    CMemMonitorApp * pApp = static_cast< CMemMonitorApp * >( ::AfxGetApp( ) );

    if ( pApp->GetMemSessionDataManagerPtr( ) != NULL && pApp->GetMemSessionViewManagerPtr( ) != NULL )
    {
        pApp->GetMemSessionDataManagerPtr( )->Detach( pApp->GetMemSessionViewManagerPtr( ) );
    }

    //
    // data first
    //
    if ( pApp->GetMemSessionDataManagerPtr( ) != NULL )
    {
        pApp->GetMemSessionDataManagerPtr( )->OnSaveDocument( pApp->GetMemSessionDataManagerPtr( )->GetPathName( ) );
        pApp->GetMemSessionDataManagerPtr( )->OnCloseDocument( );
        pApp->SetMemSessionDataManagerPtr( NULL );
    }

    //
    // view second
    //
    if ( pApp->GetMemSessionViewManagerPtr( ) != NULL )
    {
        pApp->GetMemSessionViewManagerPtr( )->OnCloseDocument( );
        pApp->SetMemSessionViewManagerPtr( NULL );
    }
}

void CMainFrame::OnUpdateFileClose(CCmdUI* pCmdUI) 
{
    CMemMonitorApp * pApp = static_cast< CMemMonitorApp * >( ::AfxGetApp( ) );

    if ( pApp->GetMemSessionDataManagerPtr( ) == NULL )
    {
        pCmdUI->Enable( FALSE );
    }
    else
    {
        pCmdUI->Enable( TRUE );
    }
}

void CMainFrame::OnFileSave() 
{
    CMemMonitorApp * pApp = static_cast< CMemMonitorApp * >( ::AfxGetApp( ) );
    ASSERT( pApp->GetMemSessionDataManagerPtr( ) != NULL );

    if ( pApp->GetMemSessionDataManagerPtr( )->GetMemConfigurationPtr( )->GetPathName( ).IsEmpty( ) )
    {
        CBCGFileDialog dlgFileSave( FALSE, "Save As...", FALSE, "rmm", NULL, OFN_HIDEREADONLY | OFN_OVERWRITEPROMPT, "RadMemoryMonitor Files (*.rmm)|*.rmm|All Files (*.*)|*.*||" );

        if ( dlgFileSave.DoModal( ) == IDOK )
        {
            CString strFileName;
            if( dlgFileSave.GetPage( ) == CBCGFileDialog::BCGFileOpen )
            {
                strFileName = dlgFileSave.GetPathName( );
            }
            else if( dlgFileSave.GetPage( ) == CBCGFileDialog::BCGFileRecent )
            {
                strFileName = dlgFileSave.GetRecentFilePath( );
            }

            pApp->GetMemSessionDataManagerPtr( )->GetMemConfigurationPtr( )->SetPathName( strFileName );
            pApp->GetMemSessionDataManagerPtr( )->GetMemConfigurationPtr( )->OnSaveDocument( strFileName );
        }
    }
    else
    {
        pApp->GetMemSessionDataManagerPtr( )->GetMemConfigurationPtr( )->OnSaveDocument( pApp->GetMemSessionDataManagerPtr( )->GetMemConfigurationPtr( )->GetPathName( ) );
    }
}

void CMainFrame::OnUpdateFileSave(CCmdUI* pCmdUI) 
{
    CMemMonitorApp * pApp = static_cast< CMemMonitorApp * >( ::AfxGetApp( ) );
    
    if ( pApp->GetMemSessionDataManagerPtr( ) != NULL &&
         pApp->GetMemSessionDataManagerPtr( )->GetMemConfigurationPtr( ) != NULL && 
         pApp->GetMemSessionDataManagerPtr( )->GetMemConfigurationPtr( )->IsModified( ) )
    {
        pCmdUI->Enable( TRUE );
    }
    else
    {
        pCmdUI->Enable( FALSE );
    }
}

void CMainFrame::OnFilePrint() 
{
    // TODO: Add your command handler code here
    
}

void CMainFrame::OnUpdateFilePrint(CCmdUI* pCmdUI) 
{
    pCmdUI->Enable( FALSE );
}

void CMainFrame::OnFilePrintPreview() 
{
    // TODO: Add your command handler code here
    
}

void CMainFrame::OnUpdateFilePrintPreview(CCmdUI* pCmdUI) 
{
    pCmdUI->Enable( FALSE );
}

void CMainFrame::OnFilePrintSetup() 
{
    // TODO: Add your command handler code here
    
}

void CMainFrame::OnUpdateFilePrintSetup(CCmdUI* pCmdUI) 
{
    pCmdUI->Enable( FALSE );
}

void CMainFrame::OnClose() 
{
    OnFileClose( );

    KillTimer( m_uNotifyMsgTimer );
    m_uNotifyMsgTimer = 0;

	CMDIFrameWnd::OnClose();
}

void CMainFrame::OnHostTargetconnect() 
{
    CMemMonitorApp * pApp = static_cast< CMemMonitorApp * >( ::AfxGetApp( ) );
    CMemSessionDataManager * pSessionData = pApp->GetMemSessionDataManagerPtr( );
    ASSERT( pSessionData );
    CMemMonitorHost * pHost = pSessionData->GetMemMonitorHostPtr( );
    ASSERT( pHost );

    if ( pHost->IsCommStarted( ) )
    {
        if ( pHost->IsConnected( ) )
        {
            if ( ::AfxMessageBox( "Are you sure to disconnect from the client, and all data from client will be lost after that?", MB_YESNO ) == IDYES )
            {
                pHost->StopCommunication( );
            }
        }
        else
        {
            pApp->GetMemSessionDataManagerPtr( )->GetMemMonitorHostPtr( )->StopCommunication( );
        }
    }
    else
    {
	    CMemMonitorHostTargetComboButton* pSrcCombo = NULL;

	    CObList listButtons;
	    if (CBCGToolBar::GetCommandButtons (ID_HOST_TARGETLIST, listButtons) > 0)
	    {
		    for ( POSITION posCombo = listButtons.GetHeadPosition (); 
			     pSrcCombo == NULL && posCombo != NULL; )
		    {
			    CBCGToolbarComboBoxButton* pCombo = 
				    DYNAMIC_DOWNCAST (CBCGToolbarComboBoxButton, listButtons.GetNext (posCombo));

			    if ( pCombo != NULL )
			    {
				    pSrcCombo = static_cast< CMemMonitorHostTargetComboButton * >( pCombo );
			    }
		    }
	    }
        ASSERT( pSrcCombo );
        pHost->SetCurrentTarget( pSrcCombo->GetCurrentSelected( ) );
        pHost->StopCommunication( );
        pHost->StartCommunication( );
    }
}

void CMainFrame::OnUpdateHostTargetconnect(CCmdUI* pCmdUI) 
{
    CMemMonitorApp * pApp = static_cast< CMemMonitorApp * >( ::AfxGetApp( ) );
    
    if ( pApp->GetMemSessionDataManagerPtr( ) != NULL && 
         pApp->GetMemSessionDataManagerPtr( )->GetMemMonitorHostPtr( ) != NULL &&
         pApp->GetMemSessionDataManagerPtr( )->GetMemMonitorHostPtr( )->GetTargetTablePtr( ) != NULL )
    {
        CMemSessionDataManager * pSessionData = pApp->GetMemSessionDataManagerPtr( );
        ASSERT( pSessionData );
        CMemMonitorHost * pHost = pSessionData->GetMemMonitorHostPtr( );
        ASSERT( pHost );

        vector< CString > aryName;
        aryName.clear( );

        pHost->GetTargetList( aryName );

        if ( aryName.size( ) > 0 )
        {
            pCmdUI->Enable( TRUE );

            if ( pHost->IsCommStarted( ) )
            {
                pCmdUI->SetCheck( 1 );
            }
            else
            {
                pCmdUI->SetCheck( 0 );
            }
        }
        else
        {
            pCmdUI->Enable( FALSE );
        }
    }
    else
    {
        pCmdUI->Enable( FALSE );
    }
}

void CMainFrame::OnHostSuspend() 
{
    CMemMonitorApp * pApp = static_cast< CMemMonitorApp * >( ::AfxGetApp( ) );
    ASSERT( pApp != NULL );
    CMemSessionDataManager * pData = pApp->GetMemSessionDataManagerPtr( );
    ASSERT( pData != NULL );
    CMemMonitorHost * pHost = pData->GetMemMonitorHostPtr( );
    ASSERT( pHost != NULL );

    if ( pHost->IsClientSuspended( ) )
    {
        pHost->RequestClientResume( );
    }
    else
    {
        pHost->RequestClientSuspend( );
    }
}

void CMainFrame::OnUpdateHostSuspend(CCmdUI* pCmdUI) 
{
    CMemMonitorApp * pApp = static_cast< CMemMonitorApp * >( ::AfxGetApp( ) );
    if ( pApp == NULL )
    {
        pCmdUI->Enable( FALSE );
        pCmdUI->SetCheck( 0 );
        return;
    }

    CMemSessionDataManager * pData = pApp->GetMemSessionDataManagerPtr( );
    if ( pData == NULL )
    {
        pCmdUI->Enable( FALSE );
        pCmdUI->SetCheck( 0 );
        return;
    }

    CMemMonitorHost * pHost = pData->GetMemMonitorHostPtr( );
    if ( pHost == NULL )
    {
        pCmdUI->Enable( FALSE );
        pCmdUI->SetCheck( 0 );
        return;
    }

    if ( ! pHost->IsConnected( ) )
    {
        pCmdUI->Enable( FALSE );
        pCmdUI->SetCheck( 0 );
        return;
    }

    pCmdUI->Enable( TRUE );
    if ( pHost->IsClientSuspended( ) )
    {
        pCmdUI->SetCheck( 1 );
    }
    else
    {
        pCmdUI->SetCheck( 0 );
    }
}


void CMainFrame::OnHostTargetlist() 
{
}

void CMainFrame::OnUpdateHostTargetlist(CCmdUI* pCmdUI) 
{
    CMemMonitorApp * pApp = static_cast< CMemMonitorApp * >( ::AfxGetApp( ) );
    if ( pApp == NULL )
    {
        pCmdUI->Enable( FALSE );
        return;
    }

    CMemSessionDataManager * pData = pApp->GetMemSessionDataManagerPtr( );
    if ( pData == NULL )
    {
        pCmdUI->Enable( FALSE );
        return;
    }

    CMemMonitorHost * pHost = pData->GetMemMonitorHostPtr( );
    if ( pHost == NULL )
    {
        pCmdUI->Enable( FALSE );
        return;
    }

    if ( pHost->IsCommStarted( ) )
    {
        pCmdUI->Enable( FALSE );
        return;
    }

    pCmdUI->Enable( TRUE );
}

void CMainFrame::OnTimer(UINT nIDEvent) 
{
    static int nCounter = 0;
    
    if ( m_uNotifyMsgTimer == nIDEvent && static_cast< CMemMonitorApp * >( ::AfxGetApp( ) )->GetMemSessionViewManagerPtr( ) != NULL )
    {
        static_cast< CMemMonitorApp * >( ::AfxGetApp( ) )->GetMemSessionViewManagerPtr( )->RemoveNotifyMessage( );

        //
        // cross-thread messaging
        //
        if ( nCounter % 10 == 0 )
        {
            CMemMonitorApp * pApp = (CMemMonitorApp*)::AfxGetApp( );
            if ( pApp->GetMemSessionDataManagerPtr( ) != NULL && pApp->GetMemSessionDataManagerPtr( )->GetRawDataTranslatorPtr( ) != NULL )
            {
                pApp->GetMemSessionDataManagerPtr( )->GetRawDataTranslatorPtr( )->OnRecieveNewData( 0, 0 );
            }
            //::AfxGetApp( )->PostThreadMessage( CMemMonitorApp::TM_MM_DEBUGCOMM_NEWDATA, NULL, NULL );
        }
    }

    CMDIFrameWnd::OnTimer(nIDEvent);
}

void CMainFrame::OnFileSavesettingsas() 
{
    CBCGFileDialog dlgFileSave( FALSE, "Save Setting to...", FALSE, "rmm", "", OFN_HIDEREADONLY | OFN_OVERWRITEPROMPT, "Setting Files (*.rmm)|*.rmm|All Files (*.*)|*.*||" );

    if ( dlgFileSave.DoModal( ) == IDOK )
    {
        CString strFilename;

        if( dlgFileSave.GetPage( ) == CBCGFileDialog::BCGFileOpen )
        {
            strFilename = dlgFileSave.GetPathName( );
        }
        else if( dlgFileSave.GetPage( ) == CBCGFileDialog::BCGFileRecent )
        {
            strFilename = dlgFileSave.GetRecentFilePath( );
        }

        CMemMonitorApp * pApp = static_cast< CMemMonitorApp * >( ::AfxGetApp( ) );
        pApp->GetMemSessionDataManagerPtr( )->GetMemConfigurationPtr( )->OnSaveDocument( strFilename );
        pApp->AddToRecentFileList( strFilename );
    }
}

void CMainFrame::OnUpdateFileSavesettingsas(CCmdUI* pCmdUI) 
{
    CMemMonitorApp * pApp = static_cast< CMemMonitorApp * >( ::AfxGetApp( ) );
    if ( pApp->GetMemSessionDataManagerPtr( ) != NULL && pApp->GetMemSessionDataManagerPtr( )->GetMemConfigurationPtr( ) != NULL )
    {
        pCmdUI->Enable( TRUE );
    }
    else
    {
        pCmdUI->Enable( FALSE );
    }
}

void CMainFrame::OnFileLoadsettings() 
{
    CBCGFileDialog dlgFileOpen( TRUE, "Load Setting From...", FALSE, "rmm", "", OFN_HIDEREADONLY | OFN_OVERWRITEPROMPT, "Setting Files (*.rmm)|*.rmm|All Files (*.*)|*.*||" );

    if ( dlgFileOpen.DoModal( ) == IDOK )
    {
        CString strFilename;
        if( dlgFileOpen.GetPage( ) == CBCGFileDialog::BCGFileOpen )
        {
            strFilename = dlgFileOpen.GetPathName( );
        }
        else if( dlgFileOpen.GetPage( ) == CBCGFileDialog::BCGFileRecent )
        {
            strFilename = dlgFileOpen.GetRecentFilePath( );
        }

        CMemMonitorApp * pApp = static_cast< CMemMonitorApp * >( ::AfxGetApp( ) );
        pApp->GetMemSessionDataManagerPtr( )->GetMemConfigurationPtr( )->OnOpenDocument( strFilename );
        pApp->AddToRecentFileList( strFilename );
    }
}

void CMainFrame::OnUpdateFileLoadsettings(CCmdUI* pCmdUI) 
{
    CMemMonitorApp * pApp = static_cast< CMemMonitorApp * >( ::AfxGetApp( ) );
    if ( pApp->GetMemSessionDataManagerPtr( ) != NULL && pApp->GetMemSessionDataManagerPtr( )->GetMemConfigurationPtr( ) != NULL )
    {
        pCmdUI->Enable( TRUE );
    }
    else
    {
        pCmdUI->Enable( FALSE );
    }
}

void CMainFrame::OnUpdateDataBuffer(CCmdUI* pCmdUI)
{
    CMemMonitorApp * pApp = static_cast< CMemMonitorApp * >( ::AfxGetApp( ) );
    if ( pApp == NULL || pApp->GetMemSessionDataManagerPtr( ) == NULL || pApp->GetMemSessionDataManagerPtr( )->GetMemRawDataQueuePtr( ) == NULL )
    {
        pCmdUI->SetText( "" );
    }
    else
    {
        char szText[ 32 ];
        sprintf( szText, "%d", pApp->GetMemSessionDataManagerPtr( )->GetMemRawDataQueuePtr( )->GetSize( ) );
        pCmdUI->SetText( szText );
    }
}
