/*===========================================================================
    p3dDeformer/snapMesh.hpp

    Copyright (c)2000 Radical Entertainment, Inc.
    All rights reserved.
===========================================================================*/

#ifndef P3D_DEFORM_SNAPMESH_HPP
#define P3D_DEFORM_SNAPMESH_HPP


#include <maya/MPxCommand.h>
#include <maya/MPointArray.h>
#include <maya/MVectorArray.h>
#include <maya/MIntArray.h>
#include <maya/MDagPath.h>
#include <maya/MDGModifier.h>
#include "expressionStateCreateCmd.hpp"

class MStatus;
class MArgList;


class p3dDeformSnapMeshCmd: public MPxCommand
{
public:

    virtual MStatus doIt(const MArgList& args);
    virtual MStatus undoIt();
    virtual MStatus redoIt();
    virtual bool isUndoable() const;

    static void* creator();

protected:

    MString meshTgtName;
    MDagPath meshTgtDagPath;
    MPointArray undoPoints;
    MVectorArray undoVertices;
    MIntArray undoIndices;

private:
     MDGModifier dgModifier;
};


class p3dDeformCopyOffsetsCmd : public MPxCommand
{
public:
    virtual MStatus doIt(const MArgList& args);
    virtual MStatus undoIt();
    virtual MStatus redoIt();
    virtual bool isUndoable() const;

    static void* creator();

protected:

    MString meshTgtName;
    MDagPath meshTgtDagPath;
    
private:
     MDGModifier dgModifier;
};

#endif

