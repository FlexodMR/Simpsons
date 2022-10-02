/*===========================================================================
    p3dDeformer/expressionGroup.cpp

    Copyright (c)2000 Radical Entertainment, Inc.
    All rights reserved.
===========================================================================*/

#include <maya/MGlobal.h>
#include <maya/MVectorArray.h>
#include <maya/MFloatArray.h>
#include <maya/MIntArray.h>
#include <maya/MFnTypedAttribute.h>
#include <maya/MItGeometry.h>
#include <maya/MPoint.h>
#include <maya/MDistance.h>
#include <maya/MFnDoubleArrayData.h>
#include <maya/MDGModifier.h>
#include <maya/MPlugArray.h>
#include <maya/MFnMesh.h>

#include <math.h>

#include "common.hpp"
#include "utility.hpp"
#include "expressionGroup.hpp"
#include "expressionState.hpp"

MTypeId p3dDeformExpressionGroup::id(0x040180);

MObject p3dDeformExpressionGroup::states;

p3dDeformExpressionGroup::p3dDeformExpressionGroup()
{
}


p3dDeformExpressionGroup::~p3dDeformExpressionGroup()
{
}


static void p3dDeformExpressionGroupDeleteCallback(MDGModifier& modifier,
                                                                    void* clientData)
{
    p3dDeformExpressionGroup* group = (p3dDeformExpressionGroup*)clientData;

    MNodeMessage::removeCallback(group->cbDelete);
    MNodeMessage::removeCallback(group->cbRename);

    MStatus status;

    // retrieve dependency node function set
    MObject groupObject = group->thisMObject();
    MFnDependencyNode groupNode(groupObject, &status);
    if (!status)
        return;

    // retrieve connections to the group node states attribute
    MPlug statePlug = groupNode.findPlug(p3dDeformExpressionGroup::states, &status);
    if (!status)
        return;

    // delete all states attached to group

    //we go through the statePlug looking for connected elements
    //do this loop until we delete numCon elements
    //we need the 'i' iterator because the actual size of the states array is unknown
    //e.g. suppose there are 2 connected states, but we used to have 20 states.
    //the existing states are in unknown indices, so we have to iterate until we find a connected node
    //or we fail the connectedTo call.

    //mysteriously, if you delete the expressions with a MEL command from the API, (delete p3dExpression1, etc.)
    //Maya crashes on exit in the expressionStateCreateCmd destructor.
    //whereas selecting a node from Maya, and deleting it, e.g. from the Hypergraph, does not cause problems.
    //so we have to do it this way (deleteNode call)
    
    
    int numCon = statePlug.numConnectedElements();
    int i = 0;
    int cc = 0;  //connectedCount
    while (cc < numCon )
    {
        bool found = false;
        
        while (!found)
        {
            MPlug elementPlug = statePlug.elementByLogicalIndex(i, &status);
            if (status == MStatus::kFailure)
            {
                cc = numCon + 1; //we failed, so get out of this loop
                break;
            }
        
            MPlugArray plugArray;
            bool connected = elementPlug.connectedTo(plugArray, true, false, &status);
            if (status == MStatus::kFailure)
            {
                cc = numCon + 1;
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

                    MFnDependencyNode depNode(node, &status);
                    if (!status)
                        continue;

                    MTypeId nodeId = depNode.typeId(&status);
                    if (!status)
                        continue;

                    if (nodeId == p3dDeformExpressionState::id)
                    {
                        modifier.deleteNode(node);
                    }
                }
                cc++;
                found = true;
            }
            i++;
        }
        
    }

    MString cmd = "eval(\"p3dDeformDeleteGroupCallback ";
    cmd+=groupNode.name();
    cmd+=" ";
    cmd+=0;
    cmd+="\")";
    MGlobal::executeCommand(cmd);
    

}

static void p3dDeformExpressionGroupRenameCallback(MObject& node, void* clientData)
{
    MStatus status;
    p3dDeformExpressionGroup* group = (p3dDeformExpressionGroup*)clientData;
    MObject groupObject = group->thisMObject();
    MFnDependencyNode groupNode(groupObject, &status);
    if (!status)
        return;
    MFnDependencyNode newNode(node, &status);
    if (!status)
        return;
    
    MString cmd = "eval p3dDeformRenameGroupLayoutCallback ";
    cmd+=newNode.name();
    cmd+=" ";
    cmd+=groupNode.name();     
    MGlobal::executeCommand(cmd);
}

void p3dDeformExpressionGroup::postConstructor()
{
     cbRename = MNodeMessage::addNameChangedCallback(thisMObject(),
                                                                    p3dDeformExpressionGroupRenameCallback,
                                                                    this);

     cbDelete = MNodeMessage::addNodeAboutToDeleteCallback(thisMObject(),
                                                                            p3dDeformExpressionGroupDeleteCallback,
                                                                            this);
}


/*************************************************************************
//    Description: Blends the offset output from each state node.    
//
// Parameters: Output from each state node (passed in block) and iter - list of
//    all vertices affected by this group.
//
// Returns:
//
***************************************************************************/

