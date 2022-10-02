#include <pch.hpp>
#include <plugin/plugin.h>
#include <util/path.h>
#include <vector>

std::vector< plugin_fx * > g_plugins;

void plugin_send( plugin_msg * ); // HACK: Should be static!

void register_plugin( plugin_fx * p_d )
{
    plugin_initialize_params d;
    d.hdr.size = sizeof(d);
    d.hdr.id   = plugin_initialize;
    d.p_fx = plugin_send;
    
    p_d( & d.hdr );
    
    g_plugins.push_back( p_d );
}

void unregister_plugin( plugin_fx * p_pf )
{
    plugin_msg d;
    d.size = sizeof(d);
    d.id   = plugin_terminate;
    
    std::vector<plugin_fx*>::iterator i;

    for( i = g_plugins.begin( ); i != g_plugins.end( ); i ++ )
    {
        if ( *i = p_pf )
        {
            (*i)( & d );
            
            g_plugins.erase( i );
            return;
        }
    }
}

unsigned int num_plugins( void )
{
    return g_plugins.size( );
}

plugin_fx * plugin_at( unsigned int i )
{
    return g_plugins.at( i );
}

bool plugin_broadcast(
    plugin_msg * p_m )
{
   
    std::vector<plugin_fx*>::iterator i;
    
    for( i = g_plugins.begin( ); i != g_plugins.end( ); i ++ )
    {
        (*i)(p_m); 
    }
    
    return true;
}

bool is_sub_path_of( const char * p_sub_path, const char * p_path )
{
    char path_parent[ 256 ];
    char path_child[ 256 ];
    path p;
    path_start( & p, p_path, PATH_SEP_CHAR );
    
    char test_parent[ 256 ];
    char test_child[ 256 ];
    
    path pt;
    path_start( & pt, p_sub_path, PATH_SEP_CHAR );
    
    while( 1 )
    {
        path_next( & p, path_parent, path_child );
        path_next( & pt, test_parent, test_child );
        
        if ( strcmp( path_parent, "" ) == 0 )
        {
            return true;
        }
        else
        {
            if ( strcmp( path_parent, test_parent ) != 0 )
            {
                return false;
            }
        }
        
        strcpy( path_parent, path_child );
        strcpy( test_parent, test_child );
    }
    
}

void plugin_send( plugin_msg * p_m)
{
    std::vector<plugin_fx*>::iterator i;
    
    for( i = g_plugins.begin( ); i != g_plugins.end( ); i ++ )
    {
        plugin_query_name_params d;
        d.hdr.id = plugin_query_name;
        d.hdr.size = sizeof( d );
        strcpy( d.name, "" );
        
        (*i)((plugin_msg*)(&d) );
        
        if ( is_sub_path_of( d.name, p_m->target ) )
        {
            (*i)(p_m);
        }
    }
}

// REVISIT:

#include <plugins/fileman/fileman.h>
#include <plugins/dataman/dataman.h>
#include <plugins/log/log.h>
#include <plugins/file/file_plugin.h>
#include <plugins/windowman/windowman.h>
#include <plugins/progress/progress.h>
#include <plugins/framework/framework.h>
#include <plugins/scman/scman.h>
#include <plugins/buildman/buildman.h>
#include <plugins/menuman/menuman.h>
#include <plugins/editor/editor.h>
#include <plugins/performance/performance.h>
#include <plugins/project/project.h>
#include <plugins/time/timer.h>

void register_static_plugins( )
{
    register_plugin( framework_plugin_fx );
    register_plugin( log_plugin_fx );
    register_plugin( dataman_plugin_fx );
    register_plugin( menuman_plugin_fx );
    register_plugin( project_plugin_fx );      
    register_plugin( buildman_plugin_fx );
    register_plugin( scman_plugin_fx );
    register_plugin( progress_plugin_fx );  
    register_plugin( windowman_plugin_fx );
    register_plugin( file_plugin_fx );
    register_plugin( fileman_plugin_fx );
    register_plugin( editor_plugin_fx );
    register_plugin( performance_plugin_fx );
    register_plugin( time_plugin_fx );    
}    

void unregister_static_plugins( )
{
    unregister_plugin( time_plugin_fx ); 
    unregister_plugin( performance_plugin_fx );   
    unregister_plugin( editor_plugin_fx );  
    unregister_plugin( file_plugin_fx ); 
    unregister_plugin( windowman_plugin_fx );
    unregister_plugin( progress_plugin_fx );
    unregister_plugin( scman_plugin_fx );
    unregister_plugin( buildman_plugin_fx ); 
    unregister_plugin( project_plugin_fx ); 
    unregister_plugin( menuman_plugin_fx );
    unregister_plugin( dataman_plugin_fx );       
    unregister_plugin( log_plugin_fx );
    unregister_plugin( fileman_plugin_fx );    
}
