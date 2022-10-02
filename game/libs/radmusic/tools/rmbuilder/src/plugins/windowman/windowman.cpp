#include <pch.hpp>
#include <plugins/framework/framework.h>
#include <plugins/windowman/windowman.h>
#include <plugins/dataman/dataman.h>
#include <ods/parser.hpp>
#include <raddebug.hpp>
#include <vector>
#include <algorithm>

char * CLASS_NAME = "plugin_window";

struct window_data;

static const char * PLUGIN_NAME = "root/plugins/windowman";
static const char * DATAMAN     = "root/plugins/dataman";
static const char * FRAMEWORK   = "root/plugins/framework";
static std::vector< HWND > g_FrameWindows;

static ATOM g_hPlugInWindowClass = 0;
static plugin_fx * g_p_plugin_send = 0;

static LRESULT CALLBACK plugin_window_proc( HWND hWnd, UINT msg, WPARAM wParam, LPARAM lParam);

static HWND create_frame( const char * p_plugin_name, const char * p_instance_name, bool closeable, int left, int top, int right, int bottm, const char * p_title );

static HWND on_create_frame( const char * p_plugin_name, const char * p_instance_name, bool closeable );
static HWND on_restore_frame( const char * p_plugin_name, const char * p_instance_name );
static void on_destroy_frame( const char * p_plugin_name, const char * p_instance_name );
static void on_set_window_title( const char * p_plugin_name, const char * p_instance_name, const char * p_title ); 
static void on_drop( int screen_x, int screen_y, const char * p_file_path );

static HWND get_main_canvas_handle( );
static HWND find_frame( const char * p_plugin_name, const char * p_instance_name );

static void   update_window_position( HWND hWnd );
static char * get_plugin_name( HWND hPlugin );
static char * get_instance_name( HWND hPlugin );

static window_data* get_window_data( HWND hWnd );
static window_data* new_window_data( );
static void         delete_window_data( window_data ** pp_wd );

static void set_string( char ** p_string, const char * p_new_value );

struct window_data
{
    char * p_instance_name;
    char * p_plugin_name;
};

void windowman_plugin_fx( plugin_msg * p_m )
{
    switch( p_m->id )
    {
        case plugin_initialize:
        {
            plugin_initialize_params * p_d = (plugin_initialize_params*) p_m;
            g_p_plugin_send = p_d->p_fx;
            
            WNDCLASSEX wc;
            
            wc.cbSize        = sizeof( wc );
            wc.style         = CS_HREDRAW | CS_VREDRAW;
            wc.lpfnWndProc   = plugin_window_proc;
            wc.cbClsExtra    = 0;
            wc.cbWndExtra    = sizeof( LONG_PTR );
            wc.hInstance     = GetModuleHandle( NULL );
            wc.hIcon         = 0;
            wc.hCursor       = 0;
            wc.hbrBackground = (HBRUSH) GetStockObject( NULL_BRUSH );
            wc.lpszMenuName  = 0;
            wc.lpszClassName = CLASS_NAME;
            wc.hIconSm       = 0;

            g_hPlugInWindowClass = RegisterClassEx( & wc );
            
            rAssert( g_hPlugInWindowClass != 0 );
            
            break;
        }
        case plugin_terminate:
        {
            BOOL ok = UnregisterClass( CLASS_NAME, GetModuleHandle( NULL ) );
                
            break;
        }
        case plugin_query_name:
        {
            plugin_query_name_params* p_d = (plugin_query_name_params*) p_m;
            strcpy( p_d->name, PLUGIN_NAME );
            break;
        }
        case windowman_drop:
        {
            windowman_drop_params*  p_d = (windowman_drop_params*) p_m;
            on_drop( p_d->screen_x, p_d->screen_y, p_d->file_path );
            break;
        }
        case windowman_create_frame:
        {
            windowman_create_frame_params* p_d = (windowman_create_frame_params*) p_m;
            p_d->hWnd = on_create_frame( p_d->plugin, p_d->instance, p_d->closeable );
            break;
        }        
        case windowman_destroy_frame:
        {
            windowman_destroy_frame_params* p_d = (windowman_destroy_frame_params*) p_m;
            on_destroy_frame( p_d->plugin, p_d->instance );
            break;        
        }        
        case windowman_restore_frame:
        {
            windowman_restore_frame_params* p_d = (windowman_restore_frame_params*) p_m;
            p_d->hWnd = on_restore_frame( p_d->plugin, p_d->instance );
            break;            
        }
        case windowman_set_window_title:
        {
            windowman_set_window_title_params* p_d = (windowman_set_window_title_params*) p_m;
            on_set_window_title( p_d->plugin, p_d->instance, p_d->title );
            break;
        }
    }
}

