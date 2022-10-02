/*===========================================================================
    p3dDeformer/expressionGroup.hpp

    Copyright (c)2000 Radical Entertainment, Inc.
    All rights reserved.
===========================================================================*/

#ifndef P3D_DEFORM_EXPRESSIONGROUP_HPP
#define P3D_DEFORM_EXPRESSIONGROUP_HPP

#include <maya/MPxDeformerNode.h>
#include <maya/MNodeMessage.h>


class MObject;
class MTypeId;
class MStatus;
class MPlug;
class MDataBlock;
class MItGeometry;



/*
An expression group is a deformer that operates on a mesh.
It has expression states as inputs- multiple states per mesh
are blended together.

This happens in the deform() method: an array of states are passed in.
Each data handle is in the following format:
0th element- weight_value
1st element- blend_stage
2...n*4+2 element- <vertex(i) index, vertex(i).x, vertex(i).y, vertex(i).z>
where there are n vertices in that expression.

Each vertex is multiplied by its weight and added to an accumulator, per blend stage.
Then the accumulator is divided by the reciprocal of the weights.
That's the average of all the states in that blend stage.

The geometry that's passed into the function is moved by the calculated amount.
*/

class p3dDeformExpressionGroup: public MPxDeformerNode
{
public:

    p3dDeformExpressionGroup();
    virtual ~p3dDeformExpressionGroup(); 

    virtual void postConstructor();

    virtual MStatus deform(MDataBlock& block,
                                  MItGeometry& iter,
                                  const MMatrix& mat,
                                  unsigned int multiIndex);

    static void* creator();
    static MStatus initialize();


public:

    static MTypeId id;

    static MObject states; //is an array object containing output from connected expression state nodes
    
    MCallbackId cbRename, cbDelete;

private:
    
};


#endif

