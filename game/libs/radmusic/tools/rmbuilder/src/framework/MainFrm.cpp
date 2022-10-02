
#include "pch.hpp"
#include "MainFrm.h"
#include "Splash.h"
#include "res/resource.h"

#include <radsound.hpp>
#include <radload/radload.hpp>
#include <radfile.hpp>
#include <radmemorymonitor.hpp>
#include <raddebugcommunication.hpp>
#include "controls/controls.h"
#include <plugins/dataman/dataman.h>
#include <plugins/windowman/windowman.h>

#define RMB_FILE_FILTER "rmbuilder Project Files (*.rmb)|*.rmb||"
#define STRING_UNTITLED "untitled"

extern void plugin_send( plugin_msg * );

IMPLEMENT_DYNAMIC(CMainFrame, CFrameWnd)

#define ID_CUSTOM_BEGIN 0x6000
#define ID_CUSTOM_END   0x7000

BEGIN_MESSAGE_MAP(CMainFrame, CFrameWnd)
	ON_WM_CREATE()
	ON_COMMAND(ID_FILE_OPEN, OnFileOpen)
	ON_WM_TIMER()
	ON_WM_DESTROY()
	ON_COMMAND(ID_FILE_SAVE, OnFileSave)
	ON_COMMAND(ID_FILE_SAVE_AS, OnFileSaveAs)
	ON_COMMAND(ID_FILE_NEW, OnFileNew)
	ON_WM_CLOSE()
	ON_WM_SIZE()
    ON_COMMAND(ID_PROJECT_SETTINGS, OnProjectSettings)
    ON_WM_DROPFILES()
    ON_COMMAND(ID_PROJECT_REFRESH, OnProjectRefresh)
    ON_COMMAND_RANGE( ID_CUSTOM_BEGIN, ID_CUSTOM_END, OnCustomCommand )
END_MESSAGE_MAP()

static UINT indicators[] =
{
	ID_SEPARATOR,           // status line indicator
    0,
    0,
    0,
	ID_INDICATOR_CAPS,
	ID_INDICATOR_NUM,
	ID_INDICATOR_SCRL,
};

extern bool g_initialized;

void rmbSleep( void )
{
    if ( g_initialized == true )
    {
        radFileService( );
        radLoadService( );
        radMemoryMonitorService( );
        radDbgComService( );

	    ::radSoundHalSystemGet( )->Service( );
	    ::radSoundHalSystemGet( )->ServiceOncePerFrame( );

        Sleep( 15 );
    }
}

int CMainFrame::OnCreate(LPCREATESTRUCT lpCreateStruct)
{
    init_controls( this );

    DragAcceptFiles( );
    
	if (CFrameWnd::OnCreate(lpCreateStruct) == -1)
		return -1;
	
	if (!m_wndToolBar.CreateEx(this) ||
		!m_wndToolBar.LoadToolBar(IDR_MAINFRAME))
	{
		TRACE0("Failed to create toolbar\n");
		return -1;      // fail to create
	}

	if (!m_wndReBar.Create(this) ||
		!m_wndReBar.AddBar(&m_wndToolBar))
	{
		TRACE0("Failed to create rebar\n");
		return -1;      // fail to create
	}

	if (!m_wndStatusBar.Create(this) ||
		!m_wndStatusBar.SetIndicators(indicators,
		  sizeof(indicators)/sizeof(UINT)))
	{
		TRACE0("Failed to create status bar\n");
		return -1;      // fail to create
	}

    m_wndStatusBar.SetPaneInfo( 3, 2, SBPS_NORMAL, 140 );
    m_wndStatusBar.SetPaneInfo( 2, 1, SBPS_NORMAL, 70 );
    m_wndStatusBar.SetPaneInfo( 1, 0, SBPS_NORMAL, 140 );
	m_wndToolBar.SetBarStyle(m_wndToolBar.GetBarStyle() |
		CBRS_TOOLTIPS | CBRS_FLYBY);

		last_timer_time = ::radTimeGetMilliseconds( );
	::SetTimer( m_hWnd, 0, 32, NULL );

	CSplashWnd::ShowSplashScreen(this);
    
	m_MainCanvas.Create(NULL, NULL, AFX_WS_DEFAULT_VIEW | WS_CLIPCHILDREN, 
		CRect(0, 0, 0, 0), this, AFX_IDW_PANE_FIRST, NULL);
        
    
    register_static_plugins();
            
    CreateDefaultDocument( ); 
           
    
	return 0;
}

BOOL CMainFrame::PreCreateWindow(CREATESTRUCT& cs)
{
	if( !CFrameWnd::PreCreateWindow(cs) )
		return FALSE;

	cs.dwExStyle &= ~WS_EX_CLIENTEDGE;
	cs.style |= WS_CLIPCHILDREN;

	cs.lpszClass = AfxRegisterWndClass(
	    CS_DBLCLKS | CS_HREDRAW | CS_VREDRAW, AfxGetApp( )->LoadStandardCursor( IDC_ARROW ),
	    (HBRUSH) ::GetStockObject( WHITE_BRUSH ),
	    0 );

	return TRUE;
}

