
#include <plugins/time/timer.h>
#include <plugins/framework/framework.h>
#include <radtime.hpp>

static const char * PLUGIN_NAME = "root/plugins/time";
static const char * FRAMEWORK   = "root/plugins/framework";
static const char * CLASS_NAME  = "TimerWindowClass";

static plugin_fx * g_p_plugin_send;
static HWND g_hTimerWindow;
static ATOM g_hTimerWindowClass;

LRESULT CALLBACK TimeWndProc( 
    HWND hWnd,
    UINT message,
    WPARAM wParam,
    LPARAM lParam )
{
    switch( message )
    {
        case WM_CREATE:
        {   
            SetTimer( hWnd, 0, 0, 0 );
            
            return 0;
        }
        case WM_DESTROY:
        {
            return 0;
        }
        case WM_TIMER:
        {
            static unsigned int last = 0;
            
            unsigned int now = ::radTimeGetMilliseconds( );
            unsigned int dif = now - last;
            
            time_tick_params tt;
            tt.hdr.id = time_tick;
            tt.hdr.size = sizeof( tt );
            strcpy( tt.hdr.target, "root" );
            tt.elapsed = dif;
            
            g_p_plugin_send( & tt.hdr );
            
            last = now;
            break;
        }
    }
    
    return ::DefWindowProc( hWnd, message, wParam, lParam );
}

    
void time_plugin_fx( plugin_msg * p_m)
{
    switch( p_m->id )
    {
        case plugin_initialize:
        {
            plugin_initialize_params* p_d = (plugin_initialize_params*) p_m;
            g_p_plugin_send = p_d->p_fx;
            
            framework_get_main_canvas_handle_params f;
            f.hdr.id = framework_get_main_canvas_handle;
            f.hdr.size = sizeof( f );
            sprintf( f.hdr.target, FRAMEWORK );
            g_p_plugin_send( & f.hdr );
            
            WNDCLASS wc;
            wc.cbClsExtra = 0;
            wc.cbWndExtra = 0;
            wc.hbrBackground = (HBRUSH) GetStockObject( NULL_BRUSH );
            wc.hCursor       = 0;
            wc.hIcon         = 0;
            wc.hInstance     = ::GetModuleHandle( 0 );
            wc.lpfnWndProc   = TimeWndProc;
            wc.lpszClassName = CLASS_NAME;
            wc.lpszMenuName  = 0;
            wc.style         = 0;
            
            g_hTimerWindowClass = ::RegisterClass( & wc );
            
            rAssert( g_hTimerWindowClass != 0 );
            
            g_hTimerWindow = CreateWindow(
                CLASS_NAME, "", 0, 0, 0, 0, 0, f.hWnd, 0, GetModuleHandle( 0 ), 0 );
            
            
            break;
        }
        case plugin_terminate:
        {
            ::DestroyWindow( g_hTimerWindow );
            ::UnregisterClass( CLASS_NAME, GetModuleHandle( 0 ) );
            break; 
        }
        case plugin_query_name:
        {
            plugin_query_name_params* p_d = (plugin_query_name_params*) p_m;
            
            strcpy( p_d->name, PLUGIN_NAME );
            break;
        }
    }
}

