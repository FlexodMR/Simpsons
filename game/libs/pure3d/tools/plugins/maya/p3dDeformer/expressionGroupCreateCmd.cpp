/*===========================================================================
    p3dDeformer/expressionGroupCreateCmd.cpp

    Copyright (c)2000 Radical Entertainment, Inc.
    All rights reserved.
===========================================================================*/

#include <maya/MArgList.h>
#include <maya/MFnDependencyNode.h>
#include <maya/MFloatArray.h>
#include <maya/MGlobal.h>
#include <maya/MSelectionList.h>
#include <maya/MFnMesh.h>
#include <maya/MItGeometry.h>
#include <maya/MDagPath.h>
#include <maya/MFnDagNode.h>
#include <maya/MPlug.h>
#include <maya/MPlugArray.h>
#include <maya/MFnVectorArrayData.h>
#include <maya/MDistance.h>

#include "common.hpp"
#include "utility.hpp"
#include "expressionGroupCreateCmd.hpp"
#include "expressionGroup.hpp"
#include "expressionState.hpp"

p3dDeformExpressionGroupCreateCmd::p3dDeformExpressionGroupCreateCmd()
{
}


p3dDeformExpressionGroupCreateCmd::~p3dDeformExpressionGroupCreateCmd()
{
}


void* p3dDeformExpressionGroupCreateCmd::creator()
{
    return new p3dDeformExpressionGroupCreateCmd;
}


bool p3dDeformExpressionGroupCreateCmd::isUndoable() const
{
    return true;
}


