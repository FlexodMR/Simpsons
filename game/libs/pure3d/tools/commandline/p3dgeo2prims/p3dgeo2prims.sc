tool p3dgeo2prims : description( "This tool splits every geo in the file into it's component primgroups, such that each primgroup has its own geo" )
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
