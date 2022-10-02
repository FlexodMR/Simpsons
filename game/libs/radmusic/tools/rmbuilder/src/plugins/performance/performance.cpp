// PerformanceView.cpp : implementation file
//

#include <pch.hpp>
#include <framework/rmbuilder.h>
#include <plugins/performance/performance.h>
#include <plugins/buildman/buildman.h>
#include <plugins/dataman/dataman.h>
#include <plugins/time/timer.h>

#include <radmusic/music/music_composition.hpp>
#include <radmusic/music/music_performance.hpp>

#include <radmusictools.hpp>
#include <radstring.hpp>
#include <memory/memory.hpp>
#include <radmusic/radmusic.hpp>
#include <radmusic/music/music_composition.hpp>
#include "controls/faderctrl.h"
#include "controls/stringselctrl.h"
#include "controls/eventctrl.h"
#include <vector>

#include "plugins/windowman/windowman.h"

#define MIN_WIDTH 240

#define EVENT_START 0xA000
#define EVENT_END   ( EVENT_START + 1000 )
#define STATE_START EVENT_END
#define STATE_END   ( STATE_START + 1000 )

#define FADER_CTRL_VOL   0x0100
#define FADER_CTRL_PITCH 0x0101

#define PERFORMANCE_PANEL_HEIGHT 110
#define BUTTON_HEIGHT 20 
#define FOOTER_HEIGHT 20

#define ID_CONTROLS 399

#define ID_PLAY 400
#define ID_STOP 401
#define ID_RELOAD 402
#define ID_THRASH 403
#define ID_KILL 404

static const char * PLUGIN_NAME = "root/plugins/performance";
static const char * WINDOWMAN   = "root/plugins/windowman";
static const char * BUILDMAN    = "root/plugins/buildman";
static const char * DATAMAN     = "root/plugins/dataman";

static void create_new_window( const char * p_name,HWND hParent );
static void destroy_windows( void );
static void load_windows( void );

class CPerformanceControlWnd : public CScrollView
{
    public:
        CPerformanceControlWnd( );
        ~CPerformanceControlWnd( ) { }

        void CreatePerformance( radmusic::performance * );
        void DestroyPerformance( void );
        
        void OnProjTick( unsigned int elapsed );
        
    protected:
    
        // overrides
        
	    virtual void PostNcDestroy( );
  	    virtual void OnDraw(CDC* pDC);      // overridden to draw this view
        virtual BOOL OnCommand( WPARAM wParam, LPARAM lParam )
        {
            ::SendMessage( ::GetParent( m_hWnd ), WM_COMMAND, wParam, lParam );
            return TRUE;
        }
        
	    void OnSize(UINT nType, int cx, int cy);
	    
    private:

        radmusic::performance * p_performance; 
        
	    DECLARE_MESSAGE_MAP()

};

class CPerformanceWnd : public CWnd
{
    public:
    
	    CPerformanceWnd( );
	    virtual ~CPerformanceWnd();
	        
        void CreatePerformance( void );
        void DestroyPerformance( void );
        
        void OnProjTick( unsigned int elapsed );

    protected:
        
        // overrieds
        
	    virtual BOOL OnCommand(WPARAM wParam, LPARAM lParam);
	    virtual BOOL OnNotify(WPARAM wParam, LPARAM lParam, LRESULT* pResult);

	    
	    // windows messages
	    
	    int  OnCreate(LPCREATESTRUCT lpCreateStruct);
	    void OnDestroy( );
        void OnPaint( void);
	    void OnClose( );
	                
        // button handlers
        
	    void OnPerformanceCreate();
	    void OnPerformancePlay();
	    void OnPerformanceStop();
	    void OnPerformanceKill();
	    void OnPerformanceThrash();
	    void OnSizing( UINT nSide, LPRECT lpRect );	
	    void OnSize( UINT nType, int cx, int cy );
	          
    private:
   

