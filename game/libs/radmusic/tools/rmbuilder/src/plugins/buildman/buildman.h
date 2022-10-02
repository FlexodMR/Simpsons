#ifndef ATG_BUILDMAN_H
#define ATG_BUILDMAN_H

#include <plugin/plugin.h>

void buildman_plugin_fx( plugin_msg * );

struct buildman_query_source_root_params
{
    plugin_msg hdr;
    
    string_id root;
};

struct buildman_query_target_root_params
{
    plugin_msg hdr;
    string_id target_name;
    
    string_id root;
};
            
#endif