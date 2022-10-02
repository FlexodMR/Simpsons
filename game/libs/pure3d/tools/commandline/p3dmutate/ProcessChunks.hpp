/*===========================================================================
    File: ProcessChunks.hpp 

    Declaration of chunk processing routine for p3dmutate


    Copyright (c) 2000 Radical Entertainment, Inc.  All rights reserved.

===========================================================================*/


#ifndef _PROCESSCHUNKS_HPP
#define _PROCESSCHUNKS_HPP


class tlDataChunk;
class Parameters;
class IntRangeList;


extern bool ProcessChunks(tlDataChunk *top,
                                  tlDataChunk *parent,
                                  tlDataChunk *chunk,
                                  Parameters *Param,
                                  IntRangeList *chunkIDRangeList,
                                  IntRangeList *newChunkIDRangeList,
                                  IntRangeList *arrayRangeList,
                                  int &filter_count);


#endif // _PROCESSCHUNKS_HPP

