#includeschema( tlPoseAnimChunk16.sc )

#includehpp( tlPoseAnimChunk16.hpp )
chunk tlScenegraphTransformAnimChunk16 :
    subchunk( tlChannel1DOFChunk16 ),
    subchunk( tlChannel3DOFChunk16 ),
    subchunk( tlChannel1DOFAngleChunk16 ),
    subchunk( tlChannel3DOFAngleChunk16 ),
    subchunk( tlChannelStaticVectorChunk16 ),
    subchunk( tlChannelStaticAngleChunk16 ),
    chunk_id( P3D_SG_TRANSFORM_ANIM )  
{
    string  Name;
    ULONG  Version;
    string  NodeName;
    ULONG  NumFrames;
    float  FrameRate;
    ULONG  Cyclic;
}

