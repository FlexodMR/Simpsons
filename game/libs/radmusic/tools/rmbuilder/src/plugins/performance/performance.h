#ifndef PERFORMANCEVIEW_H
#define PERFORMANCEVIEW_H

#include <plugin/plugin.h>

void performance_plugin_fx( plugin_msg * );

struct performance_launch_params
{
    plugin_msg hdr;
    
    string_id file_name;    
};

#endif