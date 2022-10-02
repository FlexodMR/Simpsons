#includeschema( tlRoadSegmentChunk.sc )

#includehpp( tlRoadSegmentChunk.hpp )
//This goes into the tlRoadChunk files.
#includehpp( srrchunks.h )



chunk tlRoadChunk :
	subchunk( tlRoadSegmentChunk ),
	chunk_id( SRR2::ChunkID::ROAD )
{
    string Name;
    ULONG  Type;
    string StartIntersection;
    string EndIntersection;
    ULONG  Density;
    ULONG  Speed;
}

