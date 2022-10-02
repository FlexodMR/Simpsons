#include <pch.hpp>
#include <ods/ods.hpp>

using namespace ods;

void radmusic_create_schema( void )
{        
    begin_type( "comp" );
            attribute( "sound_memory_max", uint( ) );
            attribute( "cache_memory_max", uint() );
            attribute( "stream_size_min",  uint() );
            attribute( "root_groups", array( cls( "group" ) ) );
            attribute( "fade_transitions", array( cls( "fade_transition" ) ) );
            attribute( "stitch_transitions", array( cls( "stitch_transition" ) ) );
            attribute( "events", array( cls( "event" ) ) );
            attribute( "event_matricies", array( cls( "event_matrix" ) ) );            
            attribute( "states", array( cls( "state" ) ) );
            attribute( "rsd_files", array( cls( "rsd_file" ) ) );
            attribute( "streams", array( cls( "stream" ) ) );
            attribute( "clips", array( cls( "clip" ) ) );
            attribute( "regions", array( cls( "region" ) ) );
            attribute( "sequences", array( cls( "sequence" ) ) );
            attribute( "layers", array( cls( "layer" ) ) );
            attribute( "event_clip_array", array( cls( "event_clip" ) ) );
            attribute( "event_stream_array", array( cls( "event_stream" ) ) );
            attribute( "event_silence_array", array( cls( "event_silence" ) ) );     
            attribute( "event_var_volume_array", array( cls( "event_var_volume" ) ) );
            attribute( "event_var_pitch_array", array( cls( "event_var_pitch" ) ) );
            attribute( "event_var_volume_rand_min_array", array( cls( "event_var_volume_rand_min" ) ) );
            attribute( "event_var_volume_rand_max_array", array( cls( "event_var_volume_rand_max" ) ) );
            attribute( "event_var_pitch_rand_min_array", array( cls( "event_var_pitch_rand_min" ) ) );
            attribute( "event_var_pitch_rand_max_array", array( cls( "event_var_pitch_rand_max" ) ) );
            attribute( "event_var_aux_gain_array", array( cls( "event_var_aux_gain" ) ) );
            attribute( "event_var_positional_array", array( cls( "event_var_positional" ) ) );
            attribute( "event_var_pos_fall_off_array", array( cls( "event_var_pos_fall_off" ) ) );
            attribute( "event_var_pos_dist_min_array", array( cls( "event_var_pos_dist_min" ) ) );
            attribute( "event_var_pos_dist_max_array", array( cls( "event_var_pos_dist_max" ) ) );
            attribute( "event_callback_array", array( cls( "event_callback" ) ) );
            attribute( "event_logic_and_array", array( cls( "event_logic_and" ) ) );
            attribute( "event_logic_or_array", array( cls( "event_logic_or" ) ) );     
            attribute( "event_logic_repeat_array", array( cls( "event_logic_repeat" ) ) );
            attribute( "play_region_action_array", array( cls( "play_region_action" ) ) );
            attribute( "push_region_action_array", array( cls( "push_region_action" ) ) );
            attribute( "pop_region_action_array",  array( cls( "pop_region_action" ) ) );
            attribute( "start_layer_action_array", array( cls( "start_layer_action" ) ) );
            attribute( "stop_layer_action_array", array( cls( "stop_layer_action" ) ) );            
            attribute( "rand_state_action_array",  array( cls( "rand_state_action" ) ) );
                    
         end_type( );
          
        begin_type( "rsd_file" );
            attribute( "file_name", string() );
            attribute( "size", uint() );
            attribute( "audio_format", cls( "audio_format" ) );
        end_type( );
        
        begin_type( "audio_format" );
            attribute( "encoding", uint( ) );
            attribute( "channels", uint() );
            attribute( "bit_resolution", uint() );
            attribute( "sampling_rate", uint( ) );
        end_type( );
        
        begin_type( "stream" );
            attribute( "name", string( ) );
            attribute( "parent_group_ref", rf( cls( "group" ) ) );
            attribute( "rsd_file_ref", rf( cls( "rsd_file") ) );
            attribute( "streamed", booln( ) );
            attribute( "tempo_track", cls( "tempo_track" ) );
        end_type( );
            
        begin_type( "clip" );
            attribute( "name", string() );
            attribute( "parent_group_ref", rf( cls( "group" ) ) );
            attribute( "rsd_file_ref", rf( cls( "rsd_file" ) ) );
            attribute( "tempo_track", cls( "tempo_track" ) );
        end_type( );
        
        begin_type( "sequence" );
            attribute( "root_event", rf( cls( "sequence_event" ) ) );
            attribute( "stack_size", uint( ) );
        end_type( );
                
        begin_type( "group" );
            attribute( "name", string() );
            attribute( "children", array( cls( "group" ) ) ) ;
            attribute( "stream_refs", array( rf( cls( "stream" ) ) ) );
            attribute( "clip_refs",   array( rf( cls( "clip" ) ) ) ) ;
            attribute( "region_refs", array( rf( cls( "region" ) ) ) );
            attribute( "parent_ref", rf( cls( "group" ) ) );
            attribute( "tree_depth", uint( ) );
        end_type( );
        
        begin_type( "fade_transition" );
            attribute( "source_region_ref", rf( cls( "region" ) ) );
            attribute( "target_region_ref", rf( cls( "region" ) ) );
            attribute( "source_time", flt() );
            attribute( "source_start", flt( ) );
            attribute( "target_time", flt() );
            attribute( "target_start", flt() );
            attribute( "beat_set", cls( "beat_set" ) );
        end_type( );
      
        begin_type( "stitch_transition" );
            attribute( "source_region_ref", rf( cls( "region" ) ) );
            attribute( "target_region_ref", rf( cls( "region" ) ) );
            attribute( "transition_region_ref", rf( cls( "region" ) ) );        
        end_type( );
        
        begin_type( "event_matrix" );
            attribute( "state_ref_array",  array( rf( cls( "state" ) ) ) );        
        end_type( );

        // events
                
        begin_type( "event" );
            attribute( "name", string() );
            attribute( "action_arrays", array( array( rf( cls( "action" ) ) ) ) );
            attribute( "event_matrix_ref", rf( cls( "event_matrix" ) ) );
        end_type( );
                
        begin_type( "action" );
            attribute( "type", uint() );
        end_type( );

        begin_type( "play_region_action" );
            attribute( "type", uint() );        
            attribute( "region_ref", rf( cls( "region" ) ) ) ;
            attribute( "region_resume_type", uint( ) );            
        end_type( );
        
        begin_type( "push_region_action" );
            attribute( "type", uint() );        
            attribute( "region_ref", rf( cls( "region" ) ) ) ;
            attribute( "target_region_resume_type", uint( ) );         
            attribute( "current_region_resume_type", uint( ) );
        end_type( );
        
        begin_type( "pop_region_action" );
            attribute( "type", uint() );        
            attribute( "region_ref", rf( cls( "region" ) ) ) ;
        end_type( );
        
        begin_type( "start_layer_action" );
            attribute( "type", uint() );        
            attribute( "layer_name", string( ) );
        end_type( );
        
        begin_type( "stop_layer_action" );
            attribute( "type", uint() );        
            attribute( "layer_name", string( ) );
        end_type( );        
        
        begin_type( "rand_state_action" );
            attribute( "type", uint() );        
            attribute( "state_ref", rf( cls( "state" ) ) );
        end_type( );
                                 
        begin_type( "state" );
            attribute( "name", string( ) );
            attribute( "values", array( string( ) ) );
        end_type( );
        
        begin_type( "region" );
            attribute( "name", string( ) );
            attribute( "layer_refs", array( rf( cls( "layer" ) ) ) );
            attribute( "exit_region_ref", rf( cls( "region" ) ) );
            attribute( "group_ref", rf( cls( "group" ) ) );
            attribute( "volume", flt( ) );
        end_type( );
        
        begin_type( "layer" );
            attribute( "name", string( ) );
            attribute( "constant", booln( ) );
            attribute( "beat_set", cls( "beat_set" ) );
            attribute( "sequence_ref", rf( cls( "sequence" ) ) );
            attribute( "volume", flt( ) );            
        end_type( );
        
        begin_type( "tempo_track" );
            attribute( "bpm", flt( ) );
            attribute( "start_beat", flt( ) );
            attribute( "time_sig_numerator", uint( ) );
            attribute( "time_sig_denominator", uint( ) );
        end_type( );
        
        begin_type( "beat_set" );
            attribute( "beats", array( flt( ) ) );
        end_type( );        
        
        begin_type( "sequence_event" );
            attribute( "type", uint() );
        end_type( );
        
        begin_type( "event_clip" );
            attribute( "type", uint() );
            attribute( "clip_ref", rf( cls( "clip" ) ) );
        end_type( );                  

        begin_type( "event_stream" );
            attribute( "type", uint() );        
            attribute( "stream_ref", rf( cls( "stream" ) ) );
        end_type( );                  

        begin_type( "event_silence" );
            attribute( "type", uint() );             
            attribute( "min_time", flt( ) );
            attribute( "max_time", flt( ) );
        end_type( );
        
        begin_type( "event_var_volume" );
            attribute( "type", uint() );        
            attribute( "volume", flt( ) );
        end_type( );
        
        begin_type( "event_var_pitch" );
            attribute( "type", uint() );        
            attribute( "pitch", flt( ) );
        end_type( );
        
        begin_type( "event_var_volume_rand_min" );
            attribute( "type", uint() );        
            attribute( "volume_rand_min", flt( ) );
        end_type( );
        
        begin_type( "event_var_volume_rand_max" );
            attribute( "type", uint() );        
            attribute( "volume_rand_max", flt( ) );        
        end_type( );
        
        begin_type( "event_var_pitch_rand_min" );
            attribute( "type", uint() );        
            attribute( "pitch_rand_min", flt( ) );
        end_type( );
        
        begin_type( "event_var_pitch_rand_max" );
            attribute( "type", uint() );        
            attribute( "pitch_rand_max", flt( ) );        
        end_type( );
        
        begin_type( "event_var_aux_gain" );
            attribute( "type", uint() );        
            attribute( "aux_number", uint( ) );
            attribute( "aux_gain", flt( ) );
        end_type( );
        
        begin_type( "event_var_positional" );
            attribute( "type", uint() );        
            attribute( "positional", booln( ) );
        end_type( );

        begin_type( "event_var_pos_fall_off" );
            attribute( "type", uint() );        
            attribute( "pos_fall_off", flt( ) );
        end_type( );
        
        begin_type( "event_var_pos_dist_min" );
            attribute( "type", uint() );        
            attribute( "pos_dist_min", flt( ) );
        end_type( );
        
        begin_type( "event_var_pos_dist_max" );
            attribute( "type", uint() );        
            attribute( "pos_dist_max", flt( ) );
        end_type( );

        begin_type( "event_callback" );
            attribute( "type", uint() );        
            attribute( "callback_name", string( ) );
        end_type( ); 
        
        begin_type( "event_logic_and" );
            attribute( "type", uint() );        
            attribute( "events", array( rf( cls( "sequence_event" ) ) ) );
        end_type( );
        
        begin_type( "event_logic_or" );
            attribute( "type", uint() );        
            attribute( "events", array( rf( cls( "sequence_event" ) ) ) );        
        end_type( );        

        begin_type( "event_logic_repeat" );
            attribute( "type", uint() );        
            attribute( "min_times", uint( ) );
            attribute( "max_times", uint( ) );
            attribute( "event_ref", rf( cls( "sequence_event" ) ) );
        end_type( );  
        
        
        //dump_schema( );            
        //dump_objects( );              
        
        //save_schema( "radmusic.td" );
    
    //load_schema( "radmusic.td" );
        
        //dump_schema( );            
        //dump_objects( );
        //generate_code( "..\\..\\..\\..\\src\\types\\radmusic_schema.hpp" );
              
    //end_schema( );
}

