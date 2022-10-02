/*===========================================================================
    File:: tlIndexedSkinVertex.hpp

    Copyright (c) 2000 Radical Entertainment, Inc.  All rights reserved.

===========================================================================*/

#ifndef _TLINDEXEDSKINVERTEX_HPP
#define _TLINDEXEDSKINVERTEX_HPP

#include "tlSkinVertex.hpp"

class tlIndexedSkinVertex : public tlSkinVertex
{
    public:
        tlIndexedSkinVertex();
    // Interface change by Bryan Ewert on 06 May 2002 - now requires faceidx.
        tlIndexedSkinVertex(const tlPoint&  vert,
                                  const tlPoint&  norm,
                                  const tlColour& col,
                                  const tlUV&     uv0,
                                  const int       vertidx,
                                  const int       faceidx );
        tlIndexedSkinVertex(const tlVertex& vertex);
        tlIndexedSkinVertex(const tlSkinVertex& vertex);
        tlIndexedSkinVertex(const tlIndexedSkinVertex& vertex);
        virtual ~tlIndexedSkinVertex();

        virtual tlVertex* Clone() const;

        int GetVertexIndex() const { return vertexindex; }
        int GetFaceIndex() const { return faceindex; }
        void SetVertexIndex(int index)  {vertexindex = index;}
        void SetFaceIndex(int index)    {faceindex = index;}

    protected:
        int vertexindex;
        int faceindex;
};

#endif

