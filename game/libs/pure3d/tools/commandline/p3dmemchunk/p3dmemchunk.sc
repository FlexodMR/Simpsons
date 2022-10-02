tool p3dmemchunk :
    description( "This tool adds memory tracking chunks to a P3D file" )
{
}


parameter HeadBegin :
    long( "head-begin" ),
    arg ( name ),
    description( "Place a begin memory section of name [x] at head of file" ),
    type( string )
{
}

parameter HeadEnd :
    long( "head-end" ),
    arg ( name ),
    description( "Place an end memory section of name [x] at head of file" ),
    type( string )
{
}


parameter TailBegin :
    long( "tail-begin" ),
    arg ( name ),
    description( "Place a begin memory section of name [x] at tail of file" ),
    type( string )
{
}

parameter TailEnd :
    long( "tail-end" ),
    arg ( name ),
    description( "Place an end memory section of name [x] at tail of file" ),
    type( string )
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

