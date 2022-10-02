@openfile $output_file
@foreach struct_list ($inc_level == 0)
struct ${struct_name}
{
    @foreach attr_list
    ${attr_type} ${attr_name};

    @end
}
@end

@perl  $count = 0;
@foreach chunk_list ($inc_level == 0)
chunk ${chunk_name} :
    @if ($count == 0 )
        @foreach include_list ($inc_level == 0 && !($include_name =~ m/\.hsc/))
        @perl my $hppname = $include_name;
        @perl $hppname =~ s/\.sc/.hpp/;
    includehpp( $hppname ),
    includeschema( $include_name ),
        @end .. include_list
        @foreach class_list
    class( $class_name ),
        @end ..  class_list
    @endif
    @foreach attr_list ($attr_type eq "Chunk") 
    subchunk( $attr_name ),
    @end
    chunk_id( $chunk_id )
  
{
    @foreach attr_list ($attr_type ne "Chunk")
        @if( defined $array )
    array( $attr_type, $array )  $attr_name;
        @else 
    $attr_type  $attr_name ;
        @endif 
    @end

}
@perl $count = $count + 1;
@end