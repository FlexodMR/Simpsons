/*===========================================================================
    File:: tlOffsetSkinVertex.hpp

    Copyright (c) 2001 Radical Entertainment, Inc.  All rights reserved.

===========================================================================*/

#ifndef _TLOFFSETSKINVERTEX_HPP
#define _TLOFFSETSKINVERTEX_HPP


#include "tlPoint.hpp"
#include "tlSkinVertex.hpp"

struct tlOffsetData
{
    int index;
    tlPoint offset;

    tlOffsetData(int i, const tlPoint& o);

    int  operator==(const tlOffsetData& a);
    
};

class tlOffsetSkinVertex : public tlSkinVertex
{
public:
    tlOffsetSkinVertex();
    virtual ~tlOffsetSkinVertex();

    // copy constructors
    tlOffsetSkinVertex(const tlVertex& v);
    tlOffsetSkinVertex(const tlSkinVertex& v);
    tlOffsetSkinVertex(const tlOffsetSkinVertex& v);

    tlOffsetSkinVertex(const tlPoint& vert,
                      const tlPoint& norm,
                      const tlColour& col,
                      const tlUV& uv0);

    virtual tlVertex* Clone() const;

    virtual int Compare(const tlVertex& a);

    virtual void AddOffset(int index, const tlPoint& offset);
    virtual tlOffsetData* FindOffset(int index);
    virtual void TrimOffsets(float);
    virtual int GetNumOffsets();

    
private:

    tlTable<tlOffsetData> offsetdata;
};

#endif