        CPerformanceControlWnd m_wndControls;
        
        CStatic        m_wndStatic_CacheMemory;
        CStatic        m_wndStatic_SoundMemory;
	    CFaderCtrl     m_wndFader_Vol;
        CFaderCtrl     m_wndFader_Pitch;
        CButtonCtrl    m_wndPlayButton;
        CButtonCtrl    m_wndStopButton;
        CButtonCtrl    m_wndReloadButton;   
        CButtonCtrl    m_wndThrashButton;
        CButtonCtrl    m_wndKillButton;
        
        radmusic::performance * p_performance;
        radmusic::composition * p_composition;        
    
        unsigned int m_NextThrashTime;
        bool m_Thrash;
        
	    DECLARE_MESSAGE_MAP()              

};





std::vector<CPerformanceWnd*> g_PerformanceWindows;
plugin_fx * g_p_plugin_send = 0;

void performance_plugin_fx( plugin_msg * p_m )
{
    switch( p_m->id )
    {
        case plugin_initialize:
        {
            plugin_initialize_params* p_d = (plugin_initialize_params*) p_m;
            
            g_p_plugin_send = p_d->p_fx;
            break;
        }
        case plugin_terminate:
        {
            g_p_plugin_send = 0;
            break;
        }
        case plugin_query_name:
        {
            plugin_query_name_params* p_d = (plugin_query_name_params*) p_m;
            strcpy( p_d->name, PLUGIN_NAME );
            break;
        }
        case time_tick:
        {
            time_tick_params* p_d = (time_tick_params*) p_m;
            
            for( std::vector<CPerformanceWnd*>::iterator i = g_PerformanceWindows.begin();
                 i != g_PerformanceWindows.end( );
                 i++ )
            {
                (*i)->OnProjTick( p_d->elapsed );
            }
            
            break;
          
                

            
        }
        case performance_launch:
        {
            performance_launch_params * p_d = (performance_launch_params*) p_m;
                
            windowman_create_frame_params cf;
            cf.hdr.id = windowman_create_frame;
            cf.hdr.size = sizeof( cf );
            strcpy( cf.hdr.target, WINDOWMAN );
            strcpy( cf.plugin, PLUGIN_NAME );
            strcpy( cf.instance, p_d->file_name );
            cf.closeable = true;
            
            g_p_plugin_send( & cf.hdr );
            
            create_new_window( p_d->file_name, cf.hWnd );            
    
            dataman_add_params da;
            da.hdr.id = dataman_add;
            da.hdr.size = sizeof( da );
            strcpy( da.hdr.target, DATAMAN );
            strcpy( da.array_name, "root/performanceman/performances" );
            sprintf( da.value, "[file_name=\"%s\"]", p_d->file_name );
            
            g_p_plugin_send( & da.hdr );
            rAssert( da.ok );            
                        
            break;
        }
        case project_new:
        {
            destroy_windows( );                
            break;
        }
        case project_destroy:
        {
            destroy_windows( );
            break;
        }
        case project_load:
        {
            destroy_windows( );
            load_windows( );              
            break;
        }
    }
}

BEGIN_MESSAGE_MAP(CPerformanceWnd, CWnd)
	ON_WM_CREATE()
	ON_WM_DESTROY()
	ON_WM_CANCELMODE()
	ON_WM_SIZE()
	ON_WM_CLOSE()
	ON_WM_CAPTURECHANGED()
    ON_COMMAND( ID_PLAY, OnPerformancePlay )
    ON_COMMAND( ID_STOP, OnPerformanceStop )
    ON_COMMAND( ID_RELOAD, OnPerformanceCreate )
    ON_COMMAND( ID_THRASH, OnPerformanceThrash )
    ON_COMMAND( ID_KILL,   OnPerformanceKill )
    ON_WM_PAINT()
    ON_WM_SIZING()
END_MESSAGE_MAP()
        
