//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================



#include <maya/MGlobal.h>
#include <maya/MFnVectorArrayData.h>
#include <maya/MFnIntArrayData.h>
#include <maya/MFnDependencyNode.h>
#include <maya/MVectorArray.h>
#include <maya/MFloatArray.h>


#include "common.hpp"
#include "utility.hpp"
#include "expressionState.hpp"


long p3dOffsetArray::getNumVertices()
{
    return m_numVertices;
};

p3dOffset* p3dOffsetArray::getOffsetArray()
{
    return m_p3dOffsetArray;
};


p3dOffsetArray::~p3dOffsetArray()
{
    delete [] m_p3dOffsetArray;
};

p3dOffsetArray::p3dOffsetArray()
{
    m_p3dOffsetArray= NULL;
    m_numVertices = 0;
}

inline void p3dOffsetArray::zeroArray()
{
    if(m_numVertices != 0)
        memset(m_p3dOffsetArray, 0, (sizeof(p3dOffset)*m_numVertices) );
}

inline void p3dOffsetArray::sortArray()
{
    if(m_numVertices != 0)
        qsort(m_p3dOffsetArray, m_numVertices, sizeof(p3dOffset), p3dOffsetArray::offsetCompare);
}

int p3dOffsetArray::offsetCompare(const void *arg1, const void *arg2)
{
    p3dOffset* a1 = (p3dOffset*)arg1;
    p3dOffset* a2 = (p3dOffset*)arg2;
    if (a1->index < a2->index)
        return -1;
    else if (a1->index > a2->index)
        return 1;
    else return 0;
}


MStatus p3dOffsetArray::fillArray(MDataBlock& data, float boundingKey)
{

    //debug
    p3dDeformDebugTrace("In fillArray");
    //debug

    //clear data from previous call to fillArray
    zeroArray();

    MStatus status;
    //this is the array of vertex index and offset arrays
    MArrayDataHandle vtx_indices_array = data.inputArrayValue(p3dDeformExpressionState::vertexIndicesArray, &status);
    P3D_DEFORM_STATUS(status)
        MArrayDataHandle vtx_offsets_array = data.inputArrayValue(p3dDeformExpressionState::vertexOffsetsArray, &status);
    P3D_DEFORM_STATUS(status)
        MArrayDataHandle key_indices_array = data.inputValue(p3dDeformExpressionState::keyIndices, &status);
    P3D_DEFORM_STATUS(status)
    int keyCount = key_indices_array.elementCount();

    key_indices_array.jumpToElement(0);
    vtx_offsets_array.jumpToElement(0); 
    vtx_indices_array.jumpToElement(0);

    //debug
    p3dDeformDebugTrace("Entering loop of getOffsetData:");
    p3dDeformDebugInt("KeyCount =", keyCount);
    //debug
    for (int key_idx = 0; key_idx < keyCount; 
        key_idx++, 
        vtx_offsets_array.next(), 
        vtx_indices_array.next(), 
        key_indices_array.next())  
    {
        bool foundKey = false;

        MDataHandle cur_key_indices_dh = key_indices_array.inputValue(&status); 
        float key_value;
        if (status == MStatus::kSuccess)
            key_value = cur_key_indices_dh.asFloat();
        else return MStatus::kFailure;
        
        //debug
        p3dDeformDebugFloat("key_value =",key_value);
        //debug


        //getvertex offsets data and indices array for this key
        MDataHandle cur_vtx_offsets_dh = vtx_offsets_array.inputValue(&status); 
        MFnVectorArrayData vtx_offsets_ad( cur_vtx_offsets_dh.data() , &status );
        MVectorArray vtx_offsets; 
        status = vtx_offsets_ad.copyTo(vtx_offsets);
        
        MDataHandle cur_vtx_indices_dh = vtx_indices_array.inputValue(&status);    //the index data handle
        MFnIntArrayData vtx_indices_ad( cur_vtx_indices_dh.data(), &status ); //the array of indices at this key pos
        MIntArray vtx_indices;

        if (status != MStatus::kSuccess)
        {
            unsigned iter = 0;
            for (iter =0 ; iter < vtx_offsets_array.elementCount(); iter++)
            {
                MDataHandle tempHandle = vtx_indices_array.inputValue();
                vtx_indices.append(tempHandle.asLong());
                vtx_indices_array.next();
            }
        }
        else
        {
            vtx_indices_ad.copyTo(vtx_indices);
        }

        //determine if the number of Vertices has changed since previous fillArray call
        long new_numVertices = vtx_indices.length();
        //debug
        p3dDeformDebugInt("new_numVertices =", (int) new_numVertices);
        //debug
        if(m_numVertices == 0 || ( (m_numVertices != new_numVertices) && new_numVertices != 0 ) )
        {
            m_numVertices = new_numVertices;
            //initialize the number of vertices and accumulator arrays during first iteration
            if(m_p3dOffsetArray != NULL) delete [] m_p3dOffsetArray;
            p3dDeformDebugTrace("alloc P3dOffsetsArray");
            m_p3dOffsetArray = new p3dOffset[m_numVertices];
            memset(m_p3dOffsetArray, 0, (sizeof(p3dOffset)*m_numVertices) );
        }

        //ignore if current key is invalid or not a bounding key
        if ( keyEquals(key_value,P3D_INVALID_KEY_VAL) ) continue;
        //is the current index a low key or a high key?
        if ( !keyEquals( key_value, boundingKey) ) continue;
        else foundKey = true;

        //debug
        p3dDeformDebugBool("foundKey =",foundKey);
        //debug

        if (foundKey) //Current key is a low bounding key so get it's offsets
        {
            //debug
            p3dDeformDebugTrace("Filling m_p3dOffsetArray");
            //debug
            for (int iIt = 0; iIt < m_numVertices; iIt++)
            {
                (m_p3dOffsetArray)[iIt].index = vtx_indices[iIt];
                (m_p3dOffsetArray)[iIt].x = static_cast<float>(vtx_offsets[iIt].x);
                (m_p3dOffsetArray)[iIt].y = static_cast<float>(vtx_offsets[iIt].y);
                (m_p3dOffsetArray)[iIt].z = static_cast<float>(vtx_offsets[iIt].z);
            }
            sortArray();
        }
    }
    return MStatus::kSuccess;
}

