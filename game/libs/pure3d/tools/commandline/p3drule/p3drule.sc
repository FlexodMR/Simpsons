tool p3drule :
    description( "This tool applies a Rule script to the Pure3D file." )
{
}

parameter RuleFile :
    short( r ),
    long( "rules" ),
    arg ( Rules ),
    description( "Specify Rules file" ),
    type( string )
{
}

parameter WarnTolerance :
    short( w ),
    default( 1 ),
    description( "Severity above this level will generate a Warning" ),
    type( int )
{
}

parameter ErrorTolerance :
    short( e ),
    default( 0 ),
    description( "Severity above this level will generate an Error" ),
    type( int )
{
}

