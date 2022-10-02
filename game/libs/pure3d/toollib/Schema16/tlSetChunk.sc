#includeschema( tlTextureChunk.sc )
#includehpp( tlTextureChunk.hpp )

#includehpp (srrchunks.h)

chunk tlSetChunk :
   subchunk( tlTextureChunk ),
   chunk_id( SRR2::ChunkID::CHUNK_SET )
{
   string Name;
   ULONG  Version;
   UBYTE  ChildCount;
}
