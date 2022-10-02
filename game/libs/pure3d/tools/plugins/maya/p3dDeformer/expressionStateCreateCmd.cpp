/*===========================================================================
    p3dDeformer/expressionStateCreateCmd.cpp

    Copyright (c)2000 Radical Entertainment, Inc.
    All rights reserved.
===========================================================================*/

#include <math.h>

#include <maya/MArgList.h>
#include <maya/MDistance.h>
#include <maya/MFloatArray.h>
#include <maya/MFnDependencyNode.h>
#include <maya/MFnMesh.h>
#include <maya/MGlobal.h>
#include <maya/MItGeometry.h>
#include <maya/MIntArray.h>
#include <maya/MSelectionList.h>
#include <maya/MVectorArray.h>

#include "common.hpp"
#include "utility.hpp"
#include "expressionGroup.hpp"
#include "expressionStateCreateCmd.hpp"


MString p3dDeformExpressionStateCreateCmd::INVALID_STATE = "@NULL";

p3dDeformExpressionStateCreateCmd::p3dDeformExpressionStateCreateCmd()
{
}


p3dDeformExpressionStateCreateCmd::~p3dDeformExpressionStateCreateCmd()
{
}


void* p3dDeformExpressionStateCreateCmd::creator()
{
    return new p3dDeformExpressionStateCreateCmd;
}


bool p3dDeformExpressionStateCreateCmd::isUndoable() const
{
    return true;
}


MStatus p3dDeformExpressionStateCreateCmd::doIt(const MObject& groupNode, MString stateName)
{
    MStatus status;
    MString cmd;
    
    MFnDependencyNode groupFn(groupNode, &status);
    P3D_DEFORM_STATUS(status);

    if (groupFn.typeName() != "p3dDeformExpressionGroup")
    {
        displayError(groupFn.name() + " is not a p3dDeformExpressionGroup");
        return MS::kFailure;
    }

    MObject meshNode;
    status = p3dDeformFindInHistory(groupNode, "mesh", false, meshNode);
    P3D_DEFORM_STATUS(status);
    
    MFnMesh meshFn(meshNode, &status);
    P3D_DEFORM_STATUS(status);

    MObject tmpGroupNode(groupNode);

    // the mesh that gets found cannot be an intermediate object
    while(meshFn.isIntermediateObject(&status))
    {
         // get the next group
         status = p3dDeformFindInHistory(meshNode, "p3dDeformExpressionGroup", false, tmpGroupNode);
         P3D_DEFORM_STATUS(status);

         // get the next mesh
         status = p3dDeformFindInHistory(tmpGroupNode, "mesh", false, meshNode);
         P3D_DEFORM_STATUS(status);

         status = meshFn.setObject(meshNode);
         P3D_DEFORM_STATUS(status);
    }


    MStringArray meshNames;
    cmd = "ls ";
    cmd+= meshFn.fullPathName();
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
        setResult(p3dDeformExpressionStateCreateCmd::INVALID_STATE);
    }
    else
    {

        MFnDependencyNode stateFn;
        if (stateName.length() == 0)
            stateName = "p3dExpression1";
        state = stateFn.create("p3dDeformExpressionState", stateName, &status);
        P3D_DEFORM_STATUS(status);
    
    
        //now connect the output of the states to the input (states) of the parent group deformer
        cmd = "connectAttr -na ";
        cmd += stateFn.name();
        cmd += ".output ";
        cmd += groupFn.name();
        cmd += ".states";
        status = dgModifier.commandToExecute(cmd);
        P3D_DEFORM_STATUS(status);

        //and bind the slider state with the weight
        cmd = "connectAttr ";
        cmd += stateFn.name();
        cmd += ".state ";
        cmd += stateFn.name();
        cmd += ".weight";
        status = dgModifier.commandToExecute(cmd);
        P3D_DEFORM_STATUS(status);

        cmd = "select -r ";
        cmd+= meshFn.fullPathName();
        status = dgModifier.commandToExecute(cmd);
        P3D_DEFORM_STATUS(status);

        status = dgModifier.doIt();
        P3D_DEFORM_STATUS(status);

        setResult(stateFn.name());
    }

    return MS::kSuccess;
}


MStatus p3dDeformExpressionStateCreateCmd::doIt(const MArgList& args)
{
    MStatus status;
    MObject object, groupObject;
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
            // arguments specified, so find the corresponding group
            status = p3dDeformFindDependencyNode(args.asString(0), object);
            P3D_DEFORM_STATUS(status);
            if (args.length() == 2)
                name = args.asString(1);

            status = p3dDeformFindInHistory(object, "p3dDeformExpressionGroup", true, groupObject);
            P3D_DEFORM_STATUS(status);
        }
    }
    else
    {
        // no arguments specified, so use currently selected groups
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

                status = p3dDeformFindInHistory(object, "p3dDeformExpressionGroup", true, groupObject);
                P3D_DEFORM_STATUS(status);
            }
        }
        else
        {
            displayError("No object selected");
            return MS::kFailure;
        }
    }

    return doIt(groupObject, name);
}


MStatus p3dDeformExpressionStateCreateCmd::undoIt()
{
    MStatus status;

    status = dgModifier.undoIt();
    P3D_DEFORM_STATUS(status);

    status = MGlobal::deleteNode(state);
    P3D_DEFORM_STATUS(status);

    return MS::kSuccess;
}


MStatus p3dDeformExpressionStateCreateCmd::redoIt()
{
    MStatus status;

    MFnDependencyNode stateFn;
    state = stateFn.create("p3dDeformExpressionState", &status);
    P3D_DEFORM_STATUS(status);

    // FIXME:  This seems to fail here, perhaps because its
    //         now a different physical state node that's been created?
    //         Dunno why that would make a difference, in practice
    //         we're guaranteed the same default node name...
    status = dgModifier.doIt();
    P3D_DEFORM_STATUS(status);

    setResult(stateFn.name());

    return MS::kSuccess;
}





//begin set pose cmd
//this works as follows: we pass in a state node name and a key value.
//this command sets the vertices to be at the key position that is specified
//it makes the mesh jump to its key position

p3dDeformExpressionStateSetPoseCmd::p3dDeformExpressionStateSetPoseCmd()
{
}


p3dDeformExpressionStateSetPoseCmd::~p3dDeformExpressionStateSetPoseCmd()
{
}


void* p3dDeformExpressionStateSetPoseCmd::creator()
{
    return new p3dDeformExpressionStateSetPoseCmd;
}


bool p3dDeformExpressionStateSetPoseCmd::isUndoable() const
{
    return false;
}


