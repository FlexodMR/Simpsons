#include <plugins/dataman/dataman.h>
#include <util/path.h>
#include <plugins/log/log.h>
#include <plugins/file/file_plugin.h>
#include <stdio.h>
#include <raddebug.hpp>
#include <memory/memory.hpp>
#include <ods/ods.hpp>
#include "music_schema_gen.hpp"
#include <radmusic_tool_schema.hpp>
#include <ods/parser.hpp>

#define PLUGIN_NAME "root/plugins/dataman"

struct project
{
    ods::pointer ptr_root_type;
    ods::pointer ptr_root;
    ods::pointer ptr_project;
    ods::block   mem_block;
} g_project;
 
void create_empty_project( void )
{
    log( PLUGIN_NAME, "Create Empty Project\n" );
    ods::memory_hooks h;
    
    h.p_free     = memory::free;
    h.p_realloc  = memory::realloc;
    
    ods::block_construct(
        & g_project.mem_block,
        & h,
        false );
        
    g_project.ptr_project = ods::project_construct(
        & g_project.mem_block,
        "the_project" );

    ods::begin_schema( g_project.ptr_project );
        radmusic_create_tool_schema( );
    ods::end_schema( );
}
    
void create_default_project(  )
{
    log( PLUGIN_NAME, "Create Default Project\n" );
    
    create_empty_project(  );

    g_project.ptr_root = 
        ods::root_new( & g_project.mem_block );

    g_project.ptr_root_type =
        ods::project_cls_type_find(
        g_project.ptr_project,
        "root" );
        
    rAssert( ods::not_null( g_project.ptr_root_type ) );
        
    ods::project_add_instance(
        g_project.ptr_project,
        "root",
        g_project.ptr_root,
        g_project.ptr_root_type );
        
    /* ods::directory_name(
        ods::rmbuilder_project_source_root_dir(
            ptr_rmbuilder_project ),
        "root" ); */
}

void destroy_project( )
{
    log( PLUGIN_NAME, "Destroy Project\n" );
    
    if ( ods::not_null( g_project.ptr_project ) )
    {
        g_project.ptr_root = ods::pointer_null;
        g_project.ptr_root_type = ods::pointer_null;
        
	    ods::project_destroy( g_project.ptr_project );
	    g_project.ptr_project = ods::pointer_null;
	    ods::block_destroy( & g_project.mem_block );
	}
}

