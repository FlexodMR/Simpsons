#includeschema( tlParticleSystemChunk.sc )
#includeschema( tlFrameControllerChunk.sc )
#includeschema( tlShaderChunk.sc )
#includeschema( tlTextureChunk.sc )
#includeschema( tlAnimationChunk.sc )

#includehpp( tlAnimationChunk.hpp )
#includehpp( tlParticleSystemChunk.hpp )
#includehpp( tlFrameControllerChunk.hpp )
#includehpp( tlShaderChunk.hpp )
#includehpp( tlTextureChunk.hpp )

#includehpp( srrchunks.h )

chunk tlInstParticleSystemChunk :
    subchunk( tlParticleSystemFactoryChunk ),
    subchunk( tlFrameControllerChunk ),
	subchunk( tlShaderChunk ),
	subchunk( tlAnimationChunk ),
	subchunk( tlTextureChunk ),
	chunk_id( SRR2::ChunkID::INST_PARTICLE_SYSTEM )
{
	ULONG ParticleType;
    ULONG MaxInstances;
}
