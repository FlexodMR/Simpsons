#includehpp( srrchunks.h )
#includehpp( tlPoint.hpp ) 

#declaretype( tlPoint )

chunk tlPedpathChunk :
	chunk_id( SRR2::ChunkID::PED_PATH )
{
    ULONG NumPoints;
    array( tlPoint, NumPoints)  Points;
}

