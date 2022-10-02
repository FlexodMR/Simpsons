tool p3dshaderopt :
    description( "This tool performs various shader-related optimisations" )
{
}

parameter OptimiseShaders :
    short( s ),
    long( "optimise-shaders" ),
    description( "Convert suitable simple shaders into lightweight shaders (PS2 only!)" ),
    type( BOOL )
{
}

parameter RemoveDuplicates :
    short( d ),
    long( "remove-duplicates" ),
    description( "Remove duplicates of functionally equivalent shaders, then re-map prim groups" ),
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

