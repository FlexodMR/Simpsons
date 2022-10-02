/*===========================================================================
    File:: tlOffsetSkinVertex.cpp

    Copyright (c) 2001 Radical Entertainment, Inc.  All rights reserved.

===========================================================================*/

#include "tlOffsetSkinVertex.hpp"
#include <assert.h>
#include "tlSkinVertex.hpp"

int
tlOffsetData::operator==(const tlOffsetData& a)
{
    return (index == a.index) && (offset == a.offset);
}

tlOffsetData::tlOffsetData(int i, const tlPoint& o) :
        index(i),
        offset(o)
{

}


tlOffsetSkinVertex::tlOffsetSkinVertex() :
    tlSkinVertex(),
    offsetdata()
{

}

tlOffsetSkinVertex::tlOffsetSkinVertex(const tlVertex& v) : 
        tlSkinVertex(v),
        offsetdata()
{
}

tlOffsetSkinVertex::tlOffsetSkinVertex(const tlSkinVertex& v) : 
        tlSkinVertex(v),
        offsetdata()
{

}

tlOffsetSkinVertex::tlOffsetSkinVertex(const tlOffsetSkinVertex& v) : 
        tlSkinVertex(v),
        offsetdata(v.offsetdata)
{
}

tlOffsetSkinVertex::tlOffsetSkinVertex(const tlPoint& vert,
                                    const tlPoint& norm,
                                    const tlColour& col,
                                    const tlUV& uv0) : 
        tlSkinVertex(vert, norm, col, uv0)
{
}

tlVertex*
tlOffsetSkinVertex::Clone() const
{
    return new tlOffsetSkinVertex(*this);
}

tlOffsetSkinVertex::~tlOffsetSkinVertex()
{

}

static int
Compare( int a, int b )
{
    return ( a - b );
}

int
tlOffsetSkinVertex::Compare(const tlVertex& a)
{
    const tlOffsetSkinVertex* osv = dynamic_cast<const tlOffsetSkinVertex*>(&a);
    assert(osv);

    int result = ::Compare(osv->offsetdata.Count(), offsetdata.Count());
    
    if ((result == 0) && (offsetdata.Count() > 0))
    {
        result = ::Compare(offsetdata[0].index, osv->offsetdata[0].index);
    }

    if(result == 0)
    {
        result = tlSkinVertex::Compare(a);
    }

    return result;
}

void tlOffsetSkinVertex::AddOffset(int index, const tlPoint& offset)
{
    tlOffsetData off(index, offset);
    
    offsetdata.Append(off);
}

tlOffsetData*
tlOffsetSkinVertex::FindOffset(int index)
{
    for(int i = 0; i < offsetdata.Count(); i++)
    {
        if(offsetdata[i].index == index)
        {
            return offsetdata.Addr(i);
        }
    }
    return NULL;
}

void tlOffsetSkinVertex::TrimOffsets(float tolerance)
{
    for (int i=0; i < offsetdata.Count(); i++)
    {
        if (offsetdata[i].offset.Length() < tolerance)
            offsetdata.Delete(i,1);
    }
    offsetdata.Shrink();

}

int tlOffsetSkinVertex::GetNumOffsets()
{
    return offsetdata.Count();
}

