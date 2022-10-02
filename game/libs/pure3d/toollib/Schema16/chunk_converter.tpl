@openfile $output_file
@perl $count = 0;
@foreach include_list ($inc_level == 0 && !($include_name =~ m/\.hsc/))
#includeschema( $include_name )
@perl ++$count;
@end .. include_list
@if( $count > 0 )

@endif
@perl $count = 0;
@foreach include_list ($inc_level == 0 && !($include_name =~ m/\.hsc/))
    @perl my $hppname = $include_name;
    @perl $hppname =~ s/\.sc/.hpp/;
#includehpp( $hppname )
@perl ++$count;
@end .. include_list
@perl $count = 0;
@foreach hpp_list ($inc_level == 0 && ($hpp_name =~ m/\.hpp$/))
#includehpp( $hpp_name )
@perl ++$count;
@end .. hpp_list
@if( $count > 0 )

@endif
@perl $count = 0;
@foreach class_list
#declaretype( $class_name )
@perl ++$count;
@end ..  class_lis
@if( $count > 0 )

@endif
@foreach struct_list ($inc_level == 0)
struct ${struct_name}
{
    @foreach attr_list
    ${attr_type} ${attr_name};

    @end
}

@end
@foreach chunk_list ($inc_level == 0)
chunk ${chunk_name} :
    @foreach attr_list ($attr_type eq "Chunk") 
    subchunk( $attr_name ),
    @end
    chunk_id( $chunk_id )  
{
    @foreach attr_list ($attr_type ne "Chunk")
        @if( defined $array )
    array( $attr_type, $array )  $attr_name;
        @else 
    $attr_type  $attr_name;
        @endif 
    @end
}

@end