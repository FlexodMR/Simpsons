tool p3dimage :
    description( "This tool processes textures and images in a Pure3D file" )
{
}

parameter NotAlpha :
    short( a ),
    description( "Don't modify images with alpha" ),
    type( BOOL )
{
}

parameter Saturation :
    short( A ),
    long( "saturation" ),
    arg ( Value ),
    default( 0.0f ),
    description( "Increase (pos. value) or decrease (neg. value) the image saturation." ),
    type( float )
{
}

parameter NTSCFix :
	long( "ntsc_fix" ),
	description( "Desaturate an image to avoid illegal NTSC colours, in apposed to clamping the colours." ),
	type( BOOL )
{
}

parameter NewBpp :
    short( b ),
    long( "bpp" ),
    arg ( Value ),
    default( 0 ),
    description( "Force output images bits-per-pixel to Value" ),
    type( int )
{
}

parameter Brightness :
    short( B ),
    long( "brightness" ),
    arg ( Value ),
    default( 0.0f ),
    description( "Increase (pos. value) or decrease (neg. value) the image brightness." ),
    type( float )
{
}

parameter ClampNTSC :
    short( c ),
    long( "clamp-ntsc" ),
    description( "Correct all illegal NTSC colours" ),
    type( BOOL )
{
}

parameter Contrast :
    short( C ),
    long( "contrast" ),
    arg ( Value ),
    default( 0.0f ),
    description( "Increase (pos. value) or decrease (neg. value) the image contrast." ),
    type( float )
{
}

parameter DiceSprite :
    short( d ),
    long( "dice-sprite" ),
    default( TRUE ),
    description( "Cut the sprite into sections which are powers of two sized (on by default)" ),
    type( BOOL )
{
}

parameter Dither :
    short( D ),
    long( "dither" ),
    description( "With -b, dither an image when reducing the bit depth" ),
    type( BOOL )
{
}

parameter Format :
    short( f ),
    long( "dxtn-format" ),
    arg ( dxtn ),
    default( 0 ),
    description( "Specify converted dxtn format(1, 3, 5, or 9 for Auto-detect)" ),
    type( int )
{
}

parameter Filter :
    short( F ),
    long( "filter" ),
    arg ( radius ),
    default( 0.0f ),
    description( "Blur pixels within radius using Gaussian blur filter" ),
    type( float )
{
}

parameter GameCubeImage :
    short( G ),
    long( "gamecube-image" ),
    description( "Format images optimized for the GameCube; Also turns on DXT1Only" ),
    type( BOOL )
{
}

parameter GammaCorrection :
    short( g ),
    long( "gamma" ),
    arg ( Value ),
    default( 0.0f ),
    description( "Gamma correct images by Value" ),
    type( float )
{
}

parameter ImageFile :
    short( i ),
    long( "image-file" ),
    description( "Deprecated. Input files are image files, and not P3D files. Deprecated option - file detection is automatic." ),
    type( BOOL )
{
}

parameter ImageOutputFile :
    short( I ),
    long( "image-output-file" ),
    description( "Write the output as an image.  The input file which must be an image is overwritten with the results." ),
    type( BOOL )
{
}

parameter ClampAlpha :
    short( l ),
    long( "1bit-alpha" ),
    description( "Clamps all of the alpha values in the image to 1 bit values" ),
    type( BOOL )
{
}

parameter Lightness :
    short( L ),
    long( "lightness" ),
    arg ( Value ),
    default( 0.0f ),
    description( "Increase (pos. value) or decrease (neg. value) the image lightness." ),
    type( float )
{
}

parameter MinSpriteSize :
    short( m ),
    long( "min-sprite-size" ),
    default( 32 ),
    description( "Specifies the minimum size a sprite chunk can be" ),
    type( int )
{
}

parameter MaxSpriteSize :
    short( M ),
    long( "max-sprite-size" ),
    default( 256 ),
    description( "Specifies the maximum size a sprite chunk can be" ),
    type( int )
{
}

parameter HighlightNTSC :
    short( N ),
    long( "highlight-ntsc" ),
    description( "Turn all illegal NTSC colours Hot Pink" ),
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

parameter Optimize :
    short( O ),
    long( "optimize" ),
    description( "Reduce the bit depth of images if they use few enough colours" ),
    type( BOOL )
{
}

parameter PS2Image :
    short( p ),
    long( "ps2-image" ),
    description( "Deprecated" ),
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

parameter Query :
    short( Q ),
    long( "query" ),
    description( "Query image information." ),
    type( BOOL )
{
}

parameter Solid :
    short( r ),
    long( "reduce-solid" ),
    description( "Reduce the size and bit depth of solid colour images" ),
    type( BOOL )
{
}

parameter ShowSize :
    short( s ),
    long( "show-size" ),
    description( "Print memory size statistics for each texture" ),
    type( BOOL )
{
}

parameter SpriteExport :
    short( S ),
    long( "sprite-export" ),
    description( "Export as Sprites instead of textures" ),
    type( BOOL )
{
}

parameter NamePatterns :
    short( t ),
    long( "texture-name" ),
    arg ( Pattern ),
    description( "Only process textures whose names match Pattern (eg. Brick*)" ),
    type( Pattern )
{
}

parameter ExcludeNamePatterns :
    short( T ),
    long( "exclude-texture" ),
    arg ( Pattern ),
    description( "Do not process textures whose names match Pattern (eg. Brick*)" ),
    type( Pattern )
{
}

parameter Upgrade :
    short( u ),
    long( "upgrade" ),
    description( "With -b, convert to higher bit depths (eg. 4 bit to 8 bit)" ),
    type( BOOL )
{
}

parameter Hue :
    short( U ),
    long( "hue" ),
    arg ( Value ),
    default( 0.0f ),
    description( "Increase (pos. value) or decrease (neg. value) the image hue." ),
    type( float )
{
}

parameter XBoxImage :
    short( x ),
    long( "xbox-image" ),
    description( "Format images optimized for the X-Box" ),
    type( BOOL )
{
}

parameter MaxImageSize2x2 :
    short( Z ),
    long( "max-image-size_2x2" ),
    default( 256 ),
    description( "Specifies the maximum size a texture chunk can be where the hiehgt == width" ),
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


