tool p3dxbox :
    description( "This tool creates xbox memory images" )
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

parameter OutputFile :
    short( o ),
    long( "output-file" ),
    arg ( name ),
    description( "Specify output file name" ),
    type( string )
{
}

