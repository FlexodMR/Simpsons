#ifndef DATAMAN_H
#define DATAMAN_H

#include <plugin/plugin.h>

struct dataman_add_params
{
    plugin_msg hdr;
    string_id array_name;
    string_id value;
    
    bool ok;
};

struct dataman_remove_params
{
    plugin_msg hdr;
    string_id entry;
    
    bool ok;
};

struct dataman_set_params
{
    plugin_msg hdr;
    string_id entry;
    string_id value;
    
    bool ok;
};

struct dataman_get_params
{
    plugin_msg hdr;
    string_id entry;
    string_id value;
    
    bool ok;
};

struct dataman_new_params
{
    plugin_msg hdr;
};

struct dataman_save_params
{
    plugin_msg hdr;
    string_id file_name;
    
    bool ok;
};

struct dataman_load_params
{
    plugin_msg hdr;
    string_id file_name;
    
    bool ok;
};

struct dataman_query_collection_size_params
{
    plugin_msg hdr;
    string_id entry;
    
    bool ok;
    unsigned int collection_size;
};

void dataman_plugin_fx( plugin_msg * );



#endif