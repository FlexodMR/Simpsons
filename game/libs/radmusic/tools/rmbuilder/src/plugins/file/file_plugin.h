#ifndef ATG_FILE_PLUGIN_HPP
#define ATG_FILE_PLUGIN_HPP

#include <plugin/plugin.h>

struct file_open_params
{
    plugin_msg hdr;
    string_id file_name;
    bool write;

    unsigned int file_id;
    bool ok;
};

struct file_close_params
{
    plugin_msg hdr;
    unsigned int file_id;
    
    bool ok;
};

struct file_write_params
{
    plugin_msg hdr;
    unsigned int file_id;
    
    bool ok;
};

struct file_read_params
{
    plugin_msg hdr;
    unsigned int file_id;
    
    bool ok;
};

void file_plugin_fx( plugin_msg * );
    
#endif 