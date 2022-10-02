#includehpp( tlPoint.hpp )
#includehpp( tlQuat.hpp )
#includehpp( tlUV.hpp )
#includehpp( tlFourCC.hpp )

#declaretype( tlPoint )
#declaretype( tlQuat )
#declaretype( tlUV )

chunk tlBillboardQuadV14Chunk :
    chunk_id( Pure3D::BillboardObject::QUAD_V14 )  
{
    string  Name;
    ULONG  Version;
    string  Shader;
    COLOUR  Colour;
    float  Width;
    float  Height;
    ULONG  ZTest;
    ULONG  ZWrite;
    ULONG  Fog;
    ULONG  BillboardMode;
}

chunk tlBillboardDisplayInfoChunk :
    chunk_id( Pure3D::BillboardObject::DISPLAY_INFO )  
{
    ULONG  Version;
    tlQuat  Rotation;
    FOURCC  CutOffMode;
    tlUV  UVOffsetRange;
    float  SourceRange;
    float  EdgeRange;
}

chunk tlBillboardPerspectiveInfoChunk :
    chunk_id( Pure3D::BillboardObject::PERSPECTIVE_INFO )  
{
    ULONG  Version;
    ULONG  Perspective;
}

chunk tlBillboardQuadChunk :
    subchunk( tlBillboardDisplayInfoChunk ),
    subchunk( tlBillboardPerspectiveInfoChunk ),
    chunk_id( Pure3D::BillboardObject::QUAD )  
{
    ULONG  Version;
    string  Name;
    FOURCC  BillboardMode;
    tlPoint  Translation;
    COLOUR  Colour;
    tlUV  Uv0;
    tlUV  Uv1;
    tlUV  Uv2;
    tlUV  Uv3;
    float  Width;
    float  Height;
    float  Distance;
    tlUV  UVOffset;
}

chunk tlBillboardQuadGroupChunk :
    subchunk( tlBillboardQuadChunk ),
    chunk_id( Pure3D::BillboardObject::QUAD_GROUP )  
{
    ULONG  Version;
    string  Name;
    string  Shader;
    ULONG  ZTest;
    ULONG  ZWrite;
    ULONG  Fog;
    ULONG  NumQuads;
}