MStatus p3dDeformExpressionGroup::deform(MDataBlock& block,
                                                      MItGeometry& iter,
                                                      const MMatrix&,
                                                      unsigned int)
{
    MStatus status;
    
    MArrayDataHandle statesArrayData = block.inputArrayValue(states, &status);
    P3D_DEFORM_STATUS(status);
    unsigned state_count = statesArrayData.elementCount(&status);
    P3D_DEFORM_STATUS(status);
    if(state_count == 0)
        return MStatus::kSuccess;

    //
    // create and clear accumulators
    //
    MVectorArray stage_offsets[P3D_DEFORM_BLEND_STAGE_COUNT];
    MFloatArray stage_weights[P3D_DEFORM_BLEND_STAGE_COUNT];

    int i;
    unsigned j;
    for (j = 0; j < P3D_DEFORM_BLEND_STAGE_COUNT; ++j)
    {
        stage_offsets[j].setSizeIncrement(iter.count());
        stage_weights[j].setSizeIncrement(iter.count());

        for (i = 0; i < iter.count(); ++i)
        {
            stage_offsets[j].append(MVector(0, 0, 0));
            stage_weights[j].append(0.0f);
        }
    }

    //
    // accumulate offsets and weights
    //
    unsigned curState;
    for (curState = 0; curState < state_count; curState++)
    {
        unsigned curElement = 0;
        MDataHandle stateData = statesArrayData.inputValue(&status);
        P3D_DEFORM_STATUS(status);

        MFnDoubleArrayData stateArray((const MObject&)stateData.data(), &status);
        P3D_DEFORM_STATUS(status);

        float weight_value = static_cast<float>(stateArray[curElement++]);

        if (fabsf(weight_value) > 0.0f &&  fabsf(weight_value) <= 1.0f)
        {
            long blend_stage = static_cast<long>(stateArray[curElement++]);

            //
            // limit blend stage, just in case
            //
            if ((blend_stage >= 0) && (blend_stage < P3D_DEFORM_BLEND_STAGE_COUNT))
            {
                while (curElement < stateArray.length())
                {
                    long out_idx = (long)stateArray[curElement];

                    //
                    // if the vertex index is >=0 and < # of vertices
                    //
                    if ((out_idx >= 0) && (out_idx < iter.count()))  
                    {
                        stage_weights[blend_stage][out_idx] += fabsf(weight_value);//weight_value; //fabsf(weight_value);
                        
                        float currentWieght = stage_weights[blend_stage][out_idx];

                        float x = static_cast<float>(stateArray[curElement + 1]);
                        float y = static_cast<float>(stateArray[curElement + 2]);
                        float z = static_cast<float>(stateArray[curElement + 3]);
                        
                        stage_offsets[blend_stage][out_idx].x += x * fabsf(weight_value);//weight_value;//fabsf(weight_value);    
                        stage_offsets[blend_stage][out_idx].y += y * fabsf(weight_value);//weight_value;//fabsf(weight_value);
                        stage_offsets[blend_stage][out_idx].z += z * fabsf(weight_value);//weight_value;//fabsf(weight_value);
                    }

                    curElement += 4;
                }
            }
        }

        statesArrayData.next();
    }

    float unitConv = static_cast<float>(MDistance::uiToInternal(1.0));

    //
    // blend accumulated offsets 
    //
    for (i = 0; i < iter.count(); ++i)
    {
        float x = 0.0f, y = 0.0f, z = 0.0f;

        for (j = 0; j < P3D_DEFORM_BLEND_STAGE_COUNT; ++j)
        {
            if (fabs(stage_weights[j][i]) > 0.0f)
            {
                float rec_weight = 1.0f / fabsf(stage_weights[j][i]);
                x += (static_cast<float>(stage_offsets[j][i].x) * rec_weight);
                y += (static_cast<float>(stage_offsets[j][i].y) * rec_weight);
                z += (static_cast<float>(stage_offsets[j][i].z) * rec_weight);
            }
        }

        //
        // get position data (p) for each vertex, and modify it
        //
        MPoint p = iter.position(MSpace::kObject, &status);
        P3D_DEFORM_STATUS(status);
        
        p.x += (x * unitConv);
        p.y += (y * unitConv);
        p.z += (z * unitConv);
    
        status = iter.setPosition(p, MSpace::kObject);
        P3D_DEFORM_STATUS(status);
        
        status = iter.next();
        P3D_DEFORM_STATUS(status);
        
    }
    
    return MS::kSuccess;
}


void* p3dDeformExpressionGroup::creator()
{
    return new p3dDeformExpressionGroup();
}



MStatus p3dDeformExpressionGroup::initialize()
{
    MFnTypedAttribute tAttr;
    
    // state input
    states = tAttr.create("states", "st", MFnData::kDoubleArray);
    tAttr.setArray(true);
    tAttr.setReadable(false);
    tAttr.setWritable(true);
    tAttr.setStorable(false);
    tAttr.setDisconnectBehavior(MFnAttribute::kDelete);
    tAttr.setIndexMatters(false);

    MStatus status;

    status = addAttribute(states);
    P3D_DEFORM_STATUS(status);

    
    status = attributeAffects(p3dDeformExpressionGroup::states,
                                      p3dDeformExpressionGroup::outputGeom);
    P3D_DEFORM_STATUS(status);

    
    return MS::kSuccess;
}

// End of file.

