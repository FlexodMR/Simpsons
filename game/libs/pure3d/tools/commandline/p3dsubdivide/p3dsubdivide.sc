tool p3dsubdivide :
    description( "This tool subdivides some of the triangles in a mesh" )
{
}

parameter Area :
    short( a ),
    long( "area" ),
    arg ( area ),
    description( "Only subdivide polys larger than area (this will cause cracking)" ),
    type( float )
{
}

parameter MaxEdge :
    short( e ),
    long( "edge" ),
    arg ( max ),
    description( "Split edges longer than max" ),
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

