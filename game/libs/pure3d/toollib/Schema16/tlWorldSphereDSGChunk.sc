#includeschema( tlMeshChunk.sc )
#includeschema( tlFrameControllerChunk16.sc )
#includeschema( tlMultiControllerChunk16.sc )
#includeschema( tlCompositeDrawableChunk16.sc )
#includeschema( tlBillBoardObjectChunk.sc )
#includeschema( tlSkeletonChunk16.sc )
#includeschema( tlAnimationChunk.sc )
#includeschema( tlLensFlareDSGChunk.sc )

#includehpp( tlMeshChunk.hpp )
#includehpp( tlFrameControllerChunk16.hpp )
#includehpp( tlMultiControllerChunk16.hpp )
#includehpp( tlCompositeDrawableChunk16.hpp )
#includehpp( tlBillBoardObjectChunk.hpp )
#includehpp( tlSkeletonChunk16.hpp )
#includehpp( tlAnimationChunk.hpp )
#includehpp( tlLensFlareDSGChunk.hpp )
#includehpp( srrchunks.h )

chunk tlWorldSphereDSGChunk :
	subchunk( tlMeshChunk ),
	subchunk( tlMultiControllerChunk16 ),
	subchunk( tlFrameControllerChunk16 ),
	subchunk( tlSkeletonChunk16),
	subchunk( tlAnimationChunk),
	subchunk( tlCompositeDrawableChunk16 ),
	subchunk( tlBillboardQuadGroupChunk ),
	subchunk( tlLensFlareDSGChunk ),
	chunk_id( SRR2::ChunkID::WORLD_SPHERE_DSG )
{
   string Name;
   ULONG  Version;
   ULONG NumMeshes;
   ULONG NumBillBoardQuads;
}