CPerformanceWnd::CPerformanceWnd( void )
    :
    p_performance( 0 ),
    p_composition( 0 ),
    m_NextThrashTime( 0 ),
    m_Thrash( false )       
{

}

CPerformanceWnd::~CPerformanceWnd()
{
}


int CPerformanceWnd::OnCreate(LPCREATESTRUCT lpCreateStruct) 
{
	m_wndFader_Vol.Create( CString( "vol" ), this, FADER_CTRL_VOL, CPoint( 20, 10 ) );
    m_wndFader_Pitch.Create( CString( "ptch" ), this, FADER_CTRL_PITCH, CPoint( 20 + 28, 10 ) );
    
    m_wndStatic_CacheMemory.Create( "Cache(x2): ?", WS_BORDER | WS_CHILD | WS_VISIBLE, CRect( 0, 0, 0, 0 ), this, 0xFF00 );
    m_wndStatic_SoundMemory.Create( "Sound(x2): ?", WS_BORDER | WS_CHILD | WS_VISIBLE, CRect( 0, 0, 0, 0 ), this, 0xFF00 );

    m_wndFader_Pitch.SetRange( 0.0f, 2.0f );

    CFont gui;	
    gui.CreateStockObject( DEFAULT_GUI_FONT );

    m_wndStatic_CacheMemory.SetFont( & gui );
    m_wndStatic_SoundMemory.SetFont( & gui );
    
    m_wndPlayButton.Create(   play, this, ID_PLAY , CPoint( 20 + ( 28 * 2 ), 10 ));
    m_wndStopButton.Create(   stop, this, ID_STOP, CPoint( 20 + ( 28 * 2 ) + 26, 10 ) );
    m_wndReloadButton.Create( exclm, this, ID_RELOAD, CPoint( 20 + ( 28 * 2 ) + ( 26 * 2 ), 10 ) );
    
    m_wndThrashButton.Create( spdr, this, ID_THRASH, CPoint( 20 + ( 28 * 2 ) + ( 26 * 3 ), 10 ) );
    m_wndKillButton.Create( no, this, ID_KILL, CPoint( 20 + ( 28 * 2 ) + ( 26 * 4 ), 10 ) );

	m_wndControls.Create(
	    AfxRegisterWndClass( 0, AfxGetApp( )->LoadStandardCursor( IDC_ARROW ), 0, 0 ),
	    "pot" , WS_VISIBLE | WS_CHILD | WS_CLIPCHILDREN, CRect( 0, 0, 0, 0 ), this, ID_CONTROLS, NULL);
          
	return 0;
}

void CPerformanceWnd::OnClose( )
{
    DestroyWindow( );
}
	    
void CPerformanceWnd::OnDestroy( )
{   
    char title[ 256 ];
    GetWindowText( title, 256 );
    
    windowman_destroy_frame_params df;
    df.hdr.id = windowman_destroy_frame;
    df.hdr.size = sizeof( df );
    strcpy( df.hdr.target, WINDOWMAN );
    strcpy( df.plugin, PLUGIN_NAME );
    strcpy( df.instance, title );
    g_p_plugin_send( & df.hdr );
    
    CWnd::OnDestroy();
}

void CPerformanceWnd::OnPaint()
{
    CPaintDC dc(this); // device context for painting

    CRect client;
    GetClientRect( & client );              
    
    
    CRect pp( client );
    pp.bottom = PERFORMANCE_PANEL_HEIGHT;
    draw_bg( & pp);
    
    back_dc( ).FillSolidRect(
        0,
        client.Height( ) - FOOTER_HEIGHT,
        client.Width( ),
        client.Height( ),
        RGB( 128, 128, 128 ) );

    if ( p_performance != NULL )
    {
        char display[ 256 ];        
        char regionName[ 256 ];
        char beat[ 256 ];
        
        radmusic::debug_performance_current_region_name(
            p_performance,
            regionName, 256 );

        float b;

        if ( radmusic::debug_performance_current_beat( p_performance, & b) )
        {
            sprintf( beat, "%.2f", b + 1.0f );
        }
        else
        {
            strcpy( beat, "?" );
        }
        
        sprintf( display, "Region: [%s] Beat:[%s]",
            regionName,
            beat );
        
        draw_text( 0, client.bottom - FOOTER_HEIGHT, client.Width( ), FOOTER_HEIGHT, display );
    }
    
    
    dc.BitBlt( 0, 0, client.Width( ), client.Height( ),
               & back_dc( ), 0, 0, SRCCOPY );
}
		
