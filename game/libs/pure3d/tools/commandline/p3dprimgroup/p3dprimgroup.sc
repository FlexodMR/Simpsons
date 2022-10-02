tool p3dprimgroup :
    description( "This tool manipulates primitive groups in meshes and skins" )
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

parameter OneBone :
    short( b ),
    long( "one-bone" ),
    arg ( Value ),
    description( "Seperate primgroups in skin with verticies weighted against one vs. many bones" ),
    type( BOOL )
{
}

parameter TwoBone :
    short( t ),
    long( "two-bone" ),
    arg ( Value ),
    description( "Seperate primgroups in skin with verticies weighted against two vs. many bones" ),
    type( BOOL )
{
}

parameter Rebuild :
    short( r ),
    long( "rebuild" ),
    description( "Rebuild all prim groups as indexed tri-lists" ),
    type( BOOL )
{
}

parameter Merge :
    short( c ),
    long( "combine" ),
    description( "Combine all prim groups in mesh" ),
    type( BOOL )
{
}

parameter OffsetSplit :
    short( s ),
    long( "offset" ),
    arg ( Value ),
    description( "Separate primgroups into those with offset animations and those without " ),
    type( BOOL )
{
}

parameter MaxMatrices :
    short( m ),
    long( "max-matrices" ),
    arg ( Value ),
    default( -1 ),
    description( "Seperate primgroups in skin based on number of bones" ),
    type( int )
{
}

parameter MaxVertices :
    short( x ),
    long( "max-vertices" ),
    arg ( Value ),
    default( -1 ),
    description( "Seperate primgroups in mesh/skin based on number vertices" ),
    type( int )
{
}

parameter Threshold :
    short( T ),
    long( "threshold" ),
    arg ( value ),
    default( 16 ),
    description( "The threshold applied for -b, -t, and -s for the minimum number of vertices of primtive group (default=16)" ),
    type( int )
{
}

