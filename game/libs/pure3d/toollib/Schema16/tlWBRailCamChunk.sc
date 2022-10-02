#includehpp( tlPoint.hpp )
#includehpp( srrchunks.h )

#declaretype( tlPoint )

chunk tlWBRailCamChunk :
	chunk_id( SRR2::ChunkID::RAIL )
{
    string Name;
    ULONG   Behaviour;
    float   MinRadius;
    float   MaxRadius;
    ULONG   TrackRail;
    float   TrackDist;
    ULONG   ReverseSense;
    float   FOV;
    tlPoint TargetOffset;
    tlPoint AxisPlay;
    float   PositionLag;
    float   TargetLag;
}
