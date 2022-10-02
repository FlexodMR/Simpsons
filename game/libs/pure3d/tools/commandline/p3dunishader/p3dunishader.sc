tool p3dunishader :
    description( "This tool create unique shader for meshes" )
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

parameter LightMapShader :
    short( l ),
    long( "light-map-shader" ),
    description( "only make shaders light-mapped unique;" ),
    type( BOOL )
{
}

