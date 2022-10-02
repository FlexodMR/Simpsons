#includeschema( tlCompositeDrawableChunk16.sc )
#includeschema( tlBillBoardObjectChunk.sc )
#includeschema( tlMeshChunk.sc )

#includehpp( tlCompositeDrawableChunk16.hpp )
#includehpp( tlBillBoardObjectChunk.hpp )
#includehpp( tlMeshChunk.hpp )
#includehpp( srrchunks.h )

chunk tlLensFlareDSGChunk :
	subchunk( tlCompositeDrawableChunk16 ),
	subchunk( tlBillboardQuadGroupChunk ),
	subchunk( tlMeshChunk ),
	chunk_id( SRR2::ChunkID::LENS_FLARE_DSG )
{
   string Name;
   ULONG  Version;
   ULONG NumBillBoardQuads;
}