MStatus p3dDeformExpressionStateSetPoseCmd::doIt(const MObject& stateNode, float keyVal)
{
    //debug
    p3dDeformDebugTrace("In p3dDeformExpressionStateSetPoseCmd::doIt");
    p3dDeformDebugFloat("keyVal =",keyVal);
    //debug
    unsigned i;
    MStatus status;
    MString cmd;

    //if keyVal > 0, try to find related vertex offset and index arrays. then set mesh.vtx array appropriately.
    //if keyVal == 0, we have to find all vertex indices from all arrays, and also find all neutral offsets corresponding to those.
    MFnDependencyNode stateFn(stateNode, &status);
    
    MObject meshNode;
    status = p3dDeformFindInHistory(stateNode, "mesh", false, meshNode);
    P3D_DEFORM_STATUS(status);
    
    MFnMesh meshFn(meshNode, &status);
    P3D_DEFORM_STATUS(status);
    
    MPlug vtxIndxPlug = stateFn.findPlug("vertexIndicesArray", &status);
    P3D_DEFORM_STATUS(status);

    if (keyVal == 0.0f) //we want to reset all vertices in the current expression to their neutral positions
    {
        // so, find the group which the current expression belongs to
        
        MFnDependencyNode depNode(stateNode, &status);
        P3D_DEFORM_STATUS(status);

        MTypeId nodeId = depNode.typeId(&status);
        P3D_DEFORM_STATUS(status);

        if (nodeId == p3dDeformExpressionState::id)
        {
            MFnDependencyNode stateFn(stateNode, &status);

            MPlug vtxIndxPlug = stateFn.findPlug("vertexIndicesArray", &status);
            P3D_DEFORM_STATUS(status);

            MIntArray allVertexIndices;

            for (unsigned s = 0; s < vtxIndxPlug.numElements(); s++)
            {
                MIntArray vertexIndices;
                status = p3dDeformGetPlugData(vtxIndxPlug, vertexIndices, s);
                
                if (status != MStatus::kSuccess)
                {

// Maya v4 uses 'int'.
#if ( MAYA_API_VERSION >= 400 )
                    int curIdx;
#else
// Maya v3 uses 'long'.
                    long curIdx;
#endif
                    status = vtxIndxPlug.elementByLogicalIndex(s).getValue(curIdx);
                    P3D_DEFORM_STATUS(status);
                    vertexIndices.append(curIdx);
                }
                
                for (unsigned u = 0; u < vertexIndices.length(); u++)
                {
                    allVertexIndices.append(vertexIndices[u]);
                }

            }

            //debug
            p3dDeformDebugNumArray("allVertexIndices", allVertexIndices);
            //debug

            //so now we have an array with all the vertex indices in it
            //get the related neutral mesh
            MObject groupNodeObj;
            MObject neutralNodeObj;
            status = p3dDeformFindInHistory(stateNode, "p3dDeformExpressionGroup", false, groupNodeObj);
            P3D_DEFORM_STATUS(status);

            status = p3dDeformFindInHistory(groupNodeObj, "p3dDeformMeshNeutral", true, neutralNodeObj);
            P3D_DEFORM_STATUS(status);
            MFnDependencyNode neutralFn(neutralNodeObj, &status);
            P3D_DEFORM_STATUS(status);
            MPlug ofsPlug = neutralFn.findPlug("offsets", &status);
            P3D_DEFORM_STATUS(status);
            MVectorArray NeutralOffsets;
            p3dDeformGetPlugData(ofsPlug, NeutralOffsets);

            //debug
            p3dDeformDebugNumArray("NeutralOffsets", NeutralOffsets);
            //debug
            
            MVector curVtx;
            unsigned t;

            int useMEL = 0;
            MGlobal::executeCommand("menuItem -q -cb p3dDeformerSetPoseMenuItem", useMEL);
            
            if (useMEL)
            {
                MString stub = "setAttr ";
                stub+=meshFn.fullPathName();
                stub+=".vtx[";
                MString cmd;
                for (t=0; t < allVertexIndices.length(); t++)
                {
                    cmd = stub;
                    cmd+=allVertexIndices[t];
                    cmd+="] ";
                    curVtx = NeutralOffsets[allVertexIndices[t]];

                    cmd+=curVtx.x;
                    cmd+=" ";
                    cmd+=curVtx.y;
                    cmd+=" ";
                    cmd+=curVtx.z;
                    dgModifier.commandToExecute(cmd);
                }
                dgModifier.doIt();
            }
            else
            {
                MVectorArray allOffsets;
                for (t = 0; t < allVertexIndices.length(); t++)
                {
                    allOffsets.append(NeutralOffsets[allVertexIndices[t]]);
                }

                status = p3dDeformSetTweaksByIndex(meshNode, allVertexIndices, allOffsets);
                P3D_DEFORM_STATUS(status);
                
            }
        }
        else
        {
            MGlobal::displayError("Node ID is not of type p3dDeformExpressionState");
        }

    }

    else if (keyVal >= -1.0f && keyVal <= 1.0f)      //we want to jump to some key value
    {
        //debug
        p3dDeformDebugTrace("KeyVal is not 0.0");
        //debug

        MPlug vtxOffPlug = stateFn.findPlug("vertexOffsetsArray", &status);
        P3D_DEFORM_STATUS(status);
        MPlug keyIndxPlug = stateFn.findPlug("keyIndices", &status);
        P3D_DEFORM_STATUS(status);
    
        int keyIndex;
        status = p3dDeformFindKeyIndex(keyIndxPlug, keyVal, keyIndex);
        if (status == MStatus::kFailure)
            return status;
        
        MIntArray vertexIndices;
        MVectorArray vertexOffsets;

        p3dDeformGetPlugData(vtxIndxPlug, vertexIndices, keyIndex);            
        p3dDeformGetPlugData(vtxOffPlug, vertexOffsets, keyIndex);
        

        //so now we should have vertexOffsets and indices
        
        MVector curVtx;

        int useMEL = 0;
        MGlobal::executeCommand("menuItem -q -cb p3dDeformerSetPoseMenuItem", useMEL);
            
        if (useMEL)
        {
            MString stub = "setAttr ";
            stub+=meshFn.fullPathName();
            stub+=".vtx[";
            MString cmd;
            for (i=0; i < vertexIndices.length(); i++)
            {
                cmd = stub;
                cmd+=vertexIndices[i];
                cmd+="] ";
                curVtx = vertexOffsets[i];

                cmd+=curVtx.x;
                cmd+=" ";
                cmd+=curVtx.y;
                cmd+=" ";
                cmd+=curVtx.z;
                dgModifier.commandToExecute(cmd);
            }
            dgModifier.doIt();
        }
        else
        {
            status = p3dDeformSetTweaksByIndex(meshNode, vertexIndices, vertexOffsets);
            P3D_DEFORM_STATUS(status);
        }
        
        int hilite;
        //test whether the Options menu exists if so query for useMel option
        MString UItype;
        MGlobal::executeCommand ( "objectTypeUI p3dDeformerHighlightMenuItem", UItype);
        if(UItype == "commandMenuItem")    
        MGlobal::executeCommand("menuItem -q -cb p3dDeformerHighlightMenuItem", hilite);
        else
        {
          MGlobal::displayError("Required UI control (Option menu) does not exist.");
            setResult(0);
            return MStatus::kFailure;
        }

        if (hilite)
        {
            //select all the vertices in the vertexIndices array
            MString selCmd;
            for (unsigned vIt = 0; vIt < vertexOffsets.length(); vIt++)
            {
                MVector curVtx = vertexOffsets[vIt];
                if ((curVtx.x == 0.0f) && (curVtx.y == 0.0f) && (curVtx.z == 0.0f))
                {
                    vertexIndices.remove(vIt);
                    vertexOffsets.remove(vIt);
                    vIt--; //start at beginning of list again (because list shrinks)
                }

            }

            if (vertexIndices.length() == 0)
            {
                setResult(stateFn.name());
                return MStatus::kSuccess;

            }
            
            status = p3dDeformBuildContiguousSelectionSet(selCmd, meshFn.fullPathName(), vertexIndices);
            MGlobal::executeCommand(selCmd);
        }

    }


    setResult(stateFn.name());

    
    return MS::kSuccess;
  

}


