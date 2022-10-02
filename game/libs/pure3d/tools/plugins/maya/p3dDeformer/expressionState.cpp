/*===========================================================================
    p3dDeformer/expressionState.cpp

    Copyright (c)2000 Radical Entertainment, Inc.
    All rights reserved.
===========================================================================*/

#include <maya/MFnNumericAttribute.h>
#include <maya/MFnTypedAttribute.h>
#include <maya/MFnDoubleArrayData.h>
#include <maya/MDoubleArray.h>
#include <maya/MNodeMessage.h>
#include <maya/MGlobal.h>
#include <maya/MFnVectorArrayData.h>
#include <maya/MFnIntArrayData.h>
#include <maya/MFnDependencyNode.h>
#include <maya/MVectorArray.h>
#include <maya/MFnDoubleArrayData.h>
#include <maya/MFloatArray.h>

#include <math.h>

#include "common.hpp"
#include "utility.hpp"
#include "expressionState.hpp"


MTypeId p3dDeformExpressionState::id(0x040181);

MObject p3dDeformExpressionState::blendStage;
MObject p3dDeformExpressionState::state;
MObject p3dDeformExpressionState::weight;
MObject p3dDeformExpressionState::vertexOffsets;
MObject p3dDeformExpressionState::vertexIndices;
MObject p3dDeformExpressionState::hotkey;

MObject p3dDeformExpressionState::vertexOffsetsArray;
MObject p3dDeformExpressionState::vertexIndicesArray;

MObject p3dDeformExpressionState::keyIndices;
MObject p3dDeformExpressionState::output;



p3dDeformExpressionState::p3dDeformExpressionState() 
{
    
}


p3dDeformExpressionState::~p3dDeformExpressionState() 
{
}


static void p3dDeformExpressionRenameCallback(MObject&, void* clientData)
{
    p3dDeformExpressionState* stateNode = (p3dDeformExpressionState*)clientData;
    
    MString cmd = "evalDeferred(\"p3dDeformUpdateAllOptionBoxesCheck ";
    cmd+=stateNode->name();
    cmd+="\")";

    MGlobal::executeCommand(cmd);   
        //we want this instantly so that it's not running after i select the state i want from the dropdown box 
    //MGlobal::executeCommand("eval p3dDeformSetupNoCreate");   
}

static void p3dDeformExpressionDeleteCallback(MDGModifier&, void* clientData)
{
    p3dDeformExpressionState* stateNode = (p3dDeformExpressionState*)clientData;
    
    MNodeMessage::removeCallback(stateNode->cbRename);
    MNodeMessage::removeCallback(stateNode->cbDelete);
    
    int exists = 0;
    MString cmd = "objExists ";
    cmd+=stateNode->name();
    MGlobal::executeCommand(cmd, exists);

    if (!exists)
        return;
    
    int connected = 0;
    cmd = "connectionInfo -is ";
    cmd+=stateNode->name();
    cmd+=".output";
    MGlobal::executeCommand(cmd, connected);

    if (connected)
        MGlobal::executeCommand("evalDeferred p3dDeformUpdateAllOptionBoxes");
    //MGlobal::executeCommand("evalDeferred p3dDeformExpressionUINoCreate");
    //this should be deferred so that it runs after the node is deleted- otherwise the window doesn't update properly
    //MGlobal::executeCommand("evalDeferred p3dDeformSetupNoCreate");   
    
}


void p3dDeformExpressionState::postConstructor()
{
    cbRename = MNodeMessage::addNameChangedCallback(thisMObject(),
                                                                    p3dDeformExpressionRenameCallback,
                                                                    this);
    cbDelete = MNodeMessage::addNodeAboutToDeleteCallback(thisMObject(),
                                                                            p3dDeformExpressionDeleteCallback,
                                                                            this);
    

}


/*************************************************************************
//    Description: Computes an Output array which is blended by 
// p3dDeformExpressionGroup::deform() to get final offset data for each vertex.
// The Output array is a set an array of doubles: the 1st element is the weight 
// (slider position), 2nd element is the blendstage of this expression, followed 
// by an offset vector for each vertex affected by this expression.
//
// We want to fake interpolation thru neutral mesh without keying the zero mesh position
// (reduces memory usage), the algorithm is a little less elegant than it could be.
// Weights(x) bounded by zero e.g. y <x <0, (y is largest negative key) 0>x>y (y is the 
// smallest positive key) need to be treated as special case.
//
// Note: For backward compatibility, it calculates the vector offsets for -ve slider
// position when there are no negative keys by computing the vector offset as if it
// a positive key and multiplying it by -1. For completeness the same is done 
// for +ve slider weights when no positive keys exist.
//
// Parameters: MDataBlock& data contains all the updated attributes for the state node:
// weight, state, blendstage,  etc.
//
// Returns: MStatus
//
***************************************************************************/