void CPerformanceWnd::OnPerformancePlay( void )
{
	if ( p_performance != NULL )
	{
	    radmusic::performance_paused( p_performance, false );
	}	
}	
	
void CPerformanceWnd::OnPerformanceStop( void )
{
	if ( p_performance != NULL )
	{
	    radmusic::performance_paused( p_performance, true );
	}
}	

void CPerformanceWnd::OnPerformanceCreate() 
{
    DestroyPerformance( );
    
    char composition_file_path[ 256 ];
    char source_file_path[ 256 ];
    char target_file_path[ 256 ];
    
    GetWindowText( composition_file_path, 256 );
    
    buildman_query_source_root_params sr;
    sr.hdr.id = buildman_query_source_root;
    sr.hdr.size = sizeof( sr );
    strcpy( sr.hdr.target, BUILDMAN );
    g_p_plugin_send( & sr.hdr );
    
    buildman_query_target_root_params tr;
    tr.hdr.id = buildman_query_target_root;
    tr.hdr.size = sizeof( tr );
    strcpy( tr.hdr.target, BUILDMAN );
    strcpy( tr.target_name, "test" ); // REVIEW
    g_p_plugin_send( & tr.hdr );
    
    strcpy( source_file_path, sr.root );
    strcat( source_file_path, "/" );
    strcat( source_file_path, composition_file_path );
    
    strcpy( target_file_path, tr.root );
    strcat( target_file_path, "/" );
    strcat( target_file_path, composition_file_path );
    
    char drive[ 256 ];
    char dir[ 256 ];
    char file[ 256 ];
    char ext[ 256 ];
    
	::_splitpath( target_file_path, drive, dir, file, ext );
    ::_makepath( target_file_path, drive, dir, file, ".rms" );	

    char search_path[ 256 ];
    ::_makepath( search_path, drive, dir, 0, 0 );
    
    bool compiled_ok =
        ::radMusicToolsCompileScript(
            false,
            source_file_path,
            target_file_path,
            IRadSoundHalAudioFormat::PCM,
            true,
            true );
            
    if ( false == compiled_ok )
    {
        char buf[ 256 ];
    
        sprintf( buf, "Failed to compile script: [%s]\n", radMusicToolsGetLastError( ) );
        MessageBox( buf, MB_OK );
    }
    else
    {
        #ifndef USE_RADLOAD
            rAssert( p_composition == 0 );
            
            p_composition = radmusic::composition_new_from_file( target_file_path );
            
        #else            
            radLoadRequest * p_request;
            
            radLoadInstance( )->Load( script, & p_request );
            
            while ( ! p_request->IsComplete( ) )
            {
                rmbSleep( );
            }
            
            radmusic::radload_composition_adapter * p_radload_composition_adapter
                = radLoadFind< radmusic::radload_composition_adapter >(
                    p_request->GetInventory( ), radKey( 0 ) );
                    
            p_composition = p_radload_composition_adapter->p_composition;
            p_radload_composition_adapter->p_composition = 0;        
            p_request->Release( );
        #endif
        
        if ( 0 != p_composition )
        {
            rAssert( p_performance == 0 );            
	        p_performance = radmusic::performance_new(
	            p_composition,
	            search_path, radMemorySpace_Local );
  	        
            ref< IRadString > xIRadString_Error;
        
            char error_msg[ 4096 ];
            
            bool constraints_ok = radmusic::composition_check_constraints( p_composition->ptr_composition, error_msg, 4096 );
            
            if ( false == constraints_ok  )
            {
                MessageBox( error_msg );
            }

		    rDebugString( "Finished Converting Files ...\n" );    

            unsigned int soundMemory = 0;
            unsigned int cacheMemory = 0;
            unsigned int numSoundObjects = 0;
            unsigned int numCacheObjects = 0;
      
            ods::group ptr_group_largest_sound_memory = (ods::group) ods::pointer_null;
            ods::group ptr_group_largest_cache_memory = (ods::group) ods::pointer_null;

            ods::group ptr_group_root = ods::group_array_item_at(
                ods::comp_root_groups( p_performance->p_composition->ptr_composition ),
                0 );
            
            radmusic::group_memory_sizes_recurse(
                ptr_group_root,
                & numSoundObjects, & soundMemory, & ptr_group_largest_sound_memory,
                & numCacheObjects, & cacheMemory, & ptr_group_largest_cache_memory );

            soundMemory *= 2;
            cacheMemory *= 2;
            
            char cache_memory_name[ 256 ];
            char sound_memory_name[ 256 ];
            
            ods::group_name( ptr_group_largest_sound_memory, sound_memory_name, 256 );
            ods::group_name( ptr_group_largest_cache_memory, cache_memory_name, 256 );

            char buf[ 256 ];
            sprintf( buf, "Cache(x2):%s\n%dB %.2fK", cache_memory_name, cacheMemory, ::radSoundUIntToFloat( cacheMemory ) / 1024.0f );
            m_wndStatic_CacheMemory.SetWindowText( buf );
            
            sprintf( buf, "Sound(x2):%s:\n%dB %.2fK", sound_memory_name, soundMemory, ::radSoundUIntToFloat( soundMemory ) / 1024.0f );
            m_wndStatic_SoundMemory.SetWindowText( buf );

            CreatePerformance( );
        }
	    else
	    {
            MessageBox( "Failed to open compiled script file" );
                
            memory::free( p_composition );
            p_composition = 0;
	    }
    }

    //m_WndProgress.Hide( );
} 


