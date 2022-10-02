tool p3dcompress :
    description( "This tool compresses a Pure3D file" )
{
}

parameter Fast :
    short( f ),
    long( "fast" ),
    description( "Sacrifice a little compression ratio for much quicker compression" ),
    type( BOOL )
{
}

parameter Verify :
    short( c ),
    long( "verify" ),
    description( "Check the compression by decompressing and comparing the data" ),
    type( BOOL )
{
}

parameter NewAlgorithms :
    short( s ),
    long( "new-algorithms" ),
    description( "Using a new algorithms to compress" ),
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

parameter BigEndian :
    short( b ),
    long( "big-endian" ),
    description( "Output in big endian format (GameCube native)" ),
    type( BOOL )
{
}


