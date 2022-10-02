shader SimpleShader :
    id( 0x81003 ),
    pddiShaderName( simple ),
    registerName( pure3DSimpleShader ),
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
float EmissiveAlpha :
    affect( aOutColor ),
    min( 0.0 ),
    max( 1.0 ),
    value( 1.0 ),
    /* no FOURCC */
    keyable( true ),
    description( "Emissive Alpha" ),
    long( emissiveAlpha ),
    short( ea )
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
    keyable( false ),
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
    keyable( false ),
    description( "an enum of x-side resolution" ),
    long( proceduralXRes ),
    short( pxres )
{
}
enum ProceduralYRes :
    value( "global", "8", "16", "32", "64", "128", "256", "512", "1024"),
    default( 0 ),
    keyable( false ),
    description( "an enum of y-side resolution" ),
    long( proceduralYRes ),
    short( pyres )
{
}
enum PrelightMode :
    affect( aVertexNeeds, aVertexMask ),
    value( "None", "CBV", "Lightmapped", "CBV (and use Maya CBV)", "Lightmapped (and use Maya CBV)" ),
    fourCC( PLMD ),
    default( 0 ),
    keyable( true ),
    description( "an enum of P3D prelight mode" ),
    long( prelightMode ),
    short( plm )
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
    keyable( false ),
    storable( false ),
    description( "K Parameter" ),
    long( K ),
    short( mk )
{
}


bool exportMipmaps :
    value( false ),
    fourCC( MMEX ),
    keyable( false ),
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
    keyable( false ),
    description( "if the shader is lighted or not;" ),
    storable( false ),
    long( isLit ),
    short( lit )
{
}
bool IsLightMapped :
    value( false ),
    keyable( false ),
    description( "if the shader is light mapped or not;" ),
    storable( false ),
    long( isLightMapped ),
    short( islm )
{
}

float AlphaCompareThreshold :
    value( 0.5 ),
    fourCC( ACTH ),
    min( 0.0 ),
    max( 1.0 ),
    keyable( false ),
    description( "The alpha threshold used by the Alpha-Compare test" ),
    long( alphaCompareThreshold ),
    short( acth )
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

bool UseMultiCBV :
    affect( aVertexNeeds, aVertexMask ),
    fourCC( MCBV ),
    value( false ),
    keyable( false ),
    description( "if more than one colour per vertex is exported" ),
    long( useMultiCBV ),
    short( mcbv )
{
}

enum MultiCBVMode :
    value( "None", "Add", "Subtract", "Modulate", "Interpolate" ),
    fourCC( CBVM ),
    default( 0 ),
    keyable( true ),
    description( "an enum of Multi CBV blend modes" ),
    long( multiCBVMode ),
    short( cbvm )
{
}

float MultiCBVValue :
    fourCC( CBVV ),
    value( 0.0 ),
    min( 0.0 ),
    max( 1.0 ),
    keyable( true ),
    description( "the fraction of the second vertex colour with which to blend to the first" ),
    long( multiCBVValue ),
    short( cbvv )
{
}

color MultiCBVColour :
    affect( aOutColor ),
    value( 1.0, 1.0, 1.0 ),
    fourCC( CBVC ),
    keyable( true ),
    description( "a colour to blend with vertex colour" ),
    long( multiCBVColour ),
    short( cbvc )
{
}

enum MultiCBVSetA :
//    value( "Blend Colour", "Set 1", "Set 2", "Set 3", "Set 4",
//           "Set 5", "Set 6", "Set 7" ),
    value( "Blend Colour", "Set 1", "Set 2" ),
    fourCC( CBVA ),
    default( 1 ),
    keyable( true ),
    description( "an enum of operands available for cbv blending - first component" ),
    long( multiCBVSetA ),
    short( cbva )
{
}

enum MultiCBVSetB :
//    value( "Blend Colour", "Set 1", "Set 2", "Set 3", "Set 4",
//           "Set 5", "Set 6", "Set 7" ),
    value( "Blend Colour", "Set 1", "Set 2" ),
    fourCC( CBVB ),
    default( 2 ),
    keyable( true ),
    description( "an enum of operands available for cbv blending - second component" ),
    long( multiCBVSetB ),
    short( cbvb )
{
}

code deprecated :
    hook( afteropen ),
    source( "
        const bool   isLitDefault         = true;
        const bool   isLightMappedDefault = false;
        const int    LIGHTMAP             = 2;
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
        /* Lightmap */
        bool lightmap;
        MPlug( thisNode, shader->aIsLightMapped ).getValue( lightmap );
        if( lightmap != isLightMappedDefault )
        {
            MPlug( thisNode, shader->aPrelightMode ).setValue( LIGHTMAP );
        }
" )
{
}
