/*===========================================================================
    File:: tlIndexedVertex.cpp

    Copyright (c) 1999 Radical Entertainment, Inc.  All rights reserved.

===========================================================================*/

#include "tlIndexedVertex.hpp"
#include <assert.h>
#include <stdio.h>

#include "tlPoint.hpp"
#include "tlColour.hpp"
#include "tlUV.hpp"

//#include <bewert_debug.h>

tlIndexedVertex::tlIndexedVertex() : 
        vertexindex(0),
        faceindex(0),
        uvindex(0)
{

}

// Interface change by Bryan Ewert on 06 May 2002 - now requires faceidx.
tlIndexedVertex::tlIndexedVertex(const tlPoint& vert,
                                            const tlPoint& norm,
                                            const tlColour& col,
                                            const tlUV& uv0,
                                            int vertidx, 
                                            int faceidx,
                                            int uvidx) : 
        tlVertex(vert, norm, col, uv0),
        vertexindex(vertidx),
        faceindex(faceidx),
        uvindex(uvidx)
{
}

tlIndexedVertex::tlIndexedVertex(const tlVertex& vertex) :
        tlVertex(vertex),
        vertexindex(0),
        faceindex(0),
        uvindex(0)
{
    //
}

// copy constructor
tlIndexedVertex::tlIndexedVertex(const tlIndexedVertex& vertex) :
        tlVertex(vertex),
        vertexindex(vertex.vertexindex),
        faceindex(vertex.faceindex),
        uvindex(vertex.uvindex)
{
    //
}

tlIndexedVertex::~tlIndexedVertex()
{

}

tlVertex*
tlIndexedVertex::Clone() const
{
    return new tlIndexedVertex(*this);
}

void 
tlIndexedVertex::Print(int index, int indent)
{
    tlVertex::Print(index,indent);
    printf("%*s    vertexindex:%d\n", indent, "", vertexindex);
    printf("%*s    faceindex:%d\n", indent, "", faceindex);
    printf("%*s    uvindex:%d\n", indent, "", uvindex);
}

int
tlIndexedVertex::Compare(const tlVertex& a)
{
    int result = tlVertex::Compare(a);

    if (result == 0)
    {
        const tlIndexedVertex* iv = dynamic_cast<const tlIndexedVertex*>(&a);
        assert(iv);

        result = vertexindex - iv->vertexindex;

// I'm concerned that this will result in unnecessary vertex duplication.
// The face index is ONLY a reference back to the original Maya face;
// it in NO WAY affects the vertex performance in Pure3D.
// So I'm leaving this bit disabled.
//        if (result == 0)
//        {
//            result = faceindex - iv->faceindex;
//        }

        if (result == 0)
        {
            result = uvindex - iv->uvindex;
        }
    }
    
    return result;
}

