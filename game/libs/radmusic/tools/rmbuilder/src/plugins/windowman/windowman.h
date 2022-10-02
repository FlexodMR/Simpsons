#ifndef PLUGINWND_HPP
#define PLUGINWND_HPP

#include <plugin/plugin.h>

void windowman_plugin_fx( plugin_msg * );

struct windowman_drop_params
{
    plugin_msg hdr;
    
    int screen_x;
    int screen_y;
    
    string_id file_path;
};

struct windowman_create_frame_params
{
    plugin_msg hdr;

    string_id plugin;
    string_id instance;
    bool closeable;
    
    HWND hWnd;
};

struct windowman_restore_frame_params
{
    plugin_msg hdr;
    
    string_id plugin;
    string_id instance;
    
    HWND hWnd;
};

struct windowman_destroy_frame_params
{
    plugin_msg hdr;
    
    string_id plugin;
    string_id instance;
};

struct windowman_set_window_title_params
{
    plugin_msg hdr;
    
    string_id plugin;
    string_id instance;    
    string_id title;
};

#endif // PLUGINWND_HPP