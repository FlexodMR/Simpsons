#include <pch.hpp>

#include <ods/parser.hpp>
#include "compparser.hpp"

#include <radmusic/schema/schema_util.hpp>

#include <radsoundfile.hpp>
#include <radtime.hpp>
#include <radmusic/radmusic.hpp>


#define VAR_SIZE 256

using namespace ods;

namespace radmusic {

static char g_p_last_error[ 256 ];

typedef pointer project;

bool parse_global( Parser & parser,project & ptr_project, const comp & ptr_comp );
bool parse_group( Parser & parser,project & ptr_project, const comp & ptr_comp, group & ptr_parent_group );
bool parse_meta( Parser & parser,project & ptr_project, const comp & ptr_comp );
bool parse_memory_constraints( Parser & parser,project & ptr_project, const comp & ptr_comp );
bool parse_stream_constraints( Parser & parser,project & ptr_project, const comp & ptr_comp );
bool parse_stream( Parser  & parser,project & ptr_project, const comp & ptr_comp, group & ptr_group );
bool parse_region( Parser & parser,project & ptr_project, const comp & ptr_comp, group & ptr_group );
bool parse_fade_transition( Parser & parser,project & ptr_project, const comp & ptr_comp, group & ptr_group );
bool parse_stitch_transition( Parser & parser,project & ptr_project, const comp & ptr_comp, group & ptr_group );
bool parse_event( Parser & parser,project & ptr_project, const comp & ptr_comp, group & ptr_group );
bool parse_resume_type( Parser & parser, enum_region_resume_type * p_resume_type );
bool parse_actions( Parser & parser, const comp & ptr_comp, const action_ref_array & ptr_action_ref_array );
bool parse_action_push_region( Parser & parser, const comp & ptr_comp, const action_ref_array & ptr_action_ref_array);
bool parse_action_pop_region( Parser & parser, const comp & ptr_comp, const action_ref_array & ptr_action_ref_array );
bool parse_action_play_region( Parser & parser, const comp & ptr_comp, const action_ref_array & ptr_action_ref_array );
bool parse_action_start_layer( Parser & parser, const comp & ptr_comp, const action_ref_array & ptr_action_ref_array );
bool parse_action_stop_layer( Parser & parser, const comp & ptr_comp, const action_ref_array & ptr_action_ref_array ); 
bool parse_action_rand_state( Parser & parser, const comp & ptr_comp, const action_ref_array & ptr_action_ref_array ); 
bool parse_clip( Parser & parser,project & ptr_project, const comp & ptr_comp, group & ptr_group );
bool parse_state( Parser & parser,project & ptr_project, const comp & ptr_comp, group & ptr_group );
bool parse_event_matrix( Parser & parser,project & ptr_project, const comp & ptr_comp, group & ptr_group );
bool parse_tempo_track( Parser & parser,project & ptr_project, const tempo_track & ptr_tempo_track );
bool parse_layer( Parser & parser,project & ptr_project, const comp & ptr_comp, group & ptr_group, region & ptr_region );
bool parse_time_value( Parser & p, float * pTime );
bool parse_beat_set( Parser & parser, const beat_set & ptr_beat_set );

sequence       parse_sequence( Parser & parser,project & ptr_project, const comp & ptr_comp, group & ptr_group  );
sequence_event parse_complex_statement( unsigned int depth, unsigned int * p_depth, Parser & parser,project & ptr_project, const comp & ptr_comp, group & ptr_group );
sequence_event parse_repeat( unsigned int depth, unsigned int * p_max_depth, Parser & parser,project & ptr_project, const comp & ptr_comp, group & ptr_group, unsigned int times );
sequence_event parse_or( unsigned int depth, unsigned int * p_max_depth, Parser & parser,project & ptr_project, const comp & ptr_comp, group & ptr_group );
sequence_event parse_and( unsigned int depth, unsigned int * p_max_depth, Parser & parser,project & ptr_project, const comp & ptr_comp, group & ptr_group );
sequence_event parse_silence( unsigned int depth, unsigned int * p_max_depth, Parser & parser,project & ptr_project, const comp & ptr_comp, group & ptr_group );
sequence_event parse_variable( unsigned int depth, unsigned int * p_max_depth, Parser & parser,project & ptr_project, const comp & ptr_comp, group & ptr_group );
sequence_event parse_callback( unsigned int depth, unsigned int * p_max_depth, Parser & parser,project & ptr_project, const comp & ptr_comp, group & ptr_group );
sequence_event parse_clip_event( unsigned int depth, unsigned int * p_max_depth, Parser & parser,project & ptr_project, const comp & ptr_comp, group & ptr_group, const char * p_name );
sequence_event parse_stream_event( unsigned int depth, unsigned int * p_max_depth, Parser & parser,project & ptr_project, const comp & ptr_comp, group & ptr_group, const char * p_name );

// helpers

rsd_file    find_rsd_file( const comp & ptr_comp, const char * p_file_name );
rsd_file    find_or_create_rsd_file( const comp & ptr_comp, const char * p_file_name );
region      find_region_in_group_recurse( group & ptr_group, const char * p_region_name );
region      find_region_in_comp( const comp & ptr_comp, const char * p_region_name );
void        default_tempo_track( const tempo_track & tempo_track );
clip        find_clip_in_group( group & ptr_group, const char * p_clip_name );
stream      find_stream_in_group( group & ptr_group, const char * p_stream_name );
clip        find_clip_in_group_towards_root( group & ptr_group, const char * p_clip_name );
stream      find_stream_in_group_towards_root( group & ptr_group, const char * p_stream_name );
state       find_state( const comp & ptr_comp, const char * state_nom );

void dig( unsigned int * p_depth, unsigned int * p_max_depth )
{
    (*p_depth)++;
    
    if (*p_depth > *p_max_depth )
    {
        *p_max_depth = *p_depth;
    }
}

const char * parse_comp_get_last_error( void )
{
    return g_p_last_error;
}

comp parse_comp(
    project & ptr_project,
    const void * p_data,
    unsigned int size )
{
    unsigned int start_time = ::radTimeGetMilliseconds( );

	Parser parser( (char*) p_data, size );
	
    comp ptr_comp = comp_new( ptr_project.memory( ) );
    project_add_instance( ptr_project, "my_comp", ptr_comp,
        project_cls_type_find( ptr_project, "comp" ) );
        
    while ( ! parser.IsEof( ) )
    {   
        if ( !parse_global( parser, ptr_project, ptr_comp) )
        {
            return pointer_null;
        }
    }
    
    rDebugChannelPrintf( debug_channel,
        "radmusic: Parsing Took: [%d] ms Bytes: [%d]\n",
        ::radTimeGetMilliseconds( ) - start_time, block_size( ptr_project.memory( ) ) );

    /* ::project_write_objects_text(
        ptr_project,
        & debug_printf_stream_functions, NULL ); */
        
	return ptr_comp;
}

bool parse_global(
    Parser & parser,
   project & ptr_project,
    const comp & ptr_comp )
{
	bool ok = true;

	parser.SkipWhite( );

	if ( parser.SkipToken( "//" ) )
	{
		parser.SkipLine( );
	}
    else if ( parser.SkipToken( "group" ) )
    {
        ok = parse_group( parser, ptr_project, ptr_comp, (group) pointer_null );
    }
    else if ( parser.SkipToken( "meta" ) )
    {
        ok = parse_meta( parser, ptr_project, ptr_comp );
    }
    else if ( parser.SkipToken( "memoryconstraints" ) )
    {
        ok = parse_memory_constraints( parser, ptr_project, ptr_comp );
    }
    else if ( parser.SkipToken( "streamconstraints" ) )
    {
        ok = parse_stream_constraints(parser, ptr_project, ptr_comp );
    }
    else
    {
        char error[ 256 ];
        strcpy( error, "Unknown" );

        parser.GetToken( error, 256 );

        sprintf( g_p_last_error, "dmc: Syntax Error: [%s]\n", error );
        ok = false;
    }

	if ( ok == false )
	{
        char line[ 256 ];

        sprintf( line, " - Error on Line: [%d]", parser.GetLineCount( ) );
        strcat( g_p_last_error, line );
	}

    return ok;
}

bool parse_group(
    Parser & parser,
   project & ptr_project,
    const comp & ptr_comp,
    group & ptr_parent_group )
{
    
    char group_nom[ VAR_SIZE ];

    if ( ! parser.GetVariableName( group_nom, VAR_SIZE ) )
    {
        sprintf( g_p_last_error, "dmc: Error: expected name after [group] statement" );
        return false;
    }

    if ( ! parser.SkipToken( "{" ) )
    {
        sprintf( g_p_last_error, "dmc: Error: expected [{] after group name" );
        return false;
    }
   
    group ptr_new_group;
    
    if ( not_null( ptr_parent_group ) )
    {            
        ptr_new_group = group_array_add_item( group_children( ptr_parent_group ) );
        group_tree_depth( ptr_new_group, group_tree_depth( ptr_parent_group ) + 1 );
    }
    else
    {
        ptr_new_group = group_array_add_item( comp_root_groups( ptr_comp ) );
        group_tree_depth( ptr_new_group, 0 );
    }
    
    group_parent_ref( ptr_new_group, ptr_parent_group );
    group_name( ptr_new_group, group_nom );
    
	bool ok;

	while( ! parser.SkipToken( "}" ) )
	{
		ok = true;

		parser.SkipWhite( );

		if ( parser.IsEof( ) )
		{
			sprintf( g_p_last_error, "Expected '}' closing 'group'" );
			ok = false;
		}
		else if ( parser.SkipToken( "//" ) )
		{
			parser.SkipLine( );
		}
        else if ( parser.SkipToken( "group" ) )
        {
            ok = parse_group( parser, ptr_project, ptr_comp, ptr_new_group );
        }
		else if ( parser.SkipToken( "stream" ) )
		{
			ok = parse_stream( parser, ptr_project, ptr_comp, ptr_new_group );
		}
		else if ( parser.SkipToken( "region" ) )
		{
			ok = parse_region( parser, ptr_project, ptr_comp, ptr_new_group );
		}
		else if ( parser.SkipToken( "trans_fade" ) )
		{
			ok = parse_fade_transition( parser, ptr_project, ptr_comp, ptr_new_group );
		}
        else if ( parser.SkipToken( "trans_stitch" ) )
        {
            ok = parse_stitch_transition( parser, ptr_project, ptr_comp, ptr_new_group );
        }
        else if ( parser.SkipToken( "event_matrix" ) )
        {
            ok = parse_event_matrix( parser, ptr_project, ptr_comp, ptr_new_group );
        }        
		else if ( parser.SkipToken( "event" ) )
		{
			ok = parse_event( parser, ptr_project, ptr_comp, ptr_new_group );
		}        
        else if ( parser.SkipToken( "clip" ) )
        {
            ok = parse_clip( parser, ptr_project, ptr_comp, ptr_new_group );
        }
        else if ( parser.SkipToken( "state" ) )
        {
            ok = parse_state( parser, ptr_project, ptr_comp, ptr_new_group );
        }
		else
		{
			char t [128];
			parser.GetToken( t, 128 );

			sprintf( g_p_last_error, "Syntax Error: [%s]", t );
			ok = false;
		}

		if ( ok == false )
		{
			return false;
		}
	}

    return true;
}

bool parse_meta(
    Parser & parser,
   project & ptr_project,
    const comp & ptr_comp )
{
    parser.SkipToken( "name" );
    char name[ 256 ];
    parser.GetToken( name, 256 );

    parser.SkipToken( "type" );
    char dataType[ 256 ];
    parser.GetToken( dataType, 256 );
    strcat( dataType, "    " ); // format of char[4] make sure spaces are there

    parser.SkipToken( "channels" );
    unsigned int channels = parser.GetInteger( );

    parser.SkipToken( "bitresolution" );
    unsigned int bit_resolution = parser.GetInteger( );

    parser.SkipToken( "samplingrate" );
    unsigned int sampling_rate = parser.GetInteger( );

    parser.SkipToken( "size" );
    unsigned int size = parser.GetInteger( );

    unsigned int encoding = (unsigned int) radSoundHalFileHeader::GetEncodingFromChars( dataType );
    
    rsd_file ptr_rsd_file = find_rsd_file( ptr_comp, name );
    rsd_file_size( ptr_rsd_file, size );
    
    audio_format ptr_audio_format = rsd_file_audio_format( ptr_rsd_file );
    
    audio_format_encoding( ptr_audio_format, encoding );
    audio_format_channels( ptr_audio_format, channels );
    audio_format_bit_resolution( ptr_audio_format, bit_resolution );
    audio_format_sampling_rate( ptr_audio_format, sampling_rate );

    return true;
}

bool parse_memory_constraints( Parser & parser, project & ptr_project, const comp & ptr_comp )
{
    if ( ! parser.SkipToken( "cache" ) )
    {
        sprintf( g_p_last_error, "dmc: Error expected [cache] after [memoryconstraints]\n" );
        return false;
    }

	if ( ! parser.IsNumber( ) )
	{
		sprintf( g_p_last_error, "dmc: Error: number after [cache]" );
		return false;
	}

	unsigned int cache_memory = parser.GetInteger( );	

    if ( ! parser.SkipToken( "sound" ) )
    {
        sprintf( g_p_last_error, "dmc: Error expected [sound] after [memoryconstraints]\n" );
        return false;
    }

	if ( ! parser.IsNumber( ) )
	{
		sprintf( g_p_last_error, "dmc: Error: number after [sound]" );
		return false;
	}

    unsigned int sound_memory = parser.GetInteger( );

    comp_sound_memory_max( ptr_comp, sound_memory );
    comp_cache_memory_max( ptr_comp, cache_memory );    

    return true;
}

bool parse_stream_constraints(
    Parser & parser,
   project & ptr_project,
    const comp & ptr_comp )
{
    if ( ! parser.IsNumber( ) )
    {
        sprintf( g_p_last_error, "dmc:Error expected number after [streamconstraints]\n" );
        return false;
    }

    unsigned int min_stream_length_in_ms = parser.GetInteger( );

    comp_stream_size_min( ptr_comp, min_stream_length_in_ms );
        
    return true;
}

bool parse_stream(
    Parser  & parser,
   project & ptr_project,
    const comp & ptr_comp,
    group & ptr_group )
{
	char name[ 128 ];
	
	if ( ! parser.GetToken( name, 128 ) )
	{
		sprintf( g_p_last_error, "dmc: Error: expected stream name" );
		return false;
	}

	if ( ! parser.SkipToken( "{" ) )
	{
		sprintf( g_p_last_error, "dmc: Error: expected: [is]" );
		return false;
	}

	char wav_file[ 128 ];
    strcpy( wav_file, "dummy" );
    bool streamed = true;
    
    stream ptr_new_stream = stream_array_add_item( comp_streams( ptr_comp ) );
    stream_ref_array_add_item( group_stream_refs( ptr_group ), ptr_new_stream );

    default_tempo_track( stream_tempo_track( ptr_new_stream ) );
    
    while ( ! parser.SkipToken( "}" ) )
    {
        if ( parser.SkipToken( "filename:" ) )
        {
	        if ( ! parser.GetQuotedString( wav_file, 128 ) )
	        {
		        sprintf( g_p_last_error, "dmc: Error: expected .wav file name" );
		        return false;
	        }            
        }
        else if ( parser.SkipToken( "type:" ) )
        {
		    if ( parser.SkipToken( "streamed" ) )
		    {
                streamed = true;
            }
		    else if ( parser.SkipToken( "preloaded" ) )
		    {
                streamed = false;
		    }
    	    else
		    {
			    sprintf( g_p_last_error, "dmc: Error: streamed or preloaded after 'type:'" );
			    return false;
		    }
        }
        else if ( parser.SkipToken( "tempo:" ) )
        {
            if ( ! parse_tempo_track( parser, ptr_project, stream_tempo_track( ptr_new_stream ) ) )
            {
                return false;
            }
        }
        else
        {
            sprintf( g_p_last_error, "Expected 'filename:' or 'type:' or 'tempo:'" );
            return false;
        }
    }
       
    rsd_file ptr_rsd_file = find_or_create_rsd_file( ptr_comp, wav_file );
    
    stream_name( ptr_new_stream, name );
    stream_rsd_file_ref( ptr_new_stream, ptr_rsd_file );
    stream_streamed( ptr_new_stream, streamed );
    stream_parent_group_ref( ptr_new_stream, ptr_group );
    		
	return true;

}

bool parse_region(
    Parser & parser,
    project & ptr_project,
    const comp & ptr_comp,
    group & ptr_group )
{
	char name[ 128 ];

    float volume = 1.0f;
    region ptr_exit_region;
	
	region ptr_new_region = region_array_add_item( comp_regions( ptr_comp ) );
	
    region_ref_array_add_item( group_region_refs( ptr_group ), ptr_new_region );
	
	if ( ! parser.GetToken( name, 128 ) )
	{
		sprintf( g_p_last_error, "Expected region name" );
        return false;
	}

	if ( ! parser.SkipToken( "{" ) )
	{
		sprintf( g_p_last_error, "Expected: '{'" );
        return false;
	}

    while ( ! parser.SkipToken( "}" ) )
    {
        if ( parser.SkipToken( "exitregion:" ) )
        {
            char exit_region[ 256 ];
            if ( ! parser.GetToken( exit_region, 256 ) )
            {
                sprintf( g_p_last_error, "Expect exit region name after 'exitregion:'" );
                return false;
            }
            
            ptr_exit_region = find_region_in_comp( ptr_comp, exit_region );
            
            region_exit_region_ref( ptr_exit_region );
            
            if ( is_null( ptr_exit_region ) )
            {
                sprintf( g_p_last_error, "Couldn't find referenced region: [%s]", exit_region );
                return false;
            }
        }
        else if ( parser.SkipToken( "volume:" ) )
        {
            if ( ! parser.IsNumber( ) )
            {
                sprintf( g_p_last_error, "Expected number after 'volume:'" );
                return false;
            }

            volume = parser.GetFloat( );       
        }
        else if ( parser.SkipToken( "layer" ) )
        {
            layer layer_offset;
            
            // revisit           
                     
            bool ok = parse_layer( parser, ptr_project, ptr_comp, ptr_group, ptr_new_region );

            if ( ok == false )
            {
                return false;
            }
        }
        else
        {
            sprintf( g_p_last_error, "Expectected: 'volume:', 'begincallback:', 'endcallback:', 'exitregion:', or 'layer:'" );
            return false;
        }
    }                 
    
    region_group_ref( ptr_new_region, ptr_group );
    region_name( ptr_new_region, name );
    region_volume( ptr_new_region, volume );
    region_exit_region_ref( ptr_new_region, ptr_exit_region );
                   
	return true;
}

bool parse_fade_transition(
    Parser & parser,
   project & ptr_project,
    const comp & ptr_comp,
    group & ptr_group )
{
    if ( ! parser.SkipToken( "{" ) ) 
    {
        sprintf( g_p_last_error, "Expected: '{'" );
        return false;
    }

    float st, ss, tt, ts;
    st = ss = tt = ts = 0.0f;

    char source_name[ 256 ];
    strcpy( source_name, "anything" );
    char target_name[ 256 ];
    strcpy( target_name, "anything" );

    region ptr_source_region;
    region ptr_target_region;
    
    fade_transition ptr_new_fade_transition =
        fade_transition_array_add_item(
            comp_fade_transitions( ptr_comp ) );            
    
    while ( ! parser.SkipToken( "}" ) )
    {
        if ( parser.SkipToken( "source:" ) )
        {
            if ( ! parser.GetVariableName( source_name, 256 ) )
            {
                sprintf( g_p_last_error, "Expected region name after 'source'" );
                return false;
            }
        }
        else if ( parser.SkipToken( "target:" ) )
        {
            if ( ! parser.GetVariableName( target_name, 256 ) )
            {
                sprintf( g_p_last_error, "Expected region name after 'target'" );
                return false;
            }
        }
        else if ( parser.SkipToken( "st:" ) )
        {
            if ( ! parse_time_value( parser, & st ) )
            {
                return false;
            }
        }
        else if ( parser.SkipToken( "ss:" ) )
        {
            if ( ! parse_time_value( parser, & ss ) )
            {
                return false;
            }
        }
        else if ( parser.SkipToken( "tt:" ) )
        {
            if ( ! parse_time_value( parser, & tt ) )
            {
                return false;
            }
        }
        else if ( parser.SkipToken( "ts:" ) )
        {
            if ( ! parse_time_value( parser, & ts ) )
            {
                return false;
            }
        }
        else if ( parser.SkipToken( "beats:" ) )
        {
            if ( ! parse_beat_set( parser, fade_transition_beat_set( ptr_new_fade_transition ) ) )
            {
                return false;
            }
        }

        else
        {
            sprintf( g_p_last_error, "Expected fade attribute" );
            return false;
        }
    }

    if ( strcmp( source_name, "anything" ) != 0 )
    {   
        ptr_source_region = find_region_in_comp( ptr_comp, source_name );

        if ( is_null( ptr_source_region ) )
        {
            sprintf( g_p_last_error, "No such source region: [%s]", source_name );
            return false;
        }
    }



    if ( strcmp( target_name, "anything" ) != 0 )
    {        
        ptr_target_region = find_region_in_comp( ptr_comp, target_name );

        if ( is_null( ptr_target_region ) )
        {
            sprintf( g_p_last_error, "No such target region: [%s]", target_name );
            return false;
        }
    }
            
    fade_transition_source_region_ref( ptr_new_fade_transition, ptr_source_region );
    fade_transition_target_region_ref( ptr_new_fade_transition, ptr_target_region );
    fade_transition_source_time( ptr_new_fade_transition, st );
    fade_transition_source_start( ptr_new_fade_transition, ss );
    fade_transition_target_time( ptr_new_fade_transition, tt );
    fade_transition_target_start( ptr_new_fade_transition, ts );
    
    return true;

}

bool parse_stitch_transition(
    Parser & parser,
   project & ptr_project,
    const comp & ptr_comp,
    group & ptr_group )
{
    char target_name[ 256 ];
    strcpy( target_name, "nothing" );
    char source_name[ 256 ];
    strcpy( source_name, "nothing" );    
    char transition_name[ 256 ];
    strcpy( transition_name, "nothing" );     

    if ( ! parser.SkipToken( "{" ) ) 
    {
        sprintf( g_p_last_error, "Expected: '{'" );
        return false;
    }

    while ( ! parser.SkipToken( "}" ) )
    {
        if ( parser.SkipToken( "source:" ) )
        {
            if ( ! parser.GetVariableName( source_name, 256 ) )
            {
                sprintf( g_p_last_error, "Expected variable name after 'source:'" );
                return false;
            }
        }
        else if ( parser.SkipToken( "target:" ) )
        {
            if ( ! parser.GetVariableName( target_name, 256 ) )
            {
                sprintf( g_p_last_error, "Expected variable name after 'target:'" );
                return false;
            }
        }
        else if ( parser.SkipToken( "transition:" ) )
        {
            if ( ! parser.GetVariableName( transition_name, 256 ) )
            {
                sprintf( g_p_last_error, "Expected variable name after 'transition:'" );
                return false;
            }
        }
        else
        {
            sprintf( g_p_last_error, "Expected 'source:' or 'target:'" );
            return false;
        }
    }

    region ptr_source_region;
    region ptr_target_region;
    region ptr_transition_region;       

	if( strcmp( source_name, "anything" ) != 0 )
	{
		ptr_source_region = find_region_in_comp( ptr_comp, source_name );
	
		if ( is_null( ptr_source_region ) )
		{
			sprintf( g_p_last_error, "Can't find source transition: [%s]", source_name );
			return false;
		}
	}
	
	if ( strcmp( target_name, "anything" ) != 0 )
	{
		ptr_target_region = find_region_in_comp( ptr_comp, target_name );
	
		if ( is_null( ptr_target_region ) ) 
		{
			sprintf( g_p_last_error, "Can't find target transition: [%s]", target_name );
			return false;
		}
	}

	if ( strcmp( transition_name, "nothing" ) != 0 )
	{
		ptr_transition_region = find_region_in_comp( ptr_comp, transition_name );
	
		if ( is_null( ptr_transition_region ) )
		{
			sprintf( g_p_last_error, "Can't find transition transition: [%s]", transition_name );
			return false;
		}

	}
	
	stitch_transition ptr_new_stitch_transition =
	    stitch_transition_array_add_item(
	        comp_stitch_transitions( ptr_comp ) );
	
	stitch_transition_source_region_ref( ptr_new_stitch_transition, ptr_source_region );
	stitch_transition_target_region_ref( ptr_new_stitch_transition, ptr_target_region );
	stitch_transition_transition_region_ref( ptr_new_stitch_transition, ptr_transition_region );
	
 	return true;

}

bool parse_event(
    Parser & parser,
    project & ptr_project,
    const comp & ptr_comp,
    group & ptr_group )
{
    char event_n[ 256 ];

	if ( ! parser.GetVariableName( event_n, 256 ) )
	{
		sprintf( g_p_last_error, "Expected event name" );
		return false;
	}

    event ptr_new_event =event_array_add_item( comp_events( ptr_comp ) );
    event_name( ptr_new_event, event_n );
    
    action_ref_array ptr_new_action_ref_array = action_ref_array_array_add_item(
        event_action_arrays( ptr_new_event ) );
    
 	return parse_actions( parser, ptr_comp, ptr_new_action_ref_array );
}

bool parse_resume_type( Parser & parser, enum_region_resume_type * p_resume_type )
{
    if ( parser.SkipToken( "resume" ) )
    {
        *p_resume_type = region_resume_type_resume;
    }
    else if( parser.SkipToken( "restart" ) )
    {
        *p_resume_type = region_resume_type_restart;
    }
    else
    {
        sprintf( g_p_last_error, "expected 'resume' or 'restart'" );
        return false;
    }
    
    return true;
}


// actions

typedef bool (parse_action_function)( Parser & parser, const comp & ptr_comp, const action_ref_array & ptr_action_ref_array );

struct struct_action_parsing_function_info
{
    const char            * p_action_name;
    parse_action_function * p_parse_function;
};

struct_action_parsing_function_info g_action_parsing_functions[] =
{
    { "push_region:", parse_action_push_region },
    { "pop_region:",  parse_action_pop_region  },
    { "play_region:", parse_action_play_region },
    { "start_layer:", parse_action_start_layer },
    { "stop_layer:",  parse_action_stop_layer  },
    { "rand_state:",  parse_action_rand_state  }
};

unsigned int g_num_action_functions =
    sizeof( g_action_parsing_functions ) /
    sizeof( struct_action_parsing_function_info ); 

bool parse_actions( Parser & parser, const comp & ptr_comp, const action_ref_array & ptr_action_ref_array )
{
            
    if ( ! parser.SkipToken( "{" ) )
    {
        sprintf( g_p_last_error, "Expected '{'" );
        return false;
    }
    
    while ( ! parser.SkipToken( "}" ) )
    {
        for( unsigned int i = 0; i < g_num_action_functions; i ++ )
        {
            struct_action_parsing_function_info * p_info = g_action_parsing_functions + i;
            
            if ( parser.SkipToken( p_info->p_action_name ) )
            {
                if ( ! p_info->p_parse_function( parser, ptr_comp, ptr_action_ref_array ) )
                {
                    return false;
                }
                
                break;
            }
        }
        
        if ( i >= g_num_action_functions )
        {
            sprintf( g_p_last_error, "expaction action" );
            return false;
        }
    }
    
    return true;
}        

bool parse_action_push_region( Parser & parser, const comp & ptr_comp, const action_ref_array & ptr_action_ref_array )
{
    if ( ! parser.SkipToken( "{" ) )
    {
        sprintf( g_p_last_error, "Expected '{'" );
        return false;
    }
    
    region ptr_region;
    enum_region_resume_type current_resume_type = region_resume_type_resume;
    enum_region_resume_type target_resume_type  = region_resume_type_resume;
    
    while( ! parser.SkipToken( "}" ) )
    {
        if ( parser.SkipToken( "region:" ) )
        {
            char region_nom[ 256 ];
            if ( ! parser.GetVariableName( region_nom, 256 ) )
            {
                sprintf( g_p_last_error, "Expected region name" );
                return false;
            }
            
            ptr_region = find_region_in_comp( ptr_comp, region_nom );
            
            if (  is_null( ptr_region  ) )
            {
                sprintf( g_p_last_error, "no such region: [%s]", region_nom );
                return false;
            }
        }
        else if ( parser.SkipToken( "current_resume_type:" ) )
        {
            if ( ! parse_resume_type( parser, & current_resume_type ) )
            {
                return false;
            }
        }
        else if ( parser.SkipToken( "target_resume_type:" ) )
        {
            if ( ! parse_resume_type( parser, & target_resume_type ) )
            {
                return false;
            }
        }
        else
        {
            sprintf( g_p_last_error, "syntax error" );
            return false;        
        }
       
    }
    
    if ( is_null( ptr_region ) )
    {
        sprintf( g_p_last_error, "Must specify region" );
        return false;
    }
    
    push_region_action_array ptr_push_region_action_array = comp_push_region_action_array( ptr_comp );
    push_region_action ptr_new_push_region_action = push_region_action_array_add_item( ptr_push_region_action_array );
    
    push_region_action_type(
        ptr_new_push_region_action,
        action_type_push_region );
        
    push_region_action_region_ref(
        ptr_new_push_region_action,
        ptr_region );
        
    push_region_action_current_region_resume_type(
        ptr_new_push_region_action,
        current_resume_type );
        
    push_region_action_target_region_resume_type(
        ptr_new_push_region_action,
        target_resume_type );
        
    action_ref_array_add_item( ptr_action_ref_array, (action) ptr_new_push_region_action );
    
    return true;
}

bool parse_action_pop_region( Parser & parser, const comp & ptr_comp, const action_ref_array & ptr_action_ref_array )
{
    if ( ! parser.SkipToken( "{" ) )
    {
        sprintf( g_p_last_error, "Expected: '{'" );
        return false;
    }
    
    region ptr_region;
    
    while ( ! parser.SkipToken( "}" ) )
    {
        if ( parser.SkipToken( "region:" ) )
        {
            char region_nom[ 256 ];
            
            if ( ! parser.GetVariableName( region_nom, 256 ) )
            {
                sprintf( g_p_last_error, "Expected region name" );
                return false;
            }
            
            ptr_region = find_region_in_comp( ptr_comp, region_nom );
            
            if ( is_null( ptr_region ) )
            {
                sprintf( g_p_last_error, "No such region: [%s]", region_nom );
                return false;
            }
        }
        else
        {
            sprintf( g_p_last_error, "Expected push_region attribute" );
            return false;
        }
    }
    
    pop_region_action ptr_new_pop_region_action =
        pop_region_action_array_add_item(
            comp_pop_region_action_array( ptr_comp ) );
            
    pop_region_action_type(
        ptr_new_pop_region_action,
        action_type_pop_region );
        
    pop_region_action_region_ref(
        ptr_new_pop_region_action,
        ptr_region );
        
    action_ref_array_add_item(
        ptr_action_ref_array,
        (action) ptr_new_pop_region_action );
        
    return true;
    
}

bool parse_action_play_region( Parser & parser, const comp & ptr_comp, const action_ref_array & ptr_action_ref_array )
{
    if ( ! parser.SkipToken( "{" ) )
    {
        sprintf( g_p_last_error, "Expected '{'" );
        return false;
    }
    
    region ptr_region;
    enum_region_resume_type resume_type = region_resume_type_restart;
    
    while( ! parser.SkipToken( "}" ) )
    {
        if ( parser.SkipToken( "region:" ) )
        {
            char region_nom[ 256 ];
            if ( ! parser.GetVariableName( region_nom, 256 ) )
            {
                sprintf( g_p_last_error, "Expected region name" );
                return false;
            }
            
            ptr_region = find_region_in_comp( ptr_comp, region_nom );
            
            if (  is_null( ptr_region  ) )
            {
                sprintf( g_p_last_error, "no such region: [%s]", region_nom );
                return false;
            }
        }
        else if ( parser.SkipToken( "resume_type:" ) )
        {
            if ( ! parse_resume_type( parser, & resume_type ) )
            {
                return false;
            }
        }
        else
        {
            sprintf( g_p_last_error, "expected play region attribute" );
            return false;
        }
    }
    
    if ( is_null( ptr_region ) )
    {
        sprintf( g_p_last_error, "Must specify region" );
        return false;
    }
    
    play_region_action_array ptr_play_region_action_array = comp_play_region_action_array( ptr_comp );
    play_region_action ptr_new_play_region_action = play_region_action_array_add_item( ptr_play_region_action_array );
    
    play_region_action_type(
        ptr_new_play_region_action,
        action_type_play_region );
        
    play_region_action_region_ref(
        ptr_new_play_region_action,
        ptr_region );
        
    play_region_action_region_resume_type(
        ptr_new_play_region_action,
        resume_type );
        
    action_ref_array_add_item( ptr_action_ref_array, (action) ptr_new_play_region_action );
    
    return true;
}

bool parse_action_start_layer( Parser & parser, const comp & ptr_comp, const action_ref_array & ptr_action_ref_array )
{
    if ( ! parser.SkipToken( "{" ) )
    {
        sprintf( g_p_last_error, "Expected '{'" );
        return false;
    }
    
    if ( ! parser.SkipToken( "layer:" ) )
    {
        sprintf( g_p_last_error, "Expected 'layer:'" );
        return false;    
    }
    
    char layer_name[ 256 ];
    
    if ( ! parser.GetVariableName( layer_name, 256 ) )
    {
        sprintf( g_p_last_error, "Expected layer name" );
        return false;    
    }
    
    if ( ! parser.SkipToken( "}" ) )
    {
        sprintf( g_p_last_error, "Expected '}'" );
        return false;
    }
    
    start_layer_action ptr_new_start_layer_action =
        start_layer_action_array_add_item(
            comp_start_layer_action_array( ptr_comp ) );
            
    start_layer_action_type(
        ptr_new_start_layer_action,
        action_type_start_layer );
    
    start_layer_action_layer_name( ptr_new_start_layer_action, layer_name );
    
    action_ref_array_add_item( ptr_action_ref_array, (action) ptr_new_start_layer_action );
    return true;
        
}

bool parse_action_stop_layer( Parser & parser, const comp & ptr_comp, const action_ref_array & ptr_action_ref_array )
{
    if ( ! parser.SkipToken( "{" ) )
    {
        sprintf( g_p_last_error, "Expected '{'" );
        return false;
    }
    
    if ( ! parser.SkipToken( "layer:" ) )
    {
        sprintf( g_p_last_error, "Expected 'layer:'" );
        return false; 
    }
    
    char layer_name[ 256 ];
    
    if ( ! parser.GetVariableName( layer_name, 256 ) )
    {
        sprintf( g_p_last_error, "Expected layer name" );
        return false;    
    }
    
    if ( ! parser.SkipToken( "}" ) )
    {
        sprintf( g_p_last_error, "Expected '}'" );
        return false;
    }
    
    stop_layer_action ptr_new_stop_layer_action =
        stop_layer_action_array_add_item(
            comp_stop_layer_action_array( ptr_comp ) );
            
    stop_layer_action_type(
        ptr_new_stop_layer_action,
        action_type_stop_layer );
    
    stop_layer_action_layer_name( ptr_new_stop_layer_action, layer_name );
    
    action_ref_array_add_item( ptr_action_ref_array, (action) ptr_new_stop_layer_action );
    return true;
}

bool parse_action_rand_state( Parser & parser, const comp & ptr_comp, const action_ref_array & ptr_action_ref_array )
{
    if ( ! parser.SkipToken( "{" ) )
    {
        sprintf( g_p_last_error, "Expected '{'" );
        return false;
    }

    if ( ! parser.SkipToken( "state:" ) )
    {
        sprintf( g_p_last_error, "Expected 'state:'" );
        return false; 
    }
        
    char state_nom[ 256 ];
    
    if ( ! parser.GetVariableName( state_nom, 256 ) )
    {
        sprintf( g_p_last_error, "Expected layer name" );
        return false;    
    }
    
    state ptr_state = find_state( ptr_comp, state_nom );
    
    if ( is_null( ptr_state ) )
    {
        sprintf( g_p_last_error, "No such state: [%s]", state_nom );
        return false;    
    }
    
    if ( ! parser.SkipToken( "}" ) )
    {
        sprintf( g_p_last_error, "Expected '}'" );
        return false;
    }
    
    rand_state_action ptr_new_rand_state_action =
        rand_state_action_array_add_item(
            comp_rand_state_action_array(
                ptr_comp ) );
                
    rand_state_action_type(
        ptr_new_rand_state_action,
        action_type_rand_state );
        
    rand_state_action_state_ref(
        ptr_new_rand_state_action,
        ptr_state );

    action_ref_array_add_item(
        ptr_action_ref_array,        
        (action) ptr_new_rand_state_action );
        
    return true;
}

bool parse_clip(
    Parser & parser,
   project & ptr_project,
    const comp & ptr_comp,
    group & ptr_group )
{
    char name[ 256 ];

	if ( ! parser.GetToken( name, 128 ) )
	{
		sprintf( g_p_last_error, "dmc: Error: expected clip name after [name]" );
		return false;
	}

	if ( ! parser.SkipToken( "{" ) )
	{
		sprintf( g_p_last_error, "dmc: Error: expected '{' after [clip name] directive" );
		return false;
	}
   
    clip ptr_new_clip = clip_array_add_item( comp_clips( ptr_comp ) );
    clip_ref_array_add_item( group_clip_refs( ptr_group ), ptr_new_clip );
   	
    char wav_file[ 256 ];
    strcpy( wav_file, "dummy" );
    float volume = 1.0f;    

    default_tempo_track( clip_tempo_track( ptr_new_clip ) );

    while( ! parser.SkipToken( "}" ) )
    {
        if ( parser.SkipToken( "filename:" ) )
        {
            if ( ! parser.GetQuotedString( wav_file, 256 ) )
            {
                sprintf( g_p_last_error, "Expected quoted string after 'filename:'" );
                return false;
            }
        }
        else if ( parser.SkipToken( "volume:" ) )
        {
            if ( ! parser.IsNumber( ) )
            {
                sprintf( g_p_last_error, "Expected number after 'volume:' directive" );
                return false;
            }

            volume = parser.GetFloat( );
        }
        else if ( parser.SkipToken( "tempo:" ) )
        {
            if ( ! parse_tempo_track( parser, ptr_project, clip_tempo_track( ptr_new_clip ) ) )
            {
                return false;
            }
        }
        else
        {
            sprintf( g_p_last_error, "Expected 'filename:' or 'volume:' or 'tempo:'" );
            return false;
        }
    }
    
    rsd_file ptr_rsd_file = find_or_create_rsd_file( ptr_comp, wav_file );
    
    clip_name( ptr_new_clip, name );
    clip_rsd_file_ref( ptr_new_clip, ptr_rsd_file );
    clip_parent_group_ref( ptr_new_clip, ptr_group );
    
    return true;
}

bool parse_state( Parser & parser,project & ptr_project, const comp & ptr_comp, group & ptr_group )
{
    char name[ 256 ];
    if ( ! parser.GetVariableName( name, 256 ) )
    {
        sprintf( g_p_last_error, "Expected state name after 'state'" );
        return false;
    }
    
    if ( ! parser.SkipToken( "{" ) )
    {
        sprintf( g_p_last_error, "Expected '{'" );
        return false;
    }
    
    state_array ptr_state_array = ::comp_states( ptr_comp );
    state       ptr_state_new   = state_array_add_item( ptr_state_array );
    state_name( ptr_state_new, name );
    
    while( ! parser.SkipToken( "}" ) )
    {
        if ( ! parser.GetVariableName( name, 256 ) )
        {
            sprintf( g_p_last_error, "Expected state name" );
            return false;
        }
        
        string_array_add_item( state_values( ptr_state_new ), name );
        
        parser.SkipToken( "," );
    }
    
    return true;
        
}

bool parse_event_matrix( Parser & parser,project & ptr_project, const comp & ptr_comp, group & ptr_group )
{
    
    event_matrix ptr_event_matrix = event_matrix_array_add_item( comp_event_matricies( ptr_comp ) );
    state_ref_array ptr_state_ref_array = event_matrix_state_ref_array( ptr_event_matrix );
    
    while ( ! parser.SkipToken( "{" ) )
    {
        if ( ! parser.SkipToken( "[" ) )
        {
            sprintf( g_p_last_error, "Expected: '['" );
            return false;
        }
        
        char dimension[ 256 ];
        
        if ( ! parser.GetVariableName( dimension, 256 ) )
        {
            sprintf( g_p_last_error, "Expected state name." );
            return false;    
        }
        
        state_array ptr_state_array = comp_states( ptr_comp );
                
        for( unsigned int i = 0; i < state_array_num_items( ptr_state_array ); i ++ )
        {
            state ptr_state = state_array_item_at( ptr_state_array, i );

            char state_nom[ 256 ];           
   
            state_name( ptr_state, state_nom, 256 );
            
            if ( strcmp( state_nom, dimension ) == 0 )
            {
                state_ref_array_add_item( ptr_state_ref_array, ptr_state );
                break;
            }
        }
        
        if ( i >= state_array_num_items( ptr_state_array ) )
        {
            sprintf( g_p_last_error, "No such state: [%s]", dimension );
            return false;
        }
        
        if ( ! parser.SkipToken( "]" ) )
        {
            sprintf( g_p_last_error, "Expected ']'" );
            return false;
        }
    }   
        
    while( ! parser.SkipToken( "}" ) )
    {
        char event_nom[ 256 ];
        unsigned int dimensions[ 50 ];
        
        if ( ! parser.GetVariableName( event_nom, 256 ) )
        {
            sprintf( g_p_last_error, "Expected event name" );
            return false;
        }

        
        event ptr_new_event;
        
        event_array ptr_event_array = comp_events( ptr_comp );
        
        for( unsigned int i = 0; i < event_array_num_items( ptr_event_array ); i ++ )
        {
            event ptr_event_test = event_array_item_at( ptr_event_array, i );
            char event_nom_test[ 256 ];
            event_name( ptr_event_test, event_nom_test, 256 );
            
            if ( strcmp( event_nom_test,event_nom ) == 0 )
            {
                ptr_new_event = ptr_event_test;
                break;
            }
        }
        
        if ( is_null( ptr_new_event ) )
        {
            ptr_new_event = event_array_add_item( ptr_event_array );
            event_name( ptr_new_event, event_nom );
            event_event_matrix_ref( ptr_new_event, ptr_event_matrix );
            
            for( unsigned int s = 0; s < state_ref_array_num_items( ptr_state_ref_array ); s ++ )
            {
                state ptr_state = state_ref_array_item_at( ptr_state_ref_array, s );
                string_array ptr_string_array = state_values( ptr_state );
                
                unsigned int num_items = string_array_num_items( ptr_string_array );
                
                for( unsigned v = 0; v < num_items; v ++ )
                {
                    action_ref_array_array_add_item( event_action_arrays( ptr_new_event ) );
                }
            }
        }
        else
        {
            rAssert( event_event_matrix_ref( ptr_new_event ) == ptr_event_matrix );
        }
             
        unsigned int num_states = state_ref_array_num_items( ptr_state_ref_array );
        
        for( unsigned int s = 0; s < num_states; s ++ )
        {
            state ptr_state = state_ref_array_item_at( ptr_state_ref_array, s );
            string_array ptr_state_values= state_values( ptr_state );
            
            if ( ! parser.SkipToken( "[" ) )
            {
                sprintf( g_p_last_error, "Expected '['" );
                return false;
            }
            
            char state_value[ 256 ];
            
            if ( ! parser.GetVariableName( state_value, 256 ) )
            {
                sprintf( g_p_last_error, "Expected state value" );
                return false;                
            }                
            
            for( unsigned int sv = 0; sv < string_array_num_items( ptr_state_values ); sv ++ )
            {
                char state_value_test[ 256 ];
                
                string_array_item_at( ptr_state_values, sv, state_value_test, 256 );
                
                if ( strcmp( state_value_test, state_value ) == 0 )
                {
                    break;
                }
            }
            
            if ( sv >= string_array_num_items( ptr_state_values ) )
            {
                sprintf( g_p_last_error, "%s is not a valid value for this dimension", state_value );
                return false;
            }
            
            dimensions[ s ] = sv;
            
            if ( ! parser.SkipToken( "]" ) )
            {
                sprintf( g_p_last_error, "Expected ']'" );            
                return false;
            }
        }

        unsigned int action_offset = calculate_action_offset( ptr_new_event,
            dimensions );
        
        action_ref_array ptr_action_ref_array = action_ref_array_array_item_at( event_action_arrays( ptr_new_event ), action_offset );
        
        if ( ! parse_actions( parser, ptr_comp, ptr_action_ref_array ) )
        {
            return false;
        }
    }
    
    return true;
    
}


bool parse_tempo_track(
    Parser & parser,
    project & ptr_project,
    const tempo_track & ptr_tempo_track )
{
    float bpm = 120.0f;
    float start_beat = 0.0f;
    unsigned char time_sig_numerator = 4;
    unsigned char time_sig_denominator = 4;
        
    if ( ! parser.SkipToken( "{" ) )
    {
        sprintf( g_p_last_error, "Expected '{'" );
        return false;
    }
    while( ! parser.SkipToken( "}" ) )
    {
        if ( parser.SkipToken( "bpm:" ) )
        {
	        if ( ! parser.IsNumber( ) )
	        {
		        sprintf( g_p_last_error, "Expected number after 'tempo' directive" );
		        return 0;
	        }

	        bpm = parser.GetFloat( );
	    }
	    else if ( parser.SkipToken( "time_sig:" ) )
	    {   
	        if ( ! parser.IsNumber( ) )
	        {
		        sprintf( g_p_last_error, "Error: expected time sig numerator after 'tempo: bpm' directive" );
		        return 0;
	        }

	        time_sig_numerator = parser.GetInteger( );

	        if ( ! parser.SkipChar( '/' ) )
	        {
		        sprintf( g_p_last_error, "dmc: Error: expected [/] after time sig numerator" );
		        return 0;
	        }

	        if ( ! parser.IsNumber( ) )
	        {
		        sprintf( g_p_last_error, "Expected time sig denominator after 'tempo: bpm num/' directive" );
		        return 0;
	        }

	        time_sig_denominator = parser.GetInteger( );	    
	    }
	    else if ( parser.SkipToken( "start_beat:" ) )
	    {
	        if ( ! parser.IsNumber( ) )
	        {
	            sprintf( g_p_last_error, "Expected number after 'start_beat:'" );
	            return false;
	        }
	        
	        start_beat = parser.GetFloat( ) - 1.0f;
	    }
	    else
	    {
	        sprintf( g_p_last_error, "Expected 'bpm:', 'time_sig:', or 'start_beat:'" );
	        return false;
	    }
    }
    
    tempo_track_bpm( ptr_tempo_track, bpm );
    tempo_track_start_beat( ptr_tempo_track, start_beat );
    tempo_track_time_sig_numerator( ptr_tempo_track, time_sig_numerator );
    tempo_track_time_sig_denominator( ptr_tempo_track, time_sig_denominator );
    
    return true;
}

bool parse_layer(
    Parser & parser,
    project & ptr_project,
    const comp & ptr_comp,
    group & ptr_group,
    region & ptr_region )
{
    char name[ 256 ];
    float master_volume = 1.0f;
    beat_set ptr_beat_set;
    bool constant = true;
                
    if ( ! parser.GetVariableName( name, 256 ) )
    {
        sprintf( g_p_last_error, "Expected stitched sequence name" );
        return false;
    }

    if ( ! parser.SkipToken( "{" ) )
    {
        sprintf( g_p_last_error, "Expected '{' after sequence name" );
        return false;
    }

    
    layer ptr_new_layer = layer_array_add_item( comp_layers( ptr_comp ) );
    
    layer_ref_array_add_item( region_layer_refs( ptr_region ), ptr_new_layer );
    
    while ( ! parser.SkipToken( "}" ) )
    {
        if ( parser.SkipToken( "volume:" ) )
        {
            if ( ! parser.IsNumber( ) )
            {
                sprintf( g_p_last_error, "Expected number after 'volume:'" );
                return false;
            }            
            
            master_volume = parser.GetFloat( );            
            
            if ( master_volume < 0.0 || master_volume > 1.0 )
            {
                sprintf( g_p_last_error, "Volume must bet between 0.0 and 1.0" );
                return false;
            }
        }
        else if ( parser.SkipToken( "type:" ) )
        {
            if ( parser.SkipToken( "constant" ) )
            {
                constant = true;
            }
            else if ( parser.SkipToken( "event" ) )
            {
                constant = false;
            }
            else
            {
                sprintf( g_p_last_error, "Expected 'constant' or 'event' after 'type:'" );
                return false;
            }
        }
        else if ( parser.SkipToken( "seq:" ) )
        {
            
            sequence ptr_sequence =
                parse_sequence( parser, ptr_project, ptr_comp, ptr_group );
                
            layer_sequence_ref( ptr_new_layer, ptr_sequence );            
              
            if ( is_null( ptr_sequence ) )
            {
                return false;
            }
        }            
        else if ( parser.SkipToken( "beats:" ) )
        {
            if ( ! parse_beat_set( parser, layer_beat_set( ptr_new_layer ) ) )
            {
                return false;
            }
        }
        else if ( parser.SkipToken( "master_volume:" ) )
        {
            if ( ! parser.IsNumber( ) )
            {
                sprintf( g_p_last_error, "Expected number after 'master_volume:'" );
                return false;
            }
            
            master_volume = parser.GetFloat( );
        }
        else
        {
            sprintf( g_p_last_error, "Expected triggered layer attribute" );
            return false;
        }
    }
    
    layer_name( ptr_new_layer, name );
    layer_constant( ptr_new_layer, constant );
    layer_volume( ptr_new_layer, master_volume );
        
    return true;
    
}  

bool parse_time_value( Parser & p, float * pTime )
{      
    if ( ! p.IsNumber( ) )
    {
        sprintf( g_p_last_error, "Expected number for time value" );
        return false;
    }
    
    *pTime = p.GetFloat( );
    
    if ( p.SkipTokenNsw( ":" ) )
    {
        if ( ! p.IsNumber( ) )
        {
            sprintf( g_p_last_error, "expected number after ':'" );
            return false;
        }
        
        float bpm = p.GetFloat( );
        
        float beatsPerSecond = bpm / 60.0f;

        *pTime = ( *pTime / beatsPerSecond ) * 1000.0f;
    }
    
    return true;        
}

bool parse_beat_set( Parser & parser, const beat_set & ptr_beat_set )
{
	if ( ! parser.SkipToken( "{" ) )
	{
		sprintf( g_p_last_error, "dmc: Error: expected [{] after [beats] is in layer statement" );
		return false;
	}

    while ( ! parser.SkipToken( "}" ) )
    {
        if ( ! parser.IsNumber( ) )
        {
            sprintf( g_p_last_error, "rmc: Error: expeat beat specification after [beats ,]" );
            return false;
        }

        float_array_add_item( beat_set_beats( ptr_beat_set ), parser.GetFloat( ) - 1.0f );      
    }

    return true;
}

sequence parse_sequence(
    Parser & parser,
    project & ptr_project,
    const comp & ptr_comp,
    group & ptr_group )
{
    unsigned int max_depth = 0;
    
    sequence_event ptr_root_event = parse_complex_statement(
        0, & max_depth, parser, ptr_project, ptr_comp, ptr_group );
    
    if ( not_null( ptr_root_event ) )
    {
        sequence ptr_new_sequence = sequence_array_add_item( comp_sequences( ptr_comp ) );
        
        sequence_root_event( ptr_new_sequence, ptr_root_event );
        sequence_stack_size( ptr_new_sequence, max_depth );
        
        return ptr_new_sequence;
    }
    
    return (sequence) pointer_null;
}

sequence_event parse_complex_statement(
    unsigned int depth,
    unsigned int * p_max_depth, 
    Parser & parser,
    project & ptr_project,
    const comp & ptr_comp,
    group & ptr_group )
{
    sequence_event ptr_sequence_event;
    
	if ( parser.SkipChar( '~' ) )
	{
		ptr_sequence_event = parse_repeat( depth, p_max_depth, parser, ptr_project, ptr_comp, ptr_group, -1 );
	}
	else if ( parser.IsNumber( ) )
	{
		int times = parser.GetInteger( );

		ptr_sequence_event = parse_repeat( depth, p_max_depth, parser, ptr_project, ptr_comp, ptr_group, times );
	}
	else if ( parser.SkipChar( '?' ) )
	{
		ptr_sequence_event = parse_or( depth, p_max_depth, parser, ptr_project, ptr_comp, ptr_group );
	}
	else if ( parser.SkipChar( '{' ) )
	{
	    ptr_sequence_event = parse_and( depth, p_max_depth, parser, ptr_project, ptr_comp, ptr_group );
	}
	else if ( parser.SkipChar( '$' ) )
	{
	    ptr_sequence_event = parse_silence( depth, p_max_depth, parser, ptr_project, ptr_comp, ptr_group );
	}
	else if ( parser.SkipChar( '^' ) )
	{
	    ptr_sequence_event = parse_variable( depth, p_max_depth, parser, ptr_project, ptr_comp, ptr_group  );
	}
	else if ( parser.SkipChar( '*' ) )
	{
	    ptr_sequence_event = parse_callback( depth, p_max_depth, parser, ptr_project, ptr_comp, ptr_group  );
	}
	else if ( parser.IsStartOfVarName( ) )
	{
		char prim_name[ 128 ];

		parser.GetVariableName( prim_name, 128 );
		
		ptr_sequence_event = parse_clip_event( depth, p_max_depth, parser, ptr_project, ptr_comp, ptr_group, prim_name );
		
		if ( is_null( ptr_sequence_event ) )
		{
		    ptr_sequence_event = parse_stream_event( depth, p_max_depth, parser, ptr_project, ptr_comp, ptr_group, prim_name );
		}
	}
	else
	{
		sprintf( g_p_last_error, "dmc: Error not a complex statement" );
	}

	return ptr_sequence_event;
}

sequence_event parse_repeat(
    unsigned int depth,
    unsigned int * p_max_depth, 
    Parser & parser, 
    project & ptr_project, 
    const comp & ptr_comp, 
    group & ptr_group, 
    unsigned int times )
{
    dig( & depth, p_max_depth );
    
	unsigned int timesMax = 0xFFFFFFFF;

	if ( parser.SkipChar( '-' ) )
	{
		if ( ! parser.IsNumber( ) )
		{
			sprintf( g_p_last_error, "dmc: Error: number after '-' parsing repeat" );
			return (sequence_event) pointer_null;
		}

		timesMax = parser.GetInteger( );	
	}
	
	event_logic_repeat ptr_new_repeat = 
	    event_logic_repeat_array_add_item(
	        comp_event_logic_repeat_array( ptr_comp ) );

    event_logic_repeat_type( ptr_new_repeat, sequence_event_logic_repeat );
	event_logic_repeat_min_times( ptr_new_repeat, times );	        
	event_logic_repeat_max_times( ptr_new_repeat, timesMax == 0xFFFFFFFF ? times : timesMax );
    
    sequence_event ptr_event_to_repeat =
	    parse_complex_statement( depth, p_max_depth, parser, ptr_project, ptr_comp, ptr_group );
	    
	if ( is_null( ptr_event_to_repeat ) )
	{
	    return (sequence_event) pointer_null;
	}
	
	event_logic_repeat_event_ref( ptr_new_repeat, ptr_event_to_repeat );

	return (sequence_event) ptr_new_repeat;
}

sequence_event parse_or(
    unsigned int depth,
    unsigned int * p_max_depth, 
    Parser & parser,
    project & ptr_project,
    const comp & ptr_comp,
    group & ptr_group )
{
    dig( & depth, p_max_depth );
        
	if ( ! parser.SkipChar( '{' ) )
	{
		sprintf( g_p_last_error, "dmc: Error: expected '{' as start of random squence." );
		return (sequence_event) pointer_null;
	}

    event_logic_or ptr_new_event_logic_or = event_logic_or_array_add_item(
        comp_event_logic_or_array( ptr_comp ) );
    event_logic_or_type( ptr_new_event_logic_or, sequence_event_logic_or );
        
    sequence_event ptr_item_to_or =
        parse_complex_statement( depth,
            p_max_depth, parser, ptr_project, ptr_comp, ptr_group );
       
	if ( is_null( ptr_item_to_or ) )
	{
	    return (sequence_event) pointer_null;
	}

    sequence_event_ref_array_add_item(
        event_logic_or_events( ptr_new_event_logic_or ),
        ptr_item_to_or );
        
	while( 1 )
	{
		if ( parser.SkipChar( ',' ) )
		{
            sequence_event ptr_item_to_or =
                parse_complex_statement( depth,
                    p_max_depth, parser, ptr_project, ptr_comp, ptr_group );
               
	        if ( is_null( ptr_item_to_or ) )
	        {
	            return (sequence_event) pointer_null;
	        }

            sequence_event_ref_array_add_item(
                event_logic_or_events( ptr_new_event_logic_or ),
                ptr_item_to_or );
		}
		else if ( parser.SkipChar( '}' ) )
		{
			break;
		}
		else
		{
			sprintf( g_p_last_error, "dmc: Error: expected '}' or',' in random sequence." );
			return (sequence_event) pointer_null;
		}
	}

	return (sequence_event) ptr_new_event_logic_or;
}

sequence_event parse_and(
    unsigned int depth,
    unsigned int * p_max_depth, 
    Parser & parser, 
    project & ptr_project, 
    const comp & ptr_comp, 
    group & ptr_group )
{
    dig( & depth, p_max_depth );
    
    event_logic_and ptr_new_event_logic_and =
        event_logic_and_array_add_item(
            comp_event_logic_and_array( ptr_comp ) );
    event_logic_and_type( ptr_new_event_logic_and, sequence_event_logic_and );
            
    sequence_event ptr_item_to_and =
        parse_complex_statement( depth, p_max_depth, parser, ptr_project, ptr_comp, ptr_group );
       
    if ( is_null( ptr_item_to_and ) )
    {
        return (sequence_event) pointer_null;
    }
    
    sequence_event_ref_array_add_item(
        event_logic_and_events(
            ptr_new_event_logic_and ),
        ptr_item_to_and );
        

	while( 1 )
	{
		if ( parser.SkipChar( ',' ) )
		{
            sequence_event ptr_item_to_and =
                parse_complex_statement( depth, p_max_depth, parser, ptr_project, ptr_comp, ptr_group );
               
            if ( is_null( ptr_item_to_and ) )
            {
                return (sequence_event) pointer_null;
            }
            
            sequence_event_ref_array_add_item(
                event_logic_and_events(
                    ptr_new_event_logic_and ),
                ptr_item_to_and );
                    
		}
		else if ( parser.SkipChar( '}' ) )
		{
			break;
		}
		else
		{
			sprintf( g_p_last_error, "dmc: Error: expected '}' or',' in repeat." );
			return (sequence_event) pointer_null;
		}
	}

    return (sequence_event) ptr_new_event_logic_and;

}

sequence_event parse_silence(
    unsigned int depth,
    unsigned int * p_max_depth, 
    Parser & parser, 
    project & ptr_project, 
    const comp & ptr_comp, 
    group & ptr_group )
{
    dig( & depth, p_max_depth );
    
    float min_ms = 1000.0f;
    float max_ms = 1000.0f;
    
    if ( ! parser.SkipChar( '(' ) )
    {
        sprintf( g_p_last_error, "Expected '(' after '$'" );
        return (sequence_event) pointer_null;
    }
    
    if ( ! parser.IsNumber( ) )
    {
        sprintf( g_p_last_error, "Expected number in '$' directive" );
        return (sequence_event) pointer_null;
    }
    
    min_ms = parser.GetFloat( );
    
    if ( parser.SkipChar( '-' ) )
    {
        if ( ! parser.IsNumber( ) )
        {
            sprintf( g_p_last_error, "Expected number after '-' in silence directive" );
            return (sequence_event) pointer_null;
        }
        
        max_ms = parser.GetFloat( );
    }
    else
    {
        max_ms = min_ms;
    }
    
    if ( parser.SkipTokenNsw( ":" ) )
    {
        if ( ! parser.IsNumber( ) )
        {
            sprintf( g_p_last_error, "Expeced number after ':'" );
            (sequence_event) pointer_null;
        }
        
        float bpm = parser.GetFloat( );        
       
        float beatsPerSecond = bpm / 60.0f;

        min_ms = ( min_ms / beatsPerSecond ) * 1000.0f;
        max_ms = ( max_ms / beatsPerSecond ) * 1000.0f;
    }
    
    if ( ! parser.SkipChar( ')' ) )
    {
        sprintf( g_p_last_error, "Expected ')' after '$(...'" );
        return (sequence_event) pointer_null;
    }

    event_silence ptr_new_event_silence =
        event_silence_array_add_item(
            comp_event_silence_array(
                ptr_comp ) );
     
    event_silence_type( ptr_new_event_silence, sequence_event_silence );
    
    event_silence_min_time( ptr_new_event_silence, min_ms );
    event_silence_max_time( ptr_new_event_silence, max_ms );
    
    return (sequence_event) ptr_new_event_silence;
}

sequence_event parse_variable(
    unsigned int depth,
    unsigned int * p_max_depth, 
    Parser & parser, 
    project & ptr_project, 
    const comp & ptr_comp, 
    group & ptr_group )
{
    dig( & depth, p_max_depth );
    
    if ( ! parser.SkipChar( '(' ) )
    {
        sprintf( g_p_last_error, "Expected '(' after '^'" );
        return (sequence_event) pointer_null;
    }
    
    sequence_event ptr_new_sequence_event;
    
   // bools
    if ( parser.SkipToken( "positional:" ) )
    {
        bool var_positional;
        
        if ( parser.SkipToken( "true" ) )
        {
            var_positional = true;
        }
        else
        {
            if ( ! parser.SkipToken( "false" ) )
            {
                sprintf( g_p_last_error, "Expected 'true' or 'false'" );
                return (sequence_event) pointer_null;
            }
            
            var_positional = false;
        }
        
        ptr_new_sequence_event = (const sequence_event)
            event_var_positional_array_add_item(
                comp_event_var_positional_array( ptr_comp ) );
                
        event_var_positional_type(
            (event_var_positional) ptr_new_sequence_event,
            sequence_event_var_positional );     
            
        event_var_positional_positional(
            (event_var_positional) ptr_new_sequence_event,
            var_positional );
    }
    else if ( parser.SkipToken( "volume:" ) )
    {
        if ( ! parser.IsNumber( ) )
        {
            sprintf( g_p_last_error, "Expected number after '$(...)'" );
        }
        
        float var_volume = parser.GetFloat( );
        
        if( var_volume < 0.0f || var_volume > 1.0f )
        {
            sprintf( g_p_last_error, "Volume must be between 0.0 and 1.0" );
            return (sequence_event) pointer_null;
        }
        
        ptr_new_sequence_event = (sequence_event)
            event_var_volume_array_add_item(
                comp_event_var_volume_array( ptr_comp ) );
        
        event_var_volume_type(
            (event_var_volume) ptr_new_sequence_event,
            sequence_event_var_volume );        
         
        event_var_volume_volume(
            (event_var_volume) ptr_new_sequence_event,
            var_volume );
    }
    else if ( parser.SkipToken( "pitch:" ) )
    {
        if ( ! parser.IsNumber( ) )
        {
            sprintf( g_p_last_error, "Expected number after '$(...)'" );
        }
        
        float var_pitch = parser.GetFloat( );
        
        if( var_pitch < 0.0f  )
        {
            sprintf( g_p_last_error, "pitch must be between > 0.0" );
            return (sequence_event) pointer_null;
        }
        
        ptr_new_sequence_event = (sequence_event)
            event_var_pitch_array_add_item(
                comp_event_var_pitch_array( ptr_comp ) );
        
        event_var_pitch_type(
            (event_var_pitch) ptr_new_sequence_event,
            sequence_event_var_pitch );        
            
        event_var_pitch_pitch(
            (event_var_pitch) ptr_new_sequence_event,
            var_pitch );
    }    
    else if ( parser.SkipToken( "volume_rand_min:" ) )
    {
        if ( ! parser.IsNumber( ) )
        {
            sprintf( g_p_last_error, "Expected number after '$(...)'" );
        }
        
        float var_volume_rand_min = parser.GetFloat( );
        
        if( var_volume_rand_min < 0.0f || var_volume_rand_min > 1.0f )
        {
            sprintf( g_p_last_error, "Volume must be between 0.0 and 1.0" );
            return (sequence_event) pointer_null;
        }
        
        ptr_new_sequence_event = (sequence_event)
            event_var_volume_rand_min_array_add_item(
                comp_event_var_volume_rand_min_array( ptr_comp ) );
        
        event_var_volume_rand_min_type(
            (event_var_volume_rand_min) ptr_new_sequence_event,
            sequence_event_var_volume_rand_min );         
         
        event_var_volume_rand_min_volume_rand_min(
            (event_var_volume_rand_min) ptr_new_sequence_event,
            var_volume_rand_min );        
    }
    else if ( parser.SkipToken( "volume_rand_max:" ) )
    {
        if ( ! parser.IsNumber( ) )
        {
            sprintf( g_p_last_error, "Expected number after '$(...)'" );
        }
        
        float var_volume_rand_max = parser.GetFloat( );
        
        if( var_volume_rand_max < 0.0f || var_volume_rand_max > 1.0f )
        {
            sprintf( g_p_last_error, "Volume must be between 0.0 and 1.0" );
            return (sequence_event) pointer_null;
        }
        
        ptr_new_sequence_event = (sequence_event)
            event_var_volume_rand_max_array_add_item(
                comp_event_var_volume_rand_max_array( ptr_comp ) );
        
        event_var_volume_rand_max_type(
            (event_var_volume_rand_max) ptr_new_sequence_event,
            sequence_event_var_volume_rand_max );         
        
        event_var_volume_rand_max_volume_rand_max(
            (event_var_volume_rand_max) ptr_new_sequence_event,
            var_volume_rand_max ); 
    }        
    else if ( parser.SkipToken( "pitch_rand_min:" ) )
    {
        if ( ! parser.IsNumber( ) )
        {
            sprintf( g_p_last_error, "Expected number after '$(...)'" );
        }
        
        float var_pitch_rand_min = parser.GetFloat( );
        
        if( var_pitch_rand_min < 0.0f )
        {
            sprintf( g_p_last_error, "pitch must be >= 0.0" );
            return (sequence_event) pointer_null;
        }
        
        ptr_new_sequence_event = (sequence_event)
            event_var_pitch_rand_min_array_add_item(
                comp_event_var_pitch_rand_min_array( ptr_comp ) );
        
        event_var_pitch_rand_min_type(
            (event_var_pitch_rand_min) ptr_new_sequence_event,
            sequence_event_var_pitch_rand_min );        
             
        event_var_pitch_rand_min_pitch_rand_min(
            (event_var_pitch_rand_min) ptr_new_sequence_event,
            var_pitch_rand_min ); 
            
    }
    else if ( parser.SkipToken( "pitch_rand_max:" ) )
    {
        if ( ! parser.IsNumber( ) )
        {
            sprintf( g_p_last_error, "Expected number after '$(...)'" );
        }
        
        float var_pitch_rand_max = parser.GetFloat( );
        
        if( var_pitch_rand_max < 0.0f )
        {
            sprintf( g_p_last_error, "pitch must be >= 0.0" );
            return (sequence_event) pointer_null;
        }

        ptr_new_sequence_event = (sequence_event)
            event_var_pitch_rand_max_array_add_item(
                comp_event_var_pitch_rand_max_array( ptr_comp ) );

        event_var_pitch_rand_max_type(
            (event_var_pitch_rand_max) ptr_new_sequence_event,
            sequence_event_var_pitch_rand_max ); 
                     
        event_var_pitch_rand_max_pitch_rand_max(
            (event_var_pitch_rand_max) ptr_new_sequence_event,
            var_pitch_rand_max ); 
                    
    } 
    else if ( parser.SkipToken( "aux:" ) )
    {
        if ( ! parser.IsNumber( ) )
        {
            sprintf( g_p_last_error, "Expected number after 'aux:'" );
            return (sequence_event) pointer_null;
        }
        
        unsigned char send = (unsigned char) parser.GetInteger( );
        
        if ( send < 1 || send > 2 )
        {
            sprintf( g_p_last_error, "Only aux1 and aux2 supported through the music engine" );
            return (sequence_event) pointer_null;
        }
        
        send--;
        
        if ( ! parser.SkipToken( ":" ) )
        {
            sprintf( g_p_last_error, "Expected ':' after send number" );
            return (sequence_event) pointer_null;
        }
        
        if ( ! parser.IsNumber( ) )
        {
            sprintf( g_p_last_error, "Expected number of aux again" );
            return (sequence_event) pointer_null;
        }
        
        float gain = parser.GetFloat( );
        
        ptr_new_sequence_event = (sequence_event)
            event_var_aux_gain_array_add_item(
                comp_event_var_aux_gain_array( ptr_comp ) );

        event_var_aux_gain_type(
            (event_var_aux_gain) ptr_new_sequence_event,
            sequence_event_var_aux_gain ); 
                     
        event_var_aux_gain_aux_number(
            (event_var_aux_gain) ptr_new_sequence_event,
            send );
            
        event_var_aux_gain_aux_gain(
            (event_var_aux_gain) ptr_new_sequence_event,
            gain );              
    }    
    else if ( parser.SkipToken( "pos_falloff:" ) )
    {
        if ( ! parser.IsNumber( ) )
        {
            sprintf( g_p_last_error, "Expected number after '$(...)'" );
            return (sequence_event) pointer_null;
        }
                  
        float var_pos_fall_off = parser.GetFloat( );
        
        if ( var_pos_fall_off < 1.0f )
        {
            sprintf( g_p_last_error, "Positional Falloff must be greater than 1.0 meter" );
            return (sequence_event) pointer_null;
        }  
        
        ptr_new_sequence_event = (sequence_event)
            event_var_pos_fall_off_array_add_item(
                comp_event_var_pos_fall_off_array( ptr_comp ) );
        
        event_var_pos_fall_off_type(
            (event_var_pos_fall_off) ptr_new_sequence_event,
            sequence_event_var_pos_fall_off );        
         
        event_var_pos_fall_off_pos_fall_off(
            (event_var_pos_fall_off) ptr_new_sequence_event,
            var_pos_fall_off ); 
    }
    else if ( parser.SkipToken( "pos_dist_min:" ) )
    {
        if ( ! parser.IsNumber( ) )
        {
            sprintf( g_p_last_error, "Expected number after '$(...)'" );
        }
            
        float var_pos_dist_min = parser.GetFloat( );
        
        ptr_new_sequence_event = (sequence_event)
            event_var_pos_dist_min_array_add_item(
                comp_event_var_pos_dist_min_array( ptr_comp ) ); 
                
        event_var_pos_dist_min_type(
            (event_var_pos_dist_min) ptr_new_sequence_event,
            sequence_event_var_pos_dist_min );        
        
        event_var_pos_dist_min_pos_dist_min(
            (event_var_pos_dist_min) ptr_new_sequence_event,
            var_pos_dist_min ); 
    }
    else if ( parser.SkipToken( "pos_dist_max:" ) )
    {
        if ( ! parser.IsNumber( ) )
        {
            sprintf( g_p_last_error, "Expected number after '$(...)'" );
        }
            
        float var_pos_dist_max = parser.GetFloat( );
        
        ptr_new_sequence_event = (sequence_event)
            event_var_pos_dist_max_array_add_item(
                comp_event_var_pos_dist_max_array( ptr_comp ) );
        
        event_var_pos_dist_max_type(
            (event_var_pos_dist_max) ptr_new_sequence_event,
            sequence_event_var_pos_dist_max );        
         
        event_var_pos_dist_max_pos_dist_max(
            (event_var_pos_dist_max) ptr_new_sequence_event,
            var_pos_dist_max );       
    }

    else
    {
        sprintf( g_p_last_error, "Expected trigger sequence state varialbe name after '$('" );
    }
    
    if( ! parser.SkipChar( ')' ) )
    {
        sprintf( g_p_last_error, "Expected ')' after '^(...'" );
        return (sequence_event) pointer_null;
    }
    
    return ptr_new_sequence_event;
        
}

sequence_event parse_callback(
    unsigned int depth,
    unsigned int * p_max_depth, 
    Parser & parser, 
    project & ptr_project, 
    const comp & ptr_comp, 
    group & ptr_group )
{
    dig( & depth, p_max_depth );
    
    if ( ! parser.SkipChar( '(' ) )
    {
        sprintf( g_p_last_error, "Expected '(' after '*'" );
        return (sequence_event) pointer_null;
    }
    
    char string[ 256 ];
    
    if ( ! parser.GetQuotedString( string, 256 ) )
    {
        sprintf( g_p_last_error, "Expected quoted string after '*(')" );
        return (sequence_event) pointer_null;
    }
    
    if ( ! parser.SkipChar( ')' ) )
    {
        sprintf( g_p_last_error, "Expected ')' after '*(\"...\"'" );
        return (sequence_event) pointer_null;
    }
    
    event_callback ptr_new_event_callback = event_callback_array_add_item(
        comp_event_callback_array( ptr_comp ) );
        
    event_callback_type(
        ptr_new_event_callback,
        sequence_event_callback );
    
    event_callback_callback_name( ptr_new_event_callback, string );
    
    return (sequence_event) ptr_new_event_callback;
}

sequence_event parse_clip_event(
    unsigned int depth,
    unsigned int * p_max_depth, 
    Parser & parser, 
    project & ptr_project, 
    const comp & ptr_comp, 
    group & ptr_group, 
    const char * p_name )
{
    dig( & depth, p_max_depth );
    
    clip ptr_clip = find_clip_in_group_towards_root( ptr_group, p_name );

    if ( not_null( ptr_clip ) )
    {
        event_clip ptr_new_event_clip =
            event_clip_array_add_item(
                comp_event_clip_array(
                    ptr_comp ) );
    
        event_clip_type( ptr_new_event_clip, sequence_event_clip );                    
        event_clip_clip_ref( ptr_new_event_clip, ptr_clip );
        
        return (sequence_event) ptr_new_event_clip;
    }
    
    return (sequence_event) pointer_null;
}

sequence_event parse_stream_event(
    unsigned int depth,
    unsigned int * p_max_depth, 
    Parser & parser, 
    project & ptr_project, 
    const comp & ptr_comp, 
    group & ptr_group, 
    const char * p_name )
{
    dig( & depth, p_max_depth );
        
	stream ptr_stream = find_stream_in_group_towards_root( ptr_group, p_name );

    if ( not_null( ptr_stream )  )
    {
        event_stream ptr_new_event_stream =
            event_stream_array_add_item(
                comp_event_stream_array(
                    ptr_comp ) );

        event_stream_type( ptr_new_event_stream, sequence_event_stream );                     
        event_stream_stream_ref( ptr_new_event_stream, ptr_stream );
        
        return (sequence_event) ptr_new_event_stream;
    }
    
    sprintf( g_p_last_error, "no such stream" );
    
    
    return (sequence_event) pointer_null;
}

// helpers

rsd_file find_rsd_file( const comp & ptr_comp, const char * p_filename )
{   
    rsd_file_array ptr_rsd_file_array = comp_rsd_files( ptr_comp );
    
    unsigned int items = rsd_file_array_num_items( ptr_rsd_file_array );
    
    for( unsigned int i = 0; i < items; i ++ )
    {
        rsd_file ptr_rsd_file = rsd_file_array_item_at( ptr_rsd_file_array, i );
        
        char filename[ 256 ];
        rsd_file_file_name( ptr_rsd_file, filename, 256 );     
        
        if ( strcmp( filename, p_filename ) == 0 )
        {
            return ptr_rsd_file;
        }
    }
    
    return pointer_null;
}

rsd_file find_or_create_rsd_file( const comp & ptr_comp, const char * p_file_name )
{
    rsd_file ptr_rsd_file = find_rsd_file( ptr_comp, p_file_name );
    
    if ( not_null( ptr_rsd_file ) )
    {
        return ptr_rsd_file;
    }

    rsd_file_array ptr_rsd_file_array = comp_rsd_files( ptr_comp );
    rsd_file ptr_new_rsd_file = rsd_file_array_add_item( ptr_rsd_file_array );
        
    rsd_file_file_name( ptr_new_rsd_file, p_file_name );

    return ptr_new_rsd_file;
    
}

region find_region_in_group_recurse( group & ptr_group, const char * p_region_name )
{    
    region_ref_array ptr_region_ref_array = group_region_refs( ptr_group );
    
    unsigned int num_regions = region_ref_array_num_items( ptr_region_ref_array );
    
    for( unsigned int r = 0 ; r < num_regions; r ++ )
    {
        region ptr_region = region_ref_array_item_at( ptr_region_ref_array, r );
        
        char name[ 256 ];
        region_name( ptr_region, name, 256 );
        
        if ( strcmp( name, p_region_name ) == 0 )
        {
            return ptr_region;
        }
    }

    group_array ptr_group_array = group_children( ptr_group );
    
    unsigned int groups = group_array_num_items( ptr_group_array );
    
    for ( unsigned int g = 0; g < groups; g ++ )
    {
        group ptr_child_group = group_array_item_at( ptr_group_array, g );
        
        region ptr_region = find_region_in_group_recurse( ptr_child_group, p_region_name );
        
        if ( not_null( ptr_region ) )
        {
            return ptr_region;
        }
    }
    
    return pointer_null;
}

region find_region_in_comp( const comp & ptr_comp, const char * p_region_name )
{
    group_array ptr_group_array = comp_root_groups( ptr_comp );
    
    unsigned int items = group_array_num_items( ptr_group_array );
    
    for( unsigned int i = 0; i < items; i ++ )
    {
        group ptr_group = group_array_item_at( ptr_group_array, i );
            
        region ptr_region = find_region_in_group_recurse( ptr_group, p_region_name );
        
        if ( not_null( ptr_region ) )
        {
            return ptr_region;
        }
    }
    
    return pointer_null;
}

void default_tempo_track( const tempo_track & ptr_tempo_track )
{
    tempo_track_bpm( ptr_tempo_track, 120.0f );
    tempo_track_start_beat( ptr_tempo_track, 0.0f );
    tempo_track_time_sig_numerator( ptr_tempo_track, 4U );
    tempo_track_time_sig_denominator( ptr_tempo_track, 4U );
}

clip find_clip_in_group( group & ptr_group, const char * p_clip_name )
{
    clip_ref_array ptr_clip_ref_array = group_clip_refs( ptr_group );
    
    unsigned int num_clips = clip_ref_array_num_items( ptr_clip_ref_array );

    for( unsigned int i = 0; i < num_clips; i ++ )
    {
        clip ptr_clip = clip_ref_array_item_at( ptr_clip_ref_array, i );
        
        char name[ 256 ];
        clip_name( ptr_clip, name, 256 );
               
        if ( strcmp( name, p_clip_name ) == 0 )
        {
            return ptr_clip;
        }
    }
    
    return pointer_null;
}

stream find_stream_in_group( group & ptr_group, const char * p_stream_name )
{
    stream_ref_array ptr_stream_ref_array = group_stream_refs( ptr_group );
    
    unsigned int items = stream_ref_array_num_items( ptr_stream_ref_array );
    
    for( unsigned int i = 0; i < items; i ++ )
    {
        stream ptr_stream = stream_ref_array_item_at( ptr_stream_ref_array, i );
        
        char name[ 256 ];
        stream_name( ptr_stream, name, 256 );
        
        if ( strcmp( name, p_stream_name ) == 0 )
        {
            return ptr_stream;
        }
    }
    
    return pointer_null;
}

clip find_clip_in_group_towards_root( group & ptr_group, const char * p_clip_name )
{    
    clip ptr_clip = find_clip_in_group( ptr_group, p_clip_name );
    
    if ( is_null( ptr_clip ) )
    {
        group ptr_parent_group = group_parent_ref( ptr_group );
        
        if( is_null( ptr_parent_group ) )
        {
            return pointer_null;
        }
        
        return find_clip_in_group_towards_root( ptr_parent_group, p_clip_name );
    }
    
    return ptr_clip;
}

stream find_stream_in_group_towards_root( group & ptr_group, const char * p_stream_name )
{
    stream ptr_stream = find_stream_in_group( ptr_group, p_stream_name );
    
    if ( is_null( ptr_stream ) )
    {
        group ptr_parent_group = group_parent_ref( ptr_group );
        
        if( is_null( ptr_parent_group ) )
        {
            return pointer_null;
        }
        
        return find_stream_in_group_towards_root( ptr_parent_group, p_stream_name );
    }
    
    return ptr_stream;
}

state find_state( const comp & ptr_comp, const char * state_nom )
{
    state_array ptr_state_array = comp_states( ptr_comp );
    
    unsigned int items = state_array_num_items( ptr_state_array );
    
    for( unsigned int i = 0; i < items; i ++ )
    {
        state ptr_state = state_array_item_at( ptr_state_array, i );
        
        char state_nom_test[ 256 ];
        
        state_name( ptr_state, state_nom_test, 256 );
        
        if ( strcmp( state_nom_test, state_nom ) == 0 )
        {
            return ptr_state;
        }
    }
    
    return (state) pointer_null;
}

}