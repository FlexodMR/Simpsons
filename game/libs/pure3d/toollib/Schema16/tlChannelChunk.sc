#includehpp( tlPoint.hpp )
#includehpp( tlQuat.hpp )
#includehpp( tlFourCC.hpp )

#declaretype( tlPoint )
#declaretype( tlPoint2D )
#declaretype( tlQuat )
#declaretype( tlCompressedQuat )

chunk tlChannelInterpolationModeChunk :
    chunk_id( Pure3D::Animation::ChannelData::INTERPOLATION_MODE )  
{
    ULONG  Version;
    ULONG  Interpolate;
}

chunk tlIntChannelChunk :
    subchunk( tlChannelInterpolationModeChunk ),
    chunk_id( Pure3D::Animation::ChannelData::INT )  
{
    ULONG  Version;
    FOURCC  Param;
    ULONG  NumFrames;
    array( UWORD, NumFrames )  Frames;
    array( ULONG, NumFrames )  Values;
}

chunk tlFloat1ChannelChunk :
    subchunk( tlChannelInterpolationModeChunk ),
    chunk_id( Pure3D::Animation::ChannelData::FLOAT_1 )  
{
    ULONG  Version;
    FOURCC  Param;
    ULONG  NumFrames;
    array( UWORD, NumFrames )  Frames;
    array( float, NumFrames )  Values;
}

chunk tlFloat2ChannelChunk :
    subchunk( tlChannelInterpolationModeChunk ),
    chunk_id( Pure3D::Animation::ChannelData::FLOAT_2 )  
{
    ULONG  Version;
    FOURCC  Param;
    ULONG  NumFrames;
    array( UWORD, NumFrames )  Frames;
    array( tlPoint2D, NumFrames )  Values;
}

chunk tlVector1DOFChannelChunk :
    subchunk( tlChannelInterpolationModeChunk ),
    chunk_id( Pure3D::Animation::ChannelData::VECTOR_1DOF )  
{
    ULONG  Version;
    FOURCC  Param;
    UWORD  Mapping;
    tlPoint  Constants;
    ULONG  NumFrames;
    array( UWORD, NumFrames )  Frames;
    array( float, NumFrames )  Values;
}

chunk tlVector2DOFChannelChunk :
    subchunk( tlChannelInterpolationModeChunk ),
    chunk_id( Pure3D::Animation::ChannelData::VECTOR_2DOF )  
{
    ULONG  Version;
    FOURCC  Param;
    UWORD  Mapping;
    tlPoint  Constants;
    ULONG  NumFrames;
    array( UWORD, NumFrames )  Frames;
    array( tlPoint2D, NumFrames )  Values;
}

chunk tlVector3DOFChannelChunk :
    subchunk( tlChannelInterpolationModeChunk ),
    chunk_id( Pure3D::Animation::ChannelData::VECTOR_3DOF )  
{
    ULONG  Version;
    FOURCC  Param;
    ULONG  NumFrames;
    array( UWORD, NumFrames )  Frames;
    array( tlPoint, NumFrames )  Values;
}

chunk tlQuaternionFormatChunk :
    chunk_id( Pure3D::Animation::ChannelData::QUATERNION_FORMAT )  
{
    ULONG  Version;
    FOURCC  Format;
}

chunk tlQuaternionChannelChunk :
    subchunk( tlQuaternionFormatChunk ),
    subchunk( tlChannelInterpolationModeChunk ),
    chunk_id( Pure3D::Animation::ChannelData::QUATERNION )  
{
    ULONG  Version;
    FOURCC  Param;
    ULONG  NumFrames;
    array( UWORD, NumFrames )  Frames;
    array( tlQuat, NumFrames )  Values;
}

chunk tlCompressedQuaternionChannelChunk :
    subchunk( tlChannelInterpolationModeChunk ),
    chunk_id( Pure3D::Animation::ChannelData::COMPRESSED_QUATERNION )  
{
    ULONG  Version;
    FOURCC  Param;
    ULONG  NumFrames;
    array( UWORD, NumFrames ) Frames;
    array( tlCompressedQuat, NumFrames )  Values;
}

chunk tlStringChannelChunk :
    chunk_id( Pure3D::Animation::ChannelData::STRING )  
{
    ULONG  Version;
    FOURCC  Param;
    ULONG  NumFrames;
    array( UWORD, NumFrames )  Frames;
    array( string, NumFrames )  Values;
}

chunk tlEntityChannelChunk :
    chunk_id( Pure3D::Animation::ChannelData::ENTITY )  
{
    ULONG  Version;
    FOURCC  Param;
    ULONG  NumFrames;
    array( UWORD, NumFrames )  Frames;
    array( string, NumFrames )  Values;
}

chunk tlBoolChannelChunk :
    chunk_id( Pure3D::Animation::ChannelData::BOOL )  
{
    ULONG  Version;
    FOURCC  Param;
    WORD  StartState;
    ULONG  NumFrames;
    array( UWORD, NumFrames )  Values;
}

chunk tlColourChannelChunk :
    subchunk( tlChannelInterpolationModeChunk ),
    chunk_id( Pure3D::Animation::ChannelData::COLOUR )  
{
    ULONG  Version;
    FOURCC  Param;
    ULONG  NumFrames;
    array( UWORD, NumFrames )  Frames;
    array( COLOUR, NumFrames )  Values;
}

chunk tlEventDataImageChunk :
    chunk_id( Pure3D::Animation::ChannelData::EVENT_OBJECT_DATA_IMAGE )  
{
    string  DataFormat;
    ULONG  DataLen;
    array( UBYTE, DataLen )  Data;
}

chunk tlEventChunk :
    subchunk( tlEventDataImageChunk ),
    chunk_id( Pure3D::Animation::ChannelData::EVENT_OBJECT )  
{
    string  Name;
    ULONG  Param;
    UWORD  Time;
}

chunk tlEventChannelChunk :
    subchunk( tlEventChunk ),
    chunk_id( Pure3D::Animation::ChannelData::EVENT )  
{
    ULONG  Version;
    FOURCC  Param;
    ULONG  NumFrames;
}

