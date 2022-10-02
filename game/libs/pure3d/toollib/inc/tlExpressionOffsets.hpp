
/*===========================================================================
   File:: tlExpressionOffsets.hpp

   Copyright (c) 2001 Radical Entertainment, Inc.  All rights reserved.

===========================================================================*/

#ifndef __TLEXPRESSIONOFFSETS_HPP__
#define __TLEXPRESSIONOFFSETS_HPP__

#include "tlTable.hpp"
#include "tlOffsetList.hpp"
#include "tlDataChunk.hpp"
#include "tlPrimGroupChunk.hpp"

//----------------------------------------------------------------------------
// tlExpressionOffsets
//----------------------------------------------------------------------------
class tlExpressionOffsets
{
public:
    tlExpressionOffsets();
    tlExpressionOffsets(const tlExpressionOffsets& offsets);
    tlExpressionOffsets(tlDataChunk* ch);
    virtual ~tlExpressionOffsets();
   
    // Chunk reading / writing code
    virtual void LoadFromChunk(tlDataChunk* ch);
    virtual tlDataChunk* Chunk();

    unsigned long               NumOffsetLists( void ) const { return offsetListChunks.Count(); }
    tlOffsetListChunk*          GetOffsetListChunk( int index ) const;

    //used to transfer the offsetlists chunks from tlPrimGroup  
    void AppendOffsetlistChunk(tlOffsetListChunk* chunk);

    void                        Clear( void );

protected:
    unsigned long ComputeAffectedPGs();

    tlTable<tlOffsetListChunk*> offsetListChunks;
    unsigned long               nPrimGroups;
    unsigned long*              primGroupIndices;
};

#endif
