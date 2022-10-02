#includeschema( tlEntityChannelChunk16.sc )

#includehpp( tlEntityChannelChunk16.hpp )
chunk tlTextureAnimChunk16 :
    subchunk( tlTextureAnimChannelChunk16 ),
    chunk_id( P3D_TEXTURE_ANIM )  
{
    string  AnimName;
    ULONG  Version;
    string  MaterialName;
    ULONG  NumFrames;
    float  FrameRate;
    ULONG  Cyclic;
}

chunk tlTextureAnimChannelChunk16 :
    subchunk( tlEntityChannelChunk16 ),
    chunk_id( P3D_TEXTURE_ANIM_CHANNEL )  
{
}

