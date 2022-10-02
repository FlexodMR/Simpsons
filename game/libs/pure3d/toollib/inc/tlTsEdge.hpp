/*===========================================================================
    File:: tlTsEdge.hpp

    Copyright (c) 1999 Radical Entertainment, Inc.  All rights reserved.

===========================================================================*/

#ifndef _TLTSEDGE_HPP
#define _TLTSEDGE_HPP

#include "tlTable.hpp"


class tlTsEdge
{
public:
    tlTsEdge(unsigned int v0, unsigned int v1);
    tlTsEdge(unsigned int v0, unsigned int v1, unsigned long int tri);
    tlTsEdge();
    virtual ~tlTsEdge();

    void AddTriangle(unsigned long int tri);
    inline const tlTable<unsigned long int> & GetTriangles() const { return tris; };
    inline unsigned int GetVertex(unsigned int i) const { return verts[i]; }
    inline void SetVertex(unsigned int i, unsigned int value) { verts[i] = value; }
    
    void Print();
private:
    // edge vertices
    unsigned int verts[2];
    // triangles containing this edge
    // (only the triangle position in the triangle array is stored in this list)
    tlTable<unsigned long int> tris;

};

#endif

