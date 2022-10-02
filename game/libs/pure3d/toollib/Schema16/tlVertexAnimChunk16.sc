#includeschema( tlEntityChannelChunk16.sc )

#includehpp( tlEntityChannelChunk16.hpp )
#includehpp( tlPoint.hpp )
#includehpp( tlColour.hpp )
#includehpp( tlUV.hpp )
#includehpp( tlFourCC.hpp )

#declaretype( tlPoint )
#declaretype( tlColour )
#declaretype( tlUV )
#declaretype( tlFourCC )

chunk tlVertexAnimKeyChunk :
    subchunk( tlColourOffsetListChunk ),
    subchunk( tlVectorOffsetListChunk ),
    subchunk( tlVector2OffsetListChunk ),
    chunk_id( Pure3D::Animation::VertexAnim::KEY )  
{
    ULONG  Version;
    string  Name;
}

chunk tlColourOffsetListChunk :
    subchunk( tlOffsetIndexListChunk ),
    chunk_id( Pure3D::Animation::VertexAnim::OffsetList::COLOUR )  
{
    ULONG  Version;
    ULONG  NumOffsets;
    array( tlColourOffset, NumOffsets )  Offsets;
}

chunk tlVectorOffsetListChunk :
    subchunk( tlOffsetIndexListChunk ),
    chunk_id( Pure3D::Animation::VertexAnim::OffsetList::VECTOR )  
{
    ULONG  Version;
    ULONG  NumOffsets;
    FOURCC  Param;
    array( tlPoint, NumOffsets )  Offsets;
}

chunk tlVector2OffsetListChunk :
    subchunk( tlOffsetIndexListChunk ),
    chunk_id( Pure3D::Animation::VertexAnim::OffsetList::VECTOR2 )  
{
    ULONG  Version;
    ULONG  NumOffsets;
    FOURCC  Param;
    array( tlUV, NumOffsets )  Offsets;
}

chunk tlOffsetIndexListChunk :
    chunk_id( Pure3D::Animation::VertexAnim::OffsetList::INDEX )  
{
    ULONG  Version;
    ULONG  NumIndex;
    array( ULONG, NumIndex )  Index;
}