MStatus p3dDeformExpressionStateSetPoseCmd::doIt(const MArgList& args)
{
    MStatus status;
    MObject object, stateObject;

    float keyVal = 0.0f;

    if (args.length() > 0)
    {
        if (args.length() != 2)
        {
            displayError("Incorrect number of arguments");
            return MS::kFailure;
        }
        else
        {
            // arguments specified, so find the corresponding group
            status = p3dDeformFindDependencyNode(args.asString(0), object);
            P3D_DEFORM_STATUS(status);

            keyVal = (float)args.asDouble(1);

            status = p3dDeformFindInHistory(object, "p3dDeformExpressionState", true, stateObject);
            P3D_DEFORM_STATUS(status);
        }
    }
    

    return doIt(stateObject, keyVal);
}




p3dDeformExpressionStateAddExtraKeysCmd::p3dDeformExpressionStateAddExtraKeysCmd()
{
}


p3dDeformExpressionStateAddExtraKeysCmd::~p3dDeformExpressionStateAddExtraKeysCmd()
{
}


void* p3dDeformExpressionStateAddExtraKeysCmd::creator()
{
    return new p3dDeformExpressionStateAddExtraKeysCmd;
}


bool p3dDeformExpressionStateAddExtraKeysCmd::isUndoable() const
{
    return false;
}


MStatus p3dDeformExpressionStateAddExtraKeysCmd::doIt(const MObject& stateNode, float keyVal)
{
    
    //here the problem we're solving is that you might key some vertices at one key value which are not keyed
    //at another, so they will be stuck at that point and will not go back up to the neutral as you would expect.
    //so what we do here is to find the index array at the keyVal, and go through it, checking to make sure
    //that those indices exist in all the other arrays.  this is a pretty brutal operation.
    //if there's lots of vertices and lots of keys, it might take a few seconds.
    //beats MEL's couple of minutes, though! (plus this is impossible in MEL anyway)
    
    MStatus status;
    
    MFnDependencyNode stateFn(stateNode, &status);
    
    MObject meshNode;
    status = p3dDeformFindInHistory(stateNode, "mesh", false, meshNode);
    P3D_DEFORM_STATUS(status);
    
    MFnMesh meshFn(meshNode, &status);
    P3D_DEFORM_STATUS(status);
    
    MPlug vtxIndxPlug = stateFn.findPlug("vertexIndicesArray", &status);
    P3D_DEFORM_STATUS(status);
    
    MPlug vtxOffPlug = stateFn.findPlug("vertexOffsetsArray", &status);
    P3D_DEFORM_STATUS(status);
    
    MPlug keyIndxPlug = stateFn.findPlug("keyIndices", &status);
    P3D_DEFORM_STATUS(status);

    MPlug elementPlug;
    
    int index;

    status = p3dDeformFindKeyIndex(keyIndxPlug, keyVal, index);
    if (status == MStatus::kFailure)
        return status;


    
    //we should have retrieved the index of the newly added array by now.

    MIntArray vertexIndices;
    MVectorArray vertexOffsets;
    p3dDeformGetPlugData(vtxOffPlug, vertexOffsets, index);
    p3dDeformGetPlugData(vtxIndxPlug, vertexIndices, index);
    
    

    //so now we have vertexOffsets and vertexIndices
    MVector curVtx;
    unsigned iter, j, newIter;
    int newIdx;
    int otherArray;
    unsigned len = vertexIndices.length();
    for (iter = 0; iter < len; iter++) //this runs through all the indices of the current array
    {
        newIdx = vertexIndices[iter]; //this is the new index from the newly created array
        
        for (otherArray = 0; otherArray < (int)vtxIndxPlug.numElements(); otherArray++)
        {
            if (otherArray == index)      //index is the index of the newly created array- we know it has the vtx index
                continue;
            
            //this gets us an int array containing all the current indices
            MIntArray curVertexIndices;
            MVectorArray curVertexOffsets;

            p3dDeformGetPlugData(vtxIndxPlug, curVertexIndices, otherArray);
            p3dDeformGetPlugData(vtxOffPlug, curVertexOffsets, otherArray);

            bool found = false;
            unsigned curLen = curVertexIndices.length();
            for (j =0; j < curLen; j++)               //for all indices in this array
            {
                int curVertexIdx = curVertexIndices[j];
                if (newIdx == curVertexIdx)                  //if the index exists in the current array
                {
                    found = true;
                    break;
                }
            }

            if (!found) //we didn't find this index in the current index array, so add that index 
                            //as well as a 0 0 0 offset to the end of the indices and offset arrays
            {
                curVertexIndices.append((long)newIdx);
                p3dDeformSetPlugData(vtxIndxPlug, curVertexIndices, otherArray);

                curVertexOffsets.append(MVector::zero);
                p3dDeformSetPlugData(vtxOffPlug, curVertexOffsets, otherArray);
            }
        }
    }  //end iter through all indices of current array

    //now we need to go through all the indices of all the other arrays, and if they don't exist in the new array,
    //add them in with a zero offset.  

    for (otherArray = 0; otherArray < (int)vtxIndxPlug.numElements(); otherArray++)
    {
        if (otherArray == index)
            continue;
        //this gets the info about the current array
        MIntArray curVertexIndices;
        MVectorArray curVertexOffsets;
        p3dDeformGetPlugData(vtxIndxPlug, curVertexIndices, otherArray);
        p3dDeformGetPlugData(vtxOffPlug, curVertexOffsets, otherArray);

        //for every index in the current array
        for (iter = 0; iter < curVertexIndices.length(); iter++)
        {
            bool found = false;
            int curIdx = curVertexIndices[iter];   //check if curIdx is in vertexIndices
            //check the indices in the new array
            for (newIter = 0; newIter < vertexIndices.length(); newIter++)
            {
                if (curIdx == vertexIndices[newIter])
                {
                    found = true;
                    break;
                }

            }
            
            //if that index doesn't exist in the new array
            if (found == false)
            {
                vertexIndices.append((long)curIdx);
                vertexOffsets.append(MVector::zero);

                p3dDeformSetPlugData(vtxIndxPlug, vertexIndices, index);
                p3dDeformSetPlugData(vtxOffPlug, vertexOffsets, index);
            }
        }
    }
    setResult(stateFn.name());
    return MS::kSuccess;
  

}


