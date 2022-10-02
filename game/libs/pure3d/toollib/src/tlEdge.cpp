/*===========================================================================
    File:: tlEdge.cpp

    Copyright (c) 2000 Radical Entertainment, Inc.  All rights reserved.

===========================================================================*/

#include "tlEdge.hpp"
#include <assert.h>


tlEdge::tlEdge()
{
    face[0] = -1;
    face[1] = -1;
    vertex[0] = -1;
    vertex[1] = -1;
}

tlEdge::tlEdge(int f, int v1, int v2)
{
    face[0] = f;
    face[1] = -1;
    vertex[0] = v1;
    vertex[1] = v2;
}

tlEdge::~tlEdge()
{

}


bool
tlEdge::operator==(const tlEdge& edge) const
{
    return (face[0] == edge.face[0]) &&
        (face[1] == edge.face[1]) &&
        (vertex[0] == edge.vertex[0]) &&
        (vertex[1] == edge.vertex[1]);
}

