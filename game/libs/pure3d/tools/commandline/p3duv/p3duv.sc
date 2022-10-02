tool p3duv :
    description( "This tool modifies UVs in a maeh" )
{
}

parameter Range :
    short( r ),
    long( "range" ),
    arg ( value ),
    default( 8.0f ),
    description( "Force UVs to be between -value and value (default 8.0);" ),
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

