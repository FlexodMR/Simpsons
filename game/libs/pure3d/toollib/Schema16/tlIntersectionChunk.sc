#includehpp( tlPoint.hpp )
#includehpp( srrchunks.h )

#declaretype( tlPoint )

chunk tlIntersectionChunk :
	chunk_id( SRR2::ChunkID::INTERSECTION )
{
    string  Name;
    tlPoint Centre;
    float   Radius;
    ULONG   Type;
}