ods::pointer find_item_recurse(
    const char * p_item,
    const ods::pointer & ptr_instance,
    const ods::pointer & ptr_type,
    ods::pointer * p_ptr_parent_instance,
    ods::pointer * p_ptr_parent_type,
    unsigned int * p_parent_array_index,
    ods::pointer * p_ptr_type )
{
    path p;
    path_start( & p, p_item, '/' );
    char parent[ 256 ];
    char child[ 256 ];
    path_next( & p, parent, child );
    
    if ( ods::is_null( ptr_instance ) )
    {
        return ods::pointer_null;
    }
    
    if ( strcmp( parent, "" ) == 0 )
    {
        *p_ptr_type = ptr_type;
        return ptr_instance;
    }
    
    unsigned char t= ods::type_id( ptr_type );
    
    switch( t )
    {
        case ods::g_array_id:
        {
            ods::pointer ptr_array_item_type = ods::array_type_get_type( ptr_type );
                            
            Parser parser( parent, strlen( parent ) );
            
            if ( parser.SkipToken( "?" ) )
            {
                unsigned int array_size = ods::array_instance_num_items( ptr_instance );
            
                for( unsigned int i = 0; i < array_size; i ++ )
                {
                    ods::pointer ptr_array_item = ods::array_instance_item_at(
                        ptr_instance,
                        ods::instance_size( ptr_array_item_type ),
                        i );
                        
                    Parser parser( parent + 1, strlen( parent ) );
                    
                    bool same;
                    
                    if ( ods::instance_compare_text(
                        ptr_array_item_type,
                        ptr_array_item,
                        parser,
                        & same ) )
                    {
                        if ( same )
                        {
                            if( p_ptr_parent_instance != 0 )
                            {
                                *p_ptr_parent_instance = ptr_instance;
                                *p_ptr_parent_type     = ptr_type;
                                *p_parent_array_index  = i;
                            }
                                                            
                            return find_item_recurse(
                                child,
                                ptr_array_item,
                                ptr_array_item_type,
                                p_ptr_parent_instance,
                                p_ptr_parent_type,
                                p_parent_array_index,
                                p_ptr_type );
                                
                            *p_ptr_type = ptr_array_item_type;
                            return ptr_array_item;
                        }
                    }
                }
                
                return ods::pointer_null;                
            }
            else if ( parser.IsNumber( ) )
            {
                unsigned int index = parser.GetInteger( );
                                
                ods::pointer ptr_item = ods::array_instance_item_at(
                    ptr_instance,
                    ods::instance_size( ptr_array_item_type ),
                    index );

                if( 0 != p_ptr_parent_instance )
                {                    
                    *p_ptr_parent_instance = ptr_instance;
                    *p_ptr_parent_type = ptr_type;
                    *p_parent_array_index = index;
                }              
                                                    
                return find_item_recurse(
                    child,
                    ptr_item,
                    ptr_array_item_type,
                    p_ptr_parent_instance,
                    p_ptr_parent_type, 
                    p_parent_array_index,                   
                    p_ptr_type );
            }
            else
            {
                return ods::pointer_null;
            }
        
            break;
        }
        case ods::g_cls_id:
        {
            unsigned int index = ods::cls_type_find_attribute( ptr_type, parent );
            
            if ( index != 0xFFFFFFFF )
            {
                ods::pointer ptr_parent_type     = ods::cls_type_attribute_type( ptr_type, index );
                ods::pointer ptr_parent_instance( ptr_instance.memory( ),
                    ptr_instance.offset( ) + ods::cls_type_attribute_offset( ptr_type, index ) );

                if( 0 != p_ptr_parent_instance )
                {
                    *p_ptr_parent_instance = ptr_instance;
                    *p_ptr_parent_type = ptr_type;
                    *p_parent_array_index = 0xFFFFFFFF;
                }
                                                                
                return find_item_recurse(
                    child,
                    ptr_parent_instance,
                    ptr_parent_type,
                    p_ptr_parent_instance,
                    p_ptr_parent_type,   
                    p_parent_array_index,                 
                    p_ptr_type );
            }

            break;
        }
    }
    
    return ods::pointer_null;
}

