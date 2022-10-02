tool breakablesmaker :
	description( "Creates a breakables chunk for Simpsons2 (extracts tAnimatedObject and the tMultiController)" )
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

parameter MaxInstances :
    short( i ),
    long( "max-instances" ),
    arg ( Value ),
    default( -1 ),
    description( "Max Instances of breakables" ),
    type( int )
{
}

parameter BreakableType :
    short( t ),
    long( "breakableType" ),
    arg ( Value ),
    default( -1 ),
    description( "See Mike Riegger for more info - unique id for type" ),
    type( int )
{
}