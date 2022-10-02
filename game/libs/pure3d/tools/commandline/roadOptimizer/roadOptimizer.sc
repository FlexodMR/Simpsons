tool roadOptimizer : description( "This tool optimizes road data" )
{
}
 
parameter OutputFile :
   short( o ),
   long( "output-file" ),
   arg( name ),
   description( "Specify output file name" ),
   type( string )
{
}

parameter CrossCheck :
    short( c ),
    long( "crosscheck" ),
    description( "update multiple files that may contain shared intersections." ),
    default( FALSE ),
	type( BOOL )
{
}

parameter Tolerance :
    short( t ),
    long( "tolerance" ),
    description( "How close can the intersections be?" ),
    default( 5.0f ),
	type( float )
{
}

parameter Number :
    short( b ),
    long( "number" ),
    description( "The N first files will be compared to all the others." ),
    default( 0 ),
	type( int )
{
}