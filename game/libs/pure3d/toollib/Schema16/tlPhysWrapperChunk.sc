#includeschema( tlObjectAttributeChunk.sc )
#includeschema( tlCollisionObjectChunk.sc )

#includehpp( tlObjectAttributeChunk.hpp )
#includehpp( tlCollisionObjectChunk.hpp )
//This is a wrapper for object attributes and physics.
#includehpp( srrchunks.h )


chunk tlPhysWrapperChunk :
	subchunk( tlObjectAttributeChunk ),
	subchunk(tlCollisionObjectChunk ),
	chunk_id( SRR2::ChunkID::PHYS_WRAPPER  )
{
      string Name;
}
