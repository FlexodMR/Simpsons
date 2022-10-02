/*===========================================================================
    File:: tlIndexedSkinVertex.cpp

    Copyright (c) 2000 Radical Entertainment, Inc.  All rights reserved.

===========================================================================*/

#include "tlVertex.hpp"
#include "tlSkinVertex.hpp"
#include "tlIndexedSkinVertex.hpp"

tlIndexedSkinVertex::tlIndexedSkinVertex() :
    tlSkinVertex(),
    vertexindex(0),
    faceindex(0)
{
}

// Interface change by Bryan Ewert on 06 May 2002 - now requires faceidx.
tlIndexedSkinVertex::tlIndexedSkinVertex(   const tlPoint&  vert,
                                            const tlPoint&  norm,
                                            const tlColour& col,
                                            const tlUV&     uv0,
                                            const int       vertidx,
                                            const int       faceidx ) :
    tlSkinVertex(vert, norm, col, uv0),
    vertexindex(vertidx),
    faceindex(faceidx)
{
}

tlIndexedSkinVertex::tlIndexedSkinVertex(const tlVertex& vertex) :
    tlSkinVertex(vertex),
    vertexindex(0),
    faceindex(0)
{
}

tlIndexedSkinVertex::tlIndexedSkinVertex(const tlSkinVertex& vertex) :
    tlSkinVertex(vertex),
    vertexindex(0),
    faceindex(0)
{
}

tlIndexedSkinVertex::tlIndexedSkinVertex(const tlIndexedSkinVertex& vertex) :
    tlSkinVertex(vertex),
    vertexindex(vertex.vertexindex),
    faceindex(vertex.faceindex)
{
}

tlIndexedSkinVertex::~tlIndexedSkinVertex()
{
}

tlVertex*
tlIndexedSkinVertex::Clone() const
{
    return new tlIndexedSkinVertex(*this);
}


