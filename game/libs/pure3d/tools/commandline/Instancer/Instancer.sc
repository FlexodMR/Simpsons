tool Instancer : description( "This tool creates Simpsons Instances." )
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

parameter LibraryPath :
   short( l ),
   long( "library-path" ),
   arg( path ),
   description( "Specify the path to the library files" ),
   type( string )
{
}

parameter Duplicate :
    short( d ),
    long( "duplicate" ),
    description( "Enable duplication of geometry instead of instances" ),
	default( FALSE ),
	type( BOOL )
{
}