MStatus p3dDeformExpressionState::compute(const MPlug& plug, MDataBlock& data)
{

    //debug
    p3dDeformDebugTrace("In p3dDeformExpressionState::compute ");
    //debug
    if (plug != output) return MS::kUnknownParameter;

    MStatus status;
    
    //find related group & extract neutral information
    MDoubleArray output_array;
    
    MDataHandle blendStageData = data.inputValue(blendStage, &status);
    P3D_DEFORM_STATUS(status);
    long blend_stage = blendStageData.asLong();

    MDataHandle stateData = data.inputValue(state, &status);    //the state data is currently linked to the slider
    P3D_DEFORM_STATUS(status);
    float state_value = stateData.asFloat();  
    
    //the weight data is currently linked to the slider. Since weightData == stateData,
    //we use weightData in offset computation and ignore stateData
    MDataHandle weightData = data.inputValue(weight, &status);  
    P3D_DEFORM_STATUS(status);
    float weight_value = weightData.asFloat();

    MArrayDataHandle key_indices_array = data.inputValue(keyIndices, &status);
    int key_count = key_indices_array.elementCount();
    //debug
    p3dDeformDebugInt("key_count =",key_count);
    //debug

    // build output array
    output_array.append(weight_value);
    output_array.append(blend_stage);
    
    bool proceed = validKeysExist(key_indices_array,key_count);
    //debug
    p3dDeformDebugBool("proceed =",proceed);
    //debug

    if(!proceed) 
    {
        //debug
        p3dDeformDebugTrace("Finish early");
        //debug
        MFnDoubleArrayData output_data;
        MObject output_object = output_data.create(output_array, &status);
        P3D_DEFORM_STATUS(status);

        MDataHandle output_value = data.outputValue(output, &status);
        P3D_DEFORM_STATUS(status);

        status = output_value.set(output_object);
        P3D_DEFORM_STATUS(status);

        output_value.setClean();
    
        return MStatus::kSuccess;
    }

    float abs_weight_value = (fabsf(weight_value));
    //debug
    p3dDeformDebugTrace("Trace: in compute state:");
    p3dDeformDebugFloat("weight_value", weight_value );
    //debug

    if (abs_weight_value > 0.0f && abs_weight_value <= 1.0f) //Note zero is not interpolated it's neutral mesh
    {

        //create a temporary array of positive and negative key values
        MFloatArray posKeys;
        MFloatArray negKeys;
        int numPosKeys = 0, numNegKeys = 0;
        
        numPosKeys = getKeys(key_count, key_indices_array, posKeys, true);
        numNegKeys = getKeys(key_count, key_indices_array,negKeys, false);

        //debug
        p3dDeformDebugNumArray("posKeys =", posKeys);
        p3dDeformDebugInt("numPosKeys =", numPosKeys);
        p3dDeformDebugNumArray("negKeys =", negKeys);
        p3dDeformDebugInt("numNegKeys =", numNegKeys);
        //debug

        //find the index of the 2 bounding keys
        MFloatArray boundingKeys;
        float mirror = 1.0f;
        bool positiveWeight = (weight_value > 0)? true:false;

        if(positiveWeight && numPosKeys)    
            findBoundingKeys(posKeys, weight_value, boundingKeys);

        else if(!positiveWeight && numNegKeys)
            findBoundingKeys(negKeys, weight_value, boundingKeys);

        else if(!positiveWeight && numNegKeys == 0) //to provide backward compatibility
        {
            findBoundingKeys(posKeys, fabsf(weight_value), boundingKeys);
            positiveWeight = true;
            mirror = -1.0f;
        }

        else if(positiveWeight && numPosKeys == 0) //not needed for backward compatibility but provided for completeness 
        {
            //debug
            p3dDeformDebugTrace("Searching for pos weight in negKey set");
            //debug
            findBoundingKeys(negKeys, (-1 * weight_value), boundingKeys);
            positiveWeight = false;
            mirror = -1.0f;
        }


        //debug
        p3dDeformDebugNumArray("Bounding keys =", boundingKeys);
        //debug

        status = lowP3dOffsets.fillArray(data, boundingKeys[0]);
        P3D_DEFORM_STATUS(status);
        status = highP3dOffsets.fillArray(data, boundingKeys[1]);
        P3D_DEFORM_STATUS(status);

        p3dOffset* lowOffsetsArray = lowP3dOffsets.getOffsetArray();
        p3dOffset* highOffsetsArray = highP3dOffsets.getOffsetArray();
        
        long numVertices;
        //no of vertices in all keys of an expressions should be the same
        if(lowP3dOffsets.getNumVertices() !=  highP3dOffsets.getNumVertices() )
        {
            status = MStatus::kFailure;
            P3D_DEFORM_STATUS(status);
        }
        else numVertices = lowP3dOffsets.getNumVertices();
        
                
        //debug
        p3dDeformDebugP3dOffsets("lowP3dOffsets =", lowOffsetsArray, numVertices);
        p3dDeformDebugP3dOffsets("highP3dOffsets =", highOffsetsArray, numVertices );
        //debug
    

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
            low_frac = fabsf( (weight_value - 0.0f) / (1 - 0.0f) ); 
            p3dDeformDebugFloat("low_frac", low_frac);
        }
        else if(!lowKeyFound && positiveWeight)//pos wgt bounded by zero
        {
            high_frac = fabsf( (weight_value - 0.0f) / (highKey - 0.0f) );
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
                high_frac = fabsf( (weight_value - lowKey) / (highKey - lowKey) );
                low_frac = 1.0f - high_frac;
            }
        }
        else 
        {
            //p3dDeformDebugTrace("Error condition detected!");
            //return MS::kFailure; //(!lowKeyFound && !highKeyFound) this cannot logically occur
            low_frac = high_frac = 0.0f;
        }


        //Perform weighted average calculation
        for (int i=0; i < numVertices; i++)
        {
            const p3dOffset& low = lowOffsetsArray[i];
            const p3dOffset& high = highOffsetsArray[i];
    
            x = mirror * ( high_frac*high.x + low_frac*low.x );
            y = mirror * ( high_frac*high.y + low_frac*low.y );
            z = mirror * ( high_frac*high.z + low_frac*low.z );

            if ((x!=0.0f) || (y!=0.0f) || (z!=0.0f))
            {
                
                if(lowKeyFound)  output_array.append(low.index);
                else if(highKeyFound) output_array.append(high.index);
                else p3dDeformDebugTrace("This fails!");
                output_array.append(x);
                output_array.append(y);
                output_array.append(z);
            }
        }
    }

    //apply the data in output_array to the output plug for this node
    MFnDoubleArrayData output_data;
    MObject output_object = output_data.create(output_array, &status);
    P3D_DEFORM_STATUS(status);

    MDataHandle output_value = data.outputValue(output, &status);
    P3D_DEFORM_STATUS(status);

    status = output_value.set(output_object);
    P3D_DEFORM_STATUS(status);

    output_value.setClean();
    
    return MS::kSuccess;

}


