shader CSPRShader :
    id( 0x4000D ),
    pddiShaderName( csrp ),
    registerName( pure3DCSPRShader ),
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
texture SpecularMap :
    affect(  ),
    value( 0.0, 0.58824, 0.644 ),
    fourCC( SPMP ),
    transparentcy( SMapTrans ),
    description( "a specular map" ),
    long( specularMap ),
    short( spmap )
{
}
texture SMapTrans :
    affect(  ),
    value( 0.0, 0.0, 0.0 ),
    fourCC( SPMP ),
    description( "a transparency texture of specular map" ),
    long( smapTrans ),
    short( strans )
{
}
texture ProjectMap :
    affect(  ),
    value( 0.0, 0.58824, 0.644 ),
    fourCC( PRJT ),
    transparentcy( PMapTrans ),
    description( "a projective map" ),
    long( projectMap ),
    short( pmap )
{
}
texture PMapTrans :
    affect(  ),
    value( 0.0, 0.0, 0.0 ),
    fourCC( PRJT ),
    description( "a transparency texture of projective map" ),
    long( pmapTrans ),
    short( ptrans )
{
}
texture ReflectMap :
    affect(  ),
    value( 0.0, 0.58824, 0.644 ),
    fourCC( REFL ),
    transparentcy( RMapTrans ),
    description( "a reflective map" ),
    long( reflectMap ),
    short( rmap )
{
}
texture RMapTrans :
    affect(  ),
    value( 0.0, 0.0, 0.0 ),
    fourCC( REFL ),
    description( "a transparency texture of reflective map" ),
    long( rmapTrans ),
    short( rtrans )
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
enum BlendMode :
    affect( aIsTranslucent ),
    value( "None", "Alpha", "Add", "Subtract", "Modulate"),
    fourCC( BLMD ),
    default( 0 ),
    keyable( true ),
    description( "a enum of blend mode" ),
    long( blendMode ),
    short( bm )
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

int ProjectMapID :
    value( 0 ),
    fourCC( PRJN ),
    min( 0 ),
    max( 256 ),
    keyable( true ),
    description( "the id of projection map" ),
    long( projectMapID ),
    short( pmid )
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
bool AlphaTest :
    value( false ),
    fourCC( ATST ),
    keyable( true ),
    description( "a bool value for testing alpha" ),
    long( alphaTest ),
    short( at )
{
}
bool DynamicallyLit :
    affect( aVertexNeeds, aVertexMask ),
    value( true ),
    fourCC( LIT ),
    keyable( true ),
    description( "if the shader is dynamically lit or not;" ),
    long( dynamicallyLit ),
    short( dl )
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
bool IsLit :
    value( true ),
    description( "if the shader is lighted or not;" ),
    storable( false ),
    long( isLit ),
    short( lit )
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

code deprecated :
    hook( afteropen ),
    source( "
        const bool   isLitDefault         = true;
        /* Transfer data from deprecated variables to new variables only
           if the deprecated values are not set to the default values.  This
           works only because both deprecated and new variables have equivalent
           defualt values. */
        /* IsLit */
        bool isLit;
        MPlug( thisNode, shader->aIsLit ).getValue( isLit );
        if( isLit != isLitDefault )
        {
            MPlug( thisNode, shader->aDynamicallyLit ).setValue( isLit );
        }
" )
{
}
