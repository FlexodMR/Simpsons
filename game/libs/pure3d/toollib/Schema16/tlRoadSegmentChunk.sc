#includehpp( tlPoint.hpp )
#includehpp( tlMatrix.hpp )
//This goes into the tlRoadSegmentChunk files.
#includehpp( srrchunks.h )

#declaretype( tlPoint )
#declaretype( tlMatrix )

chunk tlRoadSegmentChunk :
	chunk_id( SRR2::ChunkID::ROAD_SEGMENT )
{
    string   Name;
    string   RoadSegmentData;
    tlMatrix HierarchyMatrix;
    tlMatrix ScaleMatrix;
}