MStatus p3dDeformExpressionStateAddExtraKeysCmd::doIt(const MArgList& args)
{
    MStatus status;
    MObject object, stateObject;

    float keyVal = 0.0f;

    if (args.length() > 0)
    {
        if (args.length() != 2)
        {
            displayError("Incorrect number of arguments");
            return MS::kFailure;
        }
        else
        {
            // arguments specified, so find the corresponding group
            status = p3dDeformFindDependencyNode(args.asString(0), object);
            P3D_DEFORM_STATUS(status);

            keyVal = (float)args.asDouble(1);

            status = p3dDeformFindInHistory(object, "p3dDeformExpressionState", true, stateObject);
            P3D_DEFORM_STATUS(status);
        }
    }
    

    return doIt(stateObject, keyVal);
}










p3dDeformExpressionStateSetKeyCmd::p3dDeformExpressionStateSetKeyCmd()
{
}


p3dDeformExpressionStateSetKeyCmd::~p3dDeformExpressionStateSetKeyCmd()
{
}


void* p3dDeformExpressionStateSetKeyCmd::creator()
{
    return new p3dDeformExpressionStateSetKeyCmd;
}


bool p3dDeformExpressionStateSetKeyCmd::isUndoable() const
{
    return false;
}





MStatus p3dDeformExpressionStateSetKeyCmd::doIt(const MArgList& args)
{
    MStatus status;
    MObject object, stateObject;

    float keyVal = 0.0f;

    if (args.length() > 0)
    {
        if (args.length() != 2)
        {
            displayError("Incorrect number of arguments");
            return MS::kFailure;
        }
        else
        {
            // arguments specified, so find the corresponding group
            status = p3dDeformFindDependencyNode(args.asString(0), object);
            P3D_DEFORM_STATUS(status);

            keyVal = (float)args.asDouble(1);

            status = p3dDeformFindInHistory(object, "p3dDeformExpressionState", true, stateObject);
            P3D_DEFORM_STATUS(status);
        }
    }
    

    return doIt(stateObject, keyVal);
}





//this command sets a pose key.
//it receives a state node and a key value
//we iterate through the mesh corresponding to the state node,
//looking at the tweak node for vertex tweaks.
//if there are any, we create a new vector array and fill it with the offsets
//and write that to the state node's plug
//similarly for the vertex indices array and the key indices array.

//so: get all the offsets.  get all the corresponding indices.
//set <expressionNode>.vertexOffsetsArray[keyIndex] = <new_offset_array>
//set <expressionNode>.vertexIndicesArray[keyIndex] = <new_index_array>
MStatus p3dDeformExpressionStateSetKeyCmd::doIt(const MObject& stateNode, float keyVal)
{
    unsigned i;
    MStatus status;
    MString cmd;

    MFnDependencyNode stateFn(stateNode, &status);
    
    MObject meshNode;
    status = p3dDeformFindInHistory(stateNode, "mesh", false, meshNode);
    if (status != MStatus::kSuccess)
    {
        setResult(0);
        return status;
    }
    
    MFnMesh meshFn(meshNode, &status);
    P3D_DEFORM_STATUS(status);
    
    MPlug vtxIndxPlug = stateFn.findPlug("vertexIndicesArray", &status);
    P3D_DEFORM_STATUS(status);
    MPlug vtxOffPlug = stateFn.findPlug("vertexOffsetsArray", &status);
    P3D_DEFORM_STATUS(status);
    MPlug keyIndicesPlug = stateFn.findPlug("keyIndices", &status);
    P3D_DEFORM_STATUS(status);

    
    //we have to find the next available keyIndex by searching the keyIndices array
    //if an element is -3 (P3D_INVALID_KEY_VAL), it is free
    MFloatArray allKeys;
    
    float curKey;
    for (i = 0; i < keyIndicesPlug.numElements(); i++)
    {
        keyIndicesPlug.elementByLogicalIndex(i, &status).getValue(curKey);
        P3D_DEFORM_STATUS(status);
        allKeys.append(curKey);
        
    }

    int keyIndex = allKeys.length();
    for (i =0; i < allKeys.length(); i++)
    {
        if (allKeys[i] == keyVal) //get keyIdx of a existing key
        {
            keyIndex = i;
            break;
        }
        else if (allKeys[i] == P3D_INVALID_KEY_VAL) // or get keyIdx of the first empty element
        {
            keyIndex = i;
            break;
        }
    }

    MIntArray indices;      //the array of vertex indices from the mesh
    MVectorArray offsets;   //the array of vertex offsets
    int acc=0, rej=0;

    
    int useMEL = 0;
    //test whether the Options menu exists if so query for useMel option
    MString UItype;
    MGlobal::executeCommand ( "objectTypeUI p3dDeformerSetPoseMenuItem", UItype);
    if(UItype == "commandMenuItem")    
    MGlobal::executeCommand("menuItem -q -cb p3dDeformerSetPoseMenuItem", useMEL);
    else
    {
      MGlobal::displayError("Required UI control (Option menu) does not exist.");
        setResult(0);
        return MStatus::kFailure;
    }

    if (useMEL)
    {
        MString stub = "getAttr ";
        stub+=meshFn.fullPathName();
        stub+=".vtx[";
        for (i=0; i < (unsigned)meshFn.numVertices(); i++)
        {
            cmd = stub;
            cmd+=(long)i;
            cmd+="]";
            MDoubleArray da;
            MVector vtx;
            MGlobal::executeCommand(cmd, da);
            vtx.x = da[0];
            vtx.y = da[1];
            vtx.z = da[2];
            if (vtx.length() > 0.0000001f)
            {
                indices.append(i);
                offsets.append(vtx);
            }
        }

    }
    else
    {
        status = p3dDeformGetActiveTweaks(meshNode, indices, offsets, 0.0000001f);
        P3D_DEFORM_STATUS(status);
    }

    
    if (offsets.length() == 0)
    {
//        MGlobal::displayError("No tweaked vertices found.");
//        setResult(0);
//        return MStatus::kFailure;

        // Enhancement [v17.1]
        // If no tweaks are found, user wants to set a Pose key equal to the Neutral Pose.
        // Allow this by setting a key with no offset.
        offsets.append( MVector( 0.0, 0.0, 0.0 ) );
        indices.append( 0 );
    }
    //now we need to create new arrays at the correct index
    //i can't figure out how to do this with API calls (and I've looked!)
    //so we create them with MEL
    cmd = "setAttr -type Int32Array ";
    cmd+=stateFn.name();
    cmd+=".vertexIndicesArray[";
    cmd+=(long)keyIndex;
    cmd+="] 1 0";
    MGlobal::executeCommand(cmd);

    cmd = "setAttr -type vectorArray ";
    cmd+=stateFn.name();
    cmd+=".vertexOffsetsArray[";
    cmd+=(long)keyIndex;
    cmd+="] 1 0 0 0";
    MGlobal::executeCommand(cmd);


    //this sets the vertexIndicesArray[keyIndex] plug 
    //and the vertexOffsetsArray[keyIndex] plug
    p3dDeformSetPlugData(vtxIndxPlug, indices, keyIndex);
    p3dDeformSetPlugData(vtxOffPlug, offsets, keyIndex);

    //this does the following operation:
    //keyIndices[keyIndex] = keyVal
    
    MPlug curKeyPlug = keyIndicesPlug.elementByLogicalIndex(keyIndex, &status);
    P3D_DEFORM_STATUS(status);
    status = curKeyPlug.setValue(keyVal);
    P3D_DEFORM_STATUS(status);

    

    int resetNeutral = 0;
    //test whether the Options menu item exists if so query for for resetNeutral option
    MGlobal::executeCommand ( "objectTypeUI p3dDeformerResetNeutralMenuItem", UItype);
    if(UItype == "commandMenuItem")    
    MGlobal::executeCommand("menuItem -q -cb p3dDeformerResetNeutralMenuItem", resetNeutral);
    else
    {
      MGlobal::displayError("Required UI control (Reset Neutral) does not exist.");
        setResult(0);
        return MStatus::kFailure;
    }

    if (resetNeutral)
    {
        MString resetCmd = "p3dDeformExpressionStateSetPose ";
        resetCmd+=stateFn.name();
        resetCmd+=" ";
        resetCmd+="0.0";
        MGlobal::executeCommand(resetCmd);
    }


    setResult(1);
    return MS::kSuccess;
}

