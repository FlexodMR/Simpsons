//This goes into the tlFencelineChunk files.
#includehpp( srrchunks.h )
#includehpp( tlPoint.hpp )

#declaretype( tlPoint )

chunk tlFollowCamDataChunk :
	chunk_id( SRR2::ChunkID::FOLLOWCAM )
{
    ULONG ID;

    float Rotation;
    float Elevation;
    float Magnitude;

    tlPoint TargetOffset;
}