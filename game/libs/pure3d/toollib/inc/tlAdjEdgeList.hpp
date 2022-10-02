/*===========================================================================
    File:: tlAdjEdgeList.hpp

    Copyright (c) 2000 Radical Entertainment, Inc.  All rights reserved.

===========================================================================*/

#ifndef _TLADJEDGELIST_HPP
#define _TLADJEDGELIST_HPP

#include "tlTable.hpp"
#include "tlEdge.hpp"

class tlPrimGroupMesh;

class tlAdjEdgeList
{
public:
    tlAdjEdgeList(const tlPrimGroupMesh& mesh);
    virtual ~tlAdjEdgeList() { if (list) delete [] list; }

    tlTable<int> * list;         // One table per vertex  The table is a list of indices into the edge list
    tlTable<tlEdge> edges;

    int FindEdge( int v1, int v2 );
    void AddEdge( int fi, int v1, int v2 );
    tlTable<int>& operator[](int i) { return list[i]; }

private:
    tlAdjEdgeList();
};

#endif