window_data * new_window_data( )
{
    window_data * p_wd = (window_data*) calloc( sizeof( window_data ), 1 );
    return p_wd;
}

LRESULT CALLBACK plugin_window_proc(
    HWND hWnd,
    UINT msg,
    WPARAM wParam,
    LPARAM lParam)
{
    switch( msg )
    {
        case WM_CREATE:
        {
            CREATESTRUCT * pc = (CREATESTRUCT*) lParam;
            
            SetWindowLongPtr( hWnd, GWLP_USERDATA, (LONG_PTR) pc->lpCreateParams );
   
            return 0;
        }
        case WM_DESTROY:
        {
            window_data * p_wd = get_window_data( hWnd );
            
            dataman_remove_params d;
            d.hdr.id   = dataman_remove;
            d.hdr.size = sizeof( d );
            strcpy( d.hdr.target, DATAMAN );
            sprintf(
                d.entry,
                "root/windowman/windows/?[plugin_name==\"%s\" instance_name==\"%s\"]",
                p_wd->p_plugin_name,
                p_wd->p_instance_name );
        
            g_p_plugin_send( & d.hdr );
                
            g_FrameWindows.erase( std::find( g_FrameWindows.begin(), g_FrameWindows.end( ), hWnd ) );
                
            delete_window_data( & p_wd );
            return 0;
        }
        case WM_CLOSE:
        {
             HWND hChild = ::GetWindow( hWnd, GW_CHILD );
             SendMessage( hChild, WM_CLOSE, 0, 0 );
             return 0;
        }
        case WM_MOVE:
        {
            update_window_position( hWnd );
            return 0;
        }        
        case WM_SIZE:
        {
            int width = LOWORD( lParam );
            int height = HIWORD( lParam );
            
            HWND hChild = ::GetWindow( hWnd, GW_CHILD );
            
            if ( hChild != 0 )
            {
                MoveWindow( hChild, 0, 0, width, height, TRUE );
            }    
                    
            update_window_position( hWnd );
            
            return 0;
        }        
    }

    return DefWindowProc( hWnd, msg, wParam, lParam );
}

HWND create_frame(
    const char * p_plugin_name,
    const char * p_instance_name,
    bool closeable,
    int left,
    int top,
    int right,
    int bottom,
    const char * p_name )
{
    window_data * p_wd = new_window_data( );
    
    set_string( & p_wd->p_plugin_name, p_plugin_name );
    set_string( & p_wd->p_instance_name, p_instance_name );    
    
    HWND hWnd = ::CreateWindow(
        CLASS_NAME,
        "?",
        WS_CHILD | WS_VISIBLE| WS_CAPTION | WS_THICKFRAME | WS_CLIPSIBLINGS |
            ( closeable ? WS_SYSMENU : 0 ),
        left,
        top,
        right - left,
        bottom - top,
        get_main_canvas_handle( ),
        0,
        GetModuleHandle( NULL ),
        p_wd);

    rAssert( hWnd );           

    g_FrameWindows.insert( g_FrameWindows.begin( ), hWnd );
    
    on_set_window_title( p_plugin_name, p_instance_name, p_name );
    
    return hWnd;
}

