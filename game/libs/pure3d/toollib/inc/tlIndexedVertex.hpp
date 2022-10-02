/*===========================================================================
    File:: tlIndexedVertex.hpp

    Copyright (c) 1999 Radical Entertainment, Inc.  All rights reserved.

===========================================================================*/

#ifndef _TLINDEXEDVERTEX_HPP
#define _TLINDEXEDVERTEX_HPP

#include "tlVertex.hpp"

class tlIndexedVertex : public tlVertex
{
public:
    tlIndexedVertex();
    // Interface change by Bryan Ewert on 06 May 2002 - now requires faceidx.
    tlIndexedVertex(const tlPoint& vert, const tlPoint& norm, const tlColour& col, const tlUV& uv0, int vertidx, int faceidx, int uvidx);
    tlIndexedVertex(const tlVertex& vertex);
    tlIndexedVertex(const tlIndexedVertex& vertex);
    virtual ~tlIndexedVertex();
    
    virtual tlVertex* Clone() const;

    virtual void Print(int index, int indent);

    virtual int Compare(const tlVertex& a);

    int VertexIndex() const { return vertexindex; }
    int FaceIndex() const   { return faceindex; }
    int UVIndex() const     { return uvindex; }

    void SetVertexIndex(int index)  {vertexindex = index;}
    void SetFaceIndex(int index)    {faceindex = index;}
    void SetUVIndex(int index)      {uvindex = index;}

private:
    int vertexindex;
    int faceindex;
    int uvindex;
};

#endif

