struct tlTransKeyData
{
    float X;

    float Y;

    float Z;

}

struct tlRotKeyData
{
    UWORD X;

    UWORD Y;

    UWORD Z;

}

struct tlQuatKeyData
{
    float W;

    float X;

    float Y;

    float Z;

}

chunk tlPoseAnimChunk16 :
    subchunk( tlPoseJointListChunk16 ),
    subchunk( tlPoseAnimMirroredChunk16 ),
    chunk_id( P3D_POSE_ANIM )  
{
    string  Name;
    ULONG  Version;
    string  SkeletonName;
    ULONG  NumFrames;
    float  FrameRate;
    ULONG  Cyclic;
}

chunk tlPoseJointListChunk16 :
    subchunk( tlAnimChannelChunk16 ),
    chunk_id( P3D_JOINT_LIST )  
{
    ULONG  ListType;
    ULONG  NumJoints;
}

chunk tlPoseAnimMirroredChunk16 :
    chunk_id( P3D_POSE_ANIM_MIRRORED )  
{
    string  Name;
}

chunk tlAnimChannelChunk16 :
    subchunk( tlChannel1DOFChunk16 ),
    subchunk( tlChannel3DOFChunk16 ),
    subchunk( tlChannel1DOFAngleChunk16 ),
    subchunk( tlChannel3DOFAngleChunk16 ),
    subchunk( tlChannelQuaternionChunk16 ),
    subchunk( tlChannelStaticVectorChunk16 ),
    subchunk( tlChannelStaticAngleChunk16 ),
    subchunk( tlChannelStaticQuaternionChunk16 ),
    chunk_id( P3D_ANIM_CHANNEL )  
{
    string  Name;
    ULONG  Version;
    ULONG  PoseIndex;
}

chunk tlChannel1DOFChunk16 :
    chunk_id( P3D_CHANNEL_1DOF )  
{
    ULONG  NumKeys;
    ULONG  Mapping;
    ULONG  NumConstants;
    array( float, NumConstants )  Constants;
    array( UWORD, NumKeys )  TimeIndex;
    array( float, NumKeys )  Frames;
}

chunk tlChannel3DOFChunk16 :
    chunk_id( P3D_CHANNEL_3DOF )  
{
    ULONG  NumKeys;
    array( UWORD, NumKeys )  TimeIndex;
    array( tlTransKeyData, NumKeys )  Frames;
}

chunk tlChannel1DOFAngleChunk16 :
    chunk_id( P3D_CHANNEL_1DOF_ANGLE )  
{
    ULONG  NumKeys;
    ULONG  Mapping;
    ULONG  NumConstants;
    array( float, NumConstants )  Constants;
    array( UWORD, NumKeys )  TimeIndex;
    array( UWORD, NumKeys )  Frames;
}

chunk tlChannel3DOFAngleChunk16 :
    chunk_id( P3D_CHANNEL_3DOF_ANGLE )  
{
    ULONG  NumKeys;
    array( UWORD, NumKeys )  TimeIndex;
    array( ULONG, NumKeys )  Frames;
}

chunk tlChannelQuaternionChunk16 :
    chunk_id( P3D_CHANNEL_QUATERNION )  
{
    ULONG  NumKeys;
    array( UWORD, NumKeys )  TimeIndex;
    array( tlQuatKeyData, NumKeys )  Frames;
}

chunk tlChannelStaticVectorChunk16 :
    chunk_id( P3D_CHANNEL_STATIC )  
{
    float  X;
    float  Y;
    float  Z;
}

chunk tlChannelStaticAngleChunk16 :
    chunk_id( P3D_CHANNEL_STATIC_ANGLE )  
{
    float  X;
    float  Y;
    float  Z;
}

chunk tlChannelStaticQuaternionChunk16 :
    chunk_id( P3D_CHANNEL_STATIC_QUATERNION )  
{
    float  W;
    float  X;
    float  Y;
    float  Z;
}

chunk tlKeyListColourChunk16 :
    chunk_id( P3D_KEYLIST_COLOUR )  
{
    ULONG  NumKeys;
    array( UWORD, NumKeys )  Frames;
    array( ULONG, NumKeys )  Keys;
}

