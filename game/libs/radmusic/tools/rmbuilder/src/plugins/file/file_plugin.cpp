#include <plugins/file/file_plugin.h>
#include <map>
#include <radkey.hpp>

std::map<radKey32,FILE*> g_files;

unsigned int g_file_number = 1;

#define PLUGIN_NAME "root/plugins/file"

bool do_file_open(
    unsigned int * p_file_id,
    const char * p_file_name,
    bool write )
{

    FILE * p_file = ::fopen( p_file_name, write ? "wb" : "rb" );
    
    if ( p_file )
    {
        *p_file_id = g_file_number;
        g_file_number++;
        if ( g_file_number == 0 )
        {
            g_file_number = 1;
        }     
        
        g_files.insert( std::map<radKey32, FILE*>::value_type( *p_file_id, p_file ) );
        
        
        return true;
    }
    
    return false;    
}


bool do_file_close( unsigned int file_id )
{
    std::map<radKey32,FILE*>::iterator i = g_files.find( file_id );
    
    if ( i != g_files.end( ) )
    {
        ::fclose( (*i).second );
        g_files.erase( i );
        return true;
    }
    
    return false;
}

bool do_file_write( unsigned int file_id, char * p_data, unsigned int bytes )
{
    std::map<radKey32,FILE*>::iterator i = g_files.find( file_id );
    
    if ( i != g_files.end( ) )
    {
        if ( ::fwrite( p_data, bytes, 1, (*i).second ) == 1 )
        {
            return true;
        }
    }
    
    return false;
}

bool do_file_read( unsigned int file_id, char * p_data, unsigned int bytes )
{
    std::map<radKey32,FILE*>::iterator i = g_files.find( file_id );
    
    if ( i != g_files.end( ) )
    {
        if ( ::fread( p_data, bytes, 1, (*i).second ) == 1 )
        {
            return true;
        }
    }
    
    return false;
}
    

void file_plugin_fx( plugin_msg * p_msg )
{
    switch( p_msg->id )
    {
        case plugin_query_name:
        {
            plugin_query_name_params* p_d = (plugin_query_name_params*) p_msg;
            
            strcpy( p_d->name, PLUGIN_NAME );

            break;
        }
        
        case file_open:
        {
            file_open_params * p_p = (file_open_params*) p_msg;
            p_p->ok = do_file_open( & p_p->file_id, p_p->file_name, p_p->write );
            
            break;
        }
        case file_close:
        {
            file_close_params* p_p = (file_close_params*) p_msg;
            p_p->ok = do_file_close( p_p->file_id );
            break;
        }
        case file_write:
        {
            file_write_params* p_p = (file_write_params*) p_msg;
            char * p_data = ((char*)p_p) + sizeof(file_write_params);
            unsigned int size = p_p->hdr.size - sizeof(file_write_params);
            p_p->ok =do_file_write( p_p->file_id, p_data, size  );
            break;
        }
        case file_read:
        {
            file_read_params * p_p = (file_read_params*) p_msg;
            char * p_data = ((char*)p_p) + sizeof(file_read_params);
            unsigned int size = p_p->hdr.size - sizeof(file_read_params);            
            p_p->ok = do_file_read( p_p->file_id, p_data, size );            
            break;
        }
    }
}