//this function either adds or removes vertices from the specified expression
//and the specified key.  the vertices used are those in the current active selection list


p3dDeformUpdateExpressionCmd::p3dDeformUpdateExpressionCmd()
{
}


p3dDeformUpdateExpressionCmd::~p3dDeformUpdateExpressionCmd()
{
}


void* p3dDeformUpdateExpressionCmd::creator()
{
    return new p3dDeformUpdateExpressionCmd;
}


bool p3dDeformUpdateExpressionCmd::isUndoable() const
{
    return false;
}

MStatus p3dDeformUpdateExpressionCmd::doIt(const MArgList& args)
{
    MStatus status;
    MObject object, stateObject;

    float keyVal = 0.0f;
    int mode = -1;

    if (args.length() > 0)
    {
        if (args.length() != 3)
        {
            displayError("Incorrect number of arguments");
            return MS::kFailure;
        }
        else
        {
            // arguments specified, so find the corresponding group
            status = p3dDeformFindDependencyNode(args.asString(0), object);
            P3D_DEFORM_STATUS(status);

            keyVal = (float)args.asDouble(1);

            status = p3dDeformFindInHistory(object, "p3dDeformExpressionState", true, stateObject);
            P3D_DEFORM_STATUS(status);

            mode = args.asInt(2);
        }
    }
    

    return doIt(stateObject, keyVal, mode);
}


