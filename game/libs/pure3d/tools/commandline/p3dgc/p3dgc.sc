tool p3dgc :
    description( "This tool memory images a P3D file for the GameCube" )
{
}

parameter Dump :
    short( d ),
    long( "dump-file" ),
    description( "Prints the contents of a GameCube memory imaged file" ),
    type( BOOL )
{
}

parameter IntelFormat :
    short( i ),
    long( "intel-format" ),
    description( "Writes the file in little endian format (Intel), default is big endian" ),
    type( BOOL )
{
}

parameter MemoryImage :
    short( m ),
    long( "memory-image" ),
    description( "Convert textures, geometries and skins to memory image format" ),
    type( BOOL )
{
}

parameter MemoryImageSkins :
    long( "ms" ),
    description( "Convert only skins to memory image format" ),
    type( BOOL )
{
}

parameter MemoryImageGeometry :
    long( "mg" ),
    description( "Convert only geometries to memory image format" ),
    type( BOOL )
{
}

parameter MemoryImageTextures :
    long( "mt" ),
    description( "Convert only textures to memory image format" ),
    type( BOOL )
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

parameter CoordSize :
    short( c ),
    long( "coord-size" ),
    arg ( Value ),
    default( 32 ),
    description( "Number of bits per component in the coordinate (8, 16, 32)" ),
    type( int )
{
}

parameter NormalSize :
    short( r ),
    long( "normal-size" ),
    arg ( Value ),
    default( 8 ),
    description( "Number of bits per component in the normal, (1 for porcupine, 8, 16, 32) " ),
    type( int )
{
}

parameter ColourSize :
    short( l ),
    long( "colour-size" ),
    arg ( Value ),
    default( 32 ),
    description( "Number of bits for colour component, (1 for greyscale with no alpha, or 32 bit)" ),
    type( int )
{
}

parameter UVSize :
    short( u ),
    long( "uv-size" ),
    arg ( Value ),
    default( 16 ),
    description( "Number of bits per component for ALL UVs (8, 16, 32)This is overriden by individual settings
" ),
    type( int )
{
}

parameter UV0Size :
    long( "uv0" ),
    arg ( Value ),
    default( -1 ),
    description( "Number of bits per component for UV0 (8, 16, 32)" ),
    type( int )
{
}

parameter UV1Size :
    long( "uv1" ),
    arg ( Value ),
    default( -1 ),
    description( "Number of bits per component for UV1 (8, 16, 32)" ),
    type( int )
{
}

parameter UV2Size :
    long( "uv2" ),
    arg ( Value ),
    default( -1 ),
    description( "Number of bits per component for UV2 (8, 16, 32)" ),
    type( int )
{
}

parameter UV3Size :
    long( "uv3" ),
    arg ( Value ),
    default( -1 ),
    description( "Number of bits per component for UV3 (8, 16, 32)" ),
    type( int )
{
}

parameter UV4Size :
    long( "uv4" ),
    arg ( Value ),
    default( -1 ),
    description( "Number of bits per component for UV4 (8, 16, 32)" ),
    type( int )
{
}

parameter UV5Size :
    long( "uv5" ),
    arg ( Value ),
    default( -1 ),
    description( "Number of bits per component for UV5 (8, 16, 32)" ),
    type( int )
{
}

parameter UV6Size :
    long( "uv6" ),
    arg ( Value ),
    default( -1 ),
    description( "Number of bits per component for UV6 (8, 16, 32)" ),
    type( int )
{
}

parameter UV7Size :
    long( "uv7" ),
    arg ( Value ),
    default( -1 ),
    description( "Number of bits per component for UV7 (8, 16, 32)" ),
    type( int )
{
}

