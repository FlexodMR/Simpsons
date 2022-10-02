#includeschema( tlCollisionObjectChunk.sc )
#includeschema( tlObjectAttributeChunk.sc )
#includeschema( tlMeshChunk.sc )
#includeschema( tlPhysicsObjectChunk.sc )
#includeschema( tlInstancesChunk.sc )

#includehpp( tlCollisionObjectChunk.hpp )
#includehpp( tlObjectAttributeChunk.hpp )
#includehpp( tlMeshChunk.hpp )
#includehpp( tlPhysicsObjectChunk.hpp )
#includehpp( tlInstancesChunk.hpp )
#includehpp( srrchunks.h )

chunk tlDynaPhysDSGChunk :
	subchunk( tlMeshChunk ),
	subchunk( tlPhysicsObjectChunk ),	
	subchunk( tlObjectAttributeChunk ),
	subchunk( tlCollisionObjectChunk ),
	subchunk( tlInstancesChunk ),
	chunk_id( SRR2::ChunkID::DYNA_PHYS_DSG )
{
   string Name;
   ULONG  Version;
   ULONG  HasAlpha;
}