void dataman_plugin_fx( plugin_msg * p_m )
{
    switch( p_m->id)
    {
        case plugin_initialize:
        {
            break;
            log( PLUGIN_NAME, "Initialize\n" );            
        }
        case plugin_terminate:
        {
            break;
            log( PLUGIN_NAME, "Terminate\n" );             
        }
        case plugin_query_name:
        {  
            plugin_query_name_params* p_d = (plugin_query_name_params*) p_m;
            strcpy( p_d->name, PLUGIN_NAME );
            break;
        }
        case dataman_remove:
        {            
            dataman_remove_params * p_d = (dataman_remove_params*) p_m;
            
            path p;
            path_start( &p, p_d->entry, '/' );
            
            char parent[ 256 ];
            char child[ 256 ];
            
            path_next( & p, parent, child );
            
            ods::pointer ptr_item;
            ods::pointer ptr_item_type;
            ods::pointer ptr_parent;
            ods::pointer ptr_parent_type;
            unsigned int array_index;
                
            ptr_item = find_item_recurse(
                child,
                g_project.ptr_root,
                g_project.ptr_root_type,
                & ptr_parent,
                & ptr_parent_type,
                & array_index,
                & ptr_item_type );
                
            if ( ods::not_null( ptr_parent ) )
            {
                if ( ods::g_array_id == ods::type_id( ptr_parent_type ) )
                {
                    ods::instance_destroy( ptr_item_type, ptr_item );
                    
                    ptr_item      = ods::pointer_null;
                    ptr_item_type = ods::pointer_null;
                    
                    ods::array_instance_remove_item( ptr_parent,
                        ods::instance_size(
                            ods::array_type_get_type( ptr_parent_type ) ),
                        array_index );
                        
                    log( PLUGIN_NAME,
                         "Removed Entry: [%s]\n", p_d->entry );
                         
                    p_d->ok = true;
                    break;
                    
                }
            }
            
            p_d->ok = false;                      

            log( PLUGIN_NAME,
                    "Removed Entry Failed: [%s]", p_d->entry);
                                     
            break;
        }
        case dataman_add:
        {
            dataman_add_params* p_d = (dataman_add_params*) p_m;
            
            path p;
            path_start( & p, p_d->array_name, '/');
            
            char parent[ 256 ];
            char child[ 256 ];
            
            path_next( & p, parent, child );
                                   
            ods::pointer ptr_array_type;
                
            ods::pointer ptr_array = find_item_recurse(
                child,
                g_project.ptr_root,
                g_project.ptr_root_type,
                0, 0, 0,
                & ptr_array_type );
                    
            if ( ods::not_null( ptr_array ) )
            {
                if ( ods::g_array_id == ods::type_id( ptr_array_type ) )
                {
                    ods::pointer ptr_array_item_type = ods::array_type_get_type( ptr_array_type );
                    
                    ods::pointer ptr_new_item = ods::array_instance_add_item(
                        ptr_array,
                        ods::instance_size( ptr_array_item_type ) );

                    ods::instance_construct(
                        ptr_array_item_type,
                        ptr_new_item );
                    
                    Parser parser( p_d->value, strlen( p_d->value ) );
                    
                    if ( ! ods::instance_read_text(
                        ods::array_type_get_type( ptr_array_type ),
                        ptr_new_item,
                        parser ) )
                    {
                        ods::instance_destroy( ptr_array_item_type, ptr_new_item );
                        ods::array_instance_remove_item(
                            ptr_array,
                            ods::instance_size( ods::array_type_get_type( ptr_array_type ) ),
                            ods::array_instance_num_items( ptr_array ) - 1 );
                    }
                    else
                    {
                        p_d->ok = true;
                        log( PLUGIN_NAME, "Added item: [%s],[%s]\n", p_d->array_name, p_d->value );
                        break;                        
                    }
                }
            }

            p_d->ok = false;                            
            log( PLUGIN_NAME, "Failed to add item: [%s],[%s]\n", p_d->array_name, p_d->value );            
      
            break;
        }
        case dataman_set:
        {
            dataman_set_params * p_d = (dataman_set_params*) p_m;
            
            path p;
            path_start( & p, p_d->entry, '/');
            
            char parent[ 256 ];
            char child[ 256 ];
            
            path_next( & p, parent, child );            
           
            ods::pointer ptr_item_type;
            
            ods::pointer ptr_item = find_item_recurse(
                child,
                g_project.ptr_root,
                g_project.ptr_root_type,
                0, 0, 0,
                & ptr_item_type );
                
            if ( ods::not_null( ptr_item ) )
            {                
                Parser parser( p_d->value, strlen( p_d->value ) );
                
                if ( ods::instance_read_text( ptr_item_type, ptr_item, parser ) )
                {
                    p_d->ok = true;
                    log( PLUGIN_NAME,
                        "Modifed: [%s], [%s]\n", p_d->entry, p_d->value );
                    break;
                }
            }
            
            log( PLUGIN_NAME,
                "Modifed FAILED: [%s], [%s]\n", p_d->entry, p_d->value );            
            
            p_d->ok = false;    
            break;
        }
        case dataman_get:
        {
            dataman_get_params * p_d = (dataman_get_params*) p_m;
            
            path p;
            path_start( & p, p_d->entry, '/');
            
            char parent[ 256 ];
            char child[ 256 ];
            
            path_next( & p, parent, child );            
           
            ods::pointer ptr_item_type;
            
            ods::pointer ptr_item = find_item_recurse(
                child,
                g_project.ptr_root,
                g_project.ptr_root_type,
                0, 0, 0,
                & ptr_item_type );
                
            if ( ods::not_null( ptr_item ) )
            {
                Parser parser( p_d->value, strlen( p_d->value ) );
                
                ods::memory_stream ms;
                ods::memory_stream_open( & ms, p_d->value, 256, true );                
                
                ods::stream_info si;
                si.p_sf     = & ods::memory_stream_functions;
                si.p_stream = (void*) & ms;
                
                if ( ods::instance_write_text( g_project.ptr_project, ptr_item_type, ptr_item, & si, 0 ) )
                {
                    *(ms.p_current) = 0;
                    
                    p_d->ok = true;
                    log( PLUGIN_NAME,
                        "Read: [%s], [%s]\n", p_d->entry, p_d->value );
                    
                    break;
                }
        
            }
            
            
            p_d->ok = false;
            strcpy( p_d->value, "!BAD QUERY!" );             
            
            log( PLUGIN_NAME,
                "Read Failed: [%s]\n", p_d->entry );
              
            break;
        }        
        case dataman_save:
        {
            log( PLUGIN_NAME, "Save\n" );          
            dataman_save_params * p_d = (dataman_save_params*) p_m;
            
            ods::stream_info si;
            si.p_sf = & ods::stdio_stream_functions;
            si.p_stream = ods::stdio_stream_open( p_d->file_name, true );
            
            if ( si.p_stream == 0 )
            {
                log( PLUGIN_NAME, "Save Failed To Open File\n" );              
                p_d->ok = false;
                break;
            }
            
            p_d->ok = ods::project_write_objects_text(
                g_project.ptr_project,
                & si );
                
            if ( p_d->ok == false )
            {
                log( PLUGIN_NAME, "Failed to write memory block\n" );             
            }
                
            ods::stdio_stream_close( si.p_stream );

            break;
        }
        case dataman_query_collection_size:
        {
            dataman_query_collection_size_params* p_d = (dataman_query_collection_size_params*) p_m;
            
            path p;
            path_start( & p, p_d->entry, '/');
            
            char parent[ 256 ];
            char child[ 256 ];
            
            path_next( & p, parent, child );
           
            ods::pointer ptr_item_type;
            
            ods::pointer ptr_item = find_item_recurse(
                child,
                g_project.ptr_root,
                g_project.ptr_root_type,
                0, 0, 0,
                & ptr_item_type );
                
            if ( ods::not_null( ptr_item ) )
            {
                rAssert( ods::not_null( ptr_item_type ) );
                
                if ( ods::g_array_id == ods::type_id( ptr_item_type ) )
                {
                    p_d->ok = true;
                    p_d->collection_size = ods::array_instance_num_items( ptr_item );
                    log( PLUGIN_NAME, "Retrieved array size: [%s]\n", p_d->entry );                     
                    break;
                }
            }
            
            p_d->collection_size = 0xFFFFFFFF;
            p_d->ok = false;
            log( PLUGIN_NAME, "Failed to retrieve array size: [%s]\n", p_d->entry );                         

            break;                   
        }
        case dataman_load:
        {
            dataman_load_params* p_d = (dataman_load_params*) p_m;
            
            log( PLUGIN_NAME, "Load: [%s]\n", p_d->file_name );   
                   
            destroy_project( );
            create_empty_project( );
            
            ods::stream_info si;
            si.p_sf = & ods::stdio_stream_functions;
            si.p_stream = ods::stdio_stream_open( p_d->file_name, false );
            
            if ( si.p_stream == 0 ) 
            {
                p_d->ok = false;
                log( PLUGIN_NAME, "Failed to open: [%s]\n", p_d->file_name );
                break;                  
            }
                        
            p_d->ok = ods::project_read_objects_text(
                g_project.ptr_project,
                & si );
            
            if ( ! p_d->ok )
            {
                log( PLUGIN_NAME, "Failed to construct memory block from: [%s]\n", p_d->file_name );
                break;
            }
            
            g_project.ptr_root =
                ods::project_find_instance(
                    g_project.ptr_project,
                    "root",
                    & g_project.ptr_root_type );
                    
            if ( ods::is_null( g_project.ptr_root ) ||
                 ods::is_null( g_project.ptr_root_type ) )
            {
                log( PLUGIN_NAME, "Failed to find root instance or type: [%s]\n", p_d->file_name );
                p_d->ok = false;
                break;            
            }

            break;
        }
        case dataman_new:
        {
            log( PLUGIN_NAME, "New\n" );          
            destroy_project( );
            create_default_project( );
        }
    }
}