void CMainFrame::OnFileOpen() 
{
	if ( QueryUserSaveIfModified( ) )
	{
		CFileDialog openDialog( true, ".rmb", NULL, OFN_HIDEREADONLY | OFN_OVERWRITEPROMPT, RMB_FILE_FILTER );
		
		if ( openDialog.DoModal( ) == IDOK )
		{
            OpenFile( openDialog.GetPathName(  ) );
		}
	}
}


void CMainFrame::OpenRecentFile( const char * pFileName )
{
    if ( QueryUserSaveIfModified( ) )
    {
        OpenFile( pFileName );
    }
}

void CMainFrame::CreateDefaultDocument( void )
{
    m_FileName = STRING_UNTITLED;
    
    dataman_new_params d;
    
    d.hdr.id = dataman_new;
    d.hdr.size = sizeof( d );
    strcpy( d.hdr.target, "root/plugins/dataman" );
    
    plugin_send( & d.hdr );
    
    project_new_params np;
    np.hdr.id = project_new;
    np.hdr.size = sizeof( np );
    sprintf( np.hdr.target, "root" );
    
    plugin_send( & np.hdr );      
}
void CMainFrame::OpenFile( const char * pFileName )
{
    DestroyDocument( );
        
	SetFileName( pFileName );

    AfxGetApp()->AddToRecentFileList( m_FileName ); 
    
    dataman_load_params d;
    d.hdr.id  = dataman_load;
    d.hdr.size = sizeof( d );
    strcpy( d.hdr.target, "root/plugins/dataman" );
    strcpy( d.file_name, m_FileName );

    plugin_send( & d.hdr );
    
    if ( d.ok == false )
    {
        MessageBox( "Failed to load file" ); 
        //DestroyDocument( );
        CreateDefaultDocument( );           
    }
    else
    {    
        project_load_params pr;
        pr.hdr.id = project_load;
        pr.hdr.size = sizeof( pr );
        strcpy( pr.hdr.target, "root" );
        
        plugin_send( & pr.hdr );
    }
        
}

void CMainFrame::OnFileSave() 
{
    Save( );
}

bool CMainFrame::Save( void )
{
	if ( strcmp( m_FileName, STRING_UNTITLED ) != 0 )
	{
        project_save_params ps;
        ps.hdr.id = project_save;
        ps.hdr.size = sizeof( ps );
        strcpy( ps.hdr.target, "root" );    	
    	plugin_send( & ps.hdr );
    	
	    dataman_save_params d;
	    d.hdr.id = dataman_save;
	    d.hdr.size = sizeof ( d );
	    strcpy( d.hdr.target, "root/plugins/dataman" );
	    strcpy( d.file_name, m_FileName );	    
	    plugin_send( & d.hdr );

        return true;
	}
	else
	{
		return SaveAs( );
	} 
	
	return false;
}


void CMainFrame::OnTimer(UINT nIDEvent) 
{
    rmbSleep( );
	
	CFrameWnd::OnTimer(nIDEvent);

	unsigned int now = ::radTimeGetMilliseconds( );
	unsigned int dif = now - last_timer_time;
		
    project_tick_params d;
    d.hdr.id = project_tick;
    d.hdr.size = sizeof( d );
    strcpy( d.hdr.target, "root" );
    d.elapsed = dif;

    plugin_send( & d.hdr );

    last_timer_time = now;

}

void CMainFrame::DestroyDocument( void )
{   
	SetFileName( STRING_UNTITLED );
	
	project_destroy_params pd;
	pd.hdr.id = project_destroy;
	pd.hdr.size = sizeof( pd );
	sprintf( pd.hdr.target, "root" );
	
	plugin_send( & pd.hdr );
		
	/**for( unsigned int pw = 0; pw < m_PluginWindows.size( ); pw ++ )
	{
	    ::DestroyWindow( m_PluginWindows.at( pw ) );
	}
	
    m_PluginWindows.clear( ); */
}

void CMainFrame::OnDestroy() 
{
    DestroyDocument( );
    	
	::KillTimer( m_hWnd, 0 );
    
	CFrameWnd::OnDestroy();
	
	//AfxPostQuitMessage( 0 );

}

void CMainFrame::OnFileNew() 
{
	if ( QueryUserSaveIfModified( ) )
	{
	    DestroyDocument( );
        CreateDefaultDocument( );
        
        project_refresh_params rp;
        rp.hdr.id = project_refresh;
        rp.hdr.size = sizeof( rp );
        sprintf( rp.hdr.target, "root" );
        
        plugin_send( & rp.hdr );
	}	
}

void CMainFrame::OnFileSaveAs() 
{
    SaveAs( );
	
}

bool CMainFrame::SaveAs( void )
{
    CFileDialog openDialog( false, ".rmb", m_FileName, OFN_HIDEREADONLY | OFN_OVERWRITEPROMPT, RMB_FILE_FILTER );
	
	if ( openDialog.DoModal( ) == IDOK )
	{
		SetFileName( openDialog.GetPathName( ) );

		return Save( );
	}

    return false;
}

