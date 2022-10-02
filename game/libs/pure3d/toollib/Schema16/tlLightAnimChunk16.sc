#includeschema( tlPoseAnimChunk16.sc )

#includehpp( tlPoseAnimChunk16.hpp )
chunk tlLightAnimChunk16 :
    subchunk( tlLightAnimChannelChunk16 ),
    chunk_id( P3D_LIGHT_ANIM )  
{
    string  AnimName;
    ULONG  Version;
    ULONG  NumFrames;
    float  FrameRate;
    ULONG  Cyclic;
}

chunk tlLightAnimChannelChunk16 :
    subchunk( tlLightAnimColourChannelChunk16 ),
    subchunk( tlLightAnimParamChannelChunk16 ),
    subchunk( tlLightAnimEnableChannelChunk16 ),
    chunk_id( P3D_LIGHT_ANIM_CHANNEL )  
{
}

chunk tlLightAnimColourChannelChunk16 :
    subchunk( tlKeyListColourChunk16 ),
    chunk_id( P3D_LIGHT_ANIM_COLOUR_CHANNEL )  
{
}

chunk tlLightAnimParamChannelChunk16 :
    subchunk( tlChannel3DOFChunk16 ),
    chunk_id( P3D_LIGHT_ANIM_PARAM_CHANNEL )  
{
}

chunk tlLightAnimEnableChannelChunk16 :
    subchunk( tlChannel1DOFChunk16 ),
    chunk_id( P3D_LIGHT_ANIM_ENABLE_CHANNEL )  
{
}

