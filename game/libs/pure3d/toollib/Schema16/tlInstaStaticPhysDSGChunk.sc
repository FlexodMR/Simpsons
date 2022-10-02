#includeschema( tlCollisionObjectChunk.sc )
#includeschema( tlObjectAttributeChunk.sc )
#includeschema( tlMeshChunk.sc )
#includeschema( tlInstancesChunk.sc )


#includehpp( tlCollisionObjectChunk.hpp )
#includehpp( tlObjectAttributeChunk.hpp )
#includehpp( tlMeshChunk.hpp )
#includehpp( tlInstancesChunk.hpp )
#includehpp( srrchunks.h )


chunk tlInstaStaticPhysDSGChunk :
	subchunk( tlMeshChunk ),
	subchunk( tlObjectAttributeChunk ),
	subchunk( tlCollisionObjectChunk ),
	subchunk( tlInstancesChunk ),
	chunk_id( SRR2::ChunkID::INSTA_STATIC_PHYS_DSG )
{
   string Name;
   ULONG  Version;
   ULONG  HasAlpha;
}