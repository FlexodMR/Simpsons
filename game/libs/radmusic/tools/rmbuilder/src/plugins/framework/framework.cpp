#include <pch.hpp>
#include <plugins/framework/framework.h>
#include <plugins/dataman/dataman.h>
#include <raddebug.hpp>

static plugin_fx * g_p_plugin_send;

static const char * PLUGIN_NAME = "root/plugins/framework";
static const char * DATAMAN = "root/plugins/dataman";
static const char * SCROLL_X = "root/framework/main_canvas/scroll_x";
static const char * SCROLL_Y = "root/framework/main_canvas/scroll_y";

void framework_canvas_scroll( unsigned int scroll_x, unsigned int scroll_y ) // HACK
{
    dataman_set_params d;
    d.hdr.id = dataman_set;
    d.hdr.size = sizeof( d );
    strcpy( d.hdr.target, DATAMAN );
    strcpy( d.entry, SCROLL_X );
    sprintf( d.value, "%u", scroll_x );
    g_p_plugin_send( & d.hdr );
    rAssert( d.ok );
    
    strcpy( d.entry, SCROLL_Y );
    sprintf( d.value, "%u", scroll_y );
    g_p_plugin_send( & d.hdr );
    rAssert( d.ok );        
}
            
extern HWND g_main_canvas_handle;
void framework_plugin_fx( plugin_msg * p_m)
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
            break;
        }
        case plugin_query_name:
        {
            plugin_query_name_params* p_d = (plugin_query_name_params*) p_m;
            strcpy( p_d->name, PLUGIN_NAME );
            break;
        }
        case framework_get_main_canvas_handle:
        {
            framework_get_main_canvas_handle_params * p_d = (framework_get_main_canvas_handle_params*) p_m;
            p_d->hWnd = g_main_canvas_handle;
            break;
        }
        case project_load:
        {
            dataman_get_params dg;
            dg.hdr.id = dataman_get;
            dg.hdr.size = sizeof( dg );
            strcpy( dg.hdr.target, DATAMAN );
            strcpy( dg.entry, SCROLL_X );
            g_p_plugin_send( & dg.hdr );
            rAssert( dg.ok );
            
            unsigned int scroll_x = atoi( dg.value );
            
            strcpy( dg.entry, SCROLL_Y );
            g_p_plugin_send( & dg.hdr );
            rAssert( dg.ok );
            
            unsigned int scroll_y = atoi( dg.value );

            ((CScrollView*)(AfxGetApp( )->GetMainWnd( )->GetDlgItem( AFX_IDW_PANE_FIRST )))->ScrollToPosition( CPoint( scroll_x, scroll_y ) );
            
            break;
        }
    }    
};

