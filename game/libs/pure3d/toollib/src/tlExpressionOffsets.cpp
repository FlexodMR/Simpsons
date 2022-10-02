//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


#include "tlExpressionOffsets.hpp"   
#include <memory.h>

tlExpressionOffsets::tlExpressionOffsets():
    offsetListChunks(), 
    nPrimGroups(0), 
    primGroupIndices(NULL)
{
}

tlExpressionOffsets::tlExpressionOffsets(const tlExpressionOffsets& offsets):
    offsetListChunks(), 
    nPrimGroups(0), 
    primGroupIndices(NULL)
{
    for (int i = 0; i < offsets.offsetListChunks.Count(); i++)
    {
        offsetListChunks.Append((tlOffsetListChunk*)(offsets.offsetListChunks[i]->Copy()));
    }
    nPrimGroups = offsets.nPrimGroups;
    primGroupIndices = new unsigned long[nPrimGroups];
    memcpy(primGroupIndices, offsets.primGroupIndices, sizeof(unsigned long)*nPrimGroups);
}

tlExpressionOffsets::tlExpressionOffsets(tlDataChunk* ch):
    offsetListChunks(), 
    nPrimGroups(0), 
    primGroupIndices(NULL)
{
    LoadFromChunk(ch);
}

tlExpressionOffsets::~tlExpressionOffsets()
{
    for (int i = 0; i < offsetListChunks.Count(); i++)
    {
        delete offsetListChunks[i];
        offsetListChunks[i] = NULL;        
    }

    delete [] primGroupIndices;
}

void
tlExpressionOffsets::LoadFromChunk(tlDataChunk* ch)
{
    tlExpressionOffsetsChunk* chunk = dynamic_cast<tlExpressionOffsetsChunk*>(ch);
    assert(chunk);

    nPrimGroups = chunk->GetNumPrimGroups();
    primGroupIndices = new unsigned long[nPrimGroups];
    memcpy(primGroupIndices, chunk->GetPrimGroupIndices(), sizeof(unsigned long)*nPrimGroups);

    for (int i = 0; i < chunk->SubChunkCount(); i++)
    {
        tlDataChunk* subChunk = chunk->GetSubChunk(i);
        switch (subChunk->ID())
        {
            case Pure3D::Mesh::OFFSETLIST:
            {
                offsetListChunks.Append((tlOffsetListChunk*)subChunk->Copy());
                break;
            }
            default:
                break;
        }
    }
}

tlDataChunk* 
tlExpressionOffsets::Chunk()
{
    tlExpressionOffsetsChunk* chunk = new tlExpressionOffsetsChunk;

    //put data in chunk fields
    chunk->SetNumPrimGroups(ComputeAffectedPGs());
    chunk->SetNumOffsetLists(offsetListChunks.Count());

    assert(primGroupIndices);
    chunk->SetPrimGroupIndices(primGroupIndices, nPrimGroups);

    //Append the offsetlisk chunks originally created by tlPrimGroup
    for(int i = 0; i < offsetListChunks.Count(); i++)
    {
        chunk->AppendSubChunk(offsetListChunks[i]->Copy());
    }

    return chunk;
}

void 
tlExpressionOffsets::AppendOffsetlistChunk(tlOffsetListChunk* chunk)
{
    offsetListChunks.Append((tlOffsetListChunk*)chunk->Copy());
    ComputeAffectedPGs();
}

unsigned long 
tlExpressionOffsets::ComputeAffectedPGs()
{
    tlTable<unsigned long> affectedPGs;

    for(int i= 0; i < offsetListChunks.Count(); i++)
    {
        unsigned long pgIndices = offsetListChunks[i]->GetPrimGroupIndex();
        affectedPGs.AppendUnique(pgIndices);
    }

    //check that tlExpressionOffsets contains a ref offsetlists from at least 1 primgroup
    assert(affectedPGs.Count() != 0); 
    nPrimGroups = affectedPGs.Count();

    delete [] primGroupIndices; // make sure to delete
    primGroupIndices = new unsigned long[nPrimGroups];

    for(unsigned long j = 0; j < nPrimGroups; j++)
    {
        primGroupIndices[j] = affectedPGs[j];
    }

    return nPrimGroups;
}

 
void tlExpressionOffsets::Clear( void )
{
    for (int i = 0; i < offsetListChunks.Count(); i++)
    {
        delete offsetListChunks[i];
        offsetListChunks[i] = NULL;        
    }
    offsetListChunks.ZeroCount();
    nPrimGroups = 0;                // only for ::Chunk(); calc in ::ComputeAffectedPGs
    delete [] primGroupIndices;     // only for ::Chunk(); calc in ::ComputeAffectedPGs
    primGroupIndices = NULL;
}

tlOffsetListChunk* tlExpressionOffsets::GetOffsetListChunk( int index ) const
{
    if ( ( index < 0 ) || ( index >= offsetListChunks.Count() ) ) return NULL;

    return offsetListChunks[index];
}

