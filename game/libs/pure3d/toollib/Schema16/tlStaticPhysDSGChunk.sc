#includeschema( tlCollisionObjectChunk.sc )
#includeschema( tlObjectAttributeChunk.sc )

#includehpp( tlCollisionObjectChunk.hpp )
#includehpp( tlObjectAttributeChunk.hpp )
//This goes into the tlStaticPhysDSGChunk files.
#includehpp( srrchunks.h )


chunk tlStaticPhysDSGChunk :
	subchunk( tlObjectAttributeChunk ),
	subchunk( tlCollisionObjectChunk ),
	chunk_id( SRR2::ChunkID::STATIC_PHYS_DSG )
{
   string Name;
   ULONG  Version;
}

