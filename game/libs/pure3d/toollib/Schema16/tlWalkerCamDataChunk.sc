//This goes into the tlFencelineChunk files.
#includehpp( srrchunks.h )
#includehpp( tlPoint.hpp )

#declaretype( tlPoint )

chunk tlWalkerCamDataChunk :
	chunk_id( SRR2::ChunkID::WALKERCAM )
{
    ULONG ID;

    float MinMagnitude;
    float MaxMagnitude;
    float Elevation;

    tlPoint TargetOffset;
}