MStatus p3dDeformExpressionGroupCreateCmd::doIt(const MObject& depNode, MString groupName)
{
    MStatus status;
    MString cmd;
    MObject meshObject;
    if (groupName.length() == 0)
        groupName = "p3dGroup1";

    MFnDependencyNode depFn(depNode, &status);
    P3D_DEFORM_STATUS(status);

    // let's just double check that there is actually a selected mesh
    // for some reason we can get to here and not have a mesh selected
    // this occures when one group has already been created and an expression
    // for that group has been made.  i.e. the "group" window has focus.  Now,
    // no meshes are selected and the user tries to create another group.  No
    // "No mesh is selected"  error appears but rather an "unexpected internal
    // failure" shows up.

    // Okay, at this point we have one thing selected.
    // Let's just make sure that it is a mesh

    MFnDagNode dagNodeFn(depNode, &status);
    if(status != MS::kSuccess)
    {
        displayError("No mesh selected\n");
        return MS::kFailure;
    }

    MDagPath mDagPath;
    status = dagNodeFn.getPath(mDagPath);
    if(status != MS::kSuccess)
    {
        displayError("No mesh selected\n");
        return MS::kFailure;
    }

    status = mDagPath.extendToShape();
    if(status != MS::kSuccess)
    {
        displayError("No mesh selected\n");
        return MS::kFailure;
    }

    meshObject = mDagPath.node(&status);
    P3D_DEFORM_STATUS(status);

    bool bIsMesh = meshObject.hasFn(MFn::kMesh);
    if(!bIsMesh)
    {
        displayError("The current selection is not a mesh.\n");
        return MS::kFailure;
    }
    
    // Do checking to make sure that we don't have multiple meshes with the same name
    MStringArray meshNames;
    cmd = "ls ";
    cmd+= dagNodeFn.fullPathName();
    status = MGlobal::executeCommand(cmd, meshNames);
    P3D_DEFORM_STATUS(status);

    if (meshNames.length() > 1)
    {
        cmd = "confirmDialog -title \"Error\" -message \"There are multiple meshes with the same name ( ";
        for (unsigned nameIt = 0; nameIt < meshNames.length() - 1; nameIt++)
        {
            cmd+= meshNames[nameIt] + " , ";
        }
        cmd += meshNames[nameIt];
        cmd+= " )\" -button \"OK\" -defaultButton \"OK\"";
        status = MGlobal::executeCommand(cmd, meshNames);
        P3D_DEFORM_STATUS(status);
        return MStatus::kFailure;
    }
    



    // This is where things get really crazy.
    // We want to add all p3dDeformExpressionGroup nodes 
    // after the p3dDeformMeshNeutral.  However, we also 
    // want to add all of these nodes at the front of the 
    // chain (for example, before a skin cluster).  We
    // can't just say -foc for all p3dDeformExpressionGroup
    // nodes because then the group node can appear before 
    // the neutral mesh node.  This results in things not 
    // working properly.

    // check to see if a p3dDeformMeshNeutral node exists
    MObject neutralNode;
    status = p3dDeformFindInHistory(depNode, "p3dDeformMeshNeutral", true, neutralNode);
    
    bool bNeutralExists = false;
    
    // if a neutral node does exist, then select the following group
    // node and add the new group node between the neutral node and the 
    // existing group node
    // *NOTE*: for some crazy reason the deformer -bf and -af flags do anything
    // but put the node directly in front or behind the currently selected 
    // node.  Hence, I have to do a reorderDeformers. (-bf seems to behave
    // slightly better)
    // Really there has got to be a better way!
    
    if (status)
    {
        bNeutralExists = true;
        
        // find the group node right after the neutral mesh node
        MObject groupNode;
        status = p3dDeformFindInHistory(neutralNode, "p3dDeformExpressionGroup", false, groupNode);

        MFnDependencyNode groupDepFn(groupNode, &status);
        if (status != MStatus::kSuccess)
        {
            cmd = "confirmDialog -title \"Error\" -message \"Error creating group- a neutral mesh already exists and is connected to this mesh but is not connected to a group\" -button \"OK\" -defaultButton \"OK\"";
            status = MGlobal::executeCommand(cmd);
            return MStatus::kFailure;
        }

        

        cmd = "select -r ";
        cmd += groupDepFn.name();
        status = MGlobal::executeCommand(cmd);
        MGlobal::displayInfo(cmd);
        P3D_DEFORM_STATUS(status);

        //"It is only valid to call this method after all of the operations have been specified"
        //status = dgModifier.doIt();
        //P3D_DEFORM_STATUS(status);      
        
        cmd = "deformer -bf -type p3dDeformExpressionGroup ";
        cmd += "-name ";
        cmd+=groupName;
        cmd+=" ";
        cmd += depFn.name();
        MStringArray newGroupName;
        MGlobal::executeCommand(cmd, newGroupName);
        setResult(newGroupName[0]);
 
        cmd = "reorderDeformers ";
        cmd += groupDepFn.name();
        cmd += " ";
        cmd += newGroupName[0];
        cmd += " ";
        cmd += depFn.name();
        MGlobal::displayInfo(cmd);
        status = MGlobal::executeCommand(cmd);

        P3D_DEFORM_STATUS(status);

        cmd = "select -r ";
        cmd += depFn.name();
        status = MGlobal::executeCommand(cmd);
        P3D_DEFORM_STATUS(status);
    }
    else
    {
        // a neutral doesn't exist so create the group and put
        // it at the front of the chain
        MStringArray newGroupName;
        cmd = "deformer -foc -type p3dDeformExpressionGroup ";
        cmd += "-name ";
        cmd+=groupName;
        cmd+=" ";
        cmd += depFn.name();
        status = MGlobal::executeCommand(cmd, newGroupName);
        P3D_DEFORM_STATUS(status);

        setResult(newGroupName[0]);
        cmd = "select -r ";
        cmd += depFn.name();
        status = MGlobal::executeCommand(cmd);
        P3D_DEFORM_STATUS(status);

        //status = dgModifier.doIt();
        //P3D_DEFORM_STATUS(status);
    }

    // if a neutral node does not exist, create one
    if (!bNeutralExists)
    {
        cmd = "p3dDeformMeshNeutralUpdate";
        status = dgModifier.commandToExecute(cmd);
        P3D_DEFORM_STATUS(status);
          
        // have to do this here cause I need the node after this if block
        status = dgModifier.doIt();
        P3D_DEFORM_STATUS(status);

        // find the newly created neutral node
        status = p3dDeformFindInHistory(depNode, "p3dDeformMeshNeutral", true, neutralNode);
        P3D_DEFORM_STATUS(status);
    }

    return MS::kSuccess;
}


