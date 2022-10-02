#ifndef ATG_MENUMAN_H
#define ATG_MENUMAN_H

#include <plugin/plugin.h>

void menuman_plugin_fx( plugin_msg * );

struct menuman_add_command_params
{
    plugin_msg hdr;    
    string_id command_name;
    plugin_msg command; 
};

struct menuman_remove_command_params
{
    plugin_msg hdr;    
    string_id command_name;
};
#endif