//mode == 0 --> remove vertices, mode == 1 --> add vertices
MStatus p3dDeformUpdateExpressionCmd::doIt(const MObject& stateNode, float keyVal, int mode)
{
    
    unsigned i,j;
    unsigned curIdx;
    MStatus status;
    MString cmd;
    
    MSelectionList sel;
    status = MGlobal::getActiveSelectionList(sel);
    P3D_DEFORM_STATUS(status);
    
    MStringArray allItems;
    status = sel.getSelectionStrings(allItems);
    P3D_DEFORM_STATUS(status);
    unsigned startIndex= 0;
    unsigned endIndex = 0;
    MIntArray indexList;
    

    //parse selection list for individual vertex indices- put them into indexList
    for (i=0; i < allItems.length(); i++)
    {
        MString curItem= allItems[i];
        int index = curItem.index('[');
        if (index == -1)
            return MStatus::kFailure;

        MString substr = curItem.substring(index, curItem.length());
        MStringArray verts;
        substr.split(':', verts);
        if (verts.length() > 2)
        {
            MGlobal::displayError("Error parsing selection in p3dDeformUpdateExpressionCommand.");
            return MStatus::kFailure;
        }
        
        verts[0] = verts[0].substring(1, verts[0].length());  //get rid of '['
        startIndex = verts[0].asInt();

        if (verts.length() == 2)
        {
            verts[1] = verts[1].substring(0, verts[1].rindex(']') -1);
            endIndex = verts[1].asInt();
        }
        else if (verts.length() == 1)
        {
            endIndex = startIndex;
        }

        for (curIdx = startIndex; curIdx <=endIndex; curIdx++)
        {
            indexList.append(curIdx);
        }
    }
    
    //now get the plugs that we'll need
    MFnDependencyNode stateFn(stateNode, &status);
    
    MObject meshNode;
    status = p3dDeformFindInHistory(stateNode, "mesh", false, meshNode);
    if (status != MStatus::kSuccess)
    {
        setResult(0);
        return status;
    }

    MFnMesh meshFn(meshNode, &status);
    P3D_DEFORM_STATUS(status);

    MPlug vtxIndxPlug = stateFn.findPlug("vertexIndicesArray", &status);
    P3D_DEFORM_STATUS(status);
    MPlug vtxOffPlug = stateFn.findPlug("vertexOffsetsArray", &status);
    P3D_DEFORM_STATUS(status);
    MPlug keyIndxPlug = stateFn.findPlug("keyIndices", &status);
    P3D_DEFORM_STATUS(status);

    MIntArray curIndices;
    MVectorArray curOffsets;
    
    
    int keyIndex;
    status = p3dDeformFindKeyIndex(keyIndxPlug, keyVal, keyIndex);
    if (status == MStatus::kFailure)
        return status;
    
    p3dDeformGetPlugData(vtxIndxPlug, curIndices, keyIndex);
    p3dDeformGetPlugData(vtxOffPlug, curOffsets, keyIndex);
    

    if (mode == 0) //we're deleting the vertices from this key
    {
        
        int remCount = 0;
        for (i = 0; i < indexList.length(); i++)
        {
            int curIndex = indexList[i];

            for (j=0; j < curIndices.length(); j++)
            {
                if (curIndices[j] == curIndex)
                {
                    curOffsets.remove(j);
                    curIndices.remove(j);   //removes the index at curIndices[j], which is == indexList[i]
                    j--;
                    remCount++;
                    //here's where we need to check other keys for this index- if they're all zero, we delete them all
                    bool removeCurIdx = true;
                    
                    MIntArray curVI;
                    MVectorArray curVO;
                    
                    for (unsigned keyIt = 0; keyIt < keyIndxPlug.numElements(); keyIt++)
                    {
                        if (keyIt == (unsigned)keyIndex)
                            continue;
                        
                        
                        p3dDeformGetPlugData(vtxIndxPlug, curVI, keyIt);
                        p3dDeformGetPlugData(vtxOffPlug, curVO, keyIt);
                        
                        for (unsigned ti=0; ti < curVI.length(); ti++)
                        {
                            if (curVI[ti] == curIndex)
                            {
                                MVector v = curVO[ti];
                                if ((v.x != 0.0f) || (v.y != 0.0f) || (v.z != 0.0f))
                                {
                                    removeCurIdx = false;
                                    break;
                                }
                            }
                        }
                    }
                    if (removeCurIdx == true)
                    {
                        for (unsigned keyIt = 0; keyIt < keyIndxPlug.numElements(); keyIt++)
                        {
                            if (keyIt == (unsigned)keyIndex)
                                continue;
                            p3dDeformGetPlugData(vtxIndxPlug, curVI, keyIt);
                            p3dDeformGetPlugData(vtxOffPlug, curVO, keyIt);
                            
                            for (unsigned ti=0; ti < curVI.length(); ti++)
                            {
                                if (curVI[ti] == curIndex)
                                {
                                    curVO.remove(ti);
                                    curVI.remove(ti);
                                    p3dDeformSetPlugData(vtxIndxPlug, curVI, keyIt);
                                    p3dDeformSetPlugData(vtxOffPlug, curVO, keyIt);
                                    ti--;
                                    break;
                                }
                            }
                        }
                    }
                    break;
                }
            }
        }
        //done all removing 
        
        p3dDeformSetPlugData(vtxIndxPlug, curIndices, keyIndex);
        p3dDeformSetPlugData(vtxOffPlug, curOffsets, keyIndex);

        MString out = "removed ";
        out+=remCount;
        out+=" vertices.";
        MGlobal::displayInfo(out);

        for (i=0;i < keyIndxPlug.numElements(); i++)
        {
            if (i == (unsigned)keyIndex)
                continue;
            float curKey;
            MPlug elementPlug = keyIndxPlug.elementByLogicalIndex(i, &status);
    
            P3D_DEFORM_STATUS(status);
            status = elementPlug.getValue(curKey);
            P3D_DEFORM_STATUS(status);
            
            cmd = "p3dDeformExpressionStateAddExtraKeys ";
            cmd+=meshFn.fullPathName();
            cmd+=" ";
            cmd+=curKey;
            MGlobal::executeCommand(cmd);
        }
    }
    else if (mode == 1)
    {
        //we want to add the selected indices and offsets to this key
        //so we need to get the offsets of the selected vertices from the tweak node
        
        MIntArray indices;
        MVectorArray offsets;

        p3dDeformGetPlugData(vtxIndxPlug, indices, keyIndex);
        p3dDeformGetPlugData(vtxOffPlug, offsets, keyIndex);
        
        int numOldIndices = indices.length();
        int* oldIndices = new int[numOldIndices];
        indices.get(oldIndices);
        qsort(oldIndices, numOldIndices, sizeof(int), intCompare);
        unsigned t;
        int numAdded = 0;
        int numOverwrote = 0;

        p3dDeformGetTweaksByIndex(meshNode, indexList, offsets);
        for (i=0; i < indexList.length(); i++)
        {
            MVector curVtx = offsets[i];
    
            //this is just a quick prelim search- because on average we won't find anything.
            int* loc = (int*)bsearch(&(indexList[i]), oldIndices, numOldIndices, sizeof(int), intCompare);
            if (loc != NULL)  
            {
                //we did find the index- now we have to find where in the offsets array the specified vertex is
                //and set it to its new position
                for (t = 0; t < indices.length(); t++)
                {
                    if (indices[t] == indexList[i])
                    {
                        offsets.set(curVtx, t);
                        numOverwrote++;
                    }
                }
            }
            else
            {
                indices.append(indexList[i]);
                offsets.append(curVtx);
                numAdded++;
            }
            
        }
        p3dDeformSetPlugData(vtxIndxPlug, indices, keyIndex);
        p3dDeformSetPlugData(vtxOffPlug, offsets, keyIndex);

        delete[] oldIndices;

        MString cmd = "p3dDeformExpressionStateAddExtraKeys ";
        cmd+=meshFn.fullPathName();
        cmd+=" ";
        cmd+=keyVal;
        MGlobal::executeCommand(cmd);

        MString out;
        if (numAdded > 0)
        {
            out = "added ";
            out+=numAdded;
            out+=" vertices.";
            MGlobal::displayInfo(out);
        }
        if (numOverwrote > 0)
        {
            out = "updated ";
            out+=numOverwrote;
            out+=" vertices.";
            MGlobal::displayInfo(out);
        }
    
    }
    else
    {
        MGlobal::displayError("p3dDeformUpdateVertices: invalid mode specified.");
        setResult(-1);
        return MStatus::kFailure;
    }

    setResult(1);
    return MS::kSuccess;
}





//this function either adds or removes vertices from the specified expression
//and the specified key.  the vertices used are those in the current active selection list


p3dDeformPruneExpressionCmd::p3dDeformPruneExpressionCmd()
{
}


p3dDeformPruneExpressionCmd::~p3dDeformPruneExpressionCmd()
{
}


void* p3dDeformPruneExpressionCmd::creator()
{
    return new p3dDeformPruneExpressionCmd;
}


bool p3dDeformPruneExpressionCmd::isUndoable() const
{
    return false;
}





MStatus p3dDeformPruneExpressionCmd::doIt(const MArgList& args)
{
    MStatus status;
    MObject object, stateObject;

    float tol = 0.0f;

    if (args.length() > 0)
    {
        if (args.length() != 2)
        {
            displayError("Incorrect number of arguments");
            return MS::kFailure;
        }
        else
        {
            // arguments specified, so find the corresponding group
            status = p3dDeformFindDependencyNode(args.asString(0), object);
            P3D_DEFORM_STATUS(status);

            tol = (float)args.asDouble(1);

            status = p3dDeformFindInHistory(object, "p3dDeformExpressionState", true, stateObject);
            P3D_DEFORM_STATUS(status);

        }
    }
    

    return doIt(stateObject, tol);
}




