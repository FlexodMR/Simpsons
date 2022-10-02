
#include <plugins/scman/scman.h>

static const char * PLUGIN_NAME = "root/plugins/scman";

void scman_plugin_fx( plugin_msg * p_m)
{
    switch( p_m->id )
    {
        case plugin_query_name:
        {
            plugin_query_name_params* p_d = (plugin_query_name_params*) p_m;
            
            strcpy( p_d->name, PLUGIN_NAME );
            break;
        }
    }
}
