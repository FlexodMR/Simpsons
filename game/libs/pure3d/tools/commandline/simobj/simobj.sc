tool PhObj :
    description( "This tool adds Physics and collision information to the geometry and skin present in the P3D file." )
{
}

parameter KeepPreviousSim :
    short( k ),
    default( 0 ),
    description( "Keep existing sim chunks already present in the file" ),
    type( BOOL )
{
}

parameter SimOnly :
    short( x ),
    default( 0 ),
    description( "Write only the sim chunk in the output file" ),
    type( BOOL )
{
}

parameter SimDataFile :
    short( d ),
    arg ( SimDataFile ),
    description( "Read the sim data info." ),
    type( string )
{
}

parameter CreateSimDataFile :
    short( C ),
    arg ( Name ),
    description( "Create a default sim data file for the geometry or skin or compositedrawable name." ),
    type( string )
{
}

parameter PrintSimChunks :
    short( p ),
    default( 0 ),
    description( "Print the chunks of the simulation chunks in the file" ),
    type( BOOL )
{
}

parameter FixCollisionVolume :
    short( F ),
    default( 0 ),
    description( "Fix the collision volume hierarchy of the collision objects" ),
    type( BOOL )
{
}

parameter OutFile :
    short( o ),
    arg ( File ),
    description( "Write output to File." ),
    type( string )
{
}

