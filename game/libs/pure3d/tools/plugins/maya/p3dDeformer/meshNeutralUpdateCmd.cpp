/*===========================================================================
    p3dDeformer/meshNeutralUpdateCmd.cpp

    Copyright (c)2000 Radical Entertainment, Inc.
    All rights reserved.
===========================================================================*/

#include <maya/MArgList.h>
#include <maya/MSelectionList.h>
#include <maya/MItGeometry.h>
#include <maya/MGlobal.h>
#include <maya/MFnDependencyNode.h>
#include <maya/MPlug.h>
#include <maya/MFloatArray.h>
#include <maya/MFnVectorArrayData.h>

#include "common.hpp"
#include "utility.hpp"
#include "meshNeutralUpdateCmd.hpp"


p3dDeformMeshNeutralUpdateCmd::p3dDeformMeshNeutralUpdateCmd()
{
}


p3dDeformMeshNeutralUpdateCmd::~p3dDeformMeshNeutralUpdateCmd()
{
}



void* p3dDeformMeshNeutralUpdateCmd::creator()
{
    return new p3dDeformMeshNeutralUpdateCmd;
}


bool p3dDeformMeshNeutralUpdateCmd::isUndoable() const
{
    return true;
}


MStatus p3dDeformMeshNeutralUpdateCmd::doIt(const MObject& node)
{
    MStatus status;
    MString cmd;

    depNode = node;

    MFnDependencyNode depFn(depNode, &status);
    P3D_DEFORM_STATUS(status);

    MItGeometry itor(depNode, &status);
    if (!status)
    {
        displayError(depFn.name() + " does not contain geometry");
        return status;
    }

    // check to see if a p3dDeformMeshNeutral node already exists
    status = p3dDeformFindInHistory(depNode, "p3dDeformMeshNeutral", true, neutralNode);

    if (status)
    {
        neutralNodeCreated = false;
    }
    else
    {
        // p3dDeformMeshNeutral node not found, needs to be created
        cmd = "deformer -foc -type p3dDeformMeshNeutral ";
        cmd += depFn.name();
        status = deformerModifier.commandToExecute(cmd);
        P3D_DEFORM_STATUS(status);

        status = deformerModifier.doIt();
        P3D_DEFORM_STATUS(status);

        // this time, the search SHOULD succeed
        status = p3dDeformFindInHistory(depNode, "p3dDeformMeshNeutral", true, neutralNode);
        P3D_DEFORM_STATUS(status);

        neutralNodeCreated = true;
    }

    MFnDependencyNode neutralFn(neutralNode, &status);
    P3D_DEFORM_STATUS(status);

    MPlug ofsPlug = neutralFn.findPlug("offsets", &status);
    P3D_DEFORM_STATUS(status);

    // store original offset values (if any)
    MObject ofsData;
    status = ofsPlug.getValue(ofsData);
    if (status)
    {
        MFnVectorArrayData origOffsets(ofsData, &status);
        P3D_DEFORM_STATUS(status);

        status = origOffsets.copyTo(offsets);
        P3D_DEFORM_STATUS(status);
    }

    MVectorArray tmpOffsets;
    MDoubleArray tmpDoubles;
    
    // iterate over geometry and store current configuration as neutral
    int geoIndex = 0;

    long size = itor.count();
    
    if (size > 0)
    {
        cmd = "getAttr "; 
        cmd+= depFn.name();
        cmd+=".vtx[0:";
        cmd+=(int)size-1;
        cmd+="]";
        status = MGlobal::executeCommand(cmd, tmpDoubles);
        
        while (!itor.isDone())
        {
        
            
            MVector tempVec(tmpDoubles[geoIndex*3], tmpDoubles[geoIndex*3 + 1], tmpDoubles[geoIndex*3 +2]);

            // we've found a tweaked point, reset the tweak and store it
            if (tempVec.length() > 0.0f)
            {
                cmd = "setAttr ";
                cmd += depFn.name();
                cmd += ".vtx[";
                cmd += geoIndex;
                cmd += "] -type float3 0 0 0";
                status = offsetsModifier.commandToExecute(cmd);
                P3D_DEFORM_STATUS(status);

                tmpOffsets.append(tempVec);
            }
            else
            {
             tmpOffsets.append(MVector(0, 0, 0));
            }

            status = itor.next();
            P3D_DEFORM_STATUS(status);
            ++geoIndex;
        }
    
        
        status = offsetsModifier.doIt();
        P3D_DEFORM_STATUS(status);
    }
    

    MFnVectorArrayData neutralOffsets;
    MObject neutralOfsObj = neutralOffsets.create(tmpOffsets, &status);
    P3D_DEFORM_STATUS(status);

    status = ofsPlug.setValue(neutralOfsObj);
    P3D_DEFORM_STATUS(status);

    setResult(neutralFn.name());

    return MS::kSuccess;
}