MStatus p3dDeformExpressionGroupCreateCmd::doIt(const MArgList& args)
{
    MStatus status;
    MObject object;
    MString name;
    if (args.length() > 0)
    {
        if ((args.length() != 1) && (args.length() != 2))
        {
            displayError("Incorrect number of arguments");
            return MS::kFailure;
        }
        else
        {
            // arguments specified, so find the corresponding mesh
            status = p3dDeformFindDependencyNode(args.asString(0), object);
            P3D_DEFORM_STATUS(status);
            if (args.length() == 2)
                name = args.asString(1);

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
            //if (selList.length() != 1)
            //{
            //   displayError("Only one object should be selected for this command");
            //   return MS::kFailure;
            //}
            //else
            //{
                status = selList.getDependNode(0, object);
                P3D_DEFORM_STATUS(status);
            //}
        }
        else
        {
            displayError("No object selected");
            return MS::kFailure;
        }
    }

    return doIt(object, name);
}


MStatus p3dDeformExpressionGroupCreateCmd::undoIt()
{
    MStatus status;

    status = dgModifier.undoIt();
    P3D_DEFORM_STATUS(status);

    return MS::kSuccess;
}


MStatus p3dDeformExpressionGroupCreateCmd::redoIt()
{
    MStatus status;

    status = dgModifier.doIt();
    P3D_DEFORM_STATUS(status);

    return MS::kSuccess;
}



p3dDeformExpressionGroupResetPoseCmd::p3dDeformExpressionGroupResetPoseCmd()
{
}


p3dDeformExpressionGroupResetPoseCmd::~p3dDeformExpressionGroupResetPoseCmd()
{
}


void* p3dDeformExpressionGroupResetPoseCmd::creator()
{
    return new p3dDeformExpressionGroupResetPoseCmd;
}


bool p3dDeformExpressionGroupResetPoseCmd::isUndoable() const
{
    return true;
}


MStatus p3dDeformExpressionGroupResetPoseCmd::doIt(const MObject& depNode, int suppress)
{
    //take the input mesh and move all its vertices back to the neutral position
    MStatus status;
    MString cmd;
    MObject meshObject;
    
    MFnDagNode dagNodeFn(depNode, &status);
    if(status != MS::kSuccess)
    {
        if (!suppress)
            displayError("No mesh selected\n");
        return MS::kFailure;
    }

    MDagPath mDagPath;
    status = dagNodeFn.getPath(mDagPath);
    if(status != MS::kSuccess)
    {
        if (!suppress)
            displayError("No mesh selected\n");
        return MS::kFailure;
    }

    status = mDagPath.extendToShape();
    if(status != MS::kSuccess)
    {
        if (!suppress)
            displayError("No mesh selected\n");
        return MS::kFailure;
    }

    meshObject = mDagPath.node(&status);
    P3D_DEFORM_STATUS(status);

    bool bIsMesh = meshObject.hasFn(MFn::kMesh);
    if(!bIsMesh)
    {
        if (!suppress)
            displayError("The current selection is not a mesh.\n");
        return MS::kFailure;
    }
    
    // Do checking to make sure that we don't have multiple meshes with the same name
    MStringArray meshNames;
    cmd = "ls ";
    cmd+= dagNodeFn.fullPathName();
    status = MGlobal::executeCommand(cmd, meshNames);
    P3D_DEFORM_STATUS(status);

    if (meshNames.length() > 1)
    {
        cmd = "confirmDialog -title \"Error\" -message \"There are multiple meshes with the same name ( ";
        for (unsigned nameIt = 0; nameIt < meshNames.length() - 1; nameIt++)
        {
            cmd+= meshNames[nameIt] + " , ";
        }
        cmd += meshNames[nameIt];
        cmd+= " )\" -button \"OK\" -defaultButton \"OK\"";
        status = MGlobal::executeCommand(cmd, meshNames);
        P3D_DEFORM_STATUS(status);
        return MStatus::kFailure;
    }

    MFnMesh meshFn(meshObject, &status);
    P3D_DEFORM_STATUS(status);
    
    MObject neutralNodeObj;
    
    status = p3dDeformFindInHistory(depNode, "p3dDeformMeshNeutral", true, neutralNodeObj);
    P3D_DEFORM_STATUS(status);
    MFnDependencyNode neutralFn(neutralNodeObj, &status);
    P3D_DEFORM_STATUS(status);
    //so hopefully at this point we have the neutral mesh.

    
    MPlug ofsPlug = neutralFn.findPlug("offsets", &status);
    P3D_DEFORM_STATUS(status);
    MVectorArray NeutralOffsets;
    MObject ofsData;
    status = ofsPlug.getValue(ofsData);
    if (status)
    {
        MFnVectorArrayData origOffsets(ofsData, &status);
        P3D_DEFORM_STATUS(status);

        status = origOffsets.copyTo(NeutralOffsets);
        P3D_DEFORM_STATUS(status);
    }

    int useMEL = 0;
    MGlobal::executeCommand("menuItem -q -cb p3dDeformerSetPoseMenuItem", useMEL);

    if (useMEL)
    {
        MString stub = "setAttr ";
        stub+=meshFn.fullPathName();
        stub+=".vtx[";
        MString cmd;
        for (int i=0; i < meshFn.numVertices(); i++)
        {
            cmd = stub;
            cmd+=i;
            cmd+="] ";
            cmd+=NeutralOffsets[i].x;
            cmd+=" ";
            cmd+=NeutralOffsets[i].y;
            cmd+=" ";
            cmd+=NeutralOffsets[i].z;
            dgModifier.commandToExecute(cmd);
        }
        dgModifier.doIt();
    }
    else
    {
        p3dDeformSetTweaks(depNode, NeutralOffsets);
    }
    return MS::kSuccess;
}


