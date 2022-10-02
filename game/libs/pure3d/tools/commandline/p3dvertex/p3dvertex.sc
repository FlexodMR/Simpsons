tool p3dvertex :
    description( "This tool modifies the vertex formats of meshes and skinsin Pure3D files
" )
{
}

parameter Optimize :
    short( O ),
    long( "optimize" ),
    description( "Remove vertex components that aren't used by the shader" ),
    type( BOOL )
{
}

parameter DeleteUV :
    long( "delete-uv" ),
    description( "Remove all UV coordinates from the vertices" ),
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