MStatus p3dDeformPruneExpressionCmd::doIt(const MObject& stateNode, float tolerance)
{
    MStatus status;
    MFnDependencyNode stateFn(stateNode, &status);
    
    MObject meshNode;
    status = p3dDeformFindInHistory(stateNode, "mesh", false, meshNode);
    if (status != MStatus::kSuccess)
    {
        setResult(0);
        return status;
    }
    
    MFnMesh meshFn(meshNode, &status);
    P3D_DEFORM_STATUS(status);
    
    MPlug vtxIndxPlug = stateFn.findPlug("vertexIndicesArray", &status);
    P3D_DEFORM_STATUS(status);
    MPlug vtxOffPlug = stateFn.findPlug("vertexOffsetsArray", &status);
    P3D_DEFORM_STATUS(status);
    MPlug keyIndicesPlug = stateFn.findPlug("keyIndices", &status);
    P3D_DEFORM_STATUS(status);

    unsigned numKeys = keyIndicesPlug.numElements();
    if (numKeys == 0)
    {
        setResult(0);
        return MStatus::kFailure;
    }
    unsigned ki,vi,vo;
    MIntArray allIndices;

    //we make the assumption that all of the indices are in each index array, as they should be
    //so build an 'allIndices' array, then remove those elements that have offsets greater than tolerance
    //we end up with allIndices consisting of only those indices whose offsets are less than tolerance
    MIntArray indices;
    
    p3dDeformGetPlugData(vtxIndxPlug, indices, 0);
    for (vi = 0; vi < indices.length(); vi++)
    {
        int curI = indices[vi];
        allIndices.append(curI);
    }

    for (ki=0; ki < numKeys; ki++)
    {
        MVectorArray offsets;
        MIntArray indices;
        p3dDeformGetPlugData(vtxOffPlug, offsets, ki);
        p3dDeformGetPlugData(vtxIndxPlug, indices, ki);

        for (vo =0; vo < offsets.length(); vo++)
        {
            MVector curVec = offsets[vo];
            if (curVec.length() >= tolerance)
            {
                int index = indices[vo];
                for (vi=0; vi < allIndices.length(); vi++)
                {
                    if (allIndices[vi] == index)
                    {
                        allIndices.remove(vi);
                        break;
                    }
                }
            }
        }
    }

    MString cmd;
    if (allIndices.length() > 0)
    {
        cmd = "select -cl ";
        MGlobal::executeCommand(cmd);

        MString selCmd;
        p3dDeformBuildContiguousSelectionSet(selCmd, meshFn.fullPathName(), allIndices);
        MGlobal::executeCommand(selCmd);
        setResult((int)allIndices.length());
    }
    else 
        setResult(0);
    return MStatus::kSuccess;

}



//
//p3dDeformTestStateCmd- do computations for test slider- offset vertices by resulting amounts
//


p3dDeformTestStateCmd::p3dDeformTestStateCmd()
{
}


p3dDeformTestStateCmd::~p3dDeformTestStateCmd()
{
}


void* p3dDeformTestStateCmd::creator()
{
    return new p3dDeformTestStateCmd;
}


bool p3dDeformTestStateCmd::isUndoable() const
{
    return false;
}

MStatus p3dDeformTestStateCmd::doIt(const MArgList& args)
{
    MStatus status;
    MObject object;

    //args(0) is the state name, args(1) is the weight
    float weight = 0.0f;

    if (args.length() > 0)
    {
        if (args.length() != 2)
        {
            displayError("Incorrect number of arguments");
            return MS::kFailure;
        }
        else
        {
            // arguments specified, so find the corresponding state
            status = p3dDeformFindDependencyNode(args.asString(0), object);
            P3D_DEFORM_STATUS(status);
            weight = (float)args.asDouble(1);
        }
    }
    return doIt(object, weight);
}



/*************************************************************************
//    Description: Computes the offset data for new test slider position    
//
// Parameters: stateNode, weight - represents position of slider (-1 to 1)
//
// Returns:
//
***************************************************************************/
MStatus p3dDeformTestStateCmd::doIt(const MObject& stateNode, float weight)
{
    MStatus status;
    unsigned i;

    MIntArray finalIndices;
    MVectorArray finalOffsets;
    
    MFnDependencyNode stateFn(stateNode, &status);
    MPlug keyIndicesPlug = stateFn.findPlug("keyIndices", &status);
    P3D_DEFORM_STATUS(status);

    //return if no valid keys exist
    unsigned numKeys = keyIndicesPlug.numElements();
    if (validKeysExist(keyIndicesPlug, numKeys) == 0)
    {
        //debug
        p3dDeformDebugTrace("Exiting p3dDeformTestStateCmd::doIt");
        //debug
        setResult(1);
        return MStatus::kSuccess;
    }
    
    float abs_weight_value = static_cast<float>(fabs(weight));
    if ( abs_weight_value > 0.0f )
    {
        int numKeys = keyIndicesPlug.numElements();
        
        //create a temporary array of positive and negative key values
        MFloatArray posKeys;
        MFloatArray negKeys;
        int numPosKeys = 0, numNegKeys = 0;
        
        numPosKeys = getKeys(numKeys, keyIndicesPlug, posKeys, true);
        numNegKeys = getKeys(numKeys, keyIndicesPlug, negKeys, false);
        
        MFloatArray allKeys;

        //find the index of the 2 bounding keys
        MFloatArray boundingKeys;
        float mirror = 1.0f;
        bool positiveWeight = (weight > 0)? true:false;

        if(positiveWeight && numPosKeys)    
            findBoundingKeys(posKeys, weight, boundingKeys);

        else if(!positiveWeight && numNegKeys)
            findBoundingKeys(negKeys, weight, boundingKeys);

        else if(!positiveWeight && numNegKeys == 0) //to provide backward compatibility
        {
            findBoundingKeys(posKeys, fabsf(weight), boundingKeys);
            positiveWeight = true;
            mirror = -1.0f;
        }
        else if(positiveWeight && numPosKeys == 0) //not needed for backward compatibility but provided for completeness 
        {
            findBoundingKeys(negKeys, (-1 * weight), boundingKeys);
            positiveWeight = false;
            mirror = -1.0f;
        }

        //get the vertex offset information for high and low bounding keys
        status = lowP3dOffsets.fillArray(stateFn, boundingKeys[0]);
        P3D_DEFORM_STATUS(status);
        status = highP3dOffsets.fillArray(stateFn, boundingKeys[1]);
        P3D_DEFORM_STATUS(status);
        p3dOffset* lowOffsetArray = lowP3dOffsets.getOffsetArray();
        p3dOffset* highOffsetArray = highP3dOffsets.getOffsetArray();

        long numVertices;
        //no of vertices in all keys of an expressions should be the same
        if(lowP3dOffsets.getNumVertices() !=  highP3dOffsets.getNumVertices() )
        {
            status = MStatus::kFailure;
            P3D_DEFORM_STATUS(status);
        }
        else numVertices = lowP3dOffsets.getNumVertices();

        float x,y,z;
        float high_frac, low_frac;
        bool lowKeyFound = (boundingKeys[0] == P3D_INVALID_KEY_VAL || boundingKeys[0] == 0.0f) ? false:true;
        bool highKeyFound = (boundingKeys[1] == P3D_INVALID_KEY_VAL || boundingKeys[1] == 0.0f)? false:true;
        float lowKey = boundingKeys[0];
        float highKey = boundingKeys[1];

        //determine weighting factors: high_frac and low_frac
        if (!lowKeyFound && !positiveWeight) //neg wgt smaller than existing neg keys
        {
            high_frac = 1.0f;
            low_frac = 0.0f;
        }
        else if(!highKeyFound && positiveWeight) //pos wgt smaller than existing pos keys
        {
            high_frac = 0.0f;
            low_frac = 1.0f;
        }
        else if(!highKeyFound && !positiveWeight) //neg bounded by zero
        {
            high_frac = 0.0f;
            low_frac = fabsf( (weight - 0.0f) / (1 - 0.0f) ); 
            p3dDeformDebugFloat("low_frac", low_frac);
        }
        else if(!lowKeyFound && positiveWeight)//pos wgt bounded by zero
        {
            high_frac = fabsf( (weight - 0.0f) / (highKey - 0.0f) );
            low_frac = 0.0f;
        }
        else if(lowKeyFound && highKeyFound) //all other cases (low and high bound keys found and are not equal ||low = high bounding key)
        {
            if (keyEquals(highKey, lowKey)) 
            {
                high_frac = 0.0f; low_frac = 1.0f;
            }
            else
            {
                high_frac = fabsf( (weight - lowKey) / (highKey - lowKey) );
                low_frac = 1.0f - high_frac;
            }
        }
        else 
        {
            p3dDeformDebugTrace("Error condition detected!");
            return MS::kFailure; //(!lowKeyFound && !highKeyFound) this cannot logically occur
        }


        for (int i=0; i < numVertices; i++)
        {
            const p3dOffset& low = lowOffsetArray[i];
            const p3dOffset& high = highOffsetArray[i];
    
            x = mirror * ( high_frac*high.x + low_frac*low.x );
            y = mirror * ( high_frac*high.y + low_frac*low.y );
            z = mirror * ( high_frac*high.z + low_frac*low.z );

            if ((x!=0.0f) || (y!=0.0f) || (z!=0.0f))
            {
                
                if(lowKeyFound)  finalIndices.append(low.index);
                else if(highKeyFound) finalIndices.append(high.index);
                else p3dDeformDebugTrace("This fails!");
                finalOffsets.append(MVector(x,y,z));
            }
        }
    }
    
    //apply the offsets to the vertex
    MVector curVtx;
    int useMEL = 0;
    
    //test whether the Options menu exists if so query for useMel option
    MString UItype;
    MGlobal::executeCommand ( "objectTypeUI p3dDeformerSetPoseMenuItem", UItype);
    if(UItype == "commandMenuItem")    
    MGlobal::executeCommand("menuItem -q -cb p3dDeformerSetPoseMenuItem", useMEL);
    else
    {
      MGlobal::displayError("Required UI control (Option menu) does not exist.");
        setResult(0);
        return MStatus::kFailure;
    }

    //get meshNode to apply offsets to it
    MObject meshNode;
    status = p3dDeformFindInHistory(stateNode, "mesh", false, meshNode);
    if (status != MStatus::kSuccess)
    {
        setResult(0);
        return status;
    }
    
    MFnMesh meshFn(meshNode, &status);
    P3D_DEFORM_STATUS(status);

    if (useMEL)
    {
        
        MString stub = "setAttr ";
        stub+=meshFn.fullPathName();
        stub+=".vtx[";
        MString cmd;
        for (i=0; i < finalIndices.length(); i++)
        {
            cmd = stub;
            cmd+=finalIndices[i];
            cmd+="] ";
            curVtx = finalOffsets[i];
            if (weight < 0.0f)
                curVtx = curVtx * -1;

            cmd+=curVtx.x;
            cmd+=" ";
            cmd+=curVtx.y;
            cmd+=" ";
            cmd+=curVtx.z;
            dgModifier.commandToExecute(cmd);
        }
        dgModifier.doIt();
    }

    else
    {
        p3dDeformSetTweaksByIndex(meshNode, finalIndices, finalOffsets);
    }
    return MStatus::kSuccess;

}


