#includeschema( tlAnimationChunk.sc )

#includehpp( tlAnimationChunk.hpp )
#includehpp( tlParticleSystem.hpp )
#includehpp( tlFourCC.hpp )
#includehpp( tlPoint.hpp )
#includehpp( tlQuat.hpp )
#includehpp( tlFourCC.hpp )

#declaretype( tlPoint )
#declaretype( tlPoint2D )
#declaretype( tlQuat )

chunk tlParticleInstancingInfoChunk :
    chunk_id( Pure3D::ParticleSystem::INSTANCING_INFO )  
{
    ULONG  Version;
    ULONG  MaxInstances;
}

chunk tlParticleSystemFactoryChunk :
    subchunk( tlParticleInstancingInfoChunk ),
    subchunk( tlBaseEmitterFactoryChunk ),
    subchunk( tlSpriteEmitterFactoryChunk ),
    subchunk( tlDrawableEmitterFactoryChunk ),
    chunk_id( Pure3D::ParticleSystem::SYSTEM_FACTORY )  
{
    ULONG  Version;
    string  Name;
    float  FrameRate;
    ULONG  NumAnimFrames;
    ULONG  NumOLFrames;
    UWORD  CycleAnim;
    UWORD  EnableSorting;
    ULONG  NumEmitters;
}

chunk tlParticleSystemChunk :
    chunk_id( Pure3D::ParticleSystem::SYSTEM )  
{
    ULONG  Version;
    string  Name;
    string  FactoryName;
}

chunk tlParticleAnimationChunk :
    subchunk( tlAnimationChunk ),
    chunk_id( Pure3D::ParticleSystem::PARTICLE_ANIMATION )  
{
    ULONG  Version;
}

chunk tlEmitterAnimationChunk :
    subchunk( tlAnimationChunk ),
    chunk_id( Pure3D::ParticleSystem::EMITTER_ANIMATION )  
{
    ULONG  Version;
}

chunk tlGeneratorAnimationChunk :
    subchunk( tlAnimationChunk ),
    chunk_id( Pure3D::ParticleSystem::GENERATOR_ANIMATION )  
{
    ULONG  Version;
}

chunk tlBaseEmitterFactoryChunk :
    subchunk( tlParticleAnimationChunk ),
    subchunk( tlEmitterAnimationChunk ),
    subchunk( tlGeneratorAnimationChunk ),
    chunk_id( Pure3D::ParticleSystem::BASE_EMITTER_FACTORY )  
{
    ULONG  Version;
    string  Name;
    FOURCC  ParticleType;
    FOURCC  GeneratorType;
    ULONG  ZTest;
    ULONG  ZWrite;
    ULONG  Fog;
    ULONG  MaxParticles;
    ULONG  InfiniteLife;
    float  RotationalCohesion;
    float  TranslationalCohesion;
}

chunk tlSpriteEmitterFactoryChunk :
    subchunk( tlBaseEmitterFactoryChunk ),
    chunk_id( Pure3D::ParticleSystem::SPRITE_EMITTER_FACTORY )  
{
    ULONG  Version;
    string  Name;
    string  ShaderName;
    FOURCC  AngleMode;
    float  Angle;
    FOURCC  TextureAnimMode;
    ULONG  NumTextureFrames;
    ULONG  TextureFrameRate;
}

chunk tlDrawableEmitterFactoryChunk :
    subchunk( tlBaseEmitterFactoryChunk ),
    chunk_id( Pure3D::ParticleSystem::DRAWABLE_EMITTER_FACTORY )  
{
    ULONG  Version;
    string  Name;
    string  DrawableName;
    FOURCC  AngleMode;
    float  Angle;
}

