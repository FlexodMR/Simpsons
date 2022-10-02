#includeschema( tlCompositeDrawableChunk16.sc )
#includeschema( tlFrameControllerChunk.sc )
#includeschema( tlMultiControllerChunk16.sc )
#includeschema( tlCollisionObjectChunk.sc )
#includeschema( tlBillBoardObjectChunk.sc )

#includehpp( tlBillBoardObjectChunk.hpp )
#includehpp( tlCompositeDrawableChunk16.hpp )
#includehpp( tlFrameControllerChunk.hpp )
#includehpp( tlMultiControllerChunk16.hpp )
#includehpp( tlCollisionObjectChunk.hpp )
#includehpp( srrchunks.h )

chunk tlAnimCollDSGChunk : 
	subchunk( tlCompositeDrawableChunk16 ),
	subchunk( tlFrameControllerChunk ),
	subchunk( tlMultiControllerChunk16 ),
	subchunk( tlCollisionObjectChunk ),
	subchunk( tlBillboardQuadGroupChunk ),
	chunk_id( SRR2::ChunkID::ANIM_COLL_DSG )
{
	string Name;
	ULONG  Version;
    ULONG  HasAlpha;
}