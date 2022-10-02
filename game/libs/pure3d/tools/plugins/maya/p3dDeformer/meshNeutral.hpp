/*===========================================================================
    p3dDeformer/meshNeutral.hpp

    Copyright (c)2000 Radical Entertainment, Inc.
    All rights reserved.
===========================================================================*/

#ifndef P3D_DEFORM_MESHNEUTRAL_HPP
#define P3D_DEFORM_MESHNEUTRAL_HPP


#include <maya/MPxDeformerNode.h>

/*
There is a neutral mesh corresponding to a mesh.  This stores the offsets
of the mesh at the time the group was created.  This lets you create expressions
based on already-deformed shapes.
*/
class p3dDeformMeshNeutral: public MPxDeformerNode
{
public:

    p3dDeformMeshNeutral();
    virtual ~p3dDeformMeshNeutral(); 

    static void* creator();
    static MStatus initialize();

    virtual MStatus deform(MDataBlock& block,
                                  MItGeometry& itor,
                                  const MMatrix& mat,
                                  unsigned int multiIndex);

public:

    static MTypeId id;

    static MObject offsets;
};


#endif

