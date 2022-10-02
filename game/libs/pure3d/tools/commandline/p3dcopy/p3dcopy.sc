tool p3dcopy :
    description( "This tool create a copy of a mesh with given name" )
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
    description( "Specify the name pattern of the geometries that will be duplicated" ),
    type( Pattern )
{
}

parameter Prefix :
    short( p ),
    long( "prefix" ),
    arg ( Prefix ),
    description( "Prefix added to the name of duplicated mesh" ),
    type( string )
{
}

parameter Suffix :
    short( s ),
    long( "suffix" ),
    arg ( Suffix ),
    description( "Suffix added to the name of duplicated mesh" ),
    type( string )
{
}

