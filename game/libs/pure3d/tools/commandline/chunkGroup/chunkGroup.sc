tool chunkGroup : description( "This tool groups chunks from input files and saves them to another file." )
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

parameter TestList :
    short( t ),
    long( "testlist" ),
    arg( ID ),
    description( "Test only these chunks." ),
	type( HexList )
{
}

parameter ByName :
    short( b ),
    long( "byname" ),
    description( "Only test the names (and type) of the chunks." ),
	type( BOOL )
{
}