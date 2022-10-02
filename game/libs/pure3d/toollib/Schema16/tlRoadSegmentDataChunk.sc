#includehpp( tlPoint.hpp )

#includehpp( srrchunks.h )

#declaretype( tlPoint )

chunk tlRoadSegmentDataChunk :
	chunk_id( SRR2::ChunkID::ROAD_SEGMENT_DATA )
{
    string   Name;
    ULONG    Type;
    ULONG    NumLanes;
    ULONG    HasShoulder;
    tlPoint  Direction;
    tlPoint  Top;
    tlPoint  Bottom;
}