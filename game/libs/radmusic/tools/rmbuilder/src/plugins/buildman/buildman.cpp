#include <pch.hpp>
#include <plugins/buildman/builddlg.h>
#include <plugins/buildman/buildman.h>
#include <plugins/dataman/dataman.h>
#include <plugins/menuman/menuman.h>
#include <plugins/log/log.h>
#include <ods/parser.hpp>
#include <raddebug.hpp>

static const char * PLUGIN_NAME = "root/plugins/buildman";
static const char * DATAMAN     = "root/plugins/dataman";
static const char * MENUMAN     = "root/plugins/menuman";
static const char * COMMAND_NAME = "Build Settings ...";
static const char * DE_SOUND_DATA_ROOT_PATH  = "root/buildman/sound_data_root_path";
static const char * DE_TEST_TARGET_ROOT_PATH = "root/buildman/test_target_root_path";

static void add_menu_commands( void );
static void remove_menu_commands( void );

static plugin_fx * g_p_plugin_send;

void buildman_plugin_fx( plugin_msg * p_m)
{
    switch( p_m->id )
    {
        case plugin_initialize:
        {
            plugin_initialize_params * p_d = (plugin_initialize_params*) p_m;
            
            g_p_plugin_send = p_d->p_fx;
            
            break;
        }
        case plugin_terminate:
        {

            break;
        }
        
        case project_new:
        {
            add_menu_commands( );
            break;
        }
        case project_destroy:
        {
            remove_menu_commands( );  
            break;      
        }
        
        case plugin_query_name:
        {
            plugin_query_name_params* p_d = (plugin_query_name_params*) p_m;
            strcpy( p_d->name, PLUGIN_NAME );
            break;
        }
        case buildman_query_source_root:
        {
            buildman_query_source_root_params* p_d = (buildman_query_source_root_params*) p_m;
            
            dataman_get_params dg;
            dg.hdr.id = dataman_get;
            dg.hdr.size = sizeof( dg );
            strcpy( dg.hdr.target, DATAMAN );
            strcpy( dg.entry, DE_SOUND_DATA_ROOT_PATH );
            
            g_p_plugin_send( & dg.hdr );
            rAssert( dg.ok );
            
            Parser p( dg.value, strlen( dg.value ) );
            p.GetQuotedString( p_d->root, 256 );            
            
            log( PLUGIN_NAME,
                "source root queried: [%s]\n", p_d->root );
            
            break;
        }
        case buildman_query_target_root:
        {
            buildman_query_target_root_params* p_d = (buildman_query_target_root_params*) p_m;
            
            dataman_get_params dg;
            dg.hdr.id = dataman_get;
            dg.hdr.size = sizeof( dg );
            strcpy( dg.hdr.target, DATAMAN );
            if ( strcmp( p_d->target_name, "test" ) == 0 ) // HACK
            {
                strcpy( dg.entry, DE_TEST_TARGET_ROOT_PATH );
            }
            else
            {
                rAssert( false );
            }
            
            g_p_plugin_send( & dg.hdr );
            rAssert( dg.ok );
            
            Parser p( dg.value, strlen( dg.value ) );
            p.GetQuotedString( p_d->root , 256 );
            
            break;
        }
        
        case buildman_command_build_settings:
        {
            char sound_data_root_path[ 256 ];
            char test_target_root_path[ 256 ];
            
            CBuildSettingsDlg d;                    
            
            dataman_get_params dg;
            dg.hdr.id = dataman_get;
            dg.hdr.size = sizeof( dg );
            strcpy( dg.hdr.target, DATAMAN );
            strcpy( dg.entry, DE_SOUND_DATA_ROOT_PATH );
            
            g_p_plugin_send( & dg.hdr );
            rAssert( dg.ok );
            
            Parser parser1( dg.value, strlen( dg.value ) );
            parser1.GetQuotedString( sound_data_root_path, 256 );
            
            strcpy( dg.entry, DE_TEST_TARGET_ROOT_PATH );
            g_p_plugin_send( & dg.hdr );
            rAssert( dg.ok );
            
            Parser parser2( dg.value, strlen( dg.value ) );
            parser2.GetQuotedString( test_target_root_path, 256 );
                        
            d.m_DataRootPath       = sound_data_root_path;           
            d.m_TestTargetRootPath = test_target_root_path;
            
            if ( d.DoModal( ) )
            {
                dataman_set_params ds;
                ds.hdr.id = dataman_set;
                ds.hdr.size = sizeof( ds );
                strcpy( ds.hdr.target, DATAMAN );
                strcpy( ds.entry, DE_SOUND_DATA_ROOT_PATH );
                sprintf( ds.value, "\"%s\"", (const char*) d.m_DataRootPath );
                g_p_plugin_send( & ds.hdr );
                rAssert( ds.ok );
                
                strcpy( ds.entry, DE_TEST_TARGET_ROOT_PATH );
                sprintf( ds.value, "\"%s\"", (const char*) d.m_TestTargetRootPath );
                g_p_plugin_send( & ds.hdr );
                rAssert( ds.ok );
                
                log(
                    PLUGIN_NAME,
                    "Build Settings Changed\n" );
                    
                break;
                
            }
        }
    }
}

void add_menu_commands( void )
{
    menuman_add_command_params d;
    d.hdr.id = menuman_add_command;
    d.hdr.size = sizeof( d );
    strcpy( d.hdr.target, MENUMAN );
    strcpy( d.command_name, COMMAND_NAME );
    d.command.id = buildman_command_build_settings;
    sprintf( d.command.target, PLUGIN_NAME );
    
    g_p_plugin_send( & d.hdr );  
}

void remove_menu_commands( void )
{
    menuman_remove_command_params d;
    d.hdr.id = menuman_remove_command;
    d.hdr.size = sizeof( d );
    strcpy( d.hdr.target, MENUMAN );
    strcpy( d.command_name, COMMAND_NAME );
    
    g_p_plugin_send( & d.hdr );
}