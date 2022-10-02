#includehpp( tlPoint.hpp )
#includehpp( tlMatrix.hpp )
//This goes into the tlWallChunk files.
#includehpp ( srrchunks.h )

#delcaretype( tlPoint )
#declaretype( tlMatrix )

chunk tlWBTriggerVolumeChunk :
	chunk_id( SRR2::ChunkID::TRIGGER_VOLUME )
{
   string   Name;

   ULONG    Type;
   tlPoint  Scale;
   tlMatrix Matrix;
}

 