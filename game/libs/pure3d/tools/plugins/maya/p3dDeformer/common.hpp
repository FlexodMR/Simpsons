//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


#ifndef P3D_COMMON_HPP
#define P3D_COMMON_HPP

class MStatus;
class MDataBlock;
class MFnDependencyNode;


//Constants 

const float P3D_DEFORM_KEY_EPSILON = 0.00001f;
const float P3D_INVALID_KEY_VAL = -2.0f;
const int P3D_INVALID_KEY_IDX = -1;


/*if you change this, don't forget to change it in the exporter
(tlVertexOffsetAnimProcess.cpp) and 
P3D_VERTEXOFFSET_NUM_ACCUMULATE_STAGES in the runtime (vertexoffsetexpression.hpp)*/
static const unsigned P3D_DEFORM_BLEND_STAGE_COUNT = 3;


//Structs
struct p3dOffset
{
    int index;
    float x;
    float y;
    float z;
};

//Classes

class  p3dOffsetArray
{
public:
    p3dOffsetArray();
    ~p3dOffsetArray();
    MStatus fillArray( MDataBlock& data, float boundingKey );
    MStatus fillArray( MFnDependencyNode& data, float boundingKey );
    void zeroArray();
    void sortArray();
    long getNumVertices();
    p3dOffset* getOffsetArray();
    static int offsetCompare( const void *arg1, const void *arg2 );
private:
    p3dOffset* m_p3dOffsetArray;
    long          m_numVertices;
    //friend class p3dDeformExpressionState;

};


#endif