bool CMainFrame::QueryUserSaveIfModified( void )
{
	if ( DocDirty( ) )
	{
    CString str;

		str.Format( "Save changes to %s?", m_FileName );

        CString appName;
        appName.LoadString( AFX_IDS_APP_TITLE );

		int ret = MessageBox( str, appName,
			MB_YESNOCANCEL | MB_ICONEXCLAMATION );

		if ( ret == IDCANCEL )
		{
			return false;
		}
		else if ( ret == IDNO )
		{
			return true;
		}
		else if ( ret == IDYES )
		{
			return Save( );
		}
	}

	return true;
}



void CMainFrame::OnClose() 
{
    if ( QueryUserSaveIfModified( ) )
    {	
	    CFrameWnd::OnClose();
    }
}

void CMainFrame::OnProjectSettings()
{
    /* CProjectSettingsDlg d;

    ods::rmbuilder_project ptr_rmbuilder_project
        = project_rmbuilder_project( );
            
    char perforce_port[ 256 ];
    char perforce_client[ 256 ];
    char perforce_user[ 256 ];
    bool work_offline;
    char sound_data_root_path[ 256 ];
    char test_target_root_path[ 256 ];
    
    ods::rmbuilder_project_perforce_port( ptr_rmbuilder_project, perforce_port, 256 );           
    ods::rmbuilder_project_perforce_client( ptr_rmbuilder_project, perforce_client, 256 );
    ods::rmbuilder_project_perforce_user( ptr_rmbuilder_project, perforce_user, 256 );
    ods::rmbuilder_project_sound_data_root_path( ptr_rmbuilder_project, sound_data_root_path, 256 );
    ods::rmbuilder_project_test_target_root_path( ptr_rmbuilder_project, test_target_root_path, 256 );

    work_offline = ods::rmbuilder_project_work_offline( ptr_rmbuilder_project ); 
    
    d.m_PerforcePort   = perforce_port;
    d.m_PerforceClient = perforce_client;
    d.m_PerforceUser   = perforce_user;
    d.m_WorkOffline    = work_offline;
    d.m_DataRootPath   = sound_data_root_path;
    d.m_TestTargetRootPath = test_target_root_path;
    
    if ( d.DoModal( ) )
    {
        ods::rmbuilder_project_perforce_port( ptr_rmbuilder_project, d.m_PerforcePort );
        ods::rmbuilder_project_perforce_client( ptr_rmbuilder_project, d.m_PerforceClient );
        ods::rmbuilder_project_perforce_user( ptr_rmbuilder_project, d.m_PerforceUser );
        ods::rmbuilder_project_work_offline( ptr_rmbuilder_project, d.m_WorkOffline != 0 );
        ods::rmbuilder_project_sound_data_root_path( ptr_rmbuilder_project, d.m_DataRootPath );
        ods::rmbuilder_project_test_target_root_path( ptr_rmbuilder_project, d.m_TestTargetRootPath );
                
        ods::rmbuilder_project ptr_rmbp = (ods::rmbuilder_project)
            ods::project_find_instance(
                project_project( ), "the_project", 0 );
                
        //project_send( PROJ_SETTINGS_CHANGE, 0 );
    } */
}

void CMainFrame::SetFileName( const char * pFileName )
{
    m_FileName = pFileName;
    CString windowTitle;
    windowTitle.Format( "radmusic Builder - %s - Build: %s", m_FileName, __TIMESTAMP__ );
    SetWindowText( windowTitle );
}


void CMainFrame::OnDropFiles(HDROP hDrop)
{
    POINT point;
       
    DragQueryPoint( hDrop, & point );
    ClientToScreen( & point );

    windowman_drop_params d;
    
    d.hdr.id    = windowman_drop;
    d.hdr.size   = sizeof( d );
    strcpy( d.hdr.target, "root/plugins/windowman" );
            
    unsigned int num_files = ::DragQueryFile( hDrop, -1, NULL, 0 );

    d.screen_x = point.x;
    d.screen_y = point.y;
    
    for( unsigned int i = 0; i < num_files; i ++ )
    {
        ::DragQueryFile( hDrop, i, d.file_path, 256 );
        
        plugin_send( (plugin_msg*) & d );
    }
    
    ::DragFinish( hDrop );
}

BOOL CMainFrame::OnNotify(WPARAM wParam, LPARAM lParam, LRESULT* pResult)
{
    return CFrameWnd::OnNotify(wParam, lParam, pResult);
}

void CMainFrame::OnProjectRefresh()
{
    project_refresh_params d;
    d.hdr.id = project_refresh;
    d.hdr.size = sizeof( d );
    strcpy( d.hdr.target, "root" );
    
    plugin_send( & d.hdr );
}

void CMainFrame::OnCustomCommand( UINT id )
{
    plugin_msg m;
    m.id = (plugin_msg_id) (id - ID_CUSTOM_BEGIN);
    m.size = sizeof( m );
    strcpy( m.target, "root" );
    plugin_send( & m );
}