/*************************************************************************
//    Description: When keys are deleted, the key_indices element is set to -2.
// Thus the number of keys alone is not enough to determine if further
// processing is required. This method counts the number of valid keys (i.e.
// keys that are not -2    .
//
// Parameters:
//
// Returns: true if valid keys are found
//
***************************************************************************/
inline bool p3dDeformExpressionState::validKeysExist(MArrayDataHandle& key_indices_array, int key_count)
{
    //debug
    p3dDeformDebugTrace("In p3dDeformExpressionState::validKeysExist");
    p3dDeformDebugTrace("key_indices_array =");
    //debug
    MStatus status;
    float key_value;
    int numValidKeys = 0;
    //count the valid keys
    key_indices_array.jumpToElement(0);
    for(int i = 0; i < key_count; i++,key_indices_array.next())
    {
        
        MDataHandle cur_key_indices_dh = key_indices_array.inputValue(&status);     
        if (status == MStatus::kSuccess)
        {
            key_value = cur_key_indices_dh.asFloat();
            //debug
            p3dDeformDebugFloat("key_value =",key_value);
            //debug
            if(!keyEquals( key_value, P3D_INVALID_KEY_VAL ) )
                numValidKeys++;
        }

    }
    if(numValidKeys == 0)
        return false;
    else return true;
}

