/*===========================================================================
    File:: tlAdjEdgeList.cpp

    Copyright (c) 2000 Radical Entertainment, Inc.  All rights reserved.

===========================================================================*/

#include "tlAdjEdgeList.hpp"
#include <assert.h>
#include <stdlib.h>

#include "tlPrimGroupMesh.hpp"

tlAdjEdgeList::tlAdjEdgeList() : list(NULL), edges()
{
}

tlAdjEdgeList::tlAdjEdgeList(const tlPrimGroupMesh& mesh) : list(NULL) , edges()
{
    int face = 0;

    list = new tlTable<int>[mesh.NumVertices()];

    int start = 0;
    for( int pg = 0; pg < mesh.NumPrimGroups() ; pg++ )
    {
        const tlPrimGroup* group = mesh.GetPrimGroup(pg);
        if(group->GetType() != PDDI_PRIM_TRIANGLES)
        {
            continue;
        }
        
        for(int v = 0; v < group->GetIndexCount(); v +=3)
        {
            int indices[3];
            indices[0] = group->GetIndex(v    ) + start;
            indices[1] = group->GetIndex(v + 1) + start;
            indices[2] = group->GetIndex(v + 2) + start;
            
            AddEdge(face, indices[0], indices[1]);
            AddEdge(face, indices[1], indices[2]);
            AddEdge(face, indices[2], indices[0]);
            
            face++;
        }
        start += group->GetVertexCount();
    }
}

int 
tlAdjEdgeList::FindEdge(int v1, int v2)
{
    tlTable<int>& el = list[v1];
    int count = el.Count();
    for(int i = 0 ; i < count; i++)
    {
        int index = el[i];
        if(edges[index].OtherVert(v1) == v2)
        {
            return index;
        }
    }
    return -1;
}

void
tlAdjEdgeList::AddEdge(int fi, int v1, int v2)
{
    assert(list);

    int edge = FindEdge(v1, v2);

    if ( edge == -1 )
    {
        // never seen this edge
        tlEdge edge(fi, v1, v2);
        int index = edges.Count();
        edges.Append(edge);
        list[v1].Append(index);
        list[v2].Append(index);
    } else {
        // we've seen this edge, just add the face
        edges[edge].face[1] = fi;
    }
}

