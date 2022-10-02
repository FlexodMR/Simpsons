tool p3dname :
    description( "This tool renames objects in Pure3D files." )
{
}

parameter AllTypes :
    long( "all" ),
    default( TRUE ),
    description( "Process all types of objects" ),
    type( BOOL )
{
}

parameter DoFonts :
    short( F ),
    default( FALSE ),
    description( "Process fonts" ),
    type( BOOL )
{
}

parameter DoGeo :
    short( g ),
    default( FALSE ),
    description( "Process geometries" ),
    type( BOOL )
{
}

parameter DoGeoMaterial :
    short( G ),
    default( FALSE ),
    description( "Process materials referenced by geometries" ),
    type( BOOL )
{
}

parameter DoStree :
    short( s ),
    default( FALSE ),
    description( "Process strees" ),
    type( BOOL )
{
}

parameter DoStreeGeo :
    short( S ),
    default( FALSE ),
    description( "Process geometry names in strees" ),
    type( BOOL )
{
}

parameter DoMtree :
    short( m ),
    default( FALSE ),
    description( "Process mtrees" ),
    type( BOOL )
{
}

parameter DoMtreeGeo :
    short( E ),
    default( FALSE ),
    description( "Process geometry names in mtrees" ),
    type( BOOL )
{
}

parameter DoAnim :
    short( a ),
    default( FALSE ),
    description( "Process animations" ),
    type( BOOL )
{
}

parameter DoAnimTree :
    short( R ),
    default( FALSE ),
    description( "Process hierarchy names in animations" ),
    type( BOOL )
{
}

parameter DoMaterial :
    short( M ),
    default( FALSE ),
    description( "Process materials" ),
    type( BOOL )
{
}

parameter DoMaterialAsTexture :
    long( "material-as-texture" ),
    default( FALSE ),
    description( "Rename materials to be the same as the textures they reference." ),
    type( BOOL )
{
}

parameter DoMaterialTex :
    short( r ),
    default( FALSE ),
    description( "Process texture names in materials" ),
    type( BOOL )
{
}

parameter DoTexture :
    short( T ),
    default( FALSE ),
    description( "Process textures" ),
    type( BOOL )
{
}

parameter DoHSpline :
    long( "hspline" ),
    default( FALSE ),
    description( "Process H-Spline surfaces" ),
    type( BOOL )
{
}

parameter DoHSplineGeo :
    long( "hsplinegeo" ),
    default( FALSE ),
    description( "Process geometry names in H-Spline surfaces" ),
    type( BOOL )
{
}

parameter DoHSTree :
    long( "hstree" ),
    default( FALSE ),
    description( "Process HS-Trees" ),
    type( BOOL )
{
}

parameter DoHSTreeSurf :
    long( "hstreesurf" ),
    default( FALSE ),
    description( "Process H-Spline surface names in HS-Trees" ),
    type( BOOL )
{
}

parameter DoHSParamAnim :
    long( "hsparamanim" ),
    default( FALSE ),
    description( "Process H-Spline parameter (eg. offset) animations" ),
    type( BOOL )
{
}

parameter DoHSParamAnimSurf :
    long( "hsparamanimsurf" ),
    default( FALSE ),
    description( "Process H-Spline surface names in H-Spline parameter animations" ),
    type( BOOL )
{
}

parameter FromPattern :
    short( f ),
    arg ( Pattern ),
    description( "Specify old name" ),
    type( Pattern )
{
}

parameter ToName :
    short( t ),
    arg ( Name ),
    description( "Specify new name" ),
    type( string )
{
}

parameter ToLowercase :
    short( l ),
    default( FALSE ),
    description( "Convert object name to lowercase" ),
    type( BOOL )
{
}

parameter ToUnique :
    short( u ),
    default( FALSE ),
    description( "Make object name unique (including hash collisions)" ),
    type( BOOL )
{
}

