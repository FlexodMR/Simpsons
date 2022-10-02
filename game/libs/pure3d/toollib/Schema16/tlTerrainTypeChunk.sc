#includehpp( srrchunks.h )

chunk tlTerrainTypeChunk :
	chunk_id( SRR2::ChunkID::TERRAIN_TYPE )
{
   ULONG Version;
   ULONG NumTypes;
   array( UBYTE, NumTypes ) Types;
}
