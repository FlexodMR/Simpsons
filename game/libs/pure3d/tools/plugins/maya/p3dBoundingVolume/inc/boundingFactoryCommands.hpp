//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


#ifndef _BOUNDING_FACTORY_COMMANDS_HPP_
#define _BOUNDING_FACTORY_COMMANDS_HPP_

#include <maya/MPxCommand.h>
#include <maya/MVector.h>
#include <maya/MObjectArray.h>
#include <maya/MStringArray.h>
#include <maya/MEulerRotation.h>

#include "boundingConstants.hpp"
#include "boundingShape.hpp"
#include "boundingUtility.hpp"

class tlPoint;

namespace P3DBoundingVolume
{

class createBoundingVolumeCmd : public MPxCommand 
{
public:
    static void*   creator();
    virtual MStatus  doIt( const MArgList& args );
    virtual MStatus  undoIt();
    virtual MStatus  redoIt(); 
    virtual bool     isUndoable() const;

    int         GetBoundingVolumes( MObjectArray& volumes );

protected:
    MStatus createBoundingVolumeShape(MObject& createdShape);
    virtual MStatus createBoundingVolume();
    virtual bool getSelectedVerticies(tlPoint** vertexList, int& vertexCount);   
    MStatus fitToMesh(MObject& boundingVolume, tlPoint* meshVerts, int selectedVertexCount);
    
    //
    // Parsed Data for creation
    //
    int mBoundingType;
    MVector                     mScaleSize;
    MVector                     mTranslation;
    MEulerRotation              mRotation;
    int mTesselation;
    MString mNameCore;

    // Note: Don't store MObject in class -- causes Maya to crash!
    MString                     mMesh;
    MString                     mJoint;

    //
    // This is to support UNDO
    //
    MStringArray                createdBoundingVolumes;

};

class createBoundingVolumeFromSelectedComponentsCmd : public createBoundingVolumeCmd
{
public:
    static void*   creator();
//    virtual bool     isUndoable() const;

protected:
    virtual MStatus createBoundingVolume();
    virtual bool getSelectedVerticies(tlPoint** vertexList, int& vertexCount);
    MStatus boundSelectedFaces(void);
};


class createBoundingVolumeFromSelectedCurveCmd : public createBoundingVolumeCmd
{
public:
    static void*   creator();

protected:
    virtual MStatus createBoundingVolume();
    MStatus createFixedTeselationPointToPoint(MObject& curve);
    MStatus createCurveFitTeselationPointToPoint(MObject& curve);

};

class createBoundingVolumeOnJointCmd : public createBoundingVolumeCmd
{
public:
    static void*   creator();

protected:
    virtual MStatus createBoundingVolume();
    MStatus getSkinWeightsBounding(MObject& newP3dBoundVolShape);

};

class createBoundingVolume4PointBox : public createBoundingVolumeCmd
{
public:
    static void*   creator();
    virtual MStatus doIt( const MArgList& args );

protected:
    virtual MStatus createBoundingVolume();

    int mVertices[4];
};

} //namespace P3DBoundingVolume

#endif // _BOUNDING_FACTORY_COMMANDS_HPP_