void radmusic_create_tool_schema( void )
{
    begin_type( "root" );
        attribute( "framework",      cls( "framework" ) );      
        attribute( "scman",          cls( "source_control_plugin" ) );
        attribute( "buildman",       cls( "buildman" ) );
        attribute( "fileman",        cls( "fileman" ) );
        attribute( "windowman",      cls( "windowman" ) );
        attribute( "menuman",        cls( "menuman" ) );
        attribute( "editorman",      cls( "editorman" ) );  
        attribute( "performanceman", cls( "performanceman" ) );
    end_type( );
    
    begin_type( "framework" );
        attribute( "main_canvas", cls( "main_canvas" ) );
    end_type( );
    
    begin_type( "main_canvas" );
        attribute( "scroll_x", uint( ) );
        attribute( "scroll_y", uint( ) );
    end_type( );
                  
    begin_type( "buildman" );
        attribute( "test_target_root_path", string( ) );
        attribute( "sound_data_root_path", string( ) );                 
    end_type( );
    
    begin_type( "scman" );
        attribute( "perforce_port", string( ) );
        attribute( "perforce_client", string( ) );
        attribute( "perforce_user", string( ) );
        attribute( "work_offline", booln( ));    
    end_type( );

    begin_type( "fileman" );
        attribute( "root", cls( "directory" ) );        
    end_type( );
    
    begin_type( "windowman" );
        attribute( "windows", array( cls( "window" ) ) );
    end_type( );
    
    begin_type( "menuman" );
        attribute( "commands", array( cls( "command" ) ) );
    end_type( );
    
    begin_type( "command" );
        attribute( "name", string( ) );
        attribute( "plugin_msg", cls( "plugin_msg" ) );
    end_type( );
    
    begin_type( "plugin_msg" );
        attribute( "id", uint( ) );
        attribute( "target", string( ) );
    end_type( );
    
    begin_type( "directory" );
        attribute( "name", string() );    
        attribute( "directories", array( cls( "directory" ) ) );
        attribute( "files",       array( string( ) ) );
    end_type( );
    
    begin_type( "window" );
        attribute( "instance_name" , string( ) );
        attribute( "plugin_name", string( ) );
        attribute( "position", cls( "rectangle" ) );
        attribute( "window_title", string( ) );
        attribute( "closeable", booln( ) );
    end_type( );
    
    begin_type( "rectangle" );
        attribute( "left", uint( ) );
        attribute( "top", uint( ) );
        attribute( "right", uint( ) );
        attribute( "bottom", uint( ) );
    end_type( );
    
    begin_type( "editorman" );
        attribute( "editors", array( cls( "editor" ) ) );
    end_type( );
    
    begin_type( "editor" );
        attribute( "file_name", string() );
    end_type( );
    
    begin_type( "performanceman" );
        attribute( "performances", array( cls( "performance" ) ) );
    end_type( );
    
    begin_type( "performance" );
        attribute( "file_name", string( ) );
    end_type( );
    
    
}