#includehpp( tlMatrix.hpp )

#declaretype( tlMatrix )

chunk tlSkeletonChunk16 :
    subchunk( tlSkeletonJointChunk16 ),
    chunk_id( P3D_SKELETON )  
{
    string  Name;
    ULONG  Version;
    ULONG  NumJoints;
}

chunk tlSkeletonJointChunk16 :
    subchunk( tlSkeletonJointBonePreserveChunk16 ),
    subchunk( tlSkeletonJointMirrorMapChunk16 ),
    chunk_id( P3D_SKELETON_JOINT )  
{
    string  Name;
    ULONG  Parent;
    ULONG  DOF;
    ULONG  FreeAxes;
    ULONG  PrimaryAxis;
    ULONG  SecondaryAxis;
    ULONG  TwistAxis;
    tlMatrix  RestPose;
}

chunk tlSkeletonJointMirrorMapChunk16 :
    chunk_id( P3D_SKELETON_JOINT_MIRROR_MAP )  
{
    ULONG  MappedJointIndex;
    float  XAxisMap;
    float  YAxisMap;
    float  ZAxisMap;
}

chunk tlSkeletonJointBonePreserveChunk16 :
    chunk_id( P3D_SKELETON_JOINT_FIX_FLAG )  
{
    ULONG  PreserveBoneLengths;
}

