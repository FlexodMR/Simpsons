//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


#ifndef _BOUNDING_SHAPE_HPP_
#define _BOUNDING_SHAPE_HPP_

#include <maya/MPxSurfaceShape.h>
#include <maya/MMessage.h>
#include <maya/MNodeMessage.h>


#include "boundingConstants.hpp"

namespace P3DBoundingVolume
{

class p3dBaseShape : public MPxSurfaceShape
{
public:
    p3dBaseShape() {}
    virtual ~p3dBaseShape() {} 
};

/////////////////////////////////////////////////////////////////////
//
// attribute class - defines the attributes of a shape node
//
extern const short InvalidAttributeValue;
class p3dBoundVolAttr 
{
public:
    p3dBoundVolAttr();
    short    boundingType;
    float    radius;
    float    length;
    float    width;
    float    height;
    float    mass;
    bool      isDynamic;
    MString  stringData;
    short   max; //which dimension is height in cylinder & capsule, and as radius in sphere
    short   med; //which dimension is radius in cylinder & capsule
};

/////////////////////////////////////////////////////////////////////
//
// Shape class - defines the non-UI part of a shape node
//
class p3dBoundVolShape : public p3dBaseShape
{
public:
    p3dBoundVolShape();
    virtual ~p3dBoundVolShape(); 

    virtual  void     postConstructor();
    static   void*    creator();
    static   MStatus  initialize();
    virtual  MStatus  compute( const MPlug& plug, MDataBlock& datablock );

    virtual bool            isBounded() const {return true;}
    virtual MBoundingBox    boundingBox() const; 
    p3dBoundVolAttr*        getAttributes();

    MCallbackId callbackID;
    static void InitializationCallBack( MNodeMessage::AttributeMessage msg, MPlug & plug, MPlug & otherPlug, void* clientData );

    bool intersectionRoutine(MPoint localRayStartPoint, MVector localRayDirection);

private:
    p3dBoundVolAttr*   attributes;
    
    //
    // boundingType attribute computations 
    // called from the compute method
    //
    MStatus computeBoxAttributes(MDataBlock& datablock);
    MStatus computeSphereAttributes(MDataBlock& datablock);
    MStatus computeCylinderAttributes(MDataBlock& datablock);
    MStatus computeCapsuleAttributes(MDataBlock& datablock);
    MStatus computePlaneAttributes(MDataBlock& datablock);
    MStatus computeMaxMedAttributes(MDataBlock& datablock);

    void updateComputedAttributesToPlugs(void);
    void updateAttributesFromPlugs(void);


    MStatus GetTransformScale(double scale[3]);
    void lockTransformScale(void);

    MStatus connectAttributesToTransform(void);
    MStatus computeMaxMedAttributes(void);

    //
    // boundingType attribute intersections
    // called from the intersectionRoutine method
    //
    bool intersectingBox(MPoint rayStartPoint, MVector rayDirection);
    bool intersectingSphere(MPoint rayStartPoint, MVector rayDirection);
    bool intersectingCylinder(MPoint rayStartPoint, MVector rayDirection);
    bool intersectingCapsule(MPoint rayStartPoint, MVector rayDirection);
    bool intersectingPlane(MPoint rayStartPoint, MVector rayDirection);

public:
    // Attributes
    static MObject boundingType;
    static MObject radius;
    static MObject length;
    static MObject width;
    static MObject height;

    static MTypeId id;
    static MObject max;
    static MObject med;

    static MObject scaleInput;
};

/////////////////////////////////////////////////////////////////////
//
// attribute class - defines the attributes of a shape node
//
class p3dBoundNodeAttr 
{
public:
    float    handleSize;
};

/////////////////////////////////////////////////////////////////////
//
// Shape class - defines the non-UI part of a shape node
//
class p3dBoundNodeShape : public p3dBaseShape
{
public:
    p3dBoundNodeShape();
    virtual ~p3dBoundNodeShape(); 

    virtual void            postConstructor();
    virtual bool            getInternalValue( const MPlug&, MDataHandle& );
    virtual bool            setInternalValue( const MPlug&, const MDataHandle& );
    static void*            creator();
    static MStatus          initialize();
    virtual bool            isBounded() const {return true;}
    virtual MBoundingBox    boundingBox() const; 
    p3dBoundNodeAttr*       getAttributes();

private:
    p3dBoundNodeAttr*   attributes;

    // Attributes

    static MObject handleSize;
public:
    static MTypeId id;
};


};  //namespace P3DBoundingVolume

#endif //_BOUNDING_SHAPE_HPP_


