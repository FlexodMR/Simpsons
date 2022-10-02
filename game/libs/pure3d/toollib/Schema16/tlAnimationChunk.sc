#includeschema( tlChannelChunk.sc )

#includehpp( tlChannelChunk.hpp )
#includehpp( tlPoint.hpp )
#includehpp( tlQuat.hpp )
#includehpp( tlFourCC.hpp )

#declaretype( tlPoint )
#declaretype( tlPoint2D )
#declaretype( tlQuat )

chunk tlAnimationChunk :
    subchunk( tlAnimationSizeChunk ),
    subchunk( tlAnimationGroupListChunk ),
    chunk_id( Pure3D::Animation::AnimationData::ANIMATION )  
{
    ULONG  Version;
    string  Name;
    FOURCC  AnimationType;
    float  NumFrames;
    float  FrameRate;
    ULONG  Cyclic;
}

chunk tlAnimationSizeChunk :
    chunk_id( Pure3D::Animation::AnimationData::SIZE )  
{
    ULONG  Version;
    ULONG  PC;
    ULONG  PS2;
    ULONG  XBOX;
    ULONG  GC;
}

chunk tlAnimationGroupChunk :
    subchunk( tlIntChannelChunk ),
    subchunk( tlFloat1ChannelChunk ),
    subchunk( tlFloat2ChannelChunk ),
    subchunk( tlVector1DOFChannelChunk ),
    subchunk( tlVector2DOFChannelChunk ),
    subchunk( tlVector3DOFChannelChunk ),
    subchunk( tlQuaternionChannelChunk ),
    subchunk( tlCompressedQuaternionChannelChunk ),
    subchunk( tlStringChannelChunk ),
    subchunk( tlEntityChannelChunk ),
    subchunk( tlBoolChannelChunk ),
    subchunk( tlColourChannelChunk ),
    subchunk( tlEventChannelChunk ),
    chunk_id( Pure3D::Animation::AnimationData::GROUP )  
{
    ULONG  Version;
    string  Name;
    ULONG  GroupId;
    ULONG  NumChannels;
}

chunk tlAnimationGroupListChunk :
    subchunk( tlAnimationGroupChunk ),
    chunk_id( Pure3D::Animation::AnimationData::GROUP_LIST )  
{
    ULONG  Version;
    ULONG  NumGroups;
}

