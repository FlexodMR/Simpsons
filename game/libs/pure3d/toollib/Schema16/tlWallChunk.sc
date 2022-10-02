//This goes into the tlWallChunk files.
#includehpp( srrchunks.h )
#includehpp( tlPoint.hpp ) 

#declaretype( tlPoint )

chunk tlWallChunk : 
	chunk_id( SRR2::ChunkID::WALL )
{
	tlPoint Start;
	tlPoint End;
	tlPoint Normal;      
}

