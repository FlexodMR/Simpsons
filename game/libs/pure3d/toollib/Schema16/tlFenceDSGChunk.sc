#includeschema( tlWallChunk.sc )

#includehpp( tlWallChunk.hpp )
//This goes into the tlWallChunk files.
#includehpp( srrchunks.h )

chunk tlFenceDSGChunk :
	subchunk( tlWallChunk ),
	chunk_id( SRR2::ChunkID::FENCE_DSG )
{
}

