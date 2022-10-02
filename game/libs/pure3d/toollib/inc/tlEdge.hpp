/*===========================================================================
    File:: tlEdge.hpp

    Copyright (c) 2000 Radical Entertainment, Inc.  All rights reserved.

===========================================================================*/

#ifndef _TLEDGE_HPP
#define _TLEDGE_HPP

class tlEdge
{
public:
    tlEdge();
    tlEdge(int f, int v1, int v2);
    virtual ~tlEdge();

    int face[2];
    int vertex[2];
    
    int OtherVert (int vv) { return (vertex[0] == vv) ? vertex[1] : vertex[0]; }
    int OtherFace (int ff) { return (face[0] == ff) ? face[1] : face[0]; }

    bool operator==(const tlEdge& edge) const;

private:
};

#endif

