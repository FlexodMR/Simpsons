tool convert2dxtn :
    description( "Convert all textures and images of a p3d file into DXTn image format" )
{
}

parameter OutputFile :
    short( o ),
    long( "output-file" ),
    arg ( name ),
    description( "Specify output file name" ),
    type( string )
{
}

parameter Format :
    short( f ),
    long( "dxtn-format" ),
    arg ( dxtn ),
    description( "Specify converted dxtn format(1, 3, 5)" ),
    type( int )
{
}

parameter DXT1Only :
    short( 1 ),
    long( "dxt1-only" ),
    description( "Only convert to DXT1, if the image needs DXT3/5, leave it alone" ),
    type( BOOL )
{
}

parameter QuickSave :
    short( q ),
    long( "quick-encode" ),
    description( "Quick encode with poor image quality; for debugging only" ),
    type( BOOL )
{
}

