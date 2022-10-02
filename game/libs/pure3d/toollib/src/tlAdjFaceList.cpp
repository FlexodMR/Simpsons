/*===========================================================================
    File:: tlAdjFaceList.cpp

    Copyright (c) 2000 Radical Entertainment, Inc.  All rights reserved.

===========================================================================*/

#include "tlAdjFaceList.hpp"
#include <assert.h>
#include <stdlib.h>

#include "tlPrimGroupMesh.hpp"

tlAdjFaceList::tlAdjFaceList() : list(NULL)
{
}

tlAdjFaceList::tlAdjFaceList(const tlPrimGroupMesh& mesh) : list(NULL)
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
            
            AddFace(face, indices[0]);
            AddFace(face, indices[1]);
            AddFace(face, indices[2]);
            
            face++;
        }
        start += group->GetVertexCount();
    }
}

void
tlAdjFaceList::AddFace(int fi, int v)
{
    assert(list);

    list[v].Append(fi);
}

