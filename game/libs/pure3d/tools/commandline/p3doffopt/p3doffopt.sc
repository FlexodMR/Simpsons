tool p3doffopt :
    description( "This tool turn off optimization of geometry with given name" )
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

parameter MeshPatterns :
    short( m ),
    long( "mesh" ),
    arg ( Pattern ),
    description( "Specify the name pattern of the geometries that won't be optimized at loading time" ),
    type( Pattern )
{
}

