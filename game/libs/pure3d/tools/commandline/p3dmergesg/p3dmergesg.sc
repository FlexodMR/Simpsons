tool p3dmergesg :
    description( "This tool merges scenegraphs" )
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

parameter SceneName :
    short( s ),
    long( "scene-name" ),
    arg ( name ),
    description( "Specify name for merged scenegraph" ),
    type( string )
{
}

parameter MultiControllerName :
    short( m ),
    long( "multicontroller-name" ),
    arg ( name ),
    description( "Specify name for merged multicontroller" ),
    type( string )
{
}

