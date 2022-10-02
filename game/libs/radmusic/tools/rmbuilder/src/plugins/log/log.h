#ifndef ATG_LOG_H
#define ATG_LOG_H

#include <plugin/plugin.h>

void log( const char * p_channel, const char * fmt, ... );

void log_plugin_fx( plugin_msg * );

    
struct log_out_params
{
    plugin_msg hdr;
    string_id channel;
};

#endif