void CPerformanceWnd::OnSize(UINT nType, int cx, int cy) 
{
    CRect client;
    GetClientRect( & client );
    
    m_wndControls.MoveWindow( 0, PERFORMANCE_PANEL_HEIGHT, client.Width( ), client.Height( ) - PERFORMANCE_PANEL_HEIGHT - FOOTER_HEIGHT, true );
    
    m_wndStatic_CacheMemory.MoveWindow( 20 + (28 * 2), 10 + 26 , client.Width( ) - (20 + 20 + (28 * 2)), 30, true );
    m_wndStatic_SoundMemory.MoveWindow( 20 + (28 * 2), 10 + 26 + 30, client.Width( ) - (20 + 20 + (28 * 2)), 30, true );
  
}

void CPerformanceWnd::OnSizing( UINT nSide, LPRECT lpRect )
{
    int width = lpRect->right - lpRect->left;
    int under = MIN_WIDTH - width;
    
    if ( under > 0 )
    {
        if ( nSide == 1 )
        {
            lpRect->left -= under;
        }
        else if( nSide == 2 )
        {
            lpRect->right += under;
        }
    }

    CWnd::OnSizing( nSide, lpRect );
}	


BOOL CPerformanceWnd::OnCommand(WPARAM wParam, LPARAM lParam) 
{
	int wNotifyCode = HIWORD(wParam); // notification code 
	int wID = LOWORD(wParam);         // item, control, or accelerator identifier 
	HWND hwndCtl = (HWND) lParam;      // handle of control

	if ( wID >= EVENT_START && wID < EVENT_END )
	{
	    radmusic::performance_trigger_event( p_performance, wID - EVENT_START );
	}
	
	if ( wID >= STATE_START && wID < STATE_END )
	{
	    CStringSelCtrl * p_c = (CStringSelCtrl*) GetDlgItem( wID );
	    
	    unsigned int item = p_c->GetSelectedItem( );
	    
	    radmusic::performance_state_value( p_performance, wID - STATE_START, item );
	    
	}

	return CWnd ::OnCommand(wParam, lParam);
}