/*************************************************************************
//    Description: When keys are deleted, the key_indices element is set to -2.
// Thus the number of keys alone is not enough to determine if further
// processing is required. This method counts the number of valid keys (i.e.
// keys that are not -2    .
//
// Parameters:
//
// Returns: true if at least one valid key is found
//
***************************************************************************/
inline bool p3dDeformTestStateCmd::validKeysExist(MPlug& keyIndicesPlug, int numKeys)
{
    float key_value;
    //count number of valid keys
    for(int i = 0; i < numKeys; i++)
    {     
         keyIndicesPlug.elementByLogicalIndex(i).getValue(key_value);
         if(!keyEquals( key_value, P3D_INVALID_KEY_VAL ) )
            return true;
    }
    return false;
}


/*************************************************************************
//    Description: function returns an array of either positive or negative
// key values depending on the last argument. 0.0 is appended to the end
// of the array to simulate interpolation thru neutral mesh.    
//
// Parameters:
//
// Returns:
//
***************************************************************************/
inline int p3dDeformTestStateCmd::getKeys(int key_count, MPlug& keyIndicesPlug,
                                                        MFloatArray& keys, bool positive)
{
    MStatus status;
    //debug
    p3dDeformDebugTrace("key_indices_array:");
    //debug

    for (int key_idx = 0, num_key = 0; key_idx < key_count; key_idx++)
    {
        float key_value;
        status = keyIndicesPlug.elementByLogicalIndex(key_idx).getValue(key_value);
        P3D_DEFORM_STATUS(status);
        
        if (status != MStatus::kSuccess)
            key_value = P3D_INVALID_KEY_VAL;
        
        //debug
        p3dDeformDebugFloat("key_value =", key_value);
        //debug

        //Invalid keys arise when users use the Delete Key function. Ignore invalid keys
        if(key_value != P3D_INVALID_KEY_VAL && positive && key_value > 0) 
        {
            keys.append(key_value);
            num_key++;
        }
        else if(key_value != P3D_INVALID_KEY_VAL && !positive && key_value < 0)
        {
            keys.append(key_value);
            num_key++;
        }
    }
    keys.append(0.0f); //append imaginary zero key to allow for interpolation thru the neutral mesh
    return num_key;
}


/*************************************************************************
//    Description: Returns the bounding key values given a weight and an valid
// array of keys.    This function expects the sign of the weight_value and the array
// of (MFloatArray) keys to searc in to be the same.
//
// Parameters:
//
// Returns: Bounding keys as an array of 2 elements.The invalid key constant
// (P3D_INVALID_KEY_VAL = -2) is returned to indicate the condition where an
// upper bound or lower bounding key is not found.
//
***************************************************************************/
inline void p3dDeformTestStateCmd::findBoundingKeys(MFloatArray& keys, float weight_value,
                                                                MFloatArray& boundingKeys)
{

        //find the indices of 2 bounding keys
        int lowIndex = P3D_INVALID_KEY_IDX, highIndex = P3D_INVALID_KEY_IDX;   
        float curMin = -1.5f, curMax=  1.5f; //these numbers are out of range
        int numKeys = keys.length();

        for (int key_idx = 0; key_idx < numKeys; key_idx++)
        {
            float curKey = keys[key_idx];
            if (keyEquals(curKey, P3D_INVALID_KEY_VAL))
                continue;
            if ((curKey > curMin) && (curKey <= weight_value))
            {
                lowIndex = key_idx;
                curMin = curKey;
            }
            if ((curKey < curMax) && (curKey >= weight_value))
            {
                highIndex = key_idx;
                curMax = curKey;
            }
        }    

        if(lowIndex == P3D_INVALID_KEY_IDX) 
            boundingKeys.append(P3D_INVALID_KEY_VAL);
        else boundingKeys.append(keys[lowIndex]);

        
        if(highIndex == P3D_INVALID_KEY_IDX)
            boundingKeys.append(P3D_INVALID_KEY_VAL);
        else boundingKeys.append(keys[highIndex]);
}

