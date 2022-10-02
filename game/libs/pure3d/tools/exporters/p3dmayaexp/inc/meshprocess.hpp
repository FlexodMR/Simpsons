/*===========================================================================
    meshprocess.hpp
    created: Jan 21, 2000
    Greg Mayer

    Copyright (c) 2000 Radical Entertainment, Inc.
    All rights reserved.
===========================================================================*/

#ifndef _MESHPROCESS_HPP
#define _MESHPROCESS_HPP

#include <maya/MFnMesh.h>
#include <maya/MStringArray.h>
#include <maya/MIntArray.h>
#include <maya/MItMeshPolygon.h>
#include <maya/MFnSkinCluster.h>

#include "tlInventory.hpp"
#include "tlTriMesh.hpp"
#include "tlTable.hpp"

#include "p3dexp.hpp"
#include "exporteroptions.hpp"
#include "materialprocess.hpp"

class tlPrimGroupMesh;
class tlSkin;
class tlSkeleton;
class tlIndexedSkinVertex;

class P3DEXPORT MeshProcess
{

 public:
    MeshProcess(tlInventory *inv = NULL);
  ~MeshProcess();

    void SetInventory(tlInventory *inv) { mInventory = inv; }

    MaterialProcess*            mMaterialProcessor;

    tlTriMesh*                  BuildTriMesh(
                                                const MDagPath& meshpath,   // dag path to the node
                                                int mesh_index, // smooth binding index
                                                bool is_skin,    // is this mesh smooth bound?
                                                tlTable<tlIndexedSkinVertex *> **vertex_lookup,
                                                MStatus* pStatus = NULL
                                            );

//    tlTriMesh*                  BuildTriMesh(
//                                                const MDagPath& hspath,
//                                                MFnMesh& mesh,
//                                                MItMeshPolygon& polyit,
//                                                MStatus* pStatus = NULL
//                                            );

    bool AppendTriMesh(tlTriMesh *mesh1, tlTriMesh *mesh2, bool delete_appended = false);

 private:

    tlInventory     *mInventory;

};


#endif // _MESHPROCESS_HPP