/*************************************************************************
//    Description: Parses the arguments to get the Mesh object
// and the suppress flag. If suppress is 1, then user is not expected to
// have selected a mesh in order for this command to work.
//
// Parameters: args (variable length may contain up to 2 parameters: deformer
// group name as a string (args[0]) and suppress flag (args[1]).
//
// Returns:
//
***************************************************************************/

MStatus p3dDeformExpressionGroupResetPoseCmd::doIt(const MArgList& args)
{
    MStatus status;
    MObject object;
    MObject groupObject;
    int suppress = 0;
    //debug
    p3dDeformDebugTrace("In p3dDeformExpressionGroupResetPoseCmd::doIt");
    //debug

    if (args.length() > 0)
    {
        if (args.length() > 2)
        {
            displayError("Incorrect number of arguments");
            return MS::kFailure;
        }
        else
        {
            // arguments specified, so find the corresponding group
            if (args.length() == 2)
            {
                if (args.asInt(1) == 1)
                {
                    suppress = 1;
                }
                else if (args.asInt(1) == 0)
                    suppress = 0;
            }
            //debug
            p3dDeformDebugString("args.asString(0):", args.asString(0).asChar());
            //debug
            if (args.asString(0) != "@NULL")
                status = p3dDeformFindDependencyNode(args.asString(0), object);
            P3D_DEFORM_STATUS(status);
        }
    }
    
    // no arguments specified, so use currently selected meshes
    if ((args.asString(0) == "@NULL") || (args.length() == 0))
    {
        MSelectionList selList;
        status = MGlobal::getActiveSelectionList(selList);
        P3D_DEFORM_STATUS(status);

        if (selList.length() > 0)
        {
            //if (selList.length() != 1)
            //{
            //   displayError("Only one object should be selected for this command");
            //   return MS::kFailure;
            //}
            //else
            //{
                status = selList.getDependNode(0, object);
                P3D_DEFORM_STATUS(status);
            //}
        }
        else
        {
            if (!suppress) 
                displayError("No object selected");
            return MS::kFailure;
        }
    }
    return doIt(object, suppress);
}


MStatus p3dDeformExpressionGroupResetPoseCmd::undoIt()
{
    MStatus status;

    status = dgModifier.undoIt();
    P3D_DEFORM_STATUS(status);

    return MS::kSuccess;
}


