
#include <plugins/menuman/menuman.h>
#include <plugins/dataman/dataman.h>
#include <plugins/framework/framework.h>
#include <plugins/log/log.h>
#include <ods/parser.hpp>

#include <raddebug.hpp>

static const char * PLUGIN_NAME = "root/plugins/menuman";
static const char * DATAMAN     = "root/plugins/dataman";
static const char * FRAMEWORK   = "root/plugins/framework";

#define COMMAND_BEGIN 0x6000 // HACK

static void add_windows_menu_item( const char * p_name, unsigned int id );
static void remove_windows_menu_item( unsigned int id );
static plugin_fx * g_p_plugin_send;

HWND get_main_canvas_handle( )
{
    framework_get_main_canvas_handle_params f;
    f.hdr.id = framework_get_main_canvas_handle;
    f.hdr.size = sizeof( f );
    strcpy( f.hdr.target, FRAMEWORK );
    g_p_plugin_send( & f.hdr );
    
    return f.hWnd;
}

void menuman_plugin_fx( plugin_msg * p_m)
{
    switch( p_m->id )
    {
        case plugin_initialize:
        {
            plugin_initialize_params * p_d = (plugin_initialize_params*) p_m;
            
            g_p_plugin_send = p_d->p_fx;
            
            break;
        }
        case plugin_query_name:
        {
            plugin_query_name_params* p_d = (plugin_query_name_params*) p_m;
            
            strcpy( p_d->name, PLUGIN_NAME );
            break;
        }
        case project_load:
        {
            dataman_query_collection_size_params d;
            d.hdr.id = dataman_query_collection_size;
            d.hdr.size = sizeof( d );
            strcpy( d.hdr.target, DATAMAN );
            strcpy( d.entry, "root/menuman/commands" );
            g_p_plugin_send( & d.hdr );
            rAssert( d.ok );
            
            for( unsigned int i = 0 ; i < d.collection_size; i ++ )
            {
                char name[ 256 ];
                unsigned int id;
                char target[ 256 ];
                
                dataman_get_params dg;
                dg.hdr.id = dataman_get;
                dg.hdr.size = sizeof( dg );
                strcpy( dg.hdr.target, DATAMAN );
                sprintf( dg.entry, "root/menuman/commands/%u/name", i );
                g_p_plugin_send( & dg.hdr );
                rAssert( dg.ok );
                Parser p1( dg.value, strlen( dg.value ) );
                p1.GetQuotedString( name, 256 );
                
                sprintf( dg.entry, "root/menuman/commands/%u/plugin_msg/id", i);
                g_p_plugin_send( & dg.hdr );
                rAssert( dg.ok );
                id = atoi( dg.value );
                
                sprintf( dg.entry, "root/menuman/commands/%u/plugin_msg/target", i);
                g_p_plugin_send( & dg.hdr );
                rAssert( dg.ok );
                
                Parser p2( dg.value, strlen( dg.value ) );
                p2.GetQuotedString( target, 256 );
                
                add_windows_menu_item( name, id );
            }
            break;
        }
        case menuman_add_command:
        {
            menuman_add_command_params* p_d = (menuman_add_command_params*) p_m;
        
            dataman_add_params d;
            d.hdr.id = dataman_add;
            d.hdr.size = sizeof( d );
            strcpy( d.hdr.target, DATAMAN );
            strcpy( d.array_name, "root/menuman/commands" );
            sprintf(
                d.value,
                "[name=\"%s\" plugin_msg=[id=%u target=\"%s\"]]",
                p_d->command_name,
                p_d->command.id,
                p_d->command.target );
                
            g_p_plugin_send( & d.hdr );
            rAssert( d.ok );
            
            log(
                PLUGIN_NAME,
                "Command Added: [%s], [%u], [%s]\n",
                p_d->command_name,
                p_d->command.id,
                p_d->command.target );
            
            add_windows_menu_item( p_d->command_name, p_d->command.id );

            break;
        }
        case menuman_remove_command:
        {
            menuman_remove_command_params* p_d =(menuman_remove_command_params*) p_m;
                    
            dataman_get_params dg;
            dg.hdr.id = dataman_get;
            dg.hdr.size = sizeof( dg );
            strcpy( dg.hdr.target, DATAMAN );
            sprintf( dg.entry, "root/menuman/commands/?[name==\"%s\"]/plugin_msg/id", p_d->command_name );
            g_p_plugin_send( & dg.hdr );
            rAssert( dg.ok );
            
            unsigned int command_id = atoi( dg.value );

            remove_windows_menu_item( command_id );
            
            dataman_remove_params dr;
            dr.hdr.id     = dataman_remove;
            dr.hdr.size   = sizeof( dr );
            strcpy( dr.hdr.target, DATAMAN );
            sprintf( dr.entry, "root/menuman/commands/?[name==\"%s\"]",
                p_d->command_name );
            
            g_p_plugin_send( & dr.hdr );
            
            rAssert( dr.ok );
            
            log(
                PLUGIN_NAME,
                "Command Removed: [%s]\n",
                p_d->command_name );            
            
            break;
        };
        
    }
    
}

void add_windows_menu_item( const char * p_name, unsigned int id )
{
    // HACK:            
    
    HMENU hMenu = ::GetSubMenu( ::GetMenu( ::GetParent( get_main_canvas_handle( ) ) ), 3 );
    
    BOOL ok = ::AppendMenu( hMenu, MF_STRING, id + COMMAND_BEGIN, p_name );
    
    rAssert( ok );
}

void remove_windows_menu_item( unsigned int command_id )
{
    // HACK:            
    
    HMENU hMenu = ::GetSubMenu( ::GetMenu( ::GetParent( get_main_canvas_handle( ) ) ), 3 );
    
    BOOL ok = ::RemoveMenu( hMenu, command_id + COMMAND_BEGIN, MF_BYCOMMAND );
    rAssert( ok );
}