//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


#ifndef _BOUNDING_UTILITY_HPP_
#define _BOUNDING_UTILITY_HPP_

#include <maya/MPxCommand.h>
#include <maya/MVector.h>

class MFnDagNode;

#include "boundingConstants.hpp"
#include "boundingShape.hpp"

#define CHECKRESULT(STAT,MSG)       \
     if ( MS::kSuccess != STAT )     \
     {                               \
          cerr << MSG << endl;        \
          return MS::kFailure;        \
     }

class tlPoint;

class tlSphereVolume;
class tlCylinderVolume;
class tlOBBoxVolume;
class tlWallVolume;
class tlBBoxVolume;


namespace P3DBoundingVolume
{

//-----------------------------------------------------------------------------
// Some generic functions
//-----------------------------------------------------------------------------
const int CLAMP_MIN  = 0x01;
const int CLAMP_MAX  = 0x02;
const int CLAMP_BOTH = 0x03;

template <class T> void ClampValue (T& value, T minVal, T maxVal, int clampType)
{
    if (value>maxVal)
    {
        if ((clampType==CLAMP_BOTH)||(clampType==CLAMP_MAX))
            value = maxVal;
    }
    else if (value<minVal)
    {
        if ((clampType==CLAMP_BOTH)||(clampType==CLAMP_MIN))
            value = minVal;
    }
}

MEulerRotation matrixToEuler(MVector xAxis, MVector yAxis, MVector zAxis );


/*===========================================================================
    Class Name: 
        objValidToBound

  Description:
        Maya command used to determine if the currently selected object is a valid
        object to create a bounding volume around (ie polygonal mesh or skeleton joint)
===========================================================================*/
class objValidToBoundCmd : public MPxCommand 
{
public:
     MStatus        doIt( const MArgList& args );
     static void*   creator();
};

bool IsType(MDagPath dagPath, unsigned type);

bool IsType(MObject obj, unsigned type);

class isBoundVolCmd : public MPxCommand 
{
public:
     MStatus        doIt( const MArgList& args );
     static void*   creator();
};

class isBoundNodeCmd : public MPxCommand 
{
public:
     MStatus        doIt( const MArgList& args );
     static void*   creator();
};

bool GetShapeNodeFn(MDagPath dagPath, MFnDagNode &shapeNodeFn);

class getShapeNodeCmd : public MPxCommand 
{
public:
     MStatus        doIt( const MArgList& args );
     static void*   creator();
};

bool GetTransformNodeFn(MDagPath dagPath, MFnDagNode &transformNodeFn);

class getTransformNodeCmd : public MPxCommand 
{
public:
     MStatus        doIt( const MArgList& args );
     static void*   creator();
};

class createHiddenNameAttrCmd : public MPxCommand 
{
public:
     MStatus        doIt( const MArgList& args );
     static void*   creator();
};

class getBoundFirstLevelKidsCmd : public MPxCommand
{
public:
    MStatus        doIt( const MArgList& args );
    static void*   creator();
};

class getBoundTransformValuesCmd : public MPxCommand 
{
public:
     MStatus        doIt( const MArgList& args );
     static void*   creator();
};

//---------------------------------------------------------------------------
//
// New Bounding Volume creation commands and utilities
//
//---------------------------------------------------------------------------
class BoundingVolumeInterface
{
public:
    BoundingVolumeInterface(MObject* bVolumeShape):mBoundingVolumeShape(bVolumeShape){}
    ~BoundingVolumeInterface(){}

    //
    // Handle toolLib physics objects
    //
    MStatus setAttributes(tlCylinderVolume*   cylinderVolume);
    MStatus setAttributes(tlSphereVolume*     sphereVolume);
    MStatus setAttributes(tlOBBoxVolume*      orientedBoxVolume); 
    MStatus setAttributes(tlWallVolume*       wallVolume);

    //
    // set the plug attributes
    //
    MStatus setAttributes(const p3dBoundVolAttr& attributes);
    MStatus setTransform( MMatrix parentMatrix );
    MStatus setScale( MVector scaleVector );
    MStatus setAxis(short majorAxis, short medAxis);
    MStatus setDefault(void);

    //
    // Connect to parent attributes
    //
    MStatus connectToParentAttributes(void);

private:
    BoundingVolumeInterface();

    MObject* mBoundingVolumeShape;
};

MMatrix MakeXAxisAlignedMatrix(MVector xAxis, MPoint position);
MMatrix MakeXAxisAlignedMatrix(tlPoint xAxis, tlPoint position);
MMatrix MakeYAxisAlignedMatrix(MVector xAxis, MPoint position);
MMatrix MakeYAxisAlignedMatrix(tlPoint yAxis, tlPoint position);

} //namespace P3DBoundingVolume

bool IsLineSegmentsIntersecting
(
    const tlPoint& pointStartA,
    const tlPoint& pointEndA,
    const tlPoint& pointStartB,
    const tlPoint& pointEndB,
    float lineCollisionThreshold
);


#endif // _BOUNDING_UTILITY_HPP_

