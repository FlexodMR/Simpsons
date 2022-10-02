#includehpp( tlFourCC.hpp )

chunk tlFrameControllerChunk :
    chunk_id( Pure3D::Animation::FrameControllerData::FRAME_CONTROLLER )  
{
    ULONG  Version;
    string  Name;
    FOURCC  Type;
    float  FrameOffset;
    string  HierarchyName;
    string  AnimationName;
}

