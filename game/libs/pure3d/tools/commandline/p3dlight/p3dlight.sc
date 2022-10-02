tool p3dlight :
    description( "This tool prelites geometries" )
{
}

parameter AreaSamplingRadius :
    short( a ),
    long( "area-sampling-radius" ),
    arg ( radius ),
    default( 0.1f ),
    description( "Set the maximum radius of the sampling sphere." ),
    type( float )
{
}

parameter AreaSamplingMaxCount :
    short( A ),
    long( "area-sampling-max-count" ),
    arg ( count ),
    default( 50 ),
    description( "Set the maximum count of the sampling sphere." ),
    type( int )
{
}

parameter BPP :
    short( B ),
    long( "bits-per-pixel" ),
    arg ( bpp ),
    default( 24 ),
    description( "Bits per pixel of generated lightmap: 4, 8, or 24 (default)" ),
    type( int )
{
}

parameter CBVColor :
    short( c ),
    long( "vertex-colored" ),
    description( "Generate CBV color" ),
    type( BOOL )
{
}

parameter ColourTranslucency :
    short( C ),
    long( "colour-translucency" ),
    default( FALSE ),
    description( "Translucent geometry will transmit light which is coloured according to the geometry and texture." ),
    type( BOOL )
{
}

parameter SampleDensity :
    short( d ),
    long( "density" ),
    arg ( pixels_per_length ),
    default( 0.0 ),
    description( "Specify the sampling density of light map texture" ),
    type( float )
{
}

parameter Dither :
    short( D ),
    long( "dither" ),
    description( "With -b, dither the 4 or 8 bit lightmap" ),
    type( BOOL )
{
}

parameter Exposure :
    short( e ),
    long( "exposure" ),
    arg ( value ),
    default( 0.0 ),
    description( "Modify the exposure of the scene (default=0.0)." ),
    type( float )
{
}

parameter PhotonMapExclusive :
    short( E ),
    long( "photonmap-exlusive" ),
    description( "Use the photon map exlusively" ),
    type( BOOL )
{
}

parameter ForcePrelightMode :
    short( f ),
    long( "force-prelight-mode" ),
    description( "Force target shaders to the requested lighting mode." ),
    type( BOOL )
{
}

parameter Filter :
    short( F ),
    long( "filter" ),
    arg ( radius ),
    default( 0.0f ),
    description( "Blur pixels in the lightmap within radius using Gaussian blur filter" ),
    type( float )
{
}

parameter GeoName :
    short( g ),
    long( "geometry-name" ),
    arg ( name ),
    description( "Specify the primtive group name to generate light map for" ),
    type( Pattern )
{
}

parameter ExcludeGeoName :
    short( G ),
    long( "exclude-geometry" ),
    arg ( name ),
    description( "Specify the primtive group name to exclude from light map generation" ),
    type( Pattern )
{
}

parameter GrayScaleLightMap :
    short( i ),
    long( "intensity-only" ),
    description( "Create grayscaled lightmap contain only the intensity of light" ),
    type( BOOL )
{
}

parameter LightName :
    short( k ),
    long( "light-name" ),
    arg ( name ),
    description( "Specify light to use" ),
    type( Pattern )
{
}

parameter ExcludeLightName :
    short( K ),
    long( "exclude-light" ),
    arg ( name ),
    description( "Specify the light to exclude" ),
    type( Pattern )
{
}

parameter LightMap :
    short( l ),
    long( "lightmap" ),
    description( "Create light map for geometry" ),
    type( BOOL )
{
}

parameter LightMapAll :
    short( L ),
    long( "lightmap-all" ),
    default( FALSE ),
    description( "Create a single texture on a plane to represent all lightmapped objects" ),
    type( BOOL )
{
}

parameter MergeGrime :
    short( m ),
    long( "merge" ),
    description( "Merge the grime map of a layered shader with light map " ),
    type( BOOL )
{
}

parameter RetainNormals :
    short( N ),
    long( "retain-normals" ),
    description( "Retain normals so that additional pre-lighting may be done on the same geo" ),
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

parameter OverSample :
    short( O ),
    long( "over-sample" ),
    arg( timesSampling ),
    default( 1 ),
    description( "Sample the lightmap at a higher resolution to avoid aliasing" ),
    type( int )
{
}

parameter PhotonMap :
    short( p ),
    long( "photonmap" ),
    description( "Use the photon map" ),
    type( BOOL )
{
}

parameter RayCast :
    short( r ),
    long( "raycast" ),
    description( "Use raycasting to determine shadowing" ),
    type( BOOL )
{
}

parameter RemoveLight :
    short( s ),
    long( "remove-lights" ),
    type( BOOL )
{
}

parameter RemoveLightsName :
    short( S ),
    long( "remove-lights-name" ),
    arg ( name ),
    description( "Specify lights to remove" ),
    type( Pattern )
{
}

parameter DimensionV :
    short( t ),
    long( "height" ),
    arg ( num_pixels ),
    description( "Specify the height of each light map for per plane or per triangle" ),
    type( int )
{
}

parameter TargetCBVSet :
    short( T ),
    long( "targetCBVSet" ),
    arg ( setNumber ),
    default( 1 ),
    description( "Specify the target CBV set for CBV prelighting (default 1)" ),
    type( int )
{
}

parameter Unlit :
    short( u ),
    long( "unlight" ),
    description( "Turn off lighting flag on all shaders" ),
    type( BOOL )
{
}

parameter DimensionU :
    short( w ),
    long( "width" ),
    arg ( num_pixels ),
    description( "Specify the width of each light map per plane or per triangle" ),
    type( int )
{
}

parameter ConditionalHistory :
    short( Y ),
    long( "conditional-history" ),
    default( FALSE ),
    description( "Write out the history chunk only if a change has actually been made." ),
    type( BOOL )
{
}

parameter RemoveNonLightmapped :
    short( Z ),
    long( "remove-non-lightmapped" ),
    default( FALSE ),
    description( "Remove anything not related the lightmapped objects.  ( Keep meshes, shaders, and textures.)" ),
    type( BOOL )
{
}