BOOL CPerformanceWnd::OnNotify(WPARAM wParam, LPARAM lParam, LRESULT* pResult) 
{
    int idCtrl = (int) wParam; 
    FADER_NMHDR * pNmh = (FADER_NMHDR*) lParam;

	if ( idCtrl == FADER_CTRL_VOL )
	{
		if ( p_performance != NULL )
		{
		    radmusic::performance_volume( p_performance, pNmh->position );
		}
	}
    else if ( idCtrl == FADER_CTRL_PITCH )
    {
        if ( p_performance != NULL )
        {
            radmusic::performance_pitch( p_performance, pNmh->position );
        }
    }

	
	return CWnd ::OnNotify(wParam, lParam, pResult);
}


void CPerformanceWnd::OnPerformanceKill() 
{
    if ( p_performance != NULL )
    {
        radmusic::performance_stop( p_performance );
    }
	
}

void CPerformanceWnd::OnPerformanceThrash() 
{
    m_Thrash = ! m_Thrash;
	
}

void CPerformanceWnd::DestroyPerformance( void )
{
    m_wndControls.DestroyPerformance( );
    	    
    if ( p_performance != 0 )
    {
        m_wndStatic_CacheMemory.SetWindowText( "Cache(x2): ?" );
        m_wndStatic_SoundMemory.SetWindowText( "Sound(x2): ?" );
            
        radmusic::performance_delete( & p_performance );
        radmusic::composition_delete( & p_composition );     
    } 
}

void CPerformanceWnd::OnProjTick( unsigned int dif )
{
    if ( p_performance != 0 )
    {
        radmusic::performance_update( p_performance, dif );
            
        if ( m_Thrash == true )
        {
            unsigned int now = radTimeGetMilliseconds( );
            
            if ( ( now - m_NextThrashTime ) < 0x80000000 )
            {
                unsigned int n = radmusic::performance_num_events( p_performance );
                radmusic::performance_trigger_event( p_performance, rand() % n );
                m_NextThrashTime = now + rand() % 2000;
            }
        }
        
        m_wndControls.OnProjTick( dif );
        
        CRect rect;
        GetClientRect( & rect );
        rect.top = rect.bottom - FOOTER_HEIGHT;
        
        InvalidateRect( & rect, FALSE );
            
    }
        

    
}

void CPerformanceWnd::CreatePerformance( void )
{
    m_wndControls.CreatePerformance( p_performance );
	m_wndFader_Vol.SetPos( 1.0f );
    m_wndFader_Pitch.SetPos( 1.0f );
}










//----------------------------------------------------------------------------










CPerformanceControlWnd::CPerformanceControlWnd( )
    :
    p_performance( 0 )
{
    
}


void CPerformanceControlWnd::CreatePerformance( radmusic::performance * p_perf )
{
    p_performance = p_perf;

	if ( p_perf != NULL )
	{
        CFont gui;
        gui.CreateStockObject( DEFAULT_GUI_FONT );

		for ( unsigned int i = 0; i < radmusic::performance_num_events( p_perf ); i ++ )
		{
		    char event_name[ 256 ];
		    radmusic::performance_event_name( p_perf, i, event_name, 256 );

            CEventCtrl * p_control = new CEventCtrl();
            p_control->Create( event_name, this, EVENT_START + i, CPoint( 0, 0 ) );		    
		}
		
		for( unsigned int i = 0; i < radmusic::performance_num_states( p_perf ); i ++ )
		{
		    char state_name[ 256 ];
		    radmusic::performance_state_name( p_perf, i, state_name, 256 );
		    
		    CStringSelCtrl * p_control = new CStringSelCtrl( );
		    p_control->Create( state_name, 20, this, (STATE_START + i), CPoint( 0, 0 ) );
		    
		    for( unsigned int v = 0; v < radmusic::performance_num_state_values( p_perf, i ); v ++ )
		    {
		        radmusic::performance_state_value_name( p_perf, i, v, state_name, 256 );
		        p_control->AddItem( state_name );
		    }
		    
            unsigned int state = radmusic::performance_state_value( p_performance, i );
            p_control->SelectItem( state );		    
		}

 	}

	CRect client;

	GetClientRect( & client );

	OnSize( SIZE_RESTORED, client.right, client.bottom ); 
}

