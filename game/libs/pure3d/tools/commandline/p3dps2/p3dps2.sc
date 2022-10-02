tool p3dps2 :
    description( "This tool processes art for the PS2." )
{
}

parameter OptimiseShaders :
    short( s ),
    long( "optimise-shaders" ),
    description( "Convert suitable simple shaders into lightweight shaders" ),
    type( BOOL )
{
}

parameter FlipTextures :
    short( F ),
    long( "flip-textures" ),
    description( "Flip textures if they are taller than they are wide" ),
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

parameter MemoryImage :
    short( m ),
    long( "memory-image" ),
    description( "Convert textures and geometries to memory image format" ),
    type( BOOL )
{
}

parameter Compress :
    short( z ),
    long( "compress" ),
    description( "Compress the resulting p3d file" ),
    type( BOOL )
{
}

parameter Fast :
    short( f ),
    long( "fast" ),
    description( "Sacrifice a little compression ratio for much quicker compression" ),
    type( BOOL )
{
}

parameter SubModulateBlend :
    short( b ),
    long( "subModBlend" ),
    arg ( brightness ),
    description( "Specify base texture brightness for use in texture modulate.  Range 1 - 255.  0(default) is auto-detect." ),
    type( int )
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

