/*===========================================================================
    p3dDeformer/snapMesh.cpp

    Copyright (c)2000 Radical Entertainment, Inc.
    All rights reserved.
===========================================================================*/

#include <maya/MArgList.h>
#include <maya/MGlobal.h>
#include <maya/MItDependencyNodes.h>
#include <maya/MFnMesh.h>
#include <maya/MFnTransform.h>
#include <maya/MItGeometry.h>
#include <maya/MDistance.h>
#include <maya/MPlugArray.h>
#include <maya/MFloatArray.h>
#include <maya/MFnVectorArrayData.h>
#include <maya/MFnIntArrayData.h>
#include <maya/MIntArray.h>

#include "common.hpp"
#include "utility.hpp"
#include "snapMesh.hpp"
#include "expressiongroup.hpp"
#include "expressionstate.hpp"

MStatus p3dDeformSnapMeshCmd::doIt(const MArgList& args)
{
    if (args.length() != 2)
    {
        MGlobal::displayError("Wrong number of arguments\n");
        return MS::kFailure;
    }

    MStatus status;

    meshTgtName = args.asString(0);
    MString meshRefName = args.asString(1);

    MDagPath meshRefDagPath;

    MItDependencyNodes itor(MFn::kMesh);
    int foundCount = 0;
    while (!itor.isDone() && (foundCount < 2))
    {
        MObject mesh = itor.item(&status);
        if (status == MS::kSuccess)
        {
            MFnMesh meshFn(mesh, &status);
            if (status == MS::kSuccess)
            {
                if (meshFn.fullPathName() == meshTgtName)
                {
                    status = meshFn.getPath(meshTgtDagPath);
                    P3D_DEFORM_STATUS(status);
                    ++foundCount;
                }
                else if (meshFn.fullPathName() == meshRefName)
                {
                    status = meshFn.getPath(meshRefDagPath);
                    P3D_DEFORM_STATUS(status);
                    ++foundCount;
                }
            }
        }

        itor.next();
    }

    if (foundCount < 2)
    {
        MGlobal::displayError("Could not find meshes\n");
        return MS::kFailure;
    }

    // Bug fix: Must compensate for scale factor of target mesh
    //          when applying vertex offset (v16.1)
    double                      scale[3];
    MDagPath tgtTrn( meshTgtDagPath );
    if ( !tgtTrn.hasFn( MFn::kTransform ) ) tgtTrn.pop();
    MFnTransform                fnTransform( tgtTrn );
    fnTransform.getScale( scale );

    MItGeometry geoTgt(meshTgtDagPath, &status);
    P3D_DEFORM_STATUS(status);
    MItGeometry geoRef(meshRefDagPath, &status);
    P3D_DEFORM_STATUS(status);

    if (geoTgt.count() != geoRef.count())
    {
        MGlobal::displayWarning("Mesh vertex counts do not match\n");
    }

    double unitConv = 1.0 / MDistance::uiToInternal(1.0);

    undoPoints.clear();
    undoIndices.clear();

    MPoint ofs, pTgt, pRef;
    MString cmd;
    int i = 0;

    while ((!geoTgt.isDone()) && (!geoRef.isDone()))
    {
        pTgt = geoTgt.position(MSpace::kObject, &status);
        P3D_DEFORM_STATUS(status);

        pRef = geoRef.position(MSpace::kObject, &status);
        P3D_DEFORM_STATUS(status);

        // Bug fix: Must compensate for scale factor of target mesh
        //          when applying vertex offset (v16.1)
        ofs.x = ( pRef.x - pTgt.x ) * scale[0];
        ofs.y = ( pRef.y - pTgt.y ) * scale[1];
        ofs.z = ( pRef.z - pTgt.z ) * scale[2];

        if ((ofs.x != 0.0) || (ofs.y != 0.0) || (ofs.z != 0.0))
        {
            ofs.x *= unitConv;
            ofs.y *= unitConv;
            ofs.z *= unitConv;

            cmd = "move -r -ls -wd ";
            cmd += ofs.x;
            cmd += " ";
            cmd += ofs.y;
            cmd += " ";
            cmd += ofs.z;
            cmd += " ";
            cmd += meshTgtName;
            cmd += ".vtx[";
            cmd += i;
            cmd += "]";

            status = MGlobal::executeCommand(cmd);
            P3D_DEFORM_STATUS(status);

            undoPoints.append(ofs);
            undoIndices.append(i);
        }

        geoTgt.next();
        geoRef.next();
        ++i;
    }

    return MS::kSuccess;
}


