tool p3dmakefont :
    description( "This tool converts a true type font to p3d format" )
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

parameter CharListFile :
    short( c ),
    long( "char-list-file" ),
    arg ( name ),
    description( "Specify character list file" ),
    type( string )
{
}

parameter UnicodeListFile :
    short( u ),
    long( "unicode-list-file" ),
    arg ( name ),
    description( "Specify unicode list file" ),
    type( string )
{
}

parameter ExtraGlyphsFile :
    short( e ),
    long( "extra-glyphs-file" ),
    arg ( name ),
    description( "Specify a list of extra glyphs to include.  Format is (unicode, left, right, baseline, filename)" ),
    type( string )
{
}

parameter DisableAntiAlias :
    short( a ),
    long( "anti-alias" ),
    description( "Disable anti-aliasing" ),
    type( BOOL )
{
}

parameter EnableFourBitPal :
    short( f ),
    long( "four-bit-palettize" ),
    description( "Enable four bit palettizing" ),
    type( BOOL )
{
}

parameter DisableAlphaBlending :
    short( b ),
    long( "alpha-blending" ),
    description( "Disable alpha blending" ),
    type( BOOL )
{
}

parameter DisableDefaultChars :
    short( d ),
    long( "default-chars" ),
    description( "Disable the use of the default character set" ),
    type( BOOL )
{
}

parameter DisableSafePack :
    short( p ),
    long( "safe-packing" ),
    description( "Disable safe packing of glyphs (could cause letters to creep into each other)" ),
    type( BOOL )
{
}

parameter GlyphBorder :
    short( g ),
    long( "glyph-border" ),
    default( 1 ),
    description( "Sets the spacing in the font image between glyphs" ),
    type( int )
{
}

parameter FontName :
    short( N ),
    long( "font-name" ),
    arg ( name ),
    description( "Specify the name of the font to store in the file" ),
    type( string )
{
}

parameter FontSize :
    short( s ),
    long( "font-size" ),
    default( 12 ),
    description( "Sets font display size (only in texture font)" ),
    type( float )
{
}

parameter FontType :
    short( t ),
    long( "font-type" ),
    default( 0 ),
    description( "(0 = texture font, 1 = image font)" ),
    type( int )
{
}

parameter ForeRed :
    long( "fr" ),
    default( 255 ),
    description( "Red foreground intensity (0 to 255)" ),
    type( int )
{
}

parameter ForeGreen :
    long( "fg" ),
    default( 255 ),
    description( "Green foreground intensity (0 to 255)" ),
    type( int )
{
}

parameter ForeBlue :
    long( "fb" ),
    default( 255 ),
    description( "Blue foreground intensity (0 to 255)" ),
    type( int )
{
}

parameter ForeAlpha :
    long( "fa" ),
    default( 255 ),
    description( "Alpha foreground intensity (0 to 255)" ),
    type( int )
{
}

parameter BackRed :
    long( "br" ),
    default( 255 ),
    description( "Red background intensity (0 to 255)" ),
    type( int )
{
}

parameter BackGreen :
    long( "bg" ),
    default( 255 ),
    description( "Green background intensity (0 to 255)" ),
    type( int )
{
}

parameter BackBlue :
    long( "bb" ),
    default( 255 ),
    description( "Blue background intensity (0 to 255)" ),
    type( int )
{
}

parameter BackAlpha :
    long( "ba" ),
    default( 0 ),
    description( "Alpha background intensity (0 to 255)" ),
    type( int )
{
}

parameter TextureWidth :
    long( "tw" ),
    default( 256 ),
    description( "Width of each texture in a texture font" ),
    type( int )
{
}

parameter TextureHeight :
    long( "th" ),
    default( 256 ),
    description( "Height of each texture in a texture font" ),
    type( int )
{
}

