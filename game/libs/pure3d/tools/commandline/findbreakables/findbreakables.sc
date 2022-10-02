tool findbreakables :
	description( "Scans subdirectories for P3D files and writes them to the output" )
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
