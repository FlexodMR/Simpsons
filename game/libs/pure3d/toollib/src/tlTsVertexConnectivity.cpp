/*===========================================================================
    File:: tlTsVertexConnectivity.cpp

    Copyright (c) 1999 Radical Entertainment, Inc.  All rights reserved.

===========================================================================*/

#include <stdio.h>
#include "tlTsVertexConnectivity.hpp"

tlTsVertexConnectivity::tlTsVertexConnectivity()
{
    connectivity = 0;
}


tlTsVertexConnectivity::~tlTsVertexConnectivity()
{
    for (int i = 0; i < edges.Count(); i ++)
    {
        delete edges[i];
    }
}

int 
tlTsVertexConnectivity::EdgeContainingVertex(int eVertex) const
{
    bool notFound = true;
    int edge = -1;
    
    for (int i =0; notFound && i < edges.Count(); i++)
    {
        if (edges[i]->GetVertex() == eVertex)
        {         
            notFound = false;
            edge = edges[i]->GetEdgeIndex();
        }
    }
    
    return edge;
}
    
void
tlTsVertexConnectivity::AddEdge(int eVertex, int eEdgeIndex)
{
    tlTsVcEdge * edge = new tlTsVcEdge(eVertex, eEdgeIndex);
    edges.Append(edge);
}

tlTsVertexConnectivity::tlTsVcEdge::tlTsVcEdge()
{

}

tlTsVertexConnectivity::tlTsVcEdge::~tlTsVcEdge()
{

}

tlTsVertexConnectivity::tlTsVcEdge::tlTsVcEdge(int v, int ei)
{
    edgeIndex = ei;
    vertex = v;
}

void 
tlTsVertexConnectivity::tlTsVcEdge::Print()
{
    printf("\tVertex: %4d    Edge: %4d\n" , vertex, edgeIndex);
}

void 
tlTsVertexConnectivity::Print()
{
    printf("\tConnectivity: %4d\n", connectivity);
    printf("\tEdges:\n");
    for(int i =0; i < edges.Count(); i++)
    {
        printf("\tedge: %3d:", i);
        edges[i]->Print();
    }
}

