tool InstAnimDynaPhysMaker :
	description( "Takes a .p3d file exported from Maya with a single animated, phys object and bundles it into an InstAnimDynaPhysDSG object thats ready to be instanced." )
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
