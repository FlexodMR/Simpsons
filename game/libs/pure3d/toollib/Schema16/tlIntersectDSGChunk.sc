#includeschema( tlBBoxChunk.sc )
#includeschema( tlBSphereChunk.sc )
#includeschema( tlTerrainTypeChunk.sc )

#includehpp( tlBBoxChunk.hpp )
#includehpp( tlBSphereChunk.hpp )
#includehpp( tlTerrainTypeChunk.hpp )
#includehpp( tlPoint.hpp )
#includehpp( srrchunks.h )

#declaretype( tlPoint )

chunk tlIntersectDSGChunk :
	subchunk( tlBBoxChunk ),
	subchunk( tlBSphereChunk ),
	subchunk( tlTerrainTypeChunk ),
	chunk_id( SRR2::ChunkID::INTERSECT_DSG )
{
   ULONG NumIndices;
   array( ULONG, NumIndices ) Indices;

   ULONG NumPositions;
   array( tlPoint, NumPositions ) Positions;
   
   ULONG NumNormals;
   array( tlPoint, NumNormals ) Normals;
}
