//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


//********************************************************************************************
// Maya Includes
//********************************************************************************************
#include <maya/MFn.h>
#include <maya/MPlug.h>
#include <maya/MDagPath.h>
#include <maya/MFnMesh.h>
#include <maya/MFnDependencyNode.h>
#include <maya/MFnDagNode.h>
#include <maya/MFnTransform.h>
#include <maya/MArgList.h>
#include <maya/MSelectionList.h>
#include <maya/MFnMessageAttribute.h>
#include <maya/MFnStringData.h>
#include <maya/MGlobal.h>
#include <maya/MMatrix.h>
#include <maya/MTransformationMatrix.h>
#include <maya/MVector.h>
#include <maya/MPoint.h>
#include <maya/MDistance.h>
#include <maya/MAngle.h>
#include <maya/MBoundingBox.h>
#include <maya/MEulerRotation.h>

//********************************************************************************************
// Local Includes
//********************************************************************************************
#include "boundingUtility.hpp"
#include "tlTypes.hpp"
#include "chunks.h"
#include "tlMatrix.hpp"
#include "tlPoint.hpp"
#include "tlCollisionObject.hpp"

//********************************************************************************************
// Standard Includes
//********************************************************************************************
#include <stdlib.h>

#include <iostream.h>

namespace P3DBoundingVolume 
{
                 
/*===========================================================================
    Class Name: 
        objValidToBound
    Procedure Name:
        creator
===========================================================================*/
void* objValidToBoundCmd::creator() 
{
    return new objValidToBoundCmd;
}

/*===========================================================================
    Class Name: 
        objValidToBound
    Procedure Name:
        doIt
===========================================================================*/
MStatus objValidToBoundCmd::doIt(const MArgList& args)
{
    MStatus status;
    MSelectionList slist;

    clearResult();
    for (unsigned i = 0; i < args.length(); i++)
    {
        if (MString("-o") == args.asString(i))
        {
            MString dependNodeName = args.asString(++i);
            status = MGlobal:: getSelectionListByName ( dependNodeName, slist );
            CHECKRESULT( status, "Error finding object" );
            MObject component;
            MDagPath dagPath;
            slist.getDagPath(0, dagPath, component);   
            if ((IsType(dagPath,P3D_BOUNDING_VOLUME_ID))||(IsType(dagPath,P3D_BOUNDING_VOLUME_ID)))
                appendToResult( 0 );
            else if ((dagPath.node()).hasFn(MFn::kSkin))
                appendToResult( 0 );
            else if ((dagPath.node()).hasFn(MFn::kJoint)) //determine if the object selected is a joint
                appendToResult( 2 );
            else if ((dagPath.node()).hasFn(MFn::kMesh)) //or a polygonal mesh 
                appendToResult( 1 );
            else
                appendToResult( 0 );
        }
    }
    return MS::kSuccess;
}

bool GetTransformNodeFn(MDagPath dagPath, MFnDagNode &transformNodeFn)
{
    MStatus status;
    status = transformNodeFn.setObject(dagPath.transform());
    if (status!=MS::kSuccess)
        return false;
    else
        return true;
}

bool GetShapeNodeFn(MDagPath dagPath, MFnDagNode &shapeNodeFn)
{
    MStatus status;
    status = dagPath.extendToShape();
    if (status!=MS::kSuccess)
        return false;
    status = shapeNodeFn.setObject(dagPath);
    if (status!=MS::kSuccess)
        return false;
    else
        return true;
}  

bool IsType(MDagPath dagPath, unsigned type)
{
    MFnDagNode dagNodeFn;
    if (!GetShapeNodeFn(dagPath,dagNodeFn))
        return false;

    MTypeId typeId = dagNodeFn.typeId();
    if (typeId.id()==type)
        return true;
    else
        return false;
}

bool IsType(MObject obj, unsigned type)
{
    MStatus status;
    MFnDagNode dagNodeFn(obj);
    MDagPath dagPath;
    status = dagNodeFn.getPath(dagPath);
    if (status!=MS::kSuccess)
        return false;
    return IsType(dagPath, type);
}

void* isBoundVolCmd::creator() 
{
    return new isBoundVolCmd;
}

MStatus isBoundVolCmd::doIt(const MArgList& args)
{
    MStatus status;
    MSelectionList slist;
    bool result;

    clearResult();
    for (unsigned i = 0; i < args.length(); i++)
    {
        if (MString("-o") == args.asString(i))
        {
            MString dependNodeName = args.asString(++i);
            status = MGlobal:: getSelectionListByName ( dependNodeName, slist );
            if (status != MS::kSuccess)
                result=false;
            else 
            {
                MDagPath dagPath;
                MObject component;
                slist.getDagPath(0,dagPath,component);
                result = IsType(dagPath, P3D_BOUNDING_VOLUME_ID);
            }
            appendToResult(result);
        }
    }
    return MS::kSuccess;
}

void* isBoundNodeCmd::creator() 
{
    return new isBoundNodeCmd;
}

MStatus isBoundNodeCmd::doIt(const MArgList& args)
{
    MStatus status;
    MSelectionList slist;
    bool result;

    clearResult();
    for (unsigned i = 0; i < args.length(); i++)
    {
        if (MString("-o") == args.asString(i))
        {
            MString dependNodeName = args.asString(++i);
            status = MGlobal:: getSelectionListByName ( dependNodeName, slist );
            if (status != MS::kSuccess)
                result=false;
            else 
            {
                MDagPath dagPath;
                MObject component;
                slist.getDagPath(0,dagPath,component);
                result = IsType(dagPath, P3D_BOUNDING_NODE_ID);
            }
            appendToResult(result);
        }
    }
    return MS::kSuccess;
}

void* getShapeNodeCmd::creator() 
{
    return new getShapeNodeCmd;
}

MStatus getShapeNodeCmd::doIt(const MArgList& args)
{
    MStatus status;
    MSelectionList slist;
    clearResult();
    for (unsigned i = 0; i < args.length(); i++)
    {
        if (MString("-o") == args.asString(i))
        {
            MString dependNodeName = args.asString(++i);
            status = MGlobal:: getSelectionListByName ( dependNodeName, slist );
            if (status == MS::kSuccess)
            {
                MDagPath dagPath;
                MObject component;
                MFnDagNode dagNodeFn;
                slist.getDagPath(0,dagPath,component);
                if (GetShapeNodeFn(dagPath,dagNodeFn))
                    appendToResult(dagNodeFn.name());
            //a joint doesn't have a shape under it, so  just put this joint itself ( or it's skin??? )
            else 
                appendToResult(dependNodeName); //??
            }
            break;
        }
    }
    return MS::kSuccess;
}

void* getTransformNodeCmd::creator() 
{
    return new getTransformNodeCmd;
}

MStatus getTransformNodeCmd::doIt(const MArgList& args)
{
    MStatus status;
    MSelectionList slist;
    clearResult();
    for (unsigned i = 0; i < args.length(); i++)
    {
        if (MString("-o") == args.asString(i))
        {
            MString dependNodeName = args.asString(++i);
            status = MGlobal:: getSelectionListByName ( dependNodeName, slist );
            if (status == MS::kSuccess)
            {
                MDagPath dagPath;
                MObject component;
                MFnDagNode dagNodeFn;
                slist.getDagPath(0,dagPath,component);
                if (GetTransformNodeFn(dagPath,dagNodeFn))
                {
                    //appendToResult(dagNodeFn.name());
                    appendToResult(dagNodeFn.fullPathName());
                }
            }
            break;
        }
    }
    return MS::kSuccess;
}

// Gets the first level kids of a node.
void* getBoundFirstLevelKidsCmd::creator()
{
    return new getBoundFirstLevelKidsCmd;
}

MStatus getBoundFirstLevelKidsCmd::doIt(const MArgList& args)
{
    MStatus status;
    MSelectionList slist;
    clearResult();
    for (unsigned i = 0; i < args.length(); i++)
     {  
        if (MString("-o") == args.asString(i))
        {
            MString parentName = args.asString(++i);
            status = MGlobal:: getSelectionListByName ( parentName, slist );
            if (status == MS::kSuccess)
            {
             MDagPath dagPath;
             MObject component;
                 slist.getDagPath(0,dagPath,component);
             int count = dagPath.childCount();
             for (int i = 0; i < count; i++ )
             {
                 MObject childObject = dagPath.child(i, &status);
                 MFnDagNode childFn(childObject);
                 MObject grandChild = childFn.child(0, &status);
                 if (status == MS::kSuccess && 
                        (IsType(grandChild, P3D_BOUNDING_VOLUME_ID) || IsType(grandChild, P3D_BOUNDING_NODE_ID)))
                        continue;  //do not count bounding vols as valid kids
                 if (childObject.hasFn(MFn::kJoint))
                 {
                    appendToResult(childFn.name());
                 }
             }
         }
         break;
      }
    }
    return MS::kSuccess;
}

// Returns the translation and rotation values of a node. It assumes cm and degrees, but this
// is converted to Maya's current unit settings in the boundingTools.MEL.

void* getBoundTransformValuesCmd::creator() 
{
    return new getBoundTransformValuesCmd;
}

MStatus getBoundTransformValuesCmd::doIt(const MArgList& args)
{ 
    MStatus status;
    MSelectionList slist;
    clearResult();
    for (unsigned i = 0; i < args.length(); i++)
    {  
        if (MString("-o") == args.asString(i))
        {
            MString dependNodeName = args.asString(++i);
            status = MGlobal:: getSelectionListByName ( dependNodeName, slist );
            if (status == MS::kSuccess)
            {
            MDagPath dagPath;
            MObject component;
            slist.getDagPath(0,dagPath,component);

            MMatrix incMatrix;
            incMatrix = dagPath.inclusiveMatrix( &status );
            CHECKRESULT( status, "Error finding inclusive Matrix in getBoundTransformValuesCmd" );
            MTransformationMatrix trMatrix( incMatrix );

            //convert to correct units
            float unitScaleFactor = (float) MDistance::uiToInternal(1.0);
            float scaleToUIFactor = (float) MDistance::internalToUI(1.0);
            float rotToUIFactor = (float) MAngle::internalToUI(1.0);

            double rotArray[3];   
            double transArray[3];
            MTransformationMatrix::RotationOrder rotOrder;

            // get the bounding box centre
            MFnDagNode nodeFn(dagPath);
            MBoundingBox bb = nodeFn.boundingBox();

            //MMatrix excMatrix = dagPath.exclusiveMatrix( &status );
            //bb.transformUsing(excMatrix); 
            MPoint bbc = bb.center();

            appendToResult( bbc.x * scaleToUIFactor );
            appendToResult( bbc.y * scaleToUIFactor );
            appendToResult( bbc.z * scaleToUIFactor );

            MVector translationV = trMatrix.translation(MSpace::kTransform, &status );
            status = translationV.get( transArray );
            CHECKRESULT( status, "Error finding translation in getBoundTransformValuesCmd" );

            appendToResult( translationV.x * scaleToUIFactor );
            appendToResult( translationV.y * scaleToUIFactor );
            appendToResult( translationV.z * scaleToUIFactor );

            trMatrix.getRotation( rotArray, rotOrder );

            appendToResult( rotArray[0] * rotToUIFactor );
            appendToResult( rotArray[1] * rotToUIFactor );
            appendToResult( rotArray[2] * rotToUIFactor );

            double scaleArray[3];
            trMatrix.getScale( scaleArray, MSpace::kTransform );

            appendToResult( scaleArray[0] * unitScaleFactor );
            appendToResult( scaleArray[1] * unitScaleFactor );
            appendToResult( scaleArray[2] * unitScaleFactor );

         }
            break;
        }
    }
    return MS::kSuccess;
}



void* createHiddenNameAttrCmd::creator() 
{
    return new createHiddenNameAttrCmd;
}

MStatus createHiddenNameAttrCmd::doIt(const MArgList& args)
{
    MStatus status;
    MSelectionList slist;

    clearResult();
    
    for (unsigned i = 0; i < args.length(); i++)
    {
        if (MString("-o") == args.asString(i))
        {
            MString dependNodeName = args.asString(++i);
         slist.clear();
            status = MGlobal:: getSelectionListByName ( dependNodeName, slist );
            CHECKRESULT( status, "Error finding object to add message attribute" );
            MObject dependNode;
            slist.getDependNode(0,dependNode);
            MFnDependencyNode dependNodeFn(dependNode);
            MPlug msgPlug = dependNodeFn.findPlug("bVolMsg",&status);
            if (status!=MS::kSuccess)
            {
                MFnMessageAttribute msgAttr;
                MObject msgObj = msgAttr.create( "bVolMsg", "bv", &status);
                CHECKRESULT( status, "Error creating bVolMsg attribute" );
                msgAttr.setInternal( true );
                msgAttr.setStorable( true );
                msgAttr.setHidden( true );
                msgAttr.setKeyable( false );
                status = dependNodeFn.addAttribute (msgObj);

            msgPlug = dependNodeFn.findPlug("bVolMsg",&status);
              //msgPlug.setValue(dependNodeName);
/*
                MFnStringData   defaultData;
                MObject            defaultAttr;

                defaultAttr = defaultData.create(dependNodeFn.name());
                status = nameAttr.setDefault(defaultAttr);
                status = dependNodeFn.addAttribute (nameObj);
*/
                CHECKRESULT( status, "Error adding bVolMsg attribute." );         
            } 
         else
             cout<<" Already got msgPlug for "<<dependNodeName<<endl;
         /*
            else 
            {
                MString val;
                  status = namePlug.getValue(val);
                  if (val.length()==0) 
              {
                      MObject attrObj = namePlug.attribute(&status);
                  CHECKRESULT( status, "Error getting attribute object");
                      MFnTypedAttribute attr(attrObj, &status);
                  CHECKRESULT( status, "Error getting true attribute");
                  namePlug.setValue(dependNodeName);
                      status = attr.setHidden( true );  
                  CHECKRESULT( status, "Error: couldn't set hidden");
                  namePlug.getValue(val);
              }

            }
            */
            
        }
     
    }
    return MS::kSuccess;
}



/*===========================================================================
    Class Name: BoundingVolumeInterface

    This class encapsulates manipulating bounding volumes in a safe way.
    It also can set it's attributes given the various toolib collision
    elements which allows the usage of the toolib library function that 
    manipulate toolib collision elements to also effect the Maya bounding
    volumes.
===========================================================================*/
MStatus BoundingVolumeInterface::setAttributes(tlCylinderVolume* cylinderVolume)
{
    MStatus status;

    p3dBoundVolAttr boundVolAttr;

    if(cylinderVolume->mFlatEnd)
    {
        boundVolAttr.boundingType = BOUNDING_CYLINDER;
    }
    else
    {
        boundVolAttr.boundingType  = BOUNDING_CAPSULE;
    }

    MMatrix parentMatrix = MakeXAxisAlignedMatrix(cylinderVolume->mAxis, cylinderVolume->mPosition);
    MVector scaleVector;
    
    //
    // I'm using the X and Z axis for the major and minor axis respectively
    //
    scaleVector[0] = cylinderVolume->mLength*2.0;         // cylinder's half-length
    scaleVector[2] = cylinderVolume->mCylinderRadius*2.0; // cylinder's radius
    setAxis(0, 2);
                
    status = setAttributes(boundVolAttr);
    CHECKRESULT( status, "Error setting bounding volume attribute." ); 
    setTransform(parentMatrix);
    CHECKRESULT( status, "Error setting bounding volume attribute." ); 
    setScale(scaleVector);
    CHECKRESULT( status, "Error setting bounding volume attribute." ); 

    return(status);
}

MStatus BoundingVolumeInterface::setAttributes(tlSphereVolume* sphereVolume)
{
    MStatus status;

    p3dBoundVolAttr boundVolAttr;
    boundVolAttr.boundingType  = BOUNDING_SPHERE;

    //
    // These are for the transform
    //
    tlPoint xAxis(1.0f,0.0f,0.0f);

    MMatrix parentMatrix = MakeXAxisAlignedMatrix(xAxis, sphereVolume->mPosition);
    MVector scaleVector;
    
    scaleVector[0] = sphereVolume->mSphereRadius*2.0;
                
    status = setAttributes(boundVolAttr);
    CHECKRESULT( status, "Error setting bounding volume attribute." ); 
    setTransform(parentMatrix);
    CHECKRESULT( status, "Error setting bounding volume attribute." ); 
    setScale(scaleVector);
    CHECKRESULT( status, "Error setting bounding volume attribute." ); 

    return(status);
}

MStatus BoundingVolumeInterface::setAttributes(tlOBBoxVolume* orientedBoxVolume)
{
    MStatus status;

    p3dBoundVolAttr boundVolAttr;
    boundVolAttr.boundingType  = BOUNDING_BOX;

    //
    // These are for the transform
    //
    const double m[4][4] = 
    { 
        {orientedBoxVolume->mAxis[0].x, orientedBoxVolume->mAxis[0].y, orientedBoxVolume->mAxis[0].z,  0}, 
        {orientedBoxVolume->mAxis[1].x, orientedBoxVolume->mAxis[1].y, orientedBoxVolume->mAxis[1].z,  0}, 
        {orientedBoxVolume->mAxis[2].x, orientedBoxVolume->mAxis[2].y, orientedBoxVolume->mAxis[2].z,  0}, 
        {orientedBoxVolume->mPosition.x,orientedBoxVolume->mPosition.y,orientedBoxVolume->mPosition.z, 1}
    };

    MMatrix parentMatrix(m);
    MVector scaleVector;
    
    scaleVector[0] = orientedBoxVolume->mLength[0]*2.0;
    scaleVector[1] = orientedBoxVolume->mLength[1]*2.0;
    scaleVector[2] = orientedBoxVolume->mLength[2]*2.0;
                
    status = setAttributes(boundVolAttr);
    CHECKRESULT( status, "Error setting bounding volume attribute." ); 
    setTransform(parentMatrix);
    CHECKRESULT( status, "Error setting bounding volume attribute." ); 
    setScale(scaleVector);
    CHECKRESULT( status, "Error setting bounding volume attribute." ); 

    return(status);
}

MStatus BoundingVolumeInterface::setAttributes(tlWallVolume* wallVolume)
{
    MStatus status;

    p3dBoundVolAttr boundVolAttr;
    boundVolAttr.boundingType  = BOUNDING_PLANE;

    // Behavior change: 12 Mar 2002
    // Wall Volume now uses Y Axis aligned matrix instead of X Axis aligned.
    MMatrix parentMatrix = MakeYAxisAlignedMatrix(wallVolume->mNormal, wallVolume->mPosition);

    MVector scaleVector;
    
    //
    // I'm using the X and Z axis for the planar portion of the plane
    // with defaults 100.0f
    //
    scaleVector[0] = 100.0f;
    scaleVector[2] = 100.0f;

    status = setAttributes(boundVolAttr);
    CHECKRESULT( status, "Error setting bounding volume attribute." ); 
    setTransform(parentMatrix);
    CHECKRESULT( status, "Error setting bounding volume attribute." ); 
    setScale(scaleVector);
    CHECKRESULT( status, "Error setting bounding volume attribute." ); 

    return(status);
}

MStatus BoundingVolumeInterface::setAttributes
(
    const p3dBoundVolAttr& attributes
)
{
    if(attributes.boundingType != InvalidAttributeValue)
    {
        MPlug plugBoundingType( *mBoundingVolumeShape, p3dBoundVolShape::boundingType );
        plugBoundingType.setValue(attributes.boundingType);
    }

    if(attributes.radius != InvalidAttributeValue)
    {
        MPlug plugRadius( *mBoundingVolumeShape, p3dBoundVolShape::radius);
        plugRadius.setValue(attributes.radius);
    }

    if(attributes.length != InvalidAttributeValue)
    {
        MPlug plugLength(*mBoundingVolumeShape, p3dBoundVolShape::length);
        plugLength.setValue(attributes.length);
    }

    if(attributes.width != InvalidAttributeValue)
    {
        MPlug plugWidth(*mBoundingVolumeShape, p3dBoundVolShape::width);
        plugWidth.setValue(attributes.width);
    }

    if(attributes.height != InvalidAttributeValue)
    {
        MPlug plugHeight(*mBoundingVolumeShape, p3dBoundVolShape::height);
        plugHeight.setValue(attributes.height);
    } 
    //
    // Others TODO...
    //
    return(MS::kSuccess);
}

MStatus BoundingVolumeInterface::setTransform( MMatrix parentMatrix )
{
    MStatus status;

    MFnDagNode mFnDagNodeShape(*mBoundingVolumeShape);
    MObject& parentTransform = mFnDagNodeShape.parent(0, &status);
    CHECKRESULT( status, "Error couldn't find parent." ); 
    MFnTransform transform(parentTransform, &status);
    CHECKRESULT( status, "Error couldn't get at shape Transform." ); 

    MTransformationMatrix matrix(parentMatrix);
    
    return(transform.set( matrix ));
}

MStatus BoundingVolumeInterface::setScale( MVector scaleVector )
{
    MStatus status;

    MFnDagNode mFnDagNodeShape(*mBoundingVolumeShape);
    MObject& parentTransform = mFnDagNodeShape.parent(0, &status);
    CHECKRESULT( status, "Error couldn't find parent." ); 
    MFnTransform transform(parentTransform, &status);
    CHECKRESULT( status, "Error couldn't get at shape Transform." ); 

    double scale[3];

    scale[0] = scaleVector[0];
    scale[1] = scaleVector[1];
    scale[2] = scaleVector[2];

    //
    // Make sure no scale value is zero... otherwise 
    // the translation will be locked for that 
    // translation component.
    //
    for(int i=0;i<3;i++)
    {
        if(scale[i] == 0)
        {
            scale[i] = 1;
        }
    }

    return(transform.setScale( scale ));
}

MStatus BoundingVolumeInterface::connectToParentAttributes(void)
{

    MStatus status;

    MFnDagNode mFnDagNodeShape(*mBoundingVolumeShape);
    MObject& parentTransform = mFnDagNodeShape.parent(0, &status);
    CHECKRESULT( status, "Error couldn't find parent." ); 
    MFnDagNode mFnDagNodeTransform(parentTransform);

    MPlug transformScalePlug = mFnDagNodeTransform.findPlug("scale", &status);
    CHECKRESULT( status, "Couldn't find plug." );

    MPlug inputScalePlug = mFnDagNodeShape.findPlug("si", &status);
    CHECKRESULT( status, "Couldn't find plug." );

    //
    // Now connect the attributes
    //
    MDGModifier mDGModifier;
    status = mDGModifier.connect( transformScalePlug, inputScalePlug );         
    CHECKRESULT( status, "Couldn't find plug." );

    mDGModifier.doIt();

    return(status);
}

MStatus BoundingVolumeInterface::setDefault(void)
{
    MVector scaleVector;
    scaleVector[0] = scaleVector[1] = scaleVector[2] = 100.0;
    return(setScale( scaleVector ));
}

MStatus BoundingVolumeInterface::setAxis(short majorAxis, short medAxis)
{
    MStatus status;
    MFnDagNode mFnDagNodeShape(*mBoundingVolumeShape);
    MPlug maxPlug = mFnDagNodeShape.findPlug("max", &status);
    CHECKRESULT( status, "Couldn't find max plug." );
    MPlug medPlug = mFnDagNodeShape.findPlug("med", &status);
    CHECKRESULT( status, "Couldn't find med plug." );
    
    maxPlug.setValue(majorAxis);
    medPlug.setValue(medAxis);

    return MStatus::kSuccess;
}

//********************************************************************************************
// Some generic functions that are not class based
//********************************************************************************************
MEulerRotation matrixToEuler
(
    MVector xAxis, 
    MVector yAxis, 
    MVector zAxis 
)
{
    const double m[4][4] = 
    { 
        {xAxis.x, xAxis.y, xAxis.z, 0}, 
        {yAxis.x, yAxis.y, yAxis.z, 0}, 
        {zAxis.x, zAxis.y, zAxis.z, 0}, 
        {      0,       0,       0, 1}
    };

    MMatrix orientMatrix(m);
    MTransformationMatrix orientMatrixDoer(orientMatrix);

    MEulerRotation eulerRotations = orientMatrixDoer.eulerRotation();

    return(eulerRotations);
}

MMatrix MakeXAxisAlignedMatrix(MVector xAxis, MPoint position)
{
    tlPoint tlXAxis, tlPosition;

    tlXAxis.x = (float)xAxis.x;
    tlXAxis.y = (float)xAxis.y;
    tlXAxis.z = (float)xAxis.z;

    tlPosition.x = (float)position.x;
    tlPosition.y = (float)position.y;
    tlPosition.z = (float)position.z;

    return(MakeXAxisAlignedMatrix(tlXAxis, tlPosition)); 
}

MMatrix MakeXAxisAlignedMatrix(tlPoint xAxis, tlPoint position)
{
    //
    // For this we will favour the x-Axis as the major axis
    // and the z-Axis as the minor axis for selecting the 
    // orientation of the shape in Maya
    //
    //
    // These are for the transform
    //

    tlPoint yAxis, zAxis;
    tlPoint yUp(0.0f,1.0f,0.0f);
    tlPoint zUp(0.0f,0.0f,1.0f);

    float coLinearInYAxisTest = (float)fabs(xAxis.y * yUp.y);
    float xAxisLength = xAxis.Length();
    float epsilon = 0.05f;

    if((float)fabs(xAxisLength - coLinearInYAxisTest)>epsilon)
    {
        //
        // Use Y up for the building the matrix
        //
        zAxis = CrossProd( xAxis, yUp );
        yAxis = CrossProd( zAxis, xAxis );
    }
    else
    {
        //
        // Use Z up for the building the matrix
        //
        yAxis = CrossProd( zUp, xAxis );
        zAxis = CrossProd( xAxis, yAxis );

    }

    const double m[4][4] = 
    { 
        {xAxis.x, xAxis.y, xAxis.z, 0}, 
        {yAxis.x, yAxis.y, yAxis.z, 0}, 
        {zAxis.x, zAxis.y, zAxis.z, 0}, 
        {position.x, position.y, position.z, 1}
    };

    MMatrix matrix(m);

    return(matrix);
}

MMatrix MakeYAxisAlignedMatrix(MVector yAxis, MPoint position)
{
    tlPoint tlYAxis, tlPosition;

    tlYAxis.x = (float)yAxis.x;
    tlYAxis.y = (float)yAxis.y;
    tlYAxis.z = (float)yAxis.z;

    tlPosition.x = (float)position.x;
    tlPosition.y = (float)position.y;
    tlPosition.z = (float)position.z;

    return(MakeYAxisAlignedMatrix(tlYAxis, tlPosition)); 
}

MMatrix MakeYAxisAlignedMatrix(tlPoint yAxis, tlPoint position)
{
    //
    // For this we will favour the y-Axis as the major axis
    // and the z-Axis as the minor axis for selecting the 
    // orientation of the shape in Maya
    //
    //
    // These are for the transform
    //

    tlPoint xAxis, zAxis;
    tlPoint xUp(0.0f,1.0f,0.0f);
    tlPoint zUp(0.0f,0.0f,1.0f);

    float coLinearInZAxisTest = (float)fabs(yAxis.y * zUp.y);
    float yAxisLength = yAxis.Length();
    float epsilon = 0.05f;

    if((float)fabs(yAxisLength - coLinearInZAxisTest)>epsilon)
    {
        //
        // Use Z up for the building the matrix
        //
        xAxis = CrossProd( yAxis, zUp );
        zAxis = CrossProd( xAxis, yAxis );
    }
    else
    {
        //
        // Use X up for the building the matrix
        //
        zAxis = CrossProd( xUp, yAxis );
        xAxis = CrossProd( yAxis, zAxis );
    }

    const double m[4][4] = 
    { 
        {xAxis.x, xAxis.y, xAxis.z, 0}, 
        {yAxis.x, yAxis.y, yAxis.z, 0}, 
        {zAxis.x, zAxis.y, zAxis.z, 0}, 
        {position.x, position.y, position.z, 1}
    };

    MMatrix matrix(m);

    return(matrix);
}

} //namespace P3DBoundingVolume

