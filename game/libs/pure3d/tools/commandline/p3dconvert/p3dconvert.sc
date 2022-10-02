tool p3dconvert :
    description( "Converts v14 or v15 art to v16 art" )
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

parameter ReExport :
    short( r ),
    long( "re-export" ),
    description( "Load file into a tlInventory an re-export" ),
    type( BOOL )
{
}

parameter AppendAnimTypePrefix :
    short( p ),
    long( "animPrefix" ),
    description( "Append the animation type as a prefix to all animations" ),
    type( BOOL )
{
}

parameter AppendAnimTypeSuffix :
    short( s ),
    long( "animSuffix" ),
    description( "Append the animation type as a suffix to all animations" ),
    type( BOOL )
{
}

