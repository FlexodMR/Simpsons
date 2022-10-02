#includehpp( tlPoint.hpp )
#includehpp( srrchunks.h )


chunk tlTreeDSGChunk :
	subchunk( tlContiguousBinNodeChunk ),
	chunk_id( SRR2::ChunkID::TREE_DSG )
{
   ULONG	NumNodes;
   tlPoint	BoundsMin;
   tlPoint	BoundsMax;
}

chunk tlContiguousBinNodeChunk :
	subchunk( tlSpatialNodeChunk ),
	chunk_id( SRR2::ChunkID::CONTIGUOUS_BIN_NODE )
{
   ULONG  SubTreeSize;
   ULONG  ParentOffset;
}

chunk tlSpatialNodeChunk :
	chunk_id( SRR2::ChunkID::SPATIAL_NODE )
{
   UBYTE  PlaneAxis;
   float  PlanePosn;
   ULONG  NumSEntities;
   ULONG  NumSPhys;
   ULONG  NumIntersects;
   ULONG  NumDPhys;
   ULONG  NumFences;
   ULONG  NumRoads;
   ULONG  NumPaths;
   ULONG  NumAnims;
}