void CPerformanceControlWnd::DestroyPerformance( void )
{
	if ( p_performance != NULL )
	{
		for( unsigned int i = 0; i < radmusic::performance_num_events( p_performance ); i ++ )
		{
			CEventCtrl * p_control = (CEventCtrl*) GetDlgItem( EVENT_START + i );
			ASSERT( p_control );
			p_control->DestroyWindow( );
			delete p_control;
		}
		
		for( unsigned int i = 0; i < radmusic::performance_num_states( p_performance ); i ++ )
		{
			CStringSelCtrl * p_control = (CStringSelCtrl*) GetDlgItem( STATE_START + i );
			ASSERT( p_control );
			p_control->DestroyWindow( );
			delete p_control;
		}
        p_performance = NULL;
	}
}

    
BEGIN_MESSAGE_MAP(CPerformanceControlWnd, CScrollView)
	ON_WM_CREATE()
	ON_WM_CANCELMODE()
	ON_WM_SIZE()
	ON_WM_CAPTURECHANGED()
END_MESSAGE_MAP()


void CPerformanceControlWnd::PostNcDestroy( void )
{
    // don't call base clase it delete's this ... MFC stupid shit.
}

void CPerformanceControlWnd::OnDraw(CDC* pDC)
{
	CDocument* pDoc = GetDocument();
	CRect clientRect;
	GetClientRect( & clientRect );

    CPoint point = GetScrollPosition( );

    clientRect.OffsetRect( point );    
    
    pDC->FillSolidRect( & clientRect, RGB( 150, 150, 150 ) );
}

void CPerformanceControlWnd::OnSize(UINT nType, int cx, int cy) 
{
	CScrollView::OnSize(nType, cx, cy);

    SetScrollSizes( MM_TEXT,
        CSize( 0, 10000 ),
        CSize( 0, cy == 0 ? 0 : cy - ( cy % BUTTON_HEIGHT ) ),
        CSize( 0, BUTTON_HEIGHT ) );

    CPoint scroll = GetDeviceScrollPosition( );

	if ( p_performance != NULL )
	{
	    int row = 0;

        for( unsigned int i = 0; i < radmusic::performance_num_states( p_performance ); i ++ )
        {
            CStringSelCtrl * p_control = (CStringSelCtrl*)GetDlgItem( STATE_START + i);
            CRect r;
            p_control->GetWindowRect( & r );           
            p_control->MoveWindow( 0, row - scroll.y, r.Width(), r.Height(), true );
            row += r.Height();
        }
        
        
		for ( unsigned int i = 0; i < radmusic::performance_num_events( p_performance ); i ++ )
		{
		    CEventCtrl * p_control  = (CEventCtrl*)GetDlgItem( EVENT_START + i );
            CRect r;
            p_control->GetWindowRect( & r );
            p_control->MoveWindow( 0, row - scroll.y, cx, r.Height(), true );
            row += r.Height();           
	    }
	}
}

