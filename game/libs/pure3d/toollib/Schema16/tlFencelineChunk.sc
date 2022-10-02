#includeschema( tlWallChunk.sc )

//This goes into the tlFencelineChunk files.
#includehpp( srrchunks.h )
#includehpp( tlWallChunk.hpp )

chunk tlFenceLineChunk :
	subchunk( tlWallChunk ),
	chunk_id( SRR2::ChunkID::FENCELINE )
{
    ULONG NumWalls;
}

