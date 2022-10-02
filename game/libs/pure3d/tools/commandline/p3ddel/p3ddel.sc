tool p3ddel :
    description( "This tool deletes chunks from P3D files, either by chunk ID, or by name." )
{
}

parameter DeleteList :
    short( d ),
    arg ( ID ),
    description( "Delete chunks matching ID " ),
    type( HexList )
{
}

parameter KeepList :
    short( k ),
    arg ( ID ),
    description( "Keep chunks matching ID (deleting everything else)" ),
    type( HexList )
{
}

parameter MeshDeletePattern :
    short( g ),
    arg ( Pattern ),
    description( "Delete geometries matching Pattern" ),
    type( Pattern )
{
}

parameter MeshKeepPattern :
    short( G ),
    arg ( Pattern ),
    description( "Delete geometries not matching Pattern" ),
    type( Pattern )
{
}

parameter SkinDeletePattern :
    short( s ),
    arg ( Pattern ),
    description( "Delete skins matching Pattern" ),
    type( Pattern )
{
}

parameter SkinKeepPattern :
    short( S ),
    arg ( Pattern ),
    description( "Delete skins not matching Pattern" ),
    type( Pattern )
{
}

parameter CompositeDeletePattern :
    short( c ),
    arg ( Pattern ),
    description( "Delete composite drawables matching Pattern" ),
    type( Pattern )
{
}

parameter CompositeKeepPattern :
    short( C ),
    arg ( Pattern ),
    description( "Delete composite drawables not matching Pattern" ),
    type( Pattern )
{
}

parameter MaterialDeletePattern :
    short( m ),
    arg ( Pattern ),
    description( "Delete materials / shaders matching Pattern" ),
    type( Pattern )
{
}

parameter MaterialKeepPattern :
    short( M ),
    arg ( Pattern ),
    description( "Delete materials / shaders not matching Pattern" ),
    type( Pattern )
{
}

parameter TextureDeletePattern :
    short( t ),
    arg ( Pattern ),
    description( "Delete textures matching Pattern" ),
    type( Pattern )
{
}

parameter TextureKeepPattern :
    short( T ),
    arg ( Pattern ),
    description( "Delete textures not matching Pattern" ),
    type( Pattern )
{
}

parameter AnimDeletePattern :
    short( a ),
    arg ( Pattern ),
    description( "Delete animations matching Pattern" ),
    type( Pattern )
{
}

parameter AnimKeepPattern :
    short( A ),
    arg ( Pattern ),
    description( "Delete animations not matching Pattern" ),
    type( Pattern )
{
}

parameter OutFile :
    short( o ),
    arg ( File ),
    description( "Write output to File." ),
    type( string )
{
}

parameter DelDuplicate :
    short( D ),
    description( "Delete duplicate chunks (just compares names by default)" ),
    type( BOOL )
{
}

parameter CompareEverything :
    short( E ),
    description( "Check entire contents when removing duplicate chunks" ),
    type( BOOL )
{
}

parameter CompareID :
	short( e ),
	description( "Check chunk ID when removing duplicate chunks (overrides -E)" ),
	type( BOOL )
{
}