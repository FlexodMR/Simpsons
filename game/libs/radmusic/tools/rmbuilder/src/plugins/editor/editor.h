#ifndef ATG_EDITOR_HPP
#define ATG_EDITOR_HPP

#include <plugin/plugin.h>

void editor_plugin_fx( plugin_msg * );

struct editor_launch_params
{
    plugin_msg hdr;
    
    string_id file;
};

#endif