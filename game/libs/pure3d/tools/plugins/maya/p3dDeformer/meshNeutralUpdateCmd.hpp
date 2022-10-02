/*===========================================================================
    p3dDeformer/meshNeutralUpdateCmd.hpp

    Copyright (c)2000 Radical Entertainment, Inc.
    All rights reserved.
===========================================================================*/

#ifndef P3D_DEFORM_MESHNEUTRALUPDATECMD_HPP
#define P3D_DEFORM_MESHNEUTRALUPDATECMD_HPP


#include <maya/MPxCommand.h>
#include <maya/MVectorArray.h>
#include <maya/MDGModifier.h>


class MArgList;


class p3dDeformMeshNeutralUpdateCmd: public MPxCommand
{
public:

    p3dDeformMeshNeutralUpdateCmd();
    virtual ~p3dDeformMeshNeutralUpdateCmd();

    static void* creator();

    MStatus doIt(const MObject& node);

    virtual bool isUndoable() const;
    virtual MStatus doIt(const MArgList& args);
    virtual MStatus undoIt();
    virtual MStatus redoIt();

private:

    MObject depNode;
    bool neutralNodeCreated;
    MDGModifier deformerModifier;
    MObject neutralNode;
    MDGModifier offsetsModifier;
    MVectorArray offsets;
};


#endif

