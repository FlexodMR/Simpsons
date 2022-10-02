// sechema.cpp : Defines the entry point for the console application.
//

#include <ods/ods.hpp>
#include <memory/memory.hpp>
#include "music_schema_gen.hpp"
#include <radtime.hpp>

struct _type;

using namespace ods;

int main( int argc, char argv[])
{
    radMemoryInitialize( );
    radTimeInitialize( );   
    memory::initialize( RADMEMORY_ALLOC_DEFAULT );
     
    create_schema( "radmusic_schema", false );
    
        radmusic_create_schema( );
    
        dump_schema( );            
        //dump_objects( );
        
        stream_info si;
        si.p_sf = & stdio_stream_functions;
        si.p_stream = stdio_stream_open( "..\\..\\..\\..\\inc\\radmusic\\schema.hpp", true );
        
        rAssertMsg( si.p_stream != 0, "Failed to open file" );
                           
        bool ok = generate_code( & si );

        stdio_stream_close( si.p_stream );
                    
        rAssertMsg( ok, "Failed to generate code!" );
              
    destroy_schema( );

    create_schema( "radmusic_tool_schema", false );
    
        radmusic_create_tool_schema( );
        
        dump_schema( );

        si.p_stream = stdio_stream_open( "..\\..\\..\\..\\tools\\inc\\radmusic_tool_schema.hpp", true );
        rAssertMsg( si.p_stream != 0, "Failed to open file" );
                        
        ok = generate_code( & si );
        
        rAssertMsg( ok, "Failed to generate code!" );
    
    destroy_schema( );        
        
        
    memory::terminate( );
    radTimeTerminate( );
    radMemoryTerminate( );
}

