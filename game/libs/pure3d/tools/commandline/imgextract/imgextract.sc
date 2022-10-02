tool imgextract :
    description( "This tool extracts images and textures from a Pure3D file, possibly replacing them with references." )
{
}

parameter ImgPatterns :
    short( i ),
    long( "image-pattern" ),
    arg ( Pattern ),
    description( "Only process images which match Pattern (eg. Face*)" ),
    type( Pattern )
{
}

parameter Reference :
    short( r ),
    long( "reference" ),
    description( "Replace images in the P3D file with references to the files on disk" ),
    type( BOOL )
{
}

parameter Raw :
    long( "raw" ),
    description( "Extract images as Raw RGBA files" ),
    type( BOOL )
{
}

parameter Targa :
    short( t ),
    long( "targa" ),
    description( "Extract images as targa (TGA) files with alpha channels" ),
    type( BOOL )
{
}

parameter PNG :
    short( p ),
    long( "png" ),
    description( "Extract images as PNG files" ),
    type( BOOL )
{
}

parameter DXT1 :
    short( 1 ),
    long( "dxt1" ),
    description( "Extract images as DXT1 files" ),
    type( BOOL )
{
}

parameter DXT3 :
    short( 3 ),
    long( "dxt3" ),
    description( "Extract images as DXT3 files" ),
    type( BOOL )
{
}

parameter DXT5 :
    short( 5 ),
    long( "dxt5" ),
    description( "Extract images as DXT5 files" ),
    type( BOOL )
{
}

parameter OutputFile :
    short( o ),
    arg ( name ),
    description( "Specify output file name" ),
    type( string )
{
}

parameter Directory :
    short( d ),
    arg ( directory ),
    description( "Specify output directory to  extract to(must exist)" ),
    type( string )
{
}

