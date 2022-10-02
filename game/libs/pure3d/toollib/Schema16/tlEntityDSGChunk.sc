#includeschema( tlMeshChunk.sc )

//This goes into the tlEntityDSGChunk files.
#includehpp( srrchunks.h )
#includehpp( tlMeshChunk.hpp )

chunk tlEntityDSGChunk :
	subchunk( tlMeshChunk ),
	chunk_id( SRR2::ChunkID::ENTITY_DSG )
{
   string Name;
   ULONG  Version;
   ULONG  HasAlpha;
}

