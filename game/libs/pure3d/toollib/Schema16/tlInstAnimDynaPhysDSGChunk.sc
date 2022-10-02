#includeschema( tlInstancesChunk.sc )
#includeschema( tlAnimDSGWrapper.sc )
#includeschema( tlObjectAttributeChunk.sc )
#includeschema( tlAnimObjDSGWrapperChunk.sc)


#includehpp( tlInstancesChunk.hpp )
#includehpp( tlAnimDSGWrapper.hpp )
#includehpp( tlObjectAttributeChunk.hpp)
#includehpp( tlAnimObjDSGWrapperChunk.hpp)
#includehpp( srrchunks.h )

chunk tlInstAnimDynaPhysDSGChunk : 
	subchunk( tlAnimDSGWrapperChunk ),
	subchunk( tlAnimObjDSGWrapperChunk ),
	subchunk( tlObjectAttributeChunk ),
	subchunk( tlInstancesChunk ),
	chunk_id( SRR2::ChunkID::INSTA_ANIM_DYNA_PHYS_DSG )
{
	string Name;
	ULONG  Version;
    ULONG  HasAlpha;
}