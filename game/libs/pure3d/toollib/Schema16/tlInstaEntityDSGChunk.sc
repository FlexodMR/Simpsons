#includeschema( tlMeshChunk.sc )
#includeschema( tlInstancesChunk.sc )

#includehpp( srrchunks.h )
#includehpp( tlMeshChunk.hpp )
#includehpp( tlInstancesChunk.hpp )

chunk tlInstaEntityDSGChunk :
	subchunk( tlMeshChunk ),
	subchunk( tlInstancesChunk ),
	chunk_id( SRR2::ChunkID::INSTA_ENTITY_DSG )
{
   string Name;
   ULONG  Version;
   ULONG  HasAlpha;
}