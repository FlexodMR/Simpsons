tool p3dmipmap :
    description( "Generates mipmaps." )
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

parameter NamePatterns :
    short( t ),
    long( "texture-name" ),
    arg ( Pattern ),
    description( "Only process textures whose Names match Pattern (eg. Brick*)" ),
    type( Pattern )
{
}

parameter Levels :
    short( l ),
    long( "set-levels" ),
    arg ( Value ),
    default( 256 ),
    description( "Set mipmap level count to Value" ),
    type( int )
{
}

parameter MinDimension :
    short( m ),
    long( "set-min-dimension" ),
    arg ( Value ),
    default( 8 ),
    description( "Set mipmap minimum dimension to Value" ),
    type( int )
{
}

parameter NewBpp :
    short( b ),
    long( "bpp" ),
    arg ( Value ),
    default( 0 ),
    description( "Set output images' bits-per-pixel to Value" ),
    type( int )
{
}

parameter Dither :
    short( D ),
    long( "dither" ),
    description( "With -b, dither an image when reducing the bit depth" ),
    type( BOOL )
{
}

parameter ImageFile :
    short( i ),
    long( "image-file" ),
    description( "Input files are image files, and not P3D files" ),
    type( BOOL )
{
}

parameter ProcessShaders :
    short( s ),
    long( "shaders" ),
    description( "Turn on the mipmapping flag on all shaders" ),
    type( BOOL )
{
}

parameter Bilinear :
    long( "bilinear" ),
    description( "Set filter mode on shaders to mipmap bilinear (defaults to trilinear)" ),
    type( BOOL )
{
}

parameter DropLevels :
    short( x ),
    long( "drop-levels" ),
    arg ( n ),
    description( "Remove the top n levels from the textures" ),
    type( int )
{
}

parameter NoColourKey :
    short( k ),
    long( "no-colour-key" ),
    description( "Disable colour keying in palettized images" ),
    type( BOOL )
{
}

parameter ColourKey :
    short( c ),
    long( "set-colour-key" ),
    default( 0xffff00ff ),
    description( "Set colour key used for transparency in palettized images to Value (hex, aarrggbb)" ),
    type( hexint )
{
}

parameter Gamecube :
    short( G ),
    long( "gamecube" ),
    description( "Only mipmap if it's a gamecube allowed format" ),
    type( BOOL )
{
}

parameter Sharpness :
    long( "sharpness" ),
    arg ( Value ),
    default( 999999.0f ),
    description( "Set the mipmap sharpness in the shader" ),
    type( float )
{
}
