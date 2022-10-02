tool p3dcompdrawopt :
    description( "This tool optomized composite drawable an the associated skins and geometries" )
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

parameter SkinMerge :
    short( s ),
    long( "skinmerge" ),
    description( "merge skins into single skin" ),
    type( BOOL )
{
}

parameter Wheels :
    short( w ),
    long( "wheels" ),
    description( "Optimise the wheels of Simpsons' vehicles" ),
    type( BOOL )
{
}
