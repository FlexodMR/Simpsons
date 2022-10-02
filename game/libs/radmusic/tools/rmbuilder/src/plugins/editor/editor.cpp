
#include <pch.hpp>
#include <plugins/editor/editor.h>
#include <plugins/editor/editorwnd.h>
#include <plugins/windowman/windowman.h>
#include <plugins/dataman/dataman.h>
#include <plugins/time/timer.h>
#include <ods/parser.hpp>
#include <raddebug.hpp>
#include <vector>
#include <algorithm>

static const char * PLUGIN_NAME = "root/plugins/editor";
static const char * WINDOWMAN   = "root/plugins/windowman";
static const char * DATAMAN     = "root/plugins/dataman";

static void destroy_windows( void );
static void load_windows( void );
static void create_window( const char * p_file, HWND hWnd );
void window_closing( CEditorWnd * );
void destroy_window_frame( CEditorWnd* );

std::vector<CEditorWnd*> g_EditorWindows;

plugin_fx * g_p_editor_plugin_send;

void editor_plugin_fx( plugin_msg * p_m )
{
    switch( p_m->id )
    {   
        case plugin_initialize:
        {
            plugin_initialize_params* p_d = (plugin_initialize_params*) p_m;
            g_p_editor_plugin_send = p_d->p_fx;
            
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
           /* time_tick_params* p_d = (time_tick_params*) p_m;
            
            for( std::vector<CEditorWnd*>::iterator i = g_EditorWindows.begin( );
                 i != g_EditorWindows.end(); i ++ )
            {
                (*i)->InvalidateRect( NULL );
            }*/
                 
            break;
        }
        case editor_launch:
        {
            editor_launch_params * p_d = (editor_launch_params*) p_m;
                
            windowman_create_frame_params cf;
            cf.hdr.id = windowman_create_frame;
            cf.hdr.size = sizeof( cf );
            strcpy( cf.hdr.target, WINDOWMAN );
            strcpy( cf.plugin, PLUGIN_NAME );
            strcpy( cf.instance, p_d->file );
            cf.closeable = true;
            
            g_p_editor_plugin_send( & cf.hdr );
            
            create_window( p_d->file, cf.hWnd );            
    
            dataman_add_params da;
            da.hdr.id = dataman_add;
            da.hdr.size = sizeof( da );
            strcpy( da.hdr.target, DATAMAN );
            strcpy( da.array_name, "root/editorman/editors" );
            sprintf( da.value, "[file_name=\"%s\"]", p_d->file );
            
            g_p_editor_plugin_send( & da.hdr );
            rAssert( da.ok );            
                        
            break;
        }
        case project_save:
        {
            for( std::vector<CEditorWnd*>::iterator i = g_EditorWindows.begin( );
                 i != g_EditorWindows.end( ); i ++ )
            {
                (*i)->SaveFile( );
            }
            
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

void destroy_windows( void )
{
    for( std::vector<CEditorWnd*>::iterator i = g_EditorWindows.begin( );
         i != g_EditorWindows.end(); i ++ )
    {
        destroy_window_frame( *i);
        delete *i;
    };
    
    g_EditorWindows.clear( );
}

void destroy_window_frame( CEditorWnd * p_ew )
{
    char title[ 256 ];
    p_ew->GetWindowText( title, 256 );
    
    windowman_destroy_frame_params df;
    df.hdr.id = windowman_destroy_frame;
    df.hdr.size = sizeof( df );
    strcpy( df.hdr.target, WINDOWMAN );
    strcpy( df.plugin, PLUGIN_NAME );
    strcpy( df.instance, title );
    g_p_editor_plugin_send( & df.hdr );
}
    
void window_closing( CEditorWnd * p_ew)
{
    std::vector<CEditorWnd*>::iterator i =
        std::find(
            g_EditorWindows.begin( ),
            g_EditorWindows.end( ),
            p_ew );

    rAssert( i != g_EditorWindows.end( ) );
    g_EditorWindows.erase( i );
    
    destroy_window_frame( p_ew );
    delete p_ew;        
}

void load_windows( void )
{
    dataman_query_collection_size_params cs;
    cs.hdr.id   = dataman_query_collection_size;
    cs.hdr.size = sizeof( cs );
    strcpy( cs.hdr.target, DATAMAN );
    strcpy( cs.entry, "root/editorman/editors" );
    g_p_editor_plugin_send( & cs.hdr );
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
        sprintf( dg.entry, "root/editorman/editors/%u/file_name", i );
        g_p_editor_plugin_send( & dg.hdr );
        rAssert( dg.ok );
        
        Parser p( dg.value, strlen( dg.value ) );
        char file_name[ 256 ];
        p.GetQuotedString( file_name, 256 );
        
        strcpy( rf.instance, file_name );
        g_p_editor_plugin_send( & rf.hdr );
        
        create_window( file_name, rf.hWnd );
    }
}

void create_window( const char * file_name, HWND hWnd )
{
    CWnd parent;
    parent.Attach( hWnd);
    
    RECT client;
    ::GetClientRect( hWnd, & client );            
    
    CEditorWnd* pEditorWnd = new CEditorWnd( );
                    
    BOOL ok = pEditorWnd->Create(
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
    
    g_EditorWindows.push_back( pEditorWnd );

    parent.Detach( );
}