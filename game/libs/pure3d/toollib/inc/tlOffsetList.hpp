/*===========================================================================
    File:: tlOffsetList.hpp

    Copyright (c) 1999 Radical Entertainment, Inc.  All rights reserved.

===========================================================================*/

#ifndef _TLOFFSETLIST_HPP
#define _TLOFFSETLIST_HPP

#include "tlEntity.hpp"
#include "tlPrimGroupChunk.hpp"
#include "tlSkinChunk.hpp"


class tlOffsetList : tlEntity
{
public:
    tlOffsetList();
    tlOffsetList(tlDataChunk* ch);
    tlOffsetList( const tlOffsetList & list );
    virtual ~tlOffsetList();

    tlOffsetList * Clone( ) const;
    void LoadFromChunk16(tlDataChunk* chunk) {}
    tlDataChunk* Chunk16() {return 0;}

    void LoadFromChunk(tlDataChunk* chunk);
    tlDataChunk* Chunk();

    int GetNumOffsets() { return numOffsets; }
    void SetNumOffsets(unsigned long numOffsets);
    tlVtxOffset* GetVtxOffsetlist() {return vtxOffsets;}

    void SetIndex(int nIndex) { this->nIndex = nIndex; }
    int  GetIndex() { return nIndex; }

    void SetVtxOffsets(tlVtxOffset* v) {vtxOffsets = v;}

    void SetPrimGroupIndex(unsigned long pgIdx) {primGroupIndex = pgIdx;}
    unsigned long GetPrimGroupIndex() { return primGroupIndex; } 

    void AppendVertexOffset(unsigned long index, float fOffsetX, float fOffsetY, float fOffsetZ);
    //void AppendPrimGroupIndex(unsigned long pgIdx);
    void Sort();

private:
    unsigned long numOffsets;
    unsigned long nIndex;
    unsigned long maxOffsets;
    unsigned long maxPGs;

    unsigned long primGroupIndex;    //the primGroup to which this offsetlist apply
    tlVtxOffset* vtxOffsets;
};

#endif

