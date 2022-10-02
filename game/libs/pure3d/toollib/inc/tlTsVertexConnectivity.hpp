/*===========================================================================
    File:: tlTsVertexConnectivity.hpp

    Copyright (c) 1999 Radical Entertainment, Inc.  All rights reserved.

===========================================================================*/

#ifndef _TLTSVERTEXCONNECTIVITY_HPP
#define _TLTSVERTEXCONNECTIVITY_HPP

#include "tlTable.hpp"

class tlTsVertexConnectivity
{
public:
    tlTsVertexConnectivity();
    virtual ~tlTsVertexConnectivity();

    void AddEdge(int eVertex, int eEdgeIndex);
    // If edge is found returns position of the edge in the edge array
    // else returns -1
    int EdgeContainingVertex(int eVertex) const;
    inline void IncrementConnectivity(int i = 1) { connectivity += i; }
    inline void DecrementConnectivity(int i = 1) { connectivity -= i; }
    inline int GetConnectivity() const { return connectivity; }
    
    void Print();

private:
    // number of triangles containing this vertex
    int connectivity;

    // edge defined by this vetex and tlTsVcEdge.vertex
    class tlTsVcEdge
    {
    public:
        tlTsVcEdge();
        tlTsVcEdge(int v, int ei);
        virtual ~tlTsVcEdge();      

        void Print();
        inline bool operator==(tlTsVcEdge & e) const { return false; }

        inline void SetVertex(int v) { vertex = v; };
        inline int GetVertex() const { return vertex; }
        inline void SetEdgeIndex(int ei) { edgeIndex = ei; }
        inline int GetEdgeIndex() const { return edgeIndex; }
    private:
        // second vertex of the edge
        int vertex;
        // position of this edge in the edge array
        int edgeIndex;
    };

    tlTable<tlTsVcEdge*> edges;
};

#endif

