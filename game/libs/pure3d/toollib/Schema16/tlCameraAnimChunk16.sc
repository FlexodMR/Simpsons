#includeschema( tlPoseAnimChunk16.sc )

#includehpp( tlPoseAnimChunk16.hpp )
chunk tlCameraAnimChunk16 :
    subchunk( tlCameraAnimChannelChunk16 ),
    chunk_id( P3D_CAMERA_ANIM )  
{
    string  AnimName;
    ULONG  Version;
    string  CameraName;
    ULONG  NumFrames;
    float  FrameRate;
    ULONG  Cyclic;
}

chunk tlCameraAnimChannelChunk16 :
    subchunk( tlCameraAnimPosChannelChunk16 ),
    subchunk( tlCameraAnimLookChannelChunk16 ),
    subchunk( tlCameraAnimUpChannelChunk16 ),
    subchunk( tlCameraAnimFOVChannelChunk16 ),
    subchunk( tlCameraAnimNearClipChannelChunk16 ),
    subchunk( tlCameraAnimFarClipChannelChunk16 ),
    chunk_id( P3D_CAMERA_ANIM_CHANNEL )  
{
}

chunk tlCameraAnimPosChannelChunk16 :
    subchunk( tlChannel3DOFChunk16 ),
    chunk_id( P3D_CAMERA_ANIM_POS_CHANNEL )  
{
}

chunk tlCameraAnimLookChannelChunk16 :
    subchunk( tlChannel3DOFChunk16 ),
    chunk_id( P3D_CAMERA_ANIM_LOOK_CHANNEL )  
{
}

chunk tlCameraAnimUpChannelChunk16 :
    subchunk( tlChannel3DOFChunk16 ),
    chunk_id( P3D_CAMERA_ANIM_UP_CHANNEL )  
{
}

chunk tlCameraAnimFOVChannelChunk16 :
    subchunk( tlChannel1DOFChunk16 ),
    chunk_id( P3D_CAMERA_ANIM_FOV_CHANNEL )  
{
}

chunk tlCameraAnimNearClipChannelChunk16 :
    subchunk( tlChannel1DOFChunk16 ),
    chunk_id( P3D_CAMERA_ANIM_NEARCLIP_CHANNEL )  
{
}

chunk tlCameraAnimFarClipChannelChunk16 :
    subchunk( tlChannel1DOFChunk16 ),
    chunk_id( P3D_CAMERA_ANIM_FARCLIP_CHANNEL )  
{
}

