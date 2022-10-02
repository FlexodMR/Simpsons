chunk tlVisibilityAnimChunk16 :
    subchunk( tlVisibilityAnimChannelChunk16 ),
    chunk_id( P3D_VISIBILITY_ANIM )  
{
    string  AnimName;
    string  SceneName;
    ULONG  Version;
    ULONG  NumFrames;
    float  FrameRate;
    ULONG  NumChannels;
}

chunk tlVisibilityAnimChannelChunk16 :
    chunk_id( P3D_VISIBILITY_ANIM_CHANNEL )  
{
    string  Nodename;
    WORD  bStartState;
    ULONG  NumFrames;
    array( ULONG, NumFrames )  Frames;
}