MStatus p3dDeformSnapMeshCmd::undoIt()
{
    if (undoVertices.length() <= 0)
        return MS::kSuccess;

    MStatus status;

    MItGeometry geoTgt(meshTgtDagPath, &status);
    P3D_DEFORM_STATUS(status);

    int i = 0, j = 0;
    MString cmd;
    MVector ofs;

    while (!geoTgt.isDone())
    {
        if (i == undoIndices[j])
        {
            ofs = undoVertices[j];

            cmd = "move -r -ls -wd ";
            cmd += (-ofs.x);
            cmd += " ";
            cmd += (-ofs.y);
            cmd += " ";
            cmd += (-ofs.z);
            cmd += " ";
            cmd += meshTgtName;
            cmd += ".vtx[";
            cmd += i;
            cmd += "]";

            status = MGlobal::executeCommand(cmd);
            P3D_DEFORM_STATUS(status);

            ++j;
        }

        geoTgt.next();
        ++i;
    }

    return MS::kSuccess;
}

MStatus p3dDeformSnapMeshCmd::redoIt()
{
    if (undoVertices.length() <= 0)
        return MS::kSuccess;

    MStatus status;

    MItGeometry geoTgt(meshTgtDagPath, &status);
    P3D_DEFORM_STATUS(status);

    int i = 0, j = 0;
    MString cmd;
    MVector ofs;

    while (!geoTgt.isDone())
    {
        if (i == undoIndices[j])
        {
            ofs = undoVertices[j];

            cmd = "move -r -ls -wd ";
            cmd += ofs.x;
            cmd += " ";
            cmd += ofs.y;
            cmd += " ";
            cmd += ofs.z;
            cmd += " ";
            cmd += meshTgtName;
            cmd += ".vtx[";
            cmd += i;
            cmd += "]";

            status = MGlobal::executeCommand(cmd);
            P3D_DEFORM_STATUS(status);

            ++j;
        }

        geoTgt.next();
        ++i;
    }

    return MS::kSuccess;
}

bool p3dDeformSnapMeshCmd::isUndoable() const
{
    return true;
}

void* p3dDeformSnapMeshCmd::creator()
{
    return new p3dDeformSnapMeshCmd;
}



//-------------------------------------------------------------
//-------------------------------------------------------------
//-------------------------------------------------------------