HWND on_create_frame( const char * p_plugin, const char * p_instance, bool closeable )
{
    char buf[ 256 ];
    sprintf( buf, "%s - %s", p_plugin, p_instance );
    
    dataman_add_params d;
    
    d.hdr.id = dataman_add;
    d.hdr.size = sizeof( d );
    strcpy( d.hdr.target, DATAMAN );
    sprintf( d.array_name, "root/windowman/windows" );
    sprintf(
        d.value,
        "[plugin_name=\"%s\" instance_name=\"%s\" closeable=%s]",
        p_plugin, p_instance,
        closeable ? "true" : "false" );
        
    g_p_plugin_send( & d.hdr );    
    rAssert( d.ok );

    
    return create_frame( p_plugin, p_instance, closeable, 0, 0, 400, 400, buf );
}

HWND on_restore_frame( const char * p_plugin, const char * p_instance )
{
    char id[ 256 ];
    sprintf( id, "?[plugin_name==\"%s\" instance_name==\"%s\"]", p_plugin, p_instance );
    
    dataman_get_params dg;
    dg.hdr.id = dataman_get;
    dg.hdr.size = sizeof( dg );
    strcpy( dg.hdr.target, DATAMAN );

    char title[ 256 ];                    
    int left, top, right, bottom;
    bool closeable;
    
    sprintf( dg.entry, "root/windowman/windows/%s/position/left", id );
    g_p_plugin_send( & dg.hdr );
    rAssert( dg.ok );    
    left = atoi( dg.value );
    
    sprintf( dg.entry, "root/windowman/windows/%s/position/top", id );
    g_p_plugin_send( & dg.hdr );
    rAssert( dg.ok );    
    top = atoi( dg.value );

    sprintf( dg.entry, "root/windowman/windows/%s/position/right", id );
    g_p_plugin_send( & dg.hdr );
    rAssert( dg.ok );    
    right = atoi( dg.value );
    
    sprintf( dg.entry, "root/windowman/windows/%s/position/bottom",id );
    g_p_plugin_send( & dg.hdr );
    rAssert( dg.ok );
    bottom = atoi( dg.value );

    sprintf( dg.entry, "root/windowman/windows/%s/window_title", id );
    g_p_plugin_send( & dg.hdr );
    rAssert( dg.ok );

    Parser p( dg.value, strlen( dg.value ) );
    p.GetQuotedString( title, 256 );    
        
    sprintf( dg.entry, "root/windowman/windows/%s/closeable", id );
    g_p_plugin_send( & dg.hdr );
    rAssert( dg.ok );
    
    if ( strcmp( dg.value, "true" ) == 0)
    {
        closeable = true;
    }
    else
    {
        rAssert( strcmp( dg.value, "false" ) == 0 );
        closeable = false;
    }
    

        
    return create_frame(
        p_plugin,
        p_instance,
        closeable,
        left,
        top,
        right,
        bottom,
        title );
}

void on_destroy_frame( const char * p_plugin, const char * p_instance )
{
    HWND hWnd = find_frame( p_plugin, p_instance );
    
    if ( hWnd )
    {
        ::DestroyWindow( hWnd );
    }
}

void on_set_window_title( const char * p_plugin, const char * p_instance, const char * p_title )
{    
    HWND hWnd = find_frame( p_plugin, p_instance );
    
    if ( 0 != hWnd )
    {
        SetWindowText( hWnd, p_title );
        
        dataman_set_params ds;
        ds.hdr.id = dataman_set;
        ds.hdr.size = sizeof( ds );
        strcpy( ds.hdr.target, DATAMAN );
        sprintf( ds.entry, "root/windowman/windows/?[plugin_name==\"%s\" instance_name==\"%s\"]/window_title", p_plugin, p_instance );
        sprintf( ds.value, "\"%s\"", p_title );
        g_p_plugin_send( & ds.hdr );
        rAssert( ds.ok );
    }
}

static void on_drop( int screen_x, int screen_y, const char * p_file_path )
{
    for( std::vector<HWND>::iterator i = g_FrameWindows.begin( ); i != g_FrameWindows.end( ); i ++ )
    {
        CRect rect;
        ::GetWindowRect( *i, & rect );
        
        CPoint point( screen_x, screen_y );
        
        if ( rect.PtInRect( point ) )
        {
            ::ScreenToClient( *i, & point );
            
            plugin_drop_file_params d;
            d.hdr.id = plugin_drop_file;
            d.hdr.size = sizeof( d );
            strcpy( d.hdr.target, get_plugin_name( *i ) );
            strcpy( d.instance_name, get_instance_name( *i ) );
            
            strcpy( d.file_path, p_file_path );
            d.x = point.x;
            d.y = point.y;
            g_p_plugin_send( & d.hdr );
            
            return;
        }
    }
}


