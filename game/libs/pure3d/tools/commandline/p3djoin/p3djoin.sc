tool p3djoin :
    description( "Combines Pure3D files." )
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

parameter Sort :
    short( s ),
    long( "sortchunks" ),
    description( "Sort the P3D chunks in happy loading order" ),
    type( BOOL )
{
}