MStatus p3dDeformCopyOffsetsCmd::doIt(const MArgList& args)
{
    if (args.length() != 2)
    {
        MGlobal::displayError("Wrong number of arguments\n");
        return MS::kFailure;
    }
    unsigned i,j;
    MStatus status;

    meshTgtName = args.asString(0);
    MString meshRefName = args.asString(1);

    MGlobal::displayInfo(meshTgtName);
    MGlobal::displayInfo(meshRefName);
    
    MDagPath meshRefDagPath;

    MFnMesh tgtMeshFn;
    MFnMesh refMeshFn;

    MItDependencyNodes itor(MFn::kMesh);
    int foundCount = 0;
    while (!itor.isDone() && (foundCount < 2))
    {
        MObject mesh = itor.item(&status);
        if (status == MS::kSuccess)
        {
            MFnMesh meshFn(mesh, &status);
            
            if (status == MS::kSuccess)
            {
                if (meshFn.name() == meshTgtName)
                {
                    // keep a function set for the target
                    status = tgtMeshFn.setObject(mesh);
                    P3D_DEFORM_STATUS(status);

                    status = meshFn.getPath(meshTgtDagPath);
                    P3D_DEFORM_STATUS(status);
                    ++foundCount;
                }
                else if (meshFn.name() == meshRefName)
                {
                    // keep a function set for the reference
                    status = refMeshFn.setObject(mesh);
                    P3D_DEFORM_STATUS(status);
                    
                    status = meshFn.getPath(meshRefDagPath);
                    P3D_DEFORM_STATUS(status);
                    ++foundCount;
                }
            }
        }

        itor.next();
    }

    if (foundCount < 2)
    {
        MGlobal::displayError("Could not find meshes\n");
        return MS::kFailure;
    }

    MObject groupObj;
    status = p3dDeformFindInHistory(refMeshFn.object(), "p3dDeformExpressionGroup", true, groupObj);
    if (status != MStatus::kSuccess)
    {
        MGlobal::displayError("Selected mesh has no expression group.");
        return MS::kFailure;
    }

    
    MFnDependencyNode groupNode(groupObj);

    
    MString cmd = "select -r ";
    cmd+= meshTgtName;
    MGlobal::executeCommand(cmd);
    
    MString newGroupName;
    cmd = "p3dDeformExpressionGroupCreate ";
    cmd+=meshTgtName;
    MGlobal::executeCommand(cmd, newGroupName);

    MObject newGroupObj;
    status = p3dDeformFindInHistory(tgtMeshFn.object(), "p3dDeformExpressionGroup", true, newGroupObj);
    P3D_DEFORM_STATUS(status);
    MFnDependencyNode newGroupNode(newGroupObj);
    
    MStringArray allConnections;
    cmd = "listConnections ";
    cmd+=groupNode.name();
    MGlobal::executeCommand(cmd, allConnections);
    
    for (j=0; j < allConnections.length(); j++)
    {
        MStringArray cmdResult;
        MString curCon = allConnections[j];
        cmd = "ls -showType ";
        cmd+= curCon;
        MGlobal::executeCommand(cmd, cmdResult);
        MString oldState = cmdResult[0];
        
        MString nodeType = cmdResult[1];
        if (nodeType == "p3dDeformExpressionState")
        {
            cmd = "p3dDeformExpressionStateCreate ";
            cmd+=newGroupNode.name();
            MString newStateName;
            MGlobal::executeCommand(cmd, newStateName);
            //now we want to copy the contents of: vertexOffsets, vertexIndices, keyIndices, vertexOffsetsArray, vertexIndicesArray
            if (newStateName == p3dDeformExpressionStateCreateCmd::INVALID_STATE)
                continue;
            MObject newStateObj;
            MObject oldStateObj;
            status = p3dDeformFindDependencyNode(newStateName, newStateObj);
            P3D_DEFORM_STATUS(status);
            status = p3dDeformFindDependencyNode(oldState, oldStateObj);
            P3D_DEFORM_STATUS(status);

            MFnDependencyNode newStateNode(newStateObj);
            MFnDependencyNode oldStateNode(oldStateObj);

            MPlug oldVertexOffsetsPlug = oldStateNode.findPlug("vertexOffsets", &status);
            P3D_DEFORM_STATUS(status);
            MPlug oldVertexIndicesPlug = oldStateNode.findPlug("vertexIndices", &status);
            P3D_DEFORM_STATUS(status);
            MPlug oldKeyIndicesPlug = oldStateNode.findPlug("keyIndices", &status);
            P3D_DEFORM_STATUS(status);
            MPlug oldVertexOffsetsArrayPlug = oldStateNode.findPlug("vertexOffsetsArray", &status);
            P3D_DEFORM_STATUS(status);
            MPlug oldVertexIndicesArrayPlug = oldStateNode.findPlug("vertexIndicesArray", &status);
            P3D_DEFORM_STATUS(status);

            MPlug newVertexOffsetsPlug = newStateNode.findPlug("vertexOffsets", &status);
            P3D_DEFORM_STATUS(status);
            MPlug newVertexIndicesPlug = newStateNode.findPlug("vertexIndices", &status);
            P3D_DEFORM_STATUS(status);
            MPlug newKeyIndicesPlug = newStateNode.findPlug("keyIndices", &status);
            P3D_DEFORM_STATUS(status);
            MPlug newVertexOffsetsArrayPlug = newStateNode.findPlug("vertexOffsetsArray", &status);
            P3D_DEFORM_STATUS(status);
            MPlug newVertexIndicesArrayPlug = newStateNode.findPlug("vertexIndicesArray", &status);
            P3D_DEFORM_STATUS(status);


            MVectorArray oldOffsets;
            
            for (i=0; i < oldVertexOffsetsPlug.numElements(); i++)
            {
                float3 curV; 
                MPlug curOffsetPlug = oldVertexOffsetsPlug.elementByLogicalIndex(i, &status);
                P3D_DEFORM_STATUS(status);
                status = curOffsetPlug.child(0).getValue(curV[0]);
                P3D_DEFORM_STATUS(status);
                status = curOffsetPlug.child(1).getValue(curV[1]);
                P3D_DEFORM_STATUS(status);
                status = curOffsetPlug.child(2).getValue(curV[2]);
                P3D_DEFORM_STATUS(status);
                oldOffsets.append(MVector(curV[0],curV[1],curV[2]));

            }

            for (i=0; i < oldOffsets.length(); i++)
            {
                MPlug curOffsetPlug = newVertexOffsetsPlug.elementByLogicalIndex(i, &status);
                P3D_DEFORM_STATUS(status);
                status = curOffsetPlug.child(0).setValue(oldOffsets[i].x);
                P3D_DEFORM_STATUS(status);
                status = curOffsetPlug.child(1).setValue(oldOffsets[i].y);
                P3D_DEFORM_STATUS(status);
                status = curOffsetPlug.child(2).setValue(oldOffsets[i].z);
                P3D_DEFORM_STATUS(status);

            }


            MIntArray oldIndices;
            
            for (i=0; i < oldVertexIndicesPlug.numElements(); i++)
            {

// Maya v4 uses 'int'.
#if ( MAYA_API_VERSION >= 400 )
                int curI;
#else
// Maya v3 uses 'long'.
                long curI; 
#endif
                MPlug curIndexPlug = oldVertexIndicesPlug.elementByLogicalIndex(i, &status);
                P3D_DEFORM_STATUS(status);
                status = curIndexPlug.getValue(curI);
                P3D_DEFORM_STATUS(status);
                oldIndices.append(curI);

            }

            for (i=0; i < oldIndices.length(); i++)
            {
                MPlug curIndexPlug = newVertexIndicesPlug.elementByLogicalIndex(i, &status);
                P3D_DEFORM_STATUS(status);
                status = curIndexPlug.setValue((long)oldIndices[i]);
                P3D_DEFORM_STATUS(status);
            }

            MFloatArray oldKeys;

            for (i=0; i < oldKeyIndicesPlug.numElements(); i++)
            {
                float curKey;
                MPlug curKeyPlug = oldKeyIndicesPlug.elementByLogicalIndex(i, &status);
                P3D_DEFORM_STATUS(status);
                status = curKeyPlug.getValue(curKey);
                P3D_DEFORM_STATUS(status);
                oldKeys.append(curKey);
            }

            for (i =0; i < oldKeys.length(); i++)
            {
                MPlug curKeyPlug = newKeyIndicesPlug.elementByLogicalIndex(i, &status);
                P3D_DEFORM_STATUS(status);
                status = curKeyPlug.setValue(oldKeys[i]);
                P3D_DEFORM_STATUS(status);
            }

            for (i=0; i < oldVertexOffsetsArrayPlug.numElements(); i++)
            {
                MPlug curOldVertexOffsetsArray = oldVertexOffsetsArrayPlug.elementByLogicalIndex(i, &status);
                P3D_DEFORM_STATUS(status);
                MVectorArray oldVertexOffsets;
                MObject oldVertexOffsetArrayObj;
                status = curOldVertexOffsetsArray.getValue(oldVertexOffsetArrayObj);
                P3D_DEFORM_STATUS(status);
                MFnVectorArrayData oldVertexOffsetArrayData(oldVertexOffsetArrayObj);
                oldVertexOffsetArrayData.copyTo(oldVertexOffsets);

                cmd = "setAttr -type vectorArray ";
                cmd+=newStateName;
                cmd+=".vertexOffsetsArray[";
                cmd+=(long)i;
                cmd+="] 1 0 0 0";
                MGlobal::executeCommand(cmd);

                MObject newVertexOffsetArrayObj;
                MPlug curNewVertexOffsetsArray = newVertexOffsetsArrayPlug.elementByLogicalIndex(i);
                curNewVertexOffsetsArray.getValue(newVertexOffsetArrayObj);
                MFnVectorArrayData newVertexOffsetArrayData(oldVertexOffsetArrayData);
                newVertexOffsetArrayData.set(oldVertexOffsets);
                curNewVertexOffsetsArray.setValue(oldVertexOffsetArrayData.object());

            }



            for (i=0; i < oldVertexIndicesArrayPlug.numElements(); i++)
            {
                MPlug curOldVertexIndicesArray = oldVertexIndicesArrayPlug.elementByLogicalIndex(i);
                MIntArray oldVertexIndices;
                MObject oldVertexIndexArrayObj;
                curOldVertexIndicesArray.getValue(oldVertexIndexArrayObj);
                MFnIntArrayData oldVertexIndexArrayData(oldVertexIndexArrayObj);
                oldVertexIndexArrayData.copyTo(oldVertexIndices);

                cmd = "setAttr -type Int32Array ";
                cmd+=newStateName;
                cmd+=".vertexIndicesArray[";
                cmd+=(long)i;
                cmd+="] 1 0";
                MGlobal::executeCommand(cmd);

                MObject newVertexIndexArrayObj;
                MPlug curNewVertexIndicesArray = newVertexIndicesArrayPlug.elementByLogicalIndex(i);
                curNewVertexIndicesArray.getValue(newVertexIndexArrayObj);
                MFnIntArrayData newVertexIndexArrayData(oldVertexIndexArrayData);
                newVertexIndexArrayData.set(oldVertexIndices);
                curNewVertexIndicesArray.setValue(oldVertexIndexArrayData.object());

            }

        }

    }

  
    cmd = "if (`window -exists p3dDeformSetupWindow`) deleteUI -window p3dDeformer; p3dDeformCreateTabbedUI;";

    MGlobal::executeCommand(cmd);

    return MS::kSuccess;
}

MStatus p3dDeformCopyOffsetsCmd::undoIt()
{
    return MStatus::kSuccess;   
}

MStatus p3dDeformCopyOffsetsCmd::redoIt()
{
    return MStatus::kSuccess;   
}

bool p3dDeformCopyOffsetsCmd::isUndoable() const
{
    return false;
}

void* p3dDeformCopyOffsetsCmd::creator()
{
    return new p3dDeformCopyOffsetsCmd;
}


// End of file.

