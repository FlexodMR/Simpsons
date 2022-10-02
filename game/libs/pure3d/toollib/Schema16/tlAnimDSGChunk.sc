#includeschema( tlCompositeDrawableChunk16.sc )
#includeschema( tlFrameControllerChunk.sc )
#includeschema( tlMultiControllerChunk16.sc )
#includeschema( tlBillBoardObjectChunk.sc )

#includehpp( tlCompositeDrawableChunk16.hpp )
#includehpp( tlFrameControllerChunk.hpp )
#includehpp( tlBillBoardObjectChunk.hpp )
#includehpp( tlMultiControllerChunk16.hpp )
#includehpp( srrchunks.h )

chunk tlAnimDSGChunk : 
	subchunk( tlCompositeDrawableChunk16 ),
	subchunk( tlFrameControllerChunk ),
	subchunk( tlMultiControllerChunk16 ),
	subchunk( tlBillboardQuadGroupChunk ),
	chunk_id( SRR2::ChunkID::ANIM_DSG )
{
	string Name;
	ULONG  Version;
    ULONG  HasAlpha;
}