/*************************************************************************
//    Description: Deprecated function. Does old style offset calculation    
//
// Parameters:
//
// Returns:
//
***************************************************************************/
inline  MStatus p3dDeformExpressionState::doOldOffsetCalc(MDataBlock& data, float weight_value, float state_value,MDoubleArray& output_array)
{
    MStatus status;
    MArrayDataHandle vtx_offsets_old = data.inputArrayValue(vertexOffsets, &status);
    P3D_DEFORM_STATUS(status);
    unsigned old_vtx_count = vtx_offsets_old.elementCount(&status);
    P3D_DEFORM_STATUS(status);

    MArrayDataHandle vtx_indices_old = data.inputArrayValue(vertexIndices, &status);
    P3D_DEFORM_STATUS(status);

    float scale_value = weight_value * state_value;
    for (unsigned i = 0; i < old_vtx_count; ++i)
    {
        MDataHandle vtxIndexData = vtx_indices_old.inputValue(&status);
        P3D_DEFORM_STATUS(status);
        long vtx_index = vtxIndexData.asLong();
        vtx_indices_old.next();

        MDataHandle vtxOffsetData = vtx_offsets_old.inputValue(&status);
        P3D_DEFORM_STATUS(status);
        float* vtx_offset = vtxOffsetData.asFloat3();
        vtx_offsets_old.next();
        output_array.append(vtx_index);
        output_array.append(vtx_offset[0]*scale_value);
        output_array.append(vtx_offset[1]*scale_value);
        output_array.append(vtx_offset[2]*scale_value);
  }
    MFnDoubleArrayData output_data;
    MObject output_object = output_data.create(output_array, &status);
    P3D_DEFORM_STATUS(status);

    MDataHandle output_value = data.outputValue(output, &status);
    P3D_DEFORM_STATUS(status);

    status = output_value.set(output_object);
    P3D_DEFORM_STATUS(status);

    output_value.setClean();
    return MStatus::kSuccess;;
}


