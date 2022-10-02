tool p3d2dsg : description( "This tool converts all chunks to their DSG equivalents for use in the AABB tree created/maintained by Devin M. for SRR2" )
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

parameter Intersects :
   short( i ),
   long( "intersects" ),
   description( "Generate IntersectDSG wrappers for all meshes" ),
   default( FALSE ),
   type( BOOL )
{
}

parameter WorldSphere :
   short( w ),
   long( "worldsphere" ),
   description( "Generate a single WorldSphere out of the contents" ),
   default( FALSE ),
   type( BOOL )
{
}
