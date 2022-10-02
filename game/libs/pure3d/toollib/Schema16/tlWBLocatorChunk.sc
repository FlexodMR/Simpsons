#includeschema( tlWBTriggerVolumeChunk.sc )
#includeschema( tlWBSplineChunk.sc )
#includeschema( tlExtraMatrixChunk.sc )

#includehpp( tlWBTriggerVolumeChunk.hpp )
#includehpp( tlWBSplineChunk.hpp )
#includehpp( tlExtraMatrixChunk.hpp )
#includehpp( tlPoint.hpp )
//This goes into the tlWallChunk files.
#includehpp( srrchunks.h )


#declaretype( tlPoint )

chunk tlWBLocatorChunk :
	subchunk( tlWBTriggerVolumeChunk ),
	subchunk( tlWBSplineChunk ),
	subChunk( tlExtraMatrixChunk ),
	chunk_id( SRR2::ChunkID::LOCATOR )
{
   string   Name; 
  
   ULONG     Type;
   ULONG     NumDataElements;
   array( ULONG, NumDataElements ) DataElements;

   tlPoint  Position;

   ULONG    NumTriggers;
}

 