MStatus p3dOffsetArray::fillArray(MFnDependencyNode& data, float boundingKey)
{

    //debug
    p3dDeformDebugTrace("In fillArray");
    //debug

    //clear data from previous call to fillArray
    zeroArray();

    MStatus status;
    //this is the array of vertex index and offset arrays
    MPlug vtxIndxPlug = data.findPlug("vertexIndicesArray", &status);
    P3D_DEFORM_STATUS(status);
    MPlug vtxOffPlug = data.findPlug("vertexOffsetsArray", &status);
    P3D_DEFORM_STATUS(status);
    MPlug keyIndicesPlug = data.findPlug("keyIndices", &status);
    P3D_DEFORM_STATUS(status)
    int keyCount = keyIndicesPlug.numElements();

    //debug
    p3dDeformDebugTrace("Entering loop of TestSlider::getOffsetData:");
    p3dDeformDebugInt("KeyCount =", keyCount);
    //debug

    for (int key_idx = 0; key_idx < keyCount; key_idx++)   
    {
        bool foundKey = false;

        float key_value;
        keyIndicesPlug.elementByLogicalIndex(key_idx).getValue(key_value);

        //debug
        p3dDeformDebugFloat("key_value =",key_value);
        //debug

        //getvertex offsets data and indices array for this key
        MVectorArray vtx_offsets;
        MIntArray vtx_indices;

        status = p3dDeformGetPlugData(vtxOffPlug, vtx_offsets,key_idx);
        P3D_DEFORM_STATUS(status);
        
        status = p3dDeformGetPlugData(vtxIndxPlug, vtx_indices, key_idx);
        P3D_DEFORM_STATUS(status);


        //determine if the number of Vertices has changed since previous fillArray call
        long new_numVertices = vtx_indices.length();
        if(m_numVertices == 0 || ( (m_numVertices != new_numVertices) && new_numVertices != 0 ) )
        {
            m_numVertices = new_numVertices;
            //initialize the number of vertices and accumulator arrays during first iteration
            if(m_p3dOffsetArray != NULL) delete [] m_p3dOffsetArray;        
            p3dDeformDebugTrace("alloc P3dOffsetsArray");
            m_p3dOffsetArray = new p3dOffset[m_numVertices];
            memset(m_p3dOffsetArray, 0, (sizeof(p3dOffset)*m_numVertices) );
        }

        //ignore if current key is invalid or not a bounding key
        if ( keyEquals(key_value,P3D_INVALID_KEY_VAL) ) continue;
        //is the current index a low key or a high key?
        if ( !keyEquals( key_value, boundingKey) ) continue;
        else foundKey = true;

        //debug
        p3dDeformDebugBool("foundKey =",foundKey);
        //debug

        if (foundKey) //Current key is a low bounding key so get it's offsets
        {
            //debug
            p3dDeformDebugTrace("Filling m_p3dOffsetArray");
            //debug
            for (int iIt = 0; iIt < m_numVertices; iIt++)
            {
                (m_p3dOffsetArray)[iIt].index = vtx_indices[iIt];
                (m_p3dOffsetArray)[iIt].x = static_cast<float>(vtx_offsets[iIt].x);
                (m_p3dOffsetArray)[iIt].y = static_cast<float>(vtx_offsets[iIt].y);
                (m_p3dOffsetArray)[iIt].z = static_cast<float>(vtx_offsets[iIt].z);
            }
            sortArray();
        }
    }
    return MStatus::kSuccess;
}
