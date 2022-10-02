/*===========================================================================
    File:: tlAdjFaceList.hpp

    This class lets you easily find the faces adjacent to a given
    vertex.  It's not meant to be used to find adjacent faces to a
    given face.

    Copyright (c) 2000 Radical Entertainment, Inc.  All rights reserved.

===========================================================================*/

#ifndef _TLADJFACELIST_HPP
#define _TLADJFACELIST_HPP

#include "tlTable.hpp"

class tlPrimGroupMesh;

class tlAdjFaceList
{
public:
    tlAdjFaceList(const tlPrimGroupMesh& mesh);
    virtual ~tlAdjFaceList() { if (list) delete [] list; }

    tlTable<int> * list;         // One table per vertex  The table is a list of indices into the face list
                                          // Note that currently, tlPrimGroupMeshes don't have a real face list

    void AddFace( int fi, int v);
    tlTable<int>& operator[](int i) { return list[i]; }

private:
    tlAdjFaceList();
};

#endif

