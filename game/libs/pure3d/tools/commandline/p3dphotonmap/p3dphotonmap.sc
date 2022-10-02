tool p3dphotonmap :
    description( "This tool creates a photon map" )
{
}

parameter MaxDepth :
    short( d ),
    long( "max-depth" ),
    arg ( depth ),
    default( 12 ),
    description( "Max depth for photon bounces (default = 12)" ),
    type( int )
{
}

parameter NumberPhotons :
    short( N ),
    long( "number-photons" ),
    arg ( number ),
    default( 0 ),
    description( "Number of photons to generate (default=0)" ),
    type( int )
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

parameter PhotonHitGeometry :
    short( p ),
    long( "photonhit-geometry" ),
    arg ( size ),
    default( -1.0 ),
    description( "Photon hits represented by diamonds of specified size." ),
    type( float )
{
}

