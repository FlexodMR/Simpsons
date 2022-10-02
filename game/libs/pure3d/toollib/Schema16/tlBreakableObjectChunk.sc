#includeschema( tlAnimatedObjectChunk.sc )
#includeschema( tlFrameControllerChunk.sc )
#includeschema( tlMeshChunk.sc )
#includeschema( tlCompositeDrawableChunk16.sc )
#includeschema( tlSkeletonChunk16.sc )
#includeschema( tlAnimationChunk.sc )
#includeschema( tlParticleSystemChunk.sc )
#includeschema( tlMultiControllerChunk16.sc )

#includehpp( tlAnimatedObjectChunk.hpp )
#includehpp( tlFrameControllerChunk.hpp )
#includehpp( tlMeshChunk.hpp )
#includehpp( tlCompositeDrawableChunk16.hpp )
#includehpp( tlSkeletonChunk16.hpp )
#includehpp( tlAnimationChunk.hpp )
#includehpp( tlParticleSystemChunk.hpp )
#includehpp( srrchunks.h )
#includehpp( tlMultiControllerChunk16.hpp )

chunk tlBreakableObjectChunk :
    subchunk( tlAnimatedObjectFactoryChunk ),
	subchunk( tlAnimatedObjectChunk ),
	subchunk( tlFrameControllerChunk ),
	subchunk( tlMeshChunk ),
	subchunk( tlAnimationChunk ),
	subchunk( tlMultiControllerChunk16 ),
	subchunk( tlSkeletonChunk16 ),
    subchunk( tlParticleSystemFactoryChunk ),
	subchunk( tlParticleSystemChunk ),
	subchunk( tlCompositeDrawableChunk16 ),
	chunk_id( SRR2::ChunkID::BREAKABLE_OBJECT )
{
    ULONG BreakableType;
    ULONG MaxInstances;
}






