tool p3dscale :
    description( "This tool scales objects in p3d files" )
{
}

parameter Scale :
    short( s ),
    arg ( scale ),
    description( "Specify scale factor" ),
    type( none )
{
}

parameter xScale :
    short( x ),
    arg ( scale ),
    default( 1.0f ),
    description( "Specify X scale factor" ),
    type( float )
{
}

parameter yScale :
    short( y ),
    arg ( scale ),
    default( 1.0f ),
    description( "Specify Y scale factor" ),
    type( float )
{
}

parameter zScale :
    short( z ),
    arg ( scale ),
    default( 1.0f ),
    description( "Specify Z scale factor" ),
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

