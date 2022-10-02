#includeschema( tlAnimationChunk.sc )
#includeschema( tlFrameControllerChunk.sc )

#includehpp( tlAnimationChunk.hpp )
#includehpp( tlFrameControllerChunk.hpp )
#includehpp( tlPoint.hpp )
#includehpp( tlQuat.hpp )
#includehpp( tlFourCC.hpp )
#includehpp( tlFourCC.hpp )

#declaretype( tlPoint )
#declaretype( tlPoint2D )
#declaretype( tlQuat )

chunk tlAnimatedObjectFactoryChunk :
    subchunk( tlAnimatedObjectAnimationChunk ),
    chunk_id( Pure3D::AnimatedObject::FACTORY )  
{
    ULONG  Version;
    string  Name;
    string  BaseObjectName;
    ULONG  NumAnimations;
}

chunk tlAnimatedObjectChunk :
    chunk_id( Pure3D::AnimatedObject::OBJECT )  
{
    ULONG  Version;
    string  Name;
    string  FactoryName;
    ULONG  StartingAnimation;
}

chunk tlAnimatedObjectAnimationChunk :
    subchunk( tlFrameControllerChunk ),
    chunk_id( Pure3D::AnimatedObject::ANIMATION )  
{
    ULONG  Version;
    string  Name;
    float  FrameRate;
    ULONG  NumControllers;
}

