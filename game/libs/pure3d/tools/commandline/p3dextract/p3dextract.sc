tool p3dextract :
    description( "This tool extracts objects and objects that they reference from Pure3D files" )
{
}

parameter ExtractMatchingNames :
    short( m ),
    long( "matching-names" ),
    description( "Extract objects (such as PhObjs) that have the same name as the target mesh" ),
    type( BOOL )
{
}

parameter OutputDirectory :
    short( o ),
    long( "output-directory" ),
    arg ( name ),
    description( "Specify directory to write output files (must exist)" ),
    type( string )
{
}