/*************************************************************************
//    Description: function returns an array of either positive or negative
// key values. 0.0 is appended to the end
// of the array to simulate interpolation thru neutral mesh.    
//
// Parameters: Set positive = true to get an array of positive key values
//
// Returns:
//
***************************************************************************/
inline int p3dDeformExpressionState::getKeys(int key_count, MArrayDataHandle& key_indices_array,
                                                        MFloatArray& keys, bool positive)
{
    MStatus status;
    //debug
    p3dDeformDebugTrace("In getKeys");
    p3dDeformDebugTrace("Getting key_indices:");
    //debug

    key_indices_array.jumpToElement(0);

    for (int key_idx = 0, num_key = 0; key_idx < key_count; key_idx++, key_indices_array.next())
    {
        MDataHandle cur_key_indices_dh = key_indices_array.inputValue(&status); //the array of key indices 
    
        float key_value;

        if (status != MStatus::kSuccess)
            key_value = P3D_INVALID_KEY_VAL;
        else key_value = cur_key_indices_dh.asFloat();
        
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
// array of keys.    This function expects the sign of the weight and the array
// of keys to be the same.
//
// Parameters:
//
// Returns:
//
***************************************************************************/
inline void p3dDeformExpressionState::findBoundingKeys(MFloatArray& keys, float weight_value,
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



void* p3dDeformExpressionState::creator()
{
    return new p3dDeformExpressionState();
}


MStatus p3dDeformExpressionState::initialize()
{
    MFnNumericAttribute nAttr;
    MFnTypedAttribute tAttr;

    // blend stage
    blendStage = nAttr.create("blendStage", "bs", MFnNumericData::kLong, 0);
    nAttr.setMin(0);
    nAttr.setMax(100);
    nAttr.setKeyable(false);
    nAttr.setStorable(true);
    nAttr.setReadable(true);
    nAttr.setWritable(true);
    nAttr.setConnectable(true);

    // (slider) state
    state = nAttr.create("state", "s", MFnNumericData::kFloat, 0);
    nAttr.setMin(-1.0);
    nAttr.setMax(1.0);
    nAttr.setKeyable(true);
    nAttr.setStorable(true);
    nAttr.setReadable(true);
    nAttr.setWritable(true);
    nAttr.setConnectable(true);

    // (slider) weight
    weight = nAttr.create("weight", "w", MFnNumericData::kFloat, 1);
    nAttr.setMin(-1.0);
    nAttr.setMax(1.0);
    nAttr.setKeyable(true);
    nAttr.setStorable(true);
    nAttr.setReadable(true);
    nAttr.setWritable(true);
    nAttr.setConnectable(true);

    // tweaked vertex offsets
    vertexOffsets = nAttr.create("vertexOffsets", "vo", MFnNumericData::k3Float, 0);
    nAttr.setArray(true);
    nAttr.setReadable(true);
    nAttr.setWritable(true);
    nAttr.setStorable(true);
    nAttr.setUsesArrayDataBuilder(true);

    // tweaked vertex indices
    vertexIndices = nAttr.create("vertexIndices", "vi", MFnNumericData::kLong, -1);
    nAttr.setArray(true);
    nAttr.setReadable(true);
    nAttr.setWritable(true);
    nAttr.setStorable(true);
    nAttr.setUsesArrayDataBuilder(true);

    // (field) hotkey
    hotkey = tAttr.create("hotkey", "hk", MFnData::kString);
    nAttr.setStorable(true);
    nAttr.setReadable(true);
    nAttr.setWritable(true);

    // tweaked vertex offsets
    vertexOffsetsArray = tAttr.create("vertexOffsetsArray", "voa", MFnData::kVectorArray);
    tAttr.setArray(true);
    tAttr.setReadable(true);
    tAttr.setWritable(true);
    tAttr.setStorable(true);
    
    tAttr.setUsesArrayDataBuilder(true);

    
    // tweaked vertex indices
    vertexIndicesArray = tAttr.create("vertexIndicesArray", "via", MFnData::kIntArray);
    tAttr.setArray(true);
    tAttr.setReadable(true);
    tAttr.setWritable(true);
    tAttr.setStorable(true);
    tAttr.setUsesArrayDataBuilder(true);



    keyIndices = nAttr.create("keyIndices", "ki", MFnNumericData::kFloat, P3D_INVALID_KEY_VAL);
    nAttr.setArray(true);
    nAttr.setReadable(true);
    nAttr.setWritable(true);
    nAttr.setStorable(true);
    nAttr.setUsesArrayDataBuilder(true);

    
    output = tAttr.create("output", "out", MFnData::kDoubleArray); //the blended result
    tAttr.setArray(false);
    tAttr.setReadable(true);
    tAttr.setWritable(false);
    tAttr.setStorable(false);

    MStatus status;

    status = addAttribute(blendStage);
    P3D_DEFORM_STATUS(status);

    status = addAttribute(state);
    P3D_DEFORM_STATUS(status);

    status = addAttribute(weight);
    P3D_DEFORM_STATUS(status);

    status = addAttribute(hotkey);
    P3D_DEFORM_STATUS(status);

    status = addAttribute(vertexOffsets);
    P3D_DEFORM_STATUS(status);

    status = addAttribute(vertexIndices);
    P3D_DEFORM_STATUS(status);

    status = addAttribute(vertexOffsetsArray);
    P3D_DEFORM_STATUS(status);
    
    status = addAttribute(vertexIndicesArray);
    P3D_DEFORM_STATUS(status);

    status = addAttribute(output);
    P3D_DEFORM_STATUS(status);

    status = addAttribute(keyIndices);
    P3D_DEFORM_STATUS(status);

    status = attributeAffects(blendStage, output);
    P3D_DEFORM_STATUS(status);

    status = attributeAffects(state, output);
    P3D_DEFORM_STATUS(status);

    status = attributeAffects(weight, output);
    P3D_DEFORM_STATUS(status);

    status = attributeAffects(vertexOffsets, output);
    P3D_DEFORM_STATUS(status);

    status = attributeAffects(vertexIndices, output);
    P3D_DEFORM_STATUS(status);
    
    status = attributeAffects(vertexOffsetsArray, output);
    P3D_DEFORM_STATUS(status);

    status = attributeAffects(vertexIndicesArray, output);
    P3D_DEFORM_STATUS(status);
    
    status = attributeAffects(keyIndices, output);
    P3D_DEFORM_STATUS(status);
    return MS::kSuccess;
}




// End of file.