MStatus p3dDeformMeshNeutralUpdateCmd::doIt(const MArgList& args)
{
    MStatus status;
    MObject object;

    if (args.length() > 0)
    {
        if (args.length() != 1)
        {
            displayError("Incorrect number of arguments");
            return MS::kFailure;
        }
        else
        {
            // arguments specified, so find the corresponding mesh
            status = p3dDeformFindDependencyNode(args.asString(0), object);
            P3D_DEFORM_STATUS(status);
        }
    }
    else
    {
        // no arguments specified, so use currently selected meshes
        MSelectionList selList;
        status = MGlobal::getActiveSelectionList(selList);
        P3D_DEFORM_STATUS(status);

        if (selList.length() > 0)
        {
            if (selList.length() != 1)
            {
                displayError("Only one object should be selected for this command");
                return MS::kFailure;
            }
            else
            {
                status = selList.getDependNode(0, object);
                P3D_DEFORM_STATUS(status);
            }
        }
        else
        {
            displayError("No object selected");
            return MS::kFailure;
        }
    }

    return doIt(object);
}


MStatus p3dDeformMeshNeutralUpdateCmd::undoIt()
{
    MStatus status;

    MFnDependencyNode neutralFn(neutralNode, &status);
    P3D_DEFORM_STATUS(status);

    MPlug ofsPlug = neutralFn.findPlug("offsets", &status);
    P3D_DEFORM_STATUS(status);

    // store original offset values (if any)
    MObject ofsData;
    status = ofsPlug.getValue(ofsData);
    P3D_DEFORM_STATUS(status);

    MFnVectorArrayData neutralOffsets(ofsData, &status);
    P3D_DEFORM_STATUS(status);

    MVectorArray redoOffsets;
    status = neutralOffsets.copyTo(redoOffsets);
    P3D_DEFORM_STATUS(status);

    if (neutralNodeCreated)
    {
        // delete mesh neutral node
        status = deformerModifier.undoIt();
        P3D_DEFORM_STATUS(status);
    }
    else
    {
        // copy original offsets back into neutral node
        MFnVectorArrayData undoOffsets;
        MObject undoOfsObj = undoOffsets.create(offsets, &status);
        P3D_DEFORM_STATUS(status);

        status = ofsPlug.setValue(undoOfsObj);
        P3D_DEFORM_STATUS(status);
    }

    status = offsetsModifier.undoIt();
    P3D_DEFORM_STATUS(status);

    offsets = redoOffsets;

    return MS::kSuccess;
}


MStatus p3dDeformMeshNeutralUpdateCmd::redoIt()
{
    MStatus status;

    if (neutralNodeCreated)
    {
        status = deformerModifier.doIt();
        P3D_DEFORM_STATUS(status);

        status = p3dDeformFindInHistory(depNode, "p3dDeformMeshNeutral", true, neutralNode);
        P3D_DEFORM_STATUS(status);
    }

    MFnDependencyNode neutralFn(neutralNode, &status);
    P3D_DEFORM_STATUS(status);

    MPlug ofsPlug = neutralFn.findPlug("offsets", &status);
    P3D_DEFORM_STATUS(status);

    // store original offset values (if any)
    MVectorArray undoOffsets;
    MObject ofsData;
    status = ofsPlug.getValue(ofsData);
    if (status)
    {
        MFnVectorArrayData origOffsets(ofsData, &status);
        P3D_DEFORM_STATUS(status);

        status = origOffsets.copyTo(undoOffsets);
        P3D_DEFORM_STATUS(status);
    }

    MFnVectorArrayData neutralOffsets;
    MObject neutralOfsObj = neutralOffsets.create(offsets, &status);
    P3D_DEFORM_STATUS(status);

    status = ofsPlug.setValue(neutralOfsObj);
    P3D_DEFORM_STATUS(status);

    offsets = undoOffsets;

    status = offsetsModifier.doIt();
    P3D_DEFORM_STATUS(status);

    setResult(neutralFn.name());

    return MS::kSuccess;
}


// End of file.

