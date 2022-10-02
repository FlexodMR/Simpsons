#includehpp( tlPoint.hpp )
#includehpp( tlColour.hpp )
#includehpp( tlUV.hpp )

#declaretype( tlPoint )
#declaretype( tlColour )
#declaretype( tlUV )

struct tlVtxOffset
{
    ULONG Index;

    float OffsetX;

    float OffsetY;

    float OffsetZ;

}

chunk tlPrimGroupChunk :
    subchunk( tlVertexShaderChunk ),
    subchunk( tlPositionListChunk ),
    subchunk( tlNormalListChunk ),
    subchunk( tlPackedNormalListChunk ),
    subchunk( tlUVListChunk ),
    subchunk( tlColourListChunk ),
    subchunk( tlMultiColourListChunk ),
    subchunk( tlStripListChunk ),
    subchunk( tlIndexListChunk ),
    subchunk( tlMatrixListChunk ),
    subchunk( tlWeightListChunk ),
    subchunk( tlMatrixPaletteChunk ),
    subchunk( tlInstanceInfoChunk ),
    subchunk( tlPrimGroupMemoryImageVertexChunk ),
    subchunk( tlPrimGroupMemoryImageIndexChunk ),
    subchunk( tlPrimGroupMemoryImageVertexDescriptionChunk ),
    subchunk( tlTangentListChunk ),
    subchunk( tlBinormalListChunk ),
    subchunk( tlOffsetListChunk ),
    chunk_id( Pure3D::Mesh::PRIMGROUP )  
{
    ULONG  Version;
    string  Shader;
    ULONG  PrimitiveType;
    ULONG  VertexType;
    ULONG  NumVertices;
    ULONG  NumIndices;
    ULONG  NumMatrices;
}

chunk tlVertexShaderChunk :
    chunk_id( Pure3D::Mesh::VERTEXSHADER )  
{
    string  VertexShaderName;
}

chunk tlPositionListChunk :
    chunk_id( Pure3D::Mesh::POSITIONLIST )  
{
    ULONG  NumPositions;
    array( tlPoint, NumPositions )  Positions;
}

chunk tlNormalListChunk :
    chunk_id( Pure3D::Mesh::NORMALLIST )  
{
    ULONG  NumNormals;
    array( tlPoint, NumNormals )  Normals;
}

chunk tlTangentListChunk :
    chunk_id( Pure3D::Mesh::TANGENTLIST )  
{
    ULONG  NumTangents;
    array( tlPoint, NumTangents )  Tangents;
}

chunk tlBinormalListChunk :
    chunk_id( Pure3D::Mesh::BINORMALLIST )  
{
    ULONG  NumBinormals;
    array( tlPoint, NumBinormals )  Binormals;
}

chunk tlPackedNormalListChunk :
    chunk_id( Pure3D::Mesh::PACKEDNORMALLIST )  
{
    ULONG  NumNormals;
    array( UBYTE, NumNormals )  Normals;
}

chunk tlUVListChunk :
    chunk_id( Pure3D::Mesh::UVLIST )  
{
    ULONG  NumUVs;
    ULONG  Channel;
    array( tlUV, NumUVs )  UVs;
}

chunk tlColourListChunk :
    chunk_id( Pure3D::Mesh::COLOURLIST )  
{
    ULONG  NumColours;
    array( tlColour, NumColours )  Colours;
}

chunk tlMultiColourListChunk :
    chunk_id( Pure3D::Mesh::MULTICOLOURLIST )  
{
    ULONG  NumColours;
    ULONG  Channel;
    array( tlColour, NumColours )  Colours;
}

chunk tlStripListChunk :
    chunk_id( Pure3D::Mesh::STRIPLIST )  
{
    ULONG  NumStrips;
    array( ULONG, NumStrips )  Strips;
}

chunk tlIndexListChunk :
    chunk_id( Pure3D::Mesh::INDEXLIST )  
{
    ULONG  NumIndices;
    array( ULONG, NumIndices )  Indices;
}

chunk tlExpressionOffsetsChunk :
    subchunk( tlOffsetListChunk ),
    chunk_id( Pure3D::Mesh::EXPRESSIONOFFSETS )  
{
    ULONG  NumPrimGroups;
    ULONG  NumOffsetLists;
    array( ULONG, NumPrimGroups )  PrimGroupIndices;
}

chunk tlOffsetListChunk :
    chunk_id( Pure3D::Mesh::OFFSETLIST )  
{
    ULONG  NumOffsets;
    ULONG  KeyIndex;
    array( tlVtxOffset, NumOffsets )  Offsets;
    ULONG  PrimGroupIndex;
}

chunk tlMatrixListChunk :
    chunk_id( Pure3D::Mesh::MATRIXLIST )  
{
    ULONG  NumMatrices;
    array( COLOUR, NumMatrices )  Matrices;
}

chunk tlWeightListChunk :
    chunk_id( Pure3D::Mesh::WEIGHTLIST )  
{
    ULONG  NumWeights;
    array( tlPoint, NumWeights )  Weights;
}

chunk tlMatrixPaletteChunk :
    chunk_id( Pure3D::Mesh::MATRIXPALETTE )  
{
    ULONG  NumMatrices;
    array( ULONG, NumMatrices )  Matrices;
}

chunk tlInstanceInfoChunk :
    chunk_id( Pure3D::Mesh::INSTANCEINFO )  
{
    ULONG  NumInstances;
    ULONG  VertexCount;
    ULONG  IndexCount;
}

chunk tlPrimGroupMemoryImageVertexDescriptionChunk :
    chunk_id( Pure3D::Mesh::MEMORYIMAGEVERTEXDESCRIPTIONLIST )  
{
    ULONG  Version;
    ULONG  Param;
    ULONG  MemoryImageVertexDescriptionSize;
    array( UBYTE, MemoryImageVertexDescriptionSize )  MemoryImageVertexDescription;
}

chunk tlPrimGroupMemoryImageVertexChunk :
    chunk_id( Pure3D::Mesh::MEMORYIMAGEVERTEXLIST )  
{
    ULONG  Version;
    ULONG  Param;
    ULONG  MemoryImageVertexSize;
    array( UBYTE, MemoryImageVertexSize )  MemoryImageVertex;
}

chunk tlPrimGroupMemoryImageIndexChunk :
    chunk_id( Pure3D::Mesh::MEMORYIMAGEINDEXLIST )  
{
    ULONG  Version;
    ULONG  Param;
    ULONG  MemoryImageIndexSize;
    array( UBYTE, MemoryImageIndexSize )  MemoryImageIndex;
}

