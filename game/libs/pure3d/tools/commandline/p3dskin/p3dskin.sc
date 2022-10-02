tool p3dskin :
    description( "This tool modifies skins" )
{
}

parameter MaxInfluences :
    short( m ),
    long( "max-influences" ),
    arg ( max ),
    description( "Don't allow joints to have more than max influences" ),
    type( int )
{
}

parameter InfluenceThreshold :
    short( t ),
    long( "threshold" ),
    arg ( min ),
    description( "Remove all joints below min influence" ),
    type( float )
{
}

parameter OffsetTolerance :
    short( T ),
    long( "tolerance" ),
    arg ( tol ),
    default( 0.0 ),
    description( "Remove all offsets with magnitude less than tolerance" ),
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

