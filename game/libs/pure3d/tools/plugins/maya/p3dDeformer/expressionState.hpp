/*===========================================================================
    p3dDeformer/expressionState.hpp

    Copyright (c)2000 Radical Entertainment, Inc.
    All rights reserved.
===========================================================================*/

#ifndef P3D_DEFORM_EXPRESSIONSTATE_HPP
#define P3D_DEFORM_EXPRESSIONSTATE_HPP


#include <maya/MPxNode.h> 
#include <maya/MNodeMessage.h>

class MObject;
class MTypeId;
class MStatus;
class MPlug;
class MDataBlock;

/*************************************************************************
//    Description: Creates a state node. Each state node corresponds to
// an expression and stores data necessary to define all the key poses
// of an expression. Multiple state nodes can provide output for a given deformer
// group node.
//
// State nodes store the following    
// -vertex offsets arrays (array plug)
// -vertex indices arrays (array plug)
// -key indices array (element array)
//
// All key poses are stored as floats in the key indices. For e.g. -1 and 1 may be 
// stored in the first and second element of array respectively. For each key pose there 
// are 2 corresponding arrays: array of vertex indices and an array of vertex offsets. 
// E.g. key_indices[0] = 1.0, vertex_indices[0][0] = 10, vertex_offsets[0][0] = {x, y, z} 
// indicate that for keypose at slider position 1.0,  offset {x,y,z} must be applied to vertex 10. 
// Note that key pose values in key_indices are in the order in which the user created the key
// poses. For example, if users keyed 1.0 before 0.4f, then key_indices[0] = 1.0f and
// key_indices[1] = 0.4f. 
//
// The compute method of this class is called whenever  the weight of this expression has changed.
// This occurs when you drag the slider corresponding to this expression in the Animation
// tab UI. Compute method generates the output data that is passed to the deformer group node where
// offset data from several connected states are blended.
//
// Class Invariants:
//
// Modified: Pamela Chow
//
***************************************************************************/



class p3dDeformExpressionState: public MPxNode
{
private:
    MStatus doOldOffsetCalc(MDataBlock& data, float weight_value, float state_value, 
                                    MDoubleArray& output_array);
    int getKeys(int key_count, MArrayDataHandle& key_indices_array,
                    MFloatArray& keys, bool positive);
    void findBoundingKeys(MFloatArray& keys, float weight_value, MFloatArray& boundingKeys);
    bool validKeysExist(MArrayDataHandle& key_indices_array, int key_count);
    
    p3dOffsetArray highP3dOffsets;
    p3dOffsetArray lowP3dOffsets;

public:

    p3dDeformExpressionState();
    virtual ~p3dDeformExpressionState();
    virtual void postConstructor();
    virtual MStatus compute(const MPlug& plug, MDataBlock& data);
    static void* creator();
    static MStatus initialize();

public:

    static MTypeId id;

    static MObject blendStage;     // blend stage
    static MObject state;          // (slider) state
    static MObject weight;         // (slider) weight
    static MObject vertexOffsetsArray;  //new style offsets- array of arrays
    static MObject vertexIndicesArray;  //new style indices- array of arrays
    static MObject keyIndices;     //a mapping from ints to floats- e.g. key[0]->0.0f, key[1]->0.2f, etc.
    static MObject hotkey;
    //this is what comes out of the compute method- it's passed into the group deform method
    static MObject output;

    static MObject vertexOffsets;  // (deprecated) tweaked vertex offsets
    static MObject vertexIndices;  // (deprecated) tweaked vertex indices

    MCallbackId cbRename, cbDelete;
    
};




#endif

