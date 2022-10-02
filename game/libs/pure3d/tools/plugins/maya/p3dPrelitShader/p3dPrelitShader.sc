shader PrelitShader :
    id( 0x40004 ),
    pddiShaderName( simple ),
    registerName( pure3DPrelitShader ),
    description( "" )    
{
}

texture Color :
    affect( aOutColor ),
    value( 0.0, 0.58824, 0.644 ),
    fourCC( TEX ),
    transparentcy( InTrans ),
    description( "a color texture" ),
    long( color ),
    short( c )
{
}
texture InTrans :
    affect( aOutTrans, aOutColor ),
    value( 0.0, 0.0, 0.0 ),
    fourCC( TEX ),
    description( "a transparency texture" ),
    long( transparency ),
    short( it )
{
}

color Ambient :
    affect( aOutColor ),
    value( 1.0, 1.0, 1.0 ),
    fourCC( AMBI ),
    keyable( true ),
    description( "the ambient color" ),
    long( ambient ),
    short( a )
{
}
color Diffuse :
    affect( aOutColor ),
    value( 1.0, 1.0, 1.0 ),
    fourCC( DIFF ),
    keyable( true ),
    description( "the diffuse color" ),
    long( diffuse ),
    short( d )
{
}
color Emissive :
    affect( aOutColor ),
    value( 0.0, 0.0, 0.0 ),
    fourCC( EMIS ),
    keyable( true ),
    description( "the emissive color" ),
    long( emissive ),
    short( e )
{
}
color Specular :
    affect( aOutColor ),
    value( 0.0, 0.0, 0.0 ),
    fourCC( SPEC ),
    keyable( true ),
    description( "the specular color" ),
    long( specular ),
    short( s )
{
}

enum MipmapL :
    value( "0", "1", "2", "3"),
    default( 0 ),
    storable( false ),
    description( "L Parameter" ),
    long( L ),
    short( ml )
{
}
enum MipmapMin :
    value( "8", "16", "32", "64", "128", "256", "512", "1024"),
    fourCC( MMIN ),
    default( 0 ),
    keyable( true ),
    description( "the minimum dimension of mipmaped texture" ),
    long( mipmapmin ),
    short( mn )
{
}
enum MipmapMax :
    value( "8", "16", "32", "64", "128", "256", "512", "1024"),
    fourCC( MMAX ),
    default( 7 ),
    keyable( true ),
    description( "the minimum dimension of mipmaped texture" ),
    long( mipmapmax ),
    short( mx )
{
}
enum UVMode :
    value( "Tile", "Clamp"),
    fourCC( UVMD ),
    default( 0 ),
    keyable( true ),
    description( "a enum of UV mode" ),
    long( uvMode ),
    short( uv )
{
}
enum FilterMode :
    value( "None", "Bilinear", "Mipmap", "Mipmap Bilinear", "Mipmap Trilinear"),
    fourCC( FIMD ),
    default( 1 ),
    keyable( true ),
    description( "a enum of filter mode" ),
    long( filterMode ),
    short( fm )
{
}
enum ShadeMode :
    affect( aOutColor ),
    value( "Flat", "Gouraud"),
    fourCC( SHMD ),
    default( 1 ),
    keyable( true ),
    description( "a enum of shade mode" ),
    long( shadeMode ),
    short( sm )
{
}
enum AlphaCompare :
    value( "None", "Always", "Less", "LessEqual", "Greater", "GreaterEqual", "Equal", "NotEqual"),
    fourCC( ACMP ),
    default( 4 ),
    keyable( true ),
    description( "a enum of blend mode" ),
    long( alphaCompare ),
    short( ac )
{
}
enum ProceduralXRes :
    value( "global", "8", "16", "32", "64", "128", "256", "512", "1024"),
    default( 0 ),
    description( "an enum of x-side resolution" ),
    long( proceduralXRes ),
    short( pxres )
{
}
enum ProceduralYRes :
    value( "global", "8", "16", "32", "64", "128", "256", "512", "1024"),
    default( 0 ),
    description( "an enum of y-side resolution" ),
    long( proceduralYRes ),
    short( pyres )
{
}

float Shininess :
    affect( aOutColor ),
    value( 10.0 ),
    fourCC( SHIN ),
    min( 0.0 ),
    max( 200.0 ),
    keyable( true ),
    description( "a shininess value" ),
    long( shininess ),
    short( sh )
{
}
float MipmapSharpness :
    value( 0.5 ),
    fourCC( MSHP ),
    min( 0.0 ),
    max( 1.0 ),
    keyable( true ),
    description( "a value for controling the sharpness of switching level of mipmapped textures attached " ),
    long( mmsharpness ),
    short( ms )
{
}
float MipmapK :
    min( -128.0 ),
    max( 128.0 ),
    storable( false ),
    description( "K Parameter" ),
    long( K ),
    short( mk )
{
}
float xHighRenderRegion :
    value( -1.0 ),
    keyable( true ),
    description( "a testing attribute" ),
    long( xHighRenderRegion ),
    short( xhr )
{
}
float yHighRenderRegion :
    value( -1.0 ),
    keyable( true ),
    description( "a testing attribute" ),
    long( yHighRenderRegion ),
    short( yhr )
{
}


bool exportMipmaps :
    value( false ),
    fourCC( MMEX ),
    description( "Whether to generate mipmaps during Export." ),
    long( exportMipmaps ),
    short( exmm )
{
}
bool BlendMode :
    affect( aIsTranslucent, aAlphaTest ),
    value( false ),
    fourCC( BLMD ),
    keyable( true ),
    description( "a enum of blend mode" ),
    long( blendMode ),
    short( bm )
{
}
bool AlphaTest :
    value( false ),
    fourCC( ATST ),
    keyable( true ),
    description( "a bool value for testing alpha" ),
    long( alphaTest ),
    short( at )
{
}
bool DoubleSided :
    value( false ),
    fourCC( 2SID ),
    keyable( true ),
    description( "if the shader takes effect on 2-side of an object" ),
    long( doubleSided ),
    short( ds )
{
}


strarray TextureAttributes :
    value( "TEX"),
    description( "texture attributes" ),
    long( textureAttributes ),
    short( txat )
{
}
strarray TexturePlugs :
    value( "color"),
    description( "texture plugins" ),
    long( texturePlugs ),
    short( txpl )
{
}
strarray TextureAlphaPlugs :
    value( "transparency"),
    description( "texture alpha plugins" ),
    long( textureAlphaPlugs ),
    short( txapl )
{
}

