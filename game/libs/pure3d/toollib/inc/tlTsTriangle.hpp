/*===========================================================================
    File:: tlTsTriangle.hpp

    Copyright (c) 1999 Radical Entertainment, Inc.  All rights reserved.

===========================================================================*/

#ifndef _TLTSTRIANGLE_HPP
#define _TLTSTRIANGLE_HPP

#include "tlTable.hpp"


class tlTsTriangle
{
public:
    tlTsTriangle();
    tlTsTriangle( unsigned int v0, unsigned int v1, unsigned int v2 );
    virtual ~tlTsTriangle();

    int IndexOfFirstUnsharedVertex(const tlTsTriangle * tri) const;
    void RemoveAdjacentTriangle(unsigned int tri);
    int GetVertexDifferentThen(unsigned int v1, unsigned int v2) const;
    bool ContainsVertices(unsigned int v1, unsigned int v2) const;
    inline unsigned int GetVertex(unsigned int i) const { return verts[i]; } 
    inline void SetVertex(unsigned int i, unsigned int v) { verts[i] = v; }
    inline bool GetAdded() const { return added; }
    inline void SetAdded(bool add) { added = add; }
    inline void SetTesting(bool flag ) { testing = flag; };
    inline bool GetTesting( ) { return testing; };
    void AddAdjacentTriangle(unsigned long int tri);
    inline unsigned int GetAdjacentTriangle(unsigned int i) { return adjTris[i]; }
    inline const tlTable<unsigned long int> & GetAdjacentTriangles() const { return adjTris; }
    inline unsigned int NumberOfAdjacentTriangles() const { return adjTris.Count(); }
    int GetVertexNotSharedBy( tlTsTriangle & tri );
    void Print();

private:
    unsigned int verts[3];
    // adjacent triangles
    tlTable<unsigned long int> adjTris;
    // is triangle added to a tristrip
    bool added;
    bool testing;
};

#endif

