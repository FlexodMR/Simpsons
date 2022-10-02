tool p3dsplit : description( "This tool splits up geometry" )
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

parameter xDiv :
   short( x ),
   long( "xDiv" ),
   arg( int ),
   description( "Specify num of x axis world divisions" ),
   default( 1 ),
   type( int )
{
}

parameter zDiv :
   short( z ),
   long( "zDiv" ),
   arg( int ),
   description( "Specify num of z axis world divisions" ),
   default( 1 ),
   type( int )
{
}



parameter splitType :
   short( t ),
   long( "splitType" ),
   arg( int ),
   description( "Specify how to divide the world: 0: cut 1: tear" ),
   default( 0 ),
   type( int )
{
}


parameter geoName :
   short( s ),
   long( "geoName" ),
   arg( name ),
   description( "Specify name of the new compoundMesh" ),
   type( string )
{
}