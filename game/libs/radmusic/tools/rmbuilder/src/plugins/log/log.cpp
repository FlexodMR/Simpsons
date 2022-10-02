#include <pch.hpp>
#include <plugins/log/log.h>
#include <plugins/log/logwnd.h>
#include <raddebug.hpp>
#include <radkey.hpp>
#include <algorithm>
#include <vector>

const char * PLUGIN_NAME = "root/plugins/log";

std::vector<CLogWnd*> g_LogWindows;

static plugin_fx * g_p_plugin_send;

void destroy_log_window( CLogWnd * p_lw )
{
    std::vector<CLogWnd*>::iterator i =
        std::find(
            g_LogWindows.begin(),
            g_LogWindows.end( ),
            p_lw );
    
    rAssert( i != g_LogWindows.end( ) );

    g_LogWindows.erase( i );
}

void log_plugin_fx( plugin_msg * p_m )
{
    switch( p_m->id)
    {
        case plugin_initialize:
        {
            plugin_initialize_params * p_d = (plugin_initialize_params*) p_m;
            g_p_plugin_send = p_d->p_fx;
            break;
        }
        case log_out:
        {
            log_out_params * p = (log_out_params*) p_m;

            char * p_start = ((char*)p) + sizeof( log_out_params );
	        rDebuggerString_Implementation( p_start );
	                    
            std::vector<CLogWnd*>::iterator i;

	            
            for( i = g_LogWindows.begin( ); i != g_LogWindows.end( ); i ++ )
            {
                (*i)->AddText( p_start );
            }

            break;
        }
        case plugin_query_name:
        {
            plugin_query_name_params* p_d = (plugin_query_name_params*) p_m;
            strcpy( p_d->name, PLUGIN_NAME );
            break;
        }
           
        /*case plugin_create_instance:
        {
            plugin_create_instance_params * p_d = (plugin_create_instance_params*) p_m;
            
            CLogWnd * p_lw = new CLogWnd( p_d->instance_id );
            
            CWnd parent;
            parent.Attach( p_d->hParentWnd );
            
            BOOL ok = p_lw->Create(
                AfxRegisterWndClass(
                    CS_DBLCLKS | CS_HREDRAW | CS_VREDRAW,
                    AfxGetApp( )->LoadStandardCursor( IDC_ARROW ),
                    (HBRUSH) ::GetStockObject( NULL_BRUSH ),
                    0 ),
                "",
                WS_CLIPSIBLINGS | WS_CLIPCHILDREN | WS_CHILD | WS_VISIBLE,
                CRect( 0, 0, 0, 0 ),
                & parent,
                0,
                NULL );
                
            rAssert( ok );

            parent.Detach( );
            
           g_LogWindows.push_back( p_lw );
        }*/
    }
}

int VsnPrintf( char *buffer, size_t count, const char *format, va_list argptr )
{
    #if defined (RAD_WIN32) || defined (RAD_XBOX)
        return _vsnprintf( buffer, count, format, argptr );
    #elif defined (RAD_GAMECUBE)
        return vsnprintf( buffer, count, format, argptr );
    #elif defined (RAD_PS2)
        return vsprintf( buffer, format, argptr );
    #endif
}
    
void log( const char * p_channel, const char * fmt, ... )
{
    va_list va_alist = {0}; 
    
    char    buf[ 2048 ];
    
    log_out_params * p_o = (log_out_params*) buf;  
    p_o->hdr.id = log_out,
    strcpy( p_o->hdr.target, PLUGIN_NAME );
    strcpy( p_o->channel, p_channel );
    va_start( va_alist, fmt ); 

    char * p_start = ((char*)p_o) + sizeof( log_out_params );
    
    VsnPrintf( p_start, RAD_DEBUG_PRINT_MAX_LENGTH, fmt, va_alist );

    p_o->hdr.size = sizeof( log_out_params ) + strlen( p_start ) + 1;
    
    va_end( va_alist ); 
    
    g_p_plugin_send( (plugin_msg*) p_o );
}