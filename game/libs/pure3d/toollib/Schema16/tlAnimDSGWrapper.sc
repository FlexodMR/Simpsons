#includeschema( tlCompositeDrawableChunk16.sc )
#includeschema( tlFrameControllerChunk.sc )
#includeschema( tlMultiControllerChunk16.sc )
#includeschema( tlCollisionObjectChunk.sc )
#includeschema( tlInstancesChunk.sc )
#includeschema( tlBillBoardObjectChunk.sc )
#includeschema( tlMeshChunk.sc )
#includeschema( tlAnimationChunk.sc )
#includeschema( tlObjectAttributeChunk.sc )
#includeschema( tlPhysicsObjectChunk.sc )
#includeschema( tlSkeletonChunk16.sc )

#includehpp( tlCompositeDrawableChunk16.hpp )
#includehpp( tlFrameControllerChunk.hpp )
#includehpp( tlMultiControllerChunk16.hpp )
#includehpp( tlCollisionObjectChunk.hpp )
#includehpp( tlBillBoardObjectChunk.hpp )
#includehpp( tlMeshChunk.hpp )
#includehpp( tlAnimationChunk.hpp )
#includehpp( tlPhysicsObjectChunk.hpp )
#includehpp( tlObjectAttributeChunk.hpp )
#includehpp( tlSkeletonChunk16.hpp )
#includehpp( tlInstancesChunk.hpp )
#includehpp( srrchunks.h )

chunk tlAnimDSGWrapperChunk : 
	subchunk( tlAnimationChunk ),
	subchunk( tlCompositeDrawableChunk16 ),
	subchunk( tlFrameControllerChunk ),
	subchunk( tlMultiControllerChunk16 ),
	subchunk( tlCollisionObjectChunk ),
	subchunk( tlBillboardQuadGroupChunk ),
	subchunk( tlMeshChunk ),
	subchunk( tlPhysicsObjectChunk ),	
	subchunk( tlObjectAttributeChunk ),
	subchunk( tlSkeletonChunk16 ),
	chunk_id( SRR2::ChunkID::ANIM_DSG_WRAPPER )
{
	string Name;
	ULONG  Version;
    ULONG  HasAlpha;
}