MStatus p3dDeformExpressionGroupResetPoseCmd::redoIt()
{
    MStatus status;

    status = dgModifier.doIt();
    P3D_DEFORM_STATUS(status);

    return MS::kSuccess;
}



p3dDeformExpressionGroupSaveCmd::p3dDeformExpressionGroupSaveCmd()
{
}


p3dDeformExpressionGroupSaveCmd::~p3dDeformExpressionGroupSaveCmd()
{
}


void* p3dDeformExpressionGroupSaveCmd::creator()
{
    return new p3dDeformExpressionGroupSaveCmd;
}


bool p3dDeformExpressionGroupSaveCmd::isUndoable() const
{
    return true;
}


MStatus p3dDeformExpressionGroupSaveCmd::doIt(const MObject& depNode, MString fileName)
{
    MFnDependencyNode groupFn(depNode);
    MStatus status;
    FILE* out = fopen(fileName.asChar(), "a");

    fprintf(out, "p3dDeformExpressionGroup %s\n",groupFn.name().asChar());
    MPlug statePlug = groupFn.findPlug(p3dDeformExpressionGroup::states, &status);
    int numStates = statePlug.numConnectedElements();
    fprintf(out, "NumStates %d\n", numStates);
    unsigned i = 0;

    MPlug elementPlug = statePlug.elementByLogicalIndex(i, &status);
        
    MPlugArray plugArray;
    bool connected = elementPlug.connectedTo(plugArray, true, false, &status);
        

    int cc = 0;  //connectedCount
    while (cc < numStates )
    {
        bool found = false;
        
        while (!found)
        {
            MPlug elementPlug = statePlug.elementByLogicalIndex(i, &status);
            if (status == MStatus::kFailure)
            {
                cc = numStates + 1; //we failed, so get out of this loop
                break;
            }
            MPlugArray plugArray;
            bool connected = elementPlug.connectedTo(plugArray, true, false, &status);
            if (status == MStatus::kFailure)
            {
                cc = numStates + 1;
                break;
            }
            if (connected && status)
            {
                for (unsigned j = 0; j < plugArray.length(); ++j)
                {
                    MPlug plug = plugArray[j];
                    MObject node = plug.node(&status);
                    if (!status)
                        continue;

                    MFnDependencyNode stateFn(node, &status);
                    if (!status)
                        continue;

                    MTypeId nodeId = stateFn.typeId(&status);
                    if (!status)
                        continue;

                    if (nodeId == p3dDeformExpressionState::id)
                    {
                        //we've got the next state node: write it out
                        const char* stateName = stateFn.name().asChar();
                        fprintf(out, "p3dDeformExpressionState %s\n", stateName);
                        
                        int blendStage = 0;
                        MString mel = "getAttr ";
                        mel+=stateName;
                        mel+=".blendStage";
                        MGlobal::executeCommand(mel, blendStage);
                        fprintf(out, "BlendStage %d\n", blendStage);

                        MPlug vtxIndxPlug = stateFn.findPlug("vertexIndicesArray", &status);
                        P3D_DEFORM_STATUS(status);
                        MPlug vtxOffPlug = stateFn.findPlug("vertexOffsetsArray", &status);
                        P3D_DEFORM_STATUS(status);
                        MPlug keyIndxPlug = stateFn.findPlug("keyIndices", &status);
                        P3D_DEFORM_STATUS(status);

                        MFloatArray allKeys;

                        //get all keys
                        unsigned ki,kj;
                        for (ki = 0; ki < keyIndxPlug.numElements(); ki++)
                        {
                            float curKey;
                            keyIndxPlug.elementByLogicalIndex(ki, &status).getValue(curKey);
                            allKeys.append(curKey);
                        }

                        unsigned long keyFlags = 0;   //a 1 indicates an invalid or duplicate key
                        //flag duplicate keys
                        for(ki=0; ki < allKeys.length(); ki++)
                        {
                            float curKey = allKeys[ki];
                            if (keyEquals(curKey, P3D_INVALID_KEY_VAL))
                                keyFlags|=(1<<ki);
                            else
                            {
                                for (kj = ki+1; kj < allKeys.length(); kj++)
                                {
                                    float testKey = allKeys[kj];
                                
                                    if (keyEquals(curKey,testKey))
                                        keyFlags|=(1<<ki);
                                }
                            }

                        }

                        int numKeys = 0;
                        for (ki=0; ki < allKeys.length(); ki++)
                        {
                            if ((keyFlags & (1<<ki)) == 0)
                                numKeys++;

                        }


                        //write out keys
                        fprintf(out, "NumKeys %d\n", numKeys);

                        for (unsigned s = 0; s < vtxIndxPlug.numElements(); s++)
                        {
                            if (keyFlags & (1 << s))
                                continue;
                            
                            float curKey;
                            keyIndxPlug.elementByLogicalIndex(s).getValue(curKey);
                            fprintf(out, "%f\n", curKey);
                            MIntArray vertexIndices;
                            MVectorArray vertexOffsets;
                            status = p3dDeformGetPlugData(vtxIndxPlug, vertexIndices, s);
                            status = p3dDeformGetPlugData(vtxOffPlug, vertexOffsets, s);
                            fprintf(out, "NumIndices %d\n", vertexIndices.length());
                            for (unsigned vi=0; vi < vertexIndices.length(); vi++)
                            {
                                fprintf(out, " %d ", vertexIndices[vi]);
                                fprintf(out, " %f %f %f ",vertexOffsets[vi].x, vertexOffsets[vi].y, vertexOffsets[vi].z); 
                            }
                            fprintf(out, "\n");
                        }
                    }
                }
                cc++;
                found = true;
            }
            i++;
        }
    }
            
    fclose(out);
    
    return MS::kSuccess;
}


MStatus p3dDeformExpressionGroupSaveCmd::doIt(const MArgList& args)
{
    MStatus status;
    MObject object;
    MString filename;
    
    if (args.length() != 2)
    {
        displayError("Incorrect number of arguments");
        return MS::kFailure;
    }
    else
    {
        // arguments specified, so find the corresponding group
        p3dDeformFindDependencyNode(args.asString(0), object);
        filename = args.asString(1);

    }
    return doIt(object, filename);
}


MStatus p3dDeformExpressionGroupSaveCmd::undoIt()
{
    MStatus status;

    status = dgModifier.undoIt();
    P3D_DEFORM_STATUS(status);

    return MS::kSuccess;
}


MStatus p3dDeformExpressionGroupSaveCmd::redoIt()
{
    MStatus status;

    status = dgModifier.doIt();
    P3D_DEFORM_STATUS(status);

    return MS::kSuccess;
}





p3dDeformExpressionGroupReadCmd::p3dDeformExpressionGroupReadCmd()
{
}


p3dDeformExpressionGroupReadCmd::~p3dDeformExpressionGroupReadCmd()
{
}


void* p3dDeformExpressionGroupReadCmd::creator()
{
    return new p3dDeformExpressionGroupReadCmd;
}


bool p3dDeformExpressionGroupReadCmd::isUndoable() const
{
    return true;
}


MStatus p3dDeformExpressionGroupReadCmd::doIt(const MObject& meshNode, const MString fileName)
{
    MFnMesh meshFn(meshNode);
    MStatus status;
    MString mel;
    FILE* in = fopen(fileName.asChar(), "r");
    if (in == NULL)
    {
        MString fileErr = "Unable to open file ";
        fileErr+=fileName;
        MGlobal::displayInfo(fileErr);
        setResult(-1);
    }

    char tempBuf[2048];
    char groupName[2048];
    int curGroup = 0;
    int numGroups;
    fscanf(in, "%s%d", tempBuf, &numGroups); //numGroups X
    while (curGroup < numGroups)
    {
        fscanf(in, "%s%s\n", tempBuf, groupName); //p3dDeformExpressionGroup <groupName>
    
        MString mGroupName(groupName);
        MString newGroupName;
        mel = "p3dDeformExpressionGroupCreate ";
        mel+=meshFn.name();
        mel+=" ";
        mel+=mGroupName;
        MGlobal::executeCommand(mel, newGroupName);
        if (newGroupName.length() == 0)
            newGroupName = mGroupName;

        MObject groupObj;
        status = p3dDeformFindDependencyNode(newGroupName, groupObj);
        if (status != MStatus::kSuccess)
            return status;
        MFnDependencyNode groupFn(groupObj);

        unsigned numStates;
        fscanf(in, "%s%d", tempBuf, &numStates); //NumStates
        unsigned i = 0;
        for (i=0; i < numStates; i++)
        {
            //we've got the next state node: write it out
            char stateName[2048];
            fscanf(in, "%s%s", tempBuf, stateName); //p3dDeformExpressionState

            MString newStateName;
            mel = "p3dDeformExpressionStateCreate ";
            mel+=groupFn.name();
            mel+=" ";
            mel+=stateName;
            MGlobal::executeCommand(mel, newStateName);

            MObject stateObj;
            p3dDeformFindDependencyNode(newStateName, stateObj);
            MFnDependencyNode stateFn(stateObj);

            
            /*MPlug vtxIndxPlug = stateFn.findPlug("vertexIndicesArray", &status);
            P3D_DEFORM_STATUS(status);
            MPlug vtxOffPlug = stateFn.findPlug("vertexOffsetsArray", &status);
            P3D_DEFORM_STATUS(status);
            MPlug keyIndxPlug = stateFn.findPlug("keyIndices", &status);
            P3D_DEFORM_STATUS(status);*/

            MIntArray vertexIndices;
            MVectorArray vertexOffsets;

            //read and set the blendStage
            int blendStage = 0;
            fscanf(in, "%s%d", tempBuf, &blendStage);
            MString mel = "setAttr ";
            mel+=newStateName;
            mel+=".blendStage ";
            mel+=blendStage;
            MGlobal::executeCommand(mel);


            unsigned numKeys;
            fscanf(in, "%s%d", tempBuf, &numKeys); //NumKeys X

            for (unsigned s = 0; s < numKeys; s++)
            {
                float curKey;
                fscanf(in, "%f", &curKey);
                unsigned numIndices = 0;
                fscanf(in, "%s%d",tempBuf,&numIndices); //NumIndices
                int tempIdx;
                float tempVec[3];
                unsigned idx;
                for (idx=0; idx < numIndices; idx++)
                {
                    fscanf(in, "%d%f%f%f",&tempIdx, &(tempVec[0]),&(tempVec[1]),&(tempVec[2])); 
                    vertexIndices.append(tempIdx);
                    vertexOffsets.append(MVector(tempVec[0], tempVec[1], tempVec[2]));
                }

                mel = "p3dDeformExpressionGroupResetPose ";
                mel+=meshFn.name();
                MGlobal::executeCommand(mel);

                p3dDeformSetTweaksByIndex(meshNode, vertexIndices, vertexOffsets);
                
                MString addKeyCmd = "p3dDeformSetPoseKeyFunc ";
                addKeyCmd+=newStateName;
                addKeyCmd+=" ";
                addKeyCmd+=curKey;
                MGlobal::executeCommand(addKeyCmd);
            }
        }
        curGroup++;
    }
    
    fclose(in);
    setResult(0);
    return MS::kSuccess;
}


MStatus p3dDeformExpressionGroupReadCmd::doIt(const MArgList& args)
{
    MStatus status;
    MObject object;
    MString filename;
    if (args.length() != 2)
    {
        displayError("Incorrect number of arguments");
        return MS::kFailure;
    }
    else
    {
        // arguments specified, so find the corresponding mesh
        p3dDeformFindDependencyNode(args.asString(0), object);
        filename = args.asString(1);
    }
    return doIt(object, filename);
}


MStatus p3dDeformExpressionGroupReadCmd::undoIt()
{
    MStatus status;

    status = dgModifier.undoIt();
    P3D_DEFORM_STATUS(status);

    return MS::kSuccess;
}


MStatus p3dDeformExpressionGroupReadCmd::redoIt()
{
    MStatus status;

    status = dgModifier.doIt();
    P3D_DEFORM_STATUS(status);

    return MS::kSuccess;
}

// End of file.