bool IsLineSegmentsIntersecting
(
    const tlPoint& pointStartA,
    const tlPoint& pointEndA,
    const tlPoint& pointStartB,
    const tlPoint& pointEndB,
    float lineCollisionThreshold
)
{
    
    tlPoint pointADirection = pointEndA - pointStartA;
    tlPoint pointBDirection = pointEndB - pointStartB;
    tlPoint pointBBNormal = CrossProd( pointADirection, pointBDirection );

    //
    // First do the planarity test!
    //
    tlPoint pointBBUnitNormal = pointBBNormal;
    float lengthOfNormal = pointBBNormal.Length();
    if(lengthOfNormal == 0.0f)
    {
        //
        // Lines are paralell
        //
        return(false);
    }
    else
    {
        //
        // Normalize
        //
        pointBBNormal /= lengthOfNormal;
        
        //
        // Project a distance position along the normal direction
        //
        tlPoint abDistance = pointEndA - pointEndB;
        float shortestDistance = DotProd( pointBBNormal, abDistance );
        if(fabs(shortestDistance) < lineCollisionThreshold)
        {
            return(true);
        }
        else
        {
            return(false);
        }
    }

    //
    // Next do the segment intersection... 
    // By parameterizing the line segments 
    //
    //TODO... this is good enough for now

}
