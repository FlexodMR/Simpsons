#includehpp( srrchunks.h )

#includehpp( tlMatrix.hpp )

#declaretype( tlMatrix )

chunk tlExtraMatrixChunk :
    chunk_id( SRR2::ChunkID::EXTRA_MATRIX )  
{
    tlMatrix Matrix;
}

