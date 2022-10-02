#include <pch.hpp>
#include <plugins/project/project.h>
#include <plugins/menuman/menuman.h>
#include <raddebug.hpp>


static const char * PLUGIN_NAME = "root/plugins/project";
static const char * MENUMAN     = "root/plugins/menuman";

static plugin_fx * g_p_plugin_send;


void project_plugin_fx( plugin_msg * p_m )
{
    switch( p_m->id)
    {
        case plugin_initialize:
        {
            plugin_initialize_params * p_d = (plugin_initialize_params*) p_m;
            g_p_plugin_send = p_d->p_fx;
            
            /* menuman_add_command_params ac;
            
            ac.hdr.id = menuman_add_command;
            ac.hdr.size = sizeof( ac );
            strcpy( ac.hdr.target, MENUMAN );
            
            ac.command.id = project_command_open;
            strcpy( ac.command.target, PLUGIN_NAME );
            strcpy( ac.command_name, "Project/Open" );
            
            g_p_plugin_send( & ac.hdr ); */
            
            break;
        }
        case project_command_open:
        {
            break;
        }
    }
}
