tool p3dpack :
    description( "This tool packs the textures of a pure3d file" )
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

parameter NoAction :
    short( N ),
    long( "no-action" ),
    description( "Perfom packing but do not save out results." ),
    type( BOOL )
{
}

parameter Query :
    short( Q ),
    long( "query" ),
    description( "Query for underused textures and output the percentage of texture mapped with UVs" ),
    type( BOOL )
{
}