void CPerformanceControlWnd::OnProjTick( unsigned int ms )
{
    if ( p_performance != 0 )
    {
        unsigned int num_states = radmusic::performance_num_states( p_performance );
        
        for( unsigned int i = 0; i < num_states; i ++ )
        {
            unsigned int current_state = radmusic::performance_state_value( p_performance, i );
            
            CStringSelCtrl * p_ssc = (CStringSelCtrl*) GetDlgItem( STATE_START + i );
            
            p_ssc->SelectItem( current_state );
        }
    }
}

void create_new_window( const char * p_file_name, HWND hWnd )
{                    
    CPerformanceWnd * p_pw = new CPerformanceWnd( );
    
    CWnd parent;
    parent.Attach( hWnd );
    
    CRect r;
    GetClientRect( hWnd, & r );
    
    BOOL ok = p_pw->Create(
        AfxRegisterWndClass(
            CS_DBLCLKS | CS_HREDRAW | CS_VREDRAW,
            AfxGetApp( )->LoadStandardCursor( IDC_ARROW ),
            (HBRUSH) ::GetStockObject( NULL_BRUSH ),
            0 ),
        p_file_name,
        WS_CLIPSIBLINGS | WS_CLIPCHILDREN | WS_CHILD | WS_VISIBLE,
        r,
        & parent,
        0,
        NULL );

        
    rAssert( ok );

    parent.Detach( );

    g_PerformanceWindows.push_back( p_pw );         
}

void load_windows( void )
{
    dataman_query_collection_size_params cs;
    cs.hdr.id   = dataman_query_collection_size;
    cs.hdr.size = sizeof( cs );
    strcpy( cs.hdr.target, DATAMAN );
    strcpy( cs.entry, "root/performanceman/performances" );
    g_p_plugin_send( & cs.hdr );
    rAssert( cs.ok );
    
    dataman_get_params dg;
    
    dg.hdr.id = dataman_get;
    dg.hdr.size = sizeof( dg );
    strcpy( dg.hdr.target, DATAMAN );
    
    windowman_restore_frame_params rf;
    rf.hdr.id = windowman_restore_frame;
    rf.hdr.size = sizeof( rf );
    strcpy( rf.hdr.target, WINDOWMAN );
    strcpy( rf.plugin, PLUGIN_NAME );
    
    for( unsigned int i = 0; i < cs.collection_size; i ++ )
    {
        sprintf( dg.entry, "root/performanceman/performances/%u/file_name", i );
        g_p_plugin_send( & dg.hdr );
        rAssert( dg.ok );
        
        Parser p( dg.value, strlen( dg.value ) );
        char file_name[ 256 ];
        p.GetQuotedString( file_name, 256 );
        
        strcpy( rf.instance, file_name );
        g_p_plugin_send( & rf.hdr );
        
        create_new_window( file_name, rf.hWnd );
    }
}

void create_window( const char * file_name, HWND hWnd )
{
    CWnd parent;
    parent.Attach( hWnd);
    
    RECT client;
    ::GetClientRect( hWnd, & client );            
    
    CPerformanceWnd* pPerformanceWnd = new CPerformanceWnd( );
                    
    BOOL ok = pPerformanceWnd->Create(
        AfxRegisterWndClass(
            CS_DBLCLKS | CS_HREDRAW | CS_VREDRAW,
            AfxGetApp( )->LoadStandardCursor( IDC_ARROW ),
            (HBRUSH) ::GetStockObject( NULL_BRUSH ),
            0 ),
        file_name,
        WS_CLIPSIBLINGS | WS_CLIPCHILDREN | WS_CHILD | WS_VISIBLE,
        CRect( & client ),
        & parent,
        0,
        NULL );
        
    rAssert( ok );
    
    g_PerformanceWindows.push_back( pPerformanceWnd );

    parent.Detach( );
}

void destroy_windows( void )
{
    for( std::vector<CPerformanceWnd*>::iterator i = g_PerformanceWindows.begin( );
         i != g_PerformanceWindows.end(); i ++ )
    {
        (*i)->DestroyWindow( );
        delete (*i);
    };
    
    g_PerformanceWindows.clear();
}