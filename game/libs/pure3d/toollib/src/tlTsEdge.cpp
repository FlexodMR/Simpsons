/*===========================================================================
    File:: tlTsEdge.cpp

    Copyright (c) 1999 Radical Entertainment, Inc.  All rights reserved.

===========================================================================*/

#include "stdio.h"
#include "tlTsEdge.hpp"


tlTsEdge::tlTsEdge()
{

}

tlTsEdge::tlTsEdge( unsigned int v0, unsigned int v1 )
{
    if (v0 >= v1) 
    {
        verts[0] = v0;
        verts[1] = v1;
    }
    else    
    {
        verts[0] = v1;
        verts[1] = v0;
    }
}

tlTsEdge::tlTsEdge(unsigned int v0, unsigned int v1, unsigned long int tri)
{
    if (v0 >= v1) 
    {
        verts[0] = v0;
        verts[1] = v1;
    }
    else    
    {
        verts[0] = v1;
        verts[1] = v0;
    }
    
    tris.Append(tri);
}

tlTsEdge::~tlTsEdge()
{

}

void 
tlTsEdge::AddTriangle(unsigned long int tri)
{
    // check this, might be able to use just Append
    tris.AppendUnique(tri);
}
void
tlTsEdge::Print()
{
    printf("\tVertex 0: %d", verts[0]);
    printf("\tVertex 1: %d", verts[1]);
}

