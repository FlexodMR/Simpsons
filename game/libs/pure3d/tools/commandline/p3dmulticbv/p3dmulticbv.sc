tool p3dimage :
    description( "This tool is used to modify vertex colours.  Designed primarily for use in conjunction with multi cbv sets." )
{
}

parameter Saturation :
    short( A ),
    long( "saturation" ),
    arg ( Value ),
    default( 0.0f ),
    description( "Increase (pos. value) or decrease (neg. value) the vertex colour saturation." ),
    type( float )
{
}

parameter Brightness :
    short( B ),
    long( "brightness" ),
    arg ( Value ),
    default( 0.0f ),
    description( "Increase (pos. value) or decrease (neg. value) the vertex colour brightness." ),
    type( float )
{
}

parameter Colour :
    short( c ),
    long( "colour" ),
    arg ( Value ),
    description( "Set the vertex colour to 0xaarrggbb in hexidecimal." ),
    type( string )
{
}

parameter Contrast :
    short( C ),
    long( "contrast" ),
    arg ( Value ),
    default( 0.0f ),
    description( "Increase (pos. value) or decrease (neg. value) the vertex colour contrast. (Using mean of mid gray.)" ),
    type( float )
{
}

parameter GeoName :
    short( g ),
    long( "geometry-name" ),
    arg ( name ),
    description( "Specify a primtive group by name for which to modify cbv colours." ),
    type( Pattern )
{
}

parameter ExcludeGeoName :
    short( G ),
    long( "exclude-geometry" ),
    arg ( name ),
    description( "Specify a primtive group by name to exclude from cbv colours modifications." ),
    type( Pattern )
{
}

parameter Lightness :
    short( L ),
    long( "lightness" ),
    arg ( Value ),
    default( 0.0f ),
    description( "Increase (pos. value) or decrease (neg. value) the vertex colour lightness." ),
    type( float )
{
}

parameter OutputFile :
    short( o ),
    long( "output-file" ),
    arg ( name ),
    description( "Specify output file name" ),
    type( string )
{
}

parameter ShaderName :
    short( s ),
    long( "shader-name" ),
    arg ( name ),
    description( "Specify primtive groups by shader name for which to modify cbv colours." ),
    type( Pattern )
{
}

parameter ExcludeShaderName :
    short( S ),
    long( "exclude-shader" ),
    arg ( name ),
    description( "Specify primtive groups by shader name to exclude from cbv colours modifications." ),
    type( Pattern )
{
}

parameter SourceCBVSet :
    short( t ),
    long( "source-cbv" ),
    arg ( setNumber ),
    default( 1 ),
    description( "Specify the source cbv set (default is 1)." ),
    type( int )
{
}

parameter TargetCBVSet :
    short( T ),
    long( "target-cbv" ),
    arg ( setNumber ),
    default( 2 ),
    description( "Specify the target cbv set (default is 2)." ),
    type( int )
{
}

parameter Hue :
    short( U ),
    long( "hue" ),
    arg ( Value ),
    default( 0.0f ),
    description( "Increase (pos. value) or decrease (neg. value) the vertex colour hue." ),
    type( float )
{
}

