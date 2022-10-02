#ifndef PLUGIN_HPP
#define PLUGIN_HPP

#include <windows.h>
// plugin component

#define STRING_ID_LEN 256
#define PATH_SEP_CHAR '/'
#define PATH_SEP_STRING "/"

typedef char string_id[STRING_ID_LEN] ;

struct plugin_msg;

typedef void (plugin_fx)( plugin_msg * );

enum plugin_msg_id
{
    framework_get_main_canvas_handle,
    
    plugin_initialize,
    plugin_terminate,
    plugin_query_name,
    plugin_drop_file,
 
    project_new, 
    project_destroy,           
    project_load,
    project_save,

    project_refresh,
    project_tick,
    
    project_command_open,

    windowman_drop,
    windowman_create_frame,
    windowman_destroy_frame,
    windowman_restore_frame,
    windowman_set_window_title,
    
    dataman_add,
    dataman_remove,  
    dataman_set,
    dataman_get,
    dataman_save,
    dataman_load,
    dataman_new,
    dataman_query_collection_size,
    
    log_out,
    
    file_open,
    file_close,
    file_write,
    file_read,
    
    buildman_query_source_root,
    buildman_query_target_root,
    buildman_command_build_settings,
    
    menuman_add_command,
    menuman_remove_command,
    
    editor_launch,
    performance_launch,
    
    time_tick
    
};

struct plugin_msg
{
    string_id     target;
    plugin_msg_id id;
    unsigned int  size;
};

// message data

struct plugin_initialize_params
{
    plugin_msg hdr;
    plugin_fx * p_fx;
};

struct plugin_query_name_params
{
    plugin_msg hdr;
    
    string_id name;
};

struct plugin_drop_file_params
{
    plugin_msg hdr;

    string_id instance_name;
    
    int x;
    int y;
    char file_path[ 256 ];
};

// project

struct project_new_params
{
    plugin_msg hdr;
};

struct project_load_params
{
    plugin_msg hdr;
};

struct project_save_params
{
    plugin_msg hdr;
};

struct project_destroy_params
{
    plugin_msg hdr;
};

struct project_refresh_params
{
    plugin_msg hdr;
};

struct project_tick_params
{
    plugin_msg hdr;
    unsigned int elapsed;
};

// plugin management

void register_plugin( plugin_fx * );
void unregister_plugin( plugin_fx * );

unsigned int num_plugins( void );
plugin_fx * plugin_at( unsigned int i );


// REVISIT:

void register_static_plugins( );
void unregister_staic_plugins( );
    
#endif // PLUGIN_HPP