#includeschema( tlScenegraphChunk.sc )

#includehpp( tlScenegraphChunk.hpp )
//This goes into the tlWallChunk files.
#includehpp ( srrchunks.h )

chunk tlInstancesChunk :
	subchunk( tlScenegraphChunk ),
	chunk_id( SRR2::ChunkID::INSTANCES )
{
    string Name;
}

