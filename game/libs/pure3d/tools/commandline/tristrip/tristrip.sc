tool tristrip :
    description( "This tool converts meshes into tristrips" )
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

parameter OutputSuffix :
    short( A ),
    arg ( string ),
    description( "Specify the string to append to the name of an output file.                         " ),
    type( string )
{
}

parameter MaxNumberOfTriangles :
    short( t ),
    arg ( number ),
    description( "Maximum number of triangles per triangle strip." ),
    type( int )
{
}

parameter MaxNumberOfVertices :
    short( p ),
    arg ( number ),
    description( "Maximum number of vertices per triangle strip." ),
    type( int )
{
}

parameter ToTriangles :
    short( T ),
    description( "Don't generate triangle strips, just order triangles as if they were in triangle strip." ),
    type( BOOL )
{
}

parameter Deindex :
    short( d ),
    description( "Write non-indexed tristrips" ),
    type( BOOL )
{
}

parameter NoMergeStrips :
    short( m ),
    description( "Supress outer merging (Now ignored, use -M to enable : supplied for compatability)" ),
    type( BOOL )
{
}

parameter ForceMergeStrips :
    short( M ),
    description( "Force merging of tristrips with same shader even if not in same prim group in original mesh" ),
    type( BOOL )
{
}

parameter InnerMergeStrips :
    short( i ),
    description( "Disable stitching of tristrips within a primgroup" ),
    type( BOOL )
{
}

parameter MergeAllStrips :
    short( a ),
    description( "Merge Tri-Strips regardless of the Shader." ),
    type( BOOL )
{
}

parameter Debug :
    short( D ),
    description( "Debug mode, applies random colours to each strip." ),
    type( BOOL )
{
}

parameter OptimizeForXBox :
    short( x ),
    description( "Optimize for XBox." ),
    type( BOOL )
{
}

parameter VertexCacheSize :
    short( c ),
    arg ( number ),
    description( "Specify the Vertex Cache Size of XBox for Optimization" ),
    type( int )
{
}

parameter TristripIrregular :
    short( g ),
    description( "Tristrip Irregualr Primitives That Result in Tristrips with too Many Extra Vertex" ),
    type( BOOL )
{
}

parameter ExcludePattern :
    short( e ),
    arg ( Pattern ),
    description( "Exclude chunks matching pattern from being tri-stripped (e.i.: face*)." ),
    type( Pattern )
{
}

