#includehpp( srrchunks.h )


struct tlAttributeRow {
	string Sound;
	string Particle;
	string Animation;
	float  Friction;
	float Mass;
	float Elasticity;
}

chunk tlAttributeTableChunk :
chunk_id( SRR2::ChunkID::ATTRIBUTE_TABLE )
{
	ULONG NumRows;
	array( tlAttributeRow, NumRows ) Table;
}
