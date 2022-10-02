tool p3dsort : description( "Sort chunks by their ChunkID's" )
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

parameter SetAlphas :
   short( s ),
   long( "set-alphas" ),
   description( "Set alphas of dsg objects" ),
   default( FALSE ),
   type( BOOL )
{
}