void update_window_position( HWND hWnd )
{
    RECT rect;
    
    GetWindowRect( hWnd, & rect );
    HWND hParent = GetParent( hWnd );
    
    ScreenToClient( hParent, (POINT*)( & rect.left ) );
    ScreenToClient( hParent, (POINT*)( & rect.right ) );
       
    window_data * p_wd = get_window_data( hWnd );
    
    dataman_set_params d;
    d.hdr.id = dataman_set;
    d.hdr.size = sizeof( d );
    strcpy( d.hdr.target, DATAMAN );

    sprintf( d.entry, "root/windowman/windows/?[instance_name==\"%s\" plugin_name==\"%s\"]/position/left", p_wd->p_instance_name, p_wd->p_plugin_name );    
    sprintf( d.value, "%u", rect.left );
    g_p_plugin_send( (plugin_msg*) & d );       

    sprintf( d.entry, "root/windowman/windows/?[instance_name==\"%s\" plugin_name==\"%s\"]/position/top", p_wd->p_instance_name, p_wd->p_plugin_name );    
    sprintf( d.value, "%u", rect.top);
    g_p_plugin_send( (plugin_msg*) & d );       
    
    sprintf( d.entry, "root/windowman/windows/?[instance_name==\"%s\" plugin_name==\"%s\"]/position/right", p_wd->p_instance_name, p_wd->p_plugin_name );    
    sprintf( d.value, "%u", rect.right );
    g_p_plugin_send( (plugin_msg*) & d );       
    
    sprintf( d.entry, "root/windowman/windows/?[instance_name==\"%s\" plugin_name==\"%s\"]/position/bottom", p_wd->p_instance_name, p_wd->p_plugin_name );    
    sprintf( d.value, "%u", rect.bottom);        
    g_p_plugin_send( (plugin_msg*) & d );    
}

window_data* get_window_data( HWND hWnd )
{
    window_data* p_wd = (window_data*) GetWindowLongPtr( hWnd, GWLP_USERDATA );
    return p_wd;
}



// window data accessors

void delete_window_data( window_data ** pp_wd )
{
    set_string( & (*pp_wd)->p_plugin_name, 0 );
    set_string( & (*pp_wd)->p_instance_name, 0 );
    free( *pp_wd );
    *pp_wd = 0;
}

char * get_plugin_name( HWND hPlugin )
{
    return get_window_data( hPlugin )->p_plugin_name;
}

char * get_instance_name( HWND hPlugin )
{
    return get_window_data( hPlugin )->p_instance_name;
}

HWND find_frame( const char * p_plugin, const char * p_instance )
{
    for( std::vector< HWND >::iterator i = g_FrameWindows.begin( ); i != g_FrameWindows.end( ); i ++ )
    {
        window_data * p_wd = get_window_data( *i );
        
        if ( strcmp( p_wd->p_instance_name, p_instance ) == 0 &&
             strcmp( p_wd->p_plugin_name, p_plugin ) == 0 )
        {
            return *i;
        }        
    }
    
    return 0;
}

HWND get_main_canvas_handle( )
{
    framework_get_main_canvas_handle_params d;
    
    d.hdr.id   = framework_get_main_canvas_handle;
    d.hdr.size = sizeof( d );
    strcpy( d.hdr.target, FRAMEWORK );
    
    g_p_plugin_send( & d.hdr );
    
    return d.hWnd;
}
    
// string util
void set_string( char ** p_string, const char * p_new_value )
{
    if ( *p_string != 0 )
    {
        free( *p_string );
        *p_string = 0;
    }
    
    if ( p_new_value != 0 )
    {
        *p_string = (char*) malloc( strlen( p_new_value ) + 1 );
        strcpy( *p_string, p_new_value );
    }
};

