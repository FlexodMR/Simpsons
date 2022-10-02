#includehpp( tlUV.hpp )
#includehpp( tlFourCC.hpp )

chunk tlLensFlareChunk :
    chunk_id( Pure3D::OpticEffect::LENS_FLARE )  
{
    ULONG  Version;
    string  Name;
    COLOUR  Colour;
    tlUV  Uv0;
    tlUV  Uv1;
    tlUV  Uv2;
    tlUV  Uv3;
    tlUV  UvOffset;
    float  Distance;
    float  Width;
    float  Height;
}

chunk tlLensFlareGroupChunk :
    subchunk( tlLensFlareChunk ),
    chunk_id( Pure3D::OpticEffect::LENS_FLARE_GROUP )  
{
    ULONG  Version;
    string  Name;
    string  ShaderName;
    ULONG  ZTest;
    ULONG  ZWrite;
    ULONG  Fog;
    float  SourceRadius;
    float  EdgeRadius;
    ULONG  NumFlares;
}

chunk tlOpticVectorV14Chunk :
    chunk_id( Pure3D::OpticEffect::VECTOR_V14 )  
{
    float  X;
    float  Y;
    float  Z;
}

chunk tlCoronaV14Chunk :
    subchunk( tlOpticVectorV14Chunk ),
    chunk_id( Pure3D::OpticEffect::CORONA_V14 )  
{
    string  Name;
    ULONG  Version;
    string  Shader;
    COLOUR  Colour;
    ULONG  TextureFrameRate;
    ULONG  NumTextureFrames;
    float  Width;
    float  Height;
    float  SourceRadius;
    float  FallOffTime;
    float  DistanceCutOff;
    ULONG  PerspectiveScale;
    float  FrameRate;
    ULONG  BillboardMode;
}

chunk tlLensFlareParentV14Chunk :
    subchunk( tlLensFlareV14Chunk ),
    subchunk( tlOpticVectorV14Chunk ),
    chunk_id( Pure3D::OpticEffect::LENS_FLARE_PARENT_V14 )  
{
    string  Name;
    ULONG  Version;
    ULONG  NumFlares;
    float  SourceRadius;
    float  FallOffTime;
    float  DistanceCutOff;
    float  FrameRate;
}

chunk tlLensFlareV14Chunk :
    chunk_id( Pure3D::OpticEffect::LENS_FLARE_V14 )  
{
    string  Shader;
    COLOUR  Colour;
    float  Distance;
    float  Width;
    float  Height;
}

