#includeschema( tlWBRailCamChunk.sc )

#includehpp( tlWBRailCamChunk.hpp )
#includehpp( tlPoint.hpp )
//This goes into the tlFencelineChunk files.
#includehpp( srrchunks.h )


#declaretype( tlPoint )

chunk tlWBSplineChunk :
	subchunk( tlWBRailCamChunk ),
	chunk_id( SRR2::ChunkID::SPLINE )
{
    string Name;
    ULONG  NumCVs;
    array( tlPoint, NumCVs ) CVs;
}

