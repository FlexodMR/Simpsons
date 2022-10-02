#ifndef ATG_FRAMEWORK_HPP
#define ATG_FRAMEWORK_HPP

#include <plugin/plugin.h>

void framework_plugin_fx( plugin_msg * );

struct framework_get_main_canvas_handle_params
{
    plugin_msg hdr;
    
    HWND hWnd;
};


#endif 