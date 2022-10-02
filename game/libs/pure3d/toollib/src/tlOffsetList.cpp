/*===========================================================================
    File:: tlOffsetList.cpp

    Copyright (c) 1999 Radical Entertainment, Inc.  All rights reserved.

===========================================================================*/

#include <memory.h>

#include "tlOffsetList.hpp"

tlOffsetList::tlOffsetList():
        tlEntity(),
        numOffsets(0),
        maxPGs(0),
        nIndex(0),
        maxOffsets(0),
        primGroupIndex(-1),
        vtxOffsets(NULL)
{

}


tlOffsetList::tlOffsetList(tlDataChunk* ch):
        tlEntity(),
        numOffsets(0),
        maxPGs(0),
        nIndex(0),
        maxOffsets(0),
        primGroupIndex(-1),
        vtxOffsets(NULL)
{
    LoadFromChunk(ch);
}

tlOffsetList::tlOffsetList( const tlOffsetList & list ):      
        numOffsets(list.numOffsets),
        maxPGs(0),
        nIndex(list.nIndex),
        maxOffsets(list.maxOffsets),
        primGroupIndex(-1),
        vtxOffsets(NULL)
{
     vtxOffsets = new tlVtxOffset[numOffsets];
     for( unsigned int i = 0; i < numOffsets; ++i )
          vtxOffsets[ i ] = list.vtxOffsets[ i ];
}

tlOffsetList::~tlOffsetList()
{
    if(vtxOffsets)
        delete[] vtxOffsets;
}

tlOffsetList* tlOffsetList::Clone() const
{
    return new tlOffsetList(*this);
}

void tlOffsetList::SetNumOffsets(unsigned long numOffsets)
{
    assert(numOffsets >= 0);
    
    this->numOffsets = numOffsets;
    maxOffsets = this->numOffsets;

    if(vtxOffsets != NULL)
    {
        delete[] vtxOffsets;
    }

    vtxOffsets = new tlVtxOffset[numOffsets];
}


/*void tlOffsetList::AppendPrimGroupIndex(unsigned long pgIdx)
{
    assert(pgIdx >= 0);

    if (maxPGs == 0)
    {
        maxPGs = 32;
        primGroupIndex = new unsigned long[maxPGs];
        memset(primGroupIndex, 0, sizeof(unsigned long)*maxPGs);
    }

    while (numPrimGroupIndex >= maxPGs)
    {
        maxPGs *= 2;
        
        unsigned long* new_pgIdxs = new unsigned long[maxPGs];

        if (primGroupIndex != NULL)
        {
            memcpy(new_pgIdxs, primGroupIndex, sizeof(unsigned long) * numPrimGroupIndex);
            delete[] primGroupIndex;
        }

        primGroupIndex = new_pgIdxs;
    }

    //ensure that this primgroup not already in the primgroupindx list
    for(unsigned long i = 0; i < numPrimGroupIndex; i++)
    {
        if(primGroupIndex[i] == pgIdx)
            return;
    }
    primGroupIndex[numPrimGroupIndex] = pgIdx;
    numPrimGroupIndex++;
}*/

void tlOffsetList::AppendVertexOffset(unsigned long index, float fOffsetX, float fOffsetY, float fOffsetZ)
{
    if (maxOffsets == 0)
    {
        maxOffsets = 32;
        vtxOffsets = new tlVtxOffset[32];
        memset(vtxOffsets, 0, sizeof(tlVtxOffset)*32);
    }

    while (numOffsets >= maxOffsets)
    {
        maxOffsets *= 2;
        
        tlVtxOffset* new_offsets = new tlVtxOffset[maxOffsets];

        if (vtxOffsets != NULL)
        {
            memcpy(new_offsets, vtxOffsets, sizeof(tlVtxOffset) * numOffsets);
            delete[] vtxOffsets;
        }

        vtxOffsets = new_offsets;
    }

    // make sure that the offset being added
    // doesn't already exist
    bool bFound = false;
    for(unsigned int i = 0; i < numOffsets; ++i)
    {
        if(vtxOffsets[i].index == index)
        {
            bFound = true;
        }
    }

    if(!bFound)
    {
        vtxOffsets[numOffsets].index = index;
        vtxOffsets[numOffsets].offsetx = fOffsetX;
        vtxOffsets[numOffsets].offsety = fOffsetY;
        vtxOffsets[numOffsets].offsetz = fOffsetZ;

        ++numOffsets;
    }
}


void tlOffsetList::LoadFromChunk(tlDataChunk *chunk)
{
    tlOffsetListChunk* pOffsetListChunk = dynamic_cast<tlOffsetListChunk*>(chunk);

    nIndex = pOffsetListChunk->GetKeyIndex();
    
    SetNumOffsets(pOffsetListChunk->GetNumOffsets());
    SetPrimGroupIndex(pOffsetListChunk->GetPrimGroupIndex());
    memcpy(vtxOffsets, pOffsetListChunk->GetOffsets(), sizeof(tlVtxOffset) * numOffsets);
}


tlDataChunk* tlOffsetList::Chunk()
{
    tlOffsetListChunk* pOffsetListChunk = new tlOffsetListChunk;

    pOffsetListChunk->SetKeyIndex(nIndex);
    pOffsetListChunk->SetNumOffsets(numOffsets);
    pOffsetListChunk->SetPrimGroupIndex(primGroupIndex);
    pOffsetListChunk->SetOffsets(vtxOffsets, numOffsets);

    return pOffsetListChunk;
}


static int tlVtxOffset_Compare(const void* elem1, const void* elem2)
{
    tlVtxOffset* v1 = (tlVtxOffset*)elem1;
    tlVtxOffset* v2 = (tlVtxOffset*)elem2;

    if (v1->index < v2->index)
    {
        return -1;
    }
    else if (v1->index > v2->index)
    {
        return 1;
    }

    return 0;
}


void tlOffsetList::Sort()
{
    qsort(vtxOffsets, numOffsets, sizeof(tlVtxOffset), tlVtxOffset_Compare);
}


