tool p3dshadowvol :
    description( "This tool creates shadow volumes from a p3d skin.or mesh" )
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

parameter ShadowSkin :
    short( s ),
    long( "output-shadow-skin" ),
    arg ( Pattern ),
    description( "Generate a shadow skin for any skin matching the pattern" ),
    type( Pattern )
{
}

parameter ShadowMesh :
    short( m ),
    long( "output-shadow-mesh" ),
    arg ( Pattern ),
    description( "Generate a shadow mesh for any mesh matching the pattern" ),
    type( Pattern )
{
}

parameter CompDrawToSkin :
    short( S ),
    long( "comp-draw-to-skin" ),
    arg ( Pattern ),
    description( "Generate a shadow skin for any composite drawable matching the pattern" ),
    type( Pattern )
{
}

parameter Explode :
    short( e ),
    long( "explode" ),
    default( false ),
    description( "Generate shadow volumes with no connectivity" ),
    type( BOOL )
{
}

