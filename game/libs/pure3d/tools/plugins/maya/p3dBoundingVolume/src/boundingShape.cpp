//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================



//********************************************************************************************
// Maya Includes
//********************************************************************************************
#include <maya/MGlobal.h>
#include <maya/MFnNumericAttribute.h>
#include <maya/MFnEnumAttribute.h>
#include <maya/MFnTypedAttribute.h>
#include <maya/MDGMessage.h>
#include <maya/MFnIkJoint.h>
#include <maya/MDGModifier.h>
#include <maya/MFnStringData.h>
#include <maya/MPoint.h>
#include <maya/MPlug.h>
#include <maya/MDagPath.h>
#include <maya/MFnDagNode.h>
#include <maya/MMatrix.h>
#include <maya/MTransformationMatrix.h>
#include <maya/MDistance.h>
#include <maya/MVector.h>
#include <maya/MPointArray.h>

//********************************************************************************************
// Local Includes
//********************************************************************************************
#include "boundingUtility.hpp"
#include "boundingShape.hpp"
#include "tlPoint.hpp"

#include <iostream.h>

//********************************************************************************************
// This macro just help with the massive Maya code
//********************************************************************************************
#define MAKE_NUMERIC_ATTR( NAME, LONGNAME, SHORTNAME, TYPE, DEFAULT, KEYABLE, HIDDEN )  \
    MStatus NAME##_stat;                                                       \
    MFnNumericAttribute NAME##_fn;                                             \
    NAME = NAME##_fn.create( LONGNAME, SHORTNAME, TYPE, DEFAULT );                \
    CHECKRESULT(NAME##_stat, "numeric attr create error");                     \
    NAME##_fn.setHidden( HIDDEN );                                             \
    NAME##_fn.setKeyable( KEYABLE );                                           \
    NAME##_fn.setInternal( false );                                             \
    NAME##_stat = addAttribute( NAME );                                        \
    CHECKRESULT(NAME##_stat, "addAttribute error");


namespace P3DBoundingVolume
{

//**************************************************************************************
//   Helper routines to get max and middle value
//**************************************************************************************
float Max (float one, float two)
{
    return one >= two ? one : two;
}

//**************************************************************************************
//   Compute the max and medium values out of 3 values
//**************************************************************************************
void AssignMaxAndMed( float one, float two, float three, short &max, short &med )
{
    float max_val, med_val;
    max_val = Max(one, Max(two, three));
    if (max_val == one)
    {
        max = 0; //first value
        med_val = Max(two, three);
        if (med_val == two )   med = 1; //the second value
        else med = 2;
    }
     else if (max_val == two)
    {
        max = 1;
        med_val = Max(one, three);
        if (med_val == one) med = 0;
        else med = 2;
    }
     else
    {
        max = 2;
        med_val = Max(one, two);
        if (med_val == one) med = 0;
        else med = 1;
    }
}
/////////////////////////////////////////////////////////////////////
// SHAPE NODE IMPLEMENTATION
/////////////////////////////////////////////////////////////////////

MObject p3dBoundVolShape::boundingType;
MObject p3dBoundVolShape::radius;
MObject p3dBoundVolShape::length;
MObject p3dBoundVolShape::width;
MObject p3dBoundVolShape::height;
MObject p3dBoundVolShape::max;
MObject p3dBoundVolShape::med;
MTypeId p3dBoundVolShape::id(P3D_BOUNDING_VOLUME_ID);
MObject p3dBoundVolShape::scaleInput;

//********************************************************************************************
// The InvalidAttributeValue make it easy to not stomp
// previously set attributes when passing the structure 
// arround for setting values
//********************************************************************************************
const short InvalidAttributeValue = -2; // -1 is taken already
p3dBoundVolAttr::p3dBoundVolAttr()
{
    boundingType = InvalidAttributeValue;
    radius = (float)InvalidAttributeValue;
    height = (float)InvalidAttributeValue;
    length = (float)InvalidAttributeValue;
    width  = (float)InvalidAttributeValue;
    max    = InvalidAttributeValue;
    med    = InvalidAttributeValue;
}

//********************************************************************************************
// Constructor 
//********************************************************************************************
p3dBoundVolShape::p3dBoundVolShape()
{
    attributes = new p3dBoundVolAttr;
    attributes->boundingType = BOUNDING_BOX;
    attributes->radius = 1.0f;
    attributes->height = 1.0f;
    attributes->length = 1.0f;
    attributes->width  = 1.0f;
    attributes->max = -1; //default height is y
    attributes->med = -1; //default radius is half x
}

//********************************************************************************************
// Destructor 
//********************************************************************************************
p3dBoundVolShape::~p3dBoundVolShape()
{
    delete attributes;
}

//********************************************************************************************
// Description
// 
//    When instances of this node are created internally, the MObject associated
//    with the instance is not created until after the constructor of this class
//    is called. This means that no member functions of MPxSurfaceShape can
//    be called in the constructor.
//    The postConstructor solves this problem. Maya will call this function
//    after the internal object has been created.
//    As a general rule do all of your initialization in the postConstructor.
//********************************************************************************************
void p3dBoundVolShape::postConstructor()
{
    // This call allows the shape to have shading groups assigned
    setRenderable( true );
    
    //
    // I need this to do the one-time computation of the 
    // max med parameters and for setting up the connection
    // to the parent Joint that is not availible yet... 
    //
/*
    MStatus callbackStatus;
    callbackID = MNodeMessage::addAttributeChangedCallback(  thisMObject(), 
                                                                                InitializationCallBack, 
                                                                                this, 
                                                                                &callbackStatus );
*/
}


//********************************************************************************************
// Callback to connect attributes to this node
// THIS IS NOT USED ANYMORE BUT IS HERE FOR FUTURE REFERENCE!!!
//********************************************************************************************
void p3dBoundVolShape::InitializationCallBack
( 
    MNodeMessage::AttributeMessage msg, 
    MPlug & plug, 
    MPlug & otherPlug, 
    void* clientData 
)
{
    p3dBoundVolShape *shapeNode = (p3dBoundVolShape*)(clientData);
    if(shapeNode)
    {
        MStatus returnStatus;
        
        if(msg & MNodeMessage::kAttributeSet) 
        {
            returnStatus = shapeNode->connectAttributesToTransform();
            MMessage::removeCallback( shapeNode->callbackID );
        }
    }
}

//********************************************************************************************
// Since we rely on the parent transform node's scale attribute to input
// values to the attributes of the bounding volume, to do this we need 
// to connect the attibute to another attribute that's owned by the 
// shape itself. This allows the compute method to be called when the
// scale of the transform node changes.
// THIS IS NOT USED ANYMORE BUT IS HERE FOR FUTURE REFERENCE!!!
//********************************************************************************************
MStatus p3dBoundVolShape::connectAttributesToTransform()
{
    MStatus connectStatus;

    MObject this_object = thisMObject();  
    MFnDagNode dagNodeFn(this_object);
    MPlug inputScalePlug = dagNodeFn.findPlug("si", &connectStatus);
    CHECKRESULT( connectStatus, "Couldn't find plug." );

    //
    // If already connected we don't want to connect it up
    //
    if(inputScalePlug.isConnected())
    {
        return(MS::kSuccess);
    }

    MDagPath dagPath;
    dagNodeFn.getPath(dagPath);
    dagNodeFn.setObject(dagPath.transform());
    MPlug transformScalePlug = dagNodeFn.findPlug("scale", &connectStatus);
    CHECKRESULT( connectStatus, "Couldn't find plug." );

    MDGModifier mDGModifier;
    connectStatus = mDGModifier.connect( transformScalePlug, inputScalePlug );         
    CHECKRESULT( connectStatus, "Couldn't find plug." );

    mDGModifier.doIt();

    return(connectStatus);
}

//********************************************************************************************
// Compute the max and med attributes since we are using these
// attributes to determine which scale axis are used to determine
// the attributes of the bounding volume.
//********************************************************************************************
MStatus p3dBoundVolShape::computeMaxMedAttributes(void)
{
    MStatus returnStatus;
    if( (attributes->max == -1) || (attributes->med == -1) )
    {
        MFnDagNode dagNodeFn(thisMObject());
        MPlug maxPlug = dagNodeFn.findPlug("max", &returnStatus);
        if(returnStatus != MS::kSuccess) return returnStatus;
        MPlug medPlug = dagNodeFn.findPlug("med", &returnStatus);
        if(returnStatus != MS::kSuccess) return returnStatus;
        MPlug scaleInputPlug = dagNodeFn.findPlug("si", &returnStatus);
        if(returnStatus != MS::kSuccess) return returnStatus;

        maxPlug.getValue(attributes->max);       
        medPlug.getValue(attributes->med);       

        if( (attributes->max == -1) || (attributes->med == -1) )
        {
            //
            // This is the first time this value is computed
            //
            double scaleInputValue[3];
            scaleInputPlug[0].getValue(scaleInputValue[0]);
            scaleInputPlug[1].getValue(scaleInputValue[1]);
            scaleInputPlug[2].getValue(scaleInputValue[2]);

            AssignMaxAndMed((float)scaleInputValue[0], 
                                 (float)scaleInputValue[1], 
                                 (float)scaleInputValue[2], 
                                 attributes->max,
                                 attributes->med
                                );
            
            maxPlug.setValue(attributes->max);
            medPlug.setValue(attributes->med);         
        }

        //
        // Force the compute method the be executed
        //
        maxPlug.setValue(attributes->max);
        medPlug.setValue(attributes->med);         

    }
    return(returnStatus);
}

//********************************************************************************************
// Description
// 
//    When instances of this node are created internally, the MObject associated
//    with the instance is not created until after the constructor of this class
//    is called. This means that no member functions of MPxSurfaceShape can
//    be called in the constructor.
//    The postConstructor solves this problem. Maya will call this function
//    after the internal object has been created.
//    As a general rule do all of your initialization in the postConstructor.
//********************************************************************************************
MStatus p3dBoundVolShape::compute( const MPlug& plug, MDataBlock& datablock )
{
    MStatus returnStatus = MS::kSuccess;
     
    MStatus attribTest;

    MDataHandle scaleInputDatahandle = datablock.inputValue(scaleInput, &returnStatus);
    if(returnStatus != MS::kSuccess) return returnStatus;


    double3& scaleInputValue = scaleInputDatahandle.asDouble3();
    if( ( scaleInputValue[0] == 0) || ( scaleInputValue[1] == 0) || ( scaleInputValue[2] == 0) )
    {
        //
        // Not Initialized so don't recompute
        //
        datablock.setClean( radius );
        datablock.setClean( length );
        datablock.setClean( width );
        datablock.setClean( height );
        return returnStatus;
    }

    if(
            (plug == radius) ||
            (plug == length) ||
            (plug == width)  || 
            (plug == height)
    )
    {
        
        //
        // This only really needs to be called once...
        // but it is needed before the below calculations
        //
        computeMaxMedAttributes(datablock);

        MDataHandle boundingTypeDatahandle = datablock.inputValue(boundingType, &returnStatus);
        if(returnStatus != MS::kSuccess) return returnStatus;

        short boundingTypeValue;
        boundingTypeValue = boundingTypeDatahandle.asShort();

        switch (boundingTypeValue)
        {
            case BOUNDING_BOX:
                {
                    computeBoxAttributes(datablock);  
                }
                break;

            case BOUNDING_SPHERE:
                {
                    computeSphereAttributes(datablock);  
                }
                break;

            case BOUNDING_CYLINDER: //lock the smallest size
                {
                    computeCylinderAttributes(datablock);  
                }
                break;

            case BOUNDING_CAPSULE:
                {
                    computeCapsuleAttributes(datablock);  
                }
                break;

            case BOUNDING_PLANE:
                {
                    computePlaneAttributes(datablock);  
                }
                break;

            default:
                break;
        }

        //
        // Should only need to call this once
        //
        datablock.setClean( radius );
        datablock.setClean( length );
        datablock.setClean( width );
        datablock.setClean( height );

    }

    lockTransformScale();
    return returnStatus;
}

//********************************************************************************************
// Compute the internal attributes and constraints based on a boundingType
// The CALLER is responsible for doing the type checking
//********************************************************************************************
MStatus p3dBoundVolShape::computeMaxMedAttributes(MDataBlock& datablock)
{
    MStatus returnStatus;

    if( (attributes->max == -1) || (attributes->med == -1) )
    {
        MDataHandle scaleInputDatahandle = datablock.inputValue(scaleInput, &returnStatus);
        if(returnStatus != MS::kSuccess) return returnStatus;
        MDataHandle maxDatahandle     = datablock.outputValue(max, &returnStatus);
        if(returnStatus != MS::kSuccess) return returnStatus;
        MDataHandle medDatahandle      = datablock.outputValue(med, &returnStatus);
        if(returnStatus != MS::kSuccess) return returnStatus;

        attributes->max = maxDatahandle.asShort();
        attributes->med = medDatahandle.asShort();

        if( (attributes->max == -1) || (attributes->med == -1) )
        {

            //
            // Get the scaleing input data
            //
            double3 &scaleInputValue = scaleInputDatahandle.asDouble3();

            AssignMaxAndMed((float)scaleInputValue[0], 
                                 (float)scaleInputValue[1], 
                                 (float)scaleInputValue[2], 
                                 attributes->max,
                                 attributes->med
                                 );

            maxDatahandle.set(attributes->max);
            medDatahandle.set(attributes->med);
        }
    }

    return(returnStatus);
}

//********************************************************************************************
// Compute the attributes since we are using the scale in the 
// transform and the context of the bounding volume type to 
// determine what the attribute plug values should be set to.
//********************************************************************************************
MStatus p3dBoundVolShape::computeBoxAttributes(MDataBlock& datablock)
{
    MStatus returnStatus;
    MDataHandle scaleInputDatahandle = datablock.inputValue(scaleInput, &returnStatus);
    if(returnStatus != MS::kSuccess) return returnStatus;
    MDataHandle lengthDatahandle     = datablock.outputValue(length, &returnStatus);
    if(returnStatus != MS::kSuccess) return returnStatus;
    MDataHandle widthDatahandle      = datablock.outputValue(width, &returnStatus);
    if(returnStatus != MS::kSuccess) return returnStatus;
    MDataHandle heightDatahandle     = datablock.outputValue(height, &returnStatus);
    if(returnStatus != MS::kSuccess) return returnStatus;

    //
    // Get the scaleing input data
    //
    double3 &scaleInputValue = scaleInputDatahandle.asDouble3();

    //
    // Set the data values
    //
    attributes->width = (float)scaleInputValue[0];
    ClampValue(attributes->width, 0.0f, 0.0f, CLAMP_MIN);
    widthDatahandle.set(attributes->width);

    attributes->height = (float)scaleInputValue[1];
    ClampValue(attributes->height, 0.0f, 0.0f, CLAMP_MIN);
    heightDatahandle.set(attributes->height);

    attributes->length = (float)scaleInputValue[2];
    ClampValue(attributes->length, 0.0f, 0.0f, CLAMP_MIN);
    lengthDatahandle.set(attributes->length);

    attributes->boundingType = BOUNDING_BOX; 

    return(returnStatus);
}

//********************************************************************************************
// Compute the attributes since we are using the scale in the 
// transform and the context of the bounding volume type to 
// determine what the attribute plug values should be set to.
//********************************************************************************************
MStatus p3dBoundVolShape::computeSphereAttributes(MDataBlock& datablock)
{
    MStatus returnStatus;
    MDataHandle scaleInputDatahandle = datablock.inputValue(scaleInput, &returnStatus);
    if(returnStatus != MS::kSuccess) return returnStatus;
    MDataHandle radiusDatahandle     = datablock.outputValue(radius, &returnStatus);
    if(returnStatus != MS::kSuccess) return returnStatus;

    //
    // Get the scaleing input data
    //
    double3 &scaleInputValue = scaleInputDatahandle.asDouble3();

    //
    // Compute other attributes
    //
    switch (attributes->max) 
    {
    case 0:
        attributes->radius = (float)scaleInputValue[0]/2;
        break;
    case 1:
        attributes->radius = (float)scaleInputValue[1]/2;
        break;
    default:
        attributes->radius = (float)scaleInputValue[2]/2;
        break;
    }
    ClampValue(attributes->radius, 0.0f, 0.0f, CLAMP_MIN);
    radiusDatahandle.set(attributes->radius);

    attributes->boundingType = BOUNDING_SPHERE; 

    return(returnStatus);
}

//********************************************************************************************
// Compute the attributes since we are using the scale in the 
// transform and the context of the bounding volume type to 
// determine what the attribute plug values should be set to.
//********************************************************************************************
MStatus p3dBoundVolShape::computeCylinderAttributes(MDataBlock& datablock)
{
    //
    // Right now the capsule and the Cylinder are the 
    // same in this context
    //
    MStatus returnStatus = computeCapsuleAttributes(datablock);

    attributes->boundingType = BOUNDING_CYLINDER;

    return(returnStatus);
}

//********************************************************************************************
// Compute the attributes since we are using the scale in the 
// transform and the context of the bounding volume type to 
// determine what the attribute plug values should be set to.
//********************************************************************************************
MStatus p3dBoundVolShape::computeCapsuleAttributes(MDataBlock& datablock)
{
    MStatus returnStatus;
    MDataHandle scaleInputDatahandle = datablock.inputValue(scaleInput, &returnStatus);
    if(returnStatus != MS::kSuccess) return returnStatus;
    MDataHandle radiusDatahandle     = datablock.outputValue(radius, &returnStatus);
    if(returnStatus != MS::kSuccess) return returnStatus;
    MDataHandle heightDatahandle     = datablock.outputValue(height, &returnStatus);
    if(returnStatus != MS::kSuccess) return returnStatus;

    //
    // Get the scaleing input data
    //
    double3 &scaleInputValue = scaleInputDatahandle.asDouble3();
    
    //
    // Compute other attributes
    //
    switch (attributes->med)
    {
    case 0:
        attributes->radius = (float)scaleInputValue[0]/2; 
        break;
    case 1:
        attributes->radius = (float)scaleInputValue[1]/2;
        break;
    default:
        attributes->radius = (float)scaleInputValue[2]/2;
        break;
    }
    ClampValue(attributes->radius, 0.0f, 0.0f, CLAMP_MIN);
    radiusDatahandle.set(attributes->radius);

    switch (attributes->max) 
    {
    case 0:
        attributes->height = (float)scaleInputValue[0]; 
        break;
    case 1:
        attributes->height = (float)scaleInputValue[1];
        break;
    default:
        attributes->height = (float)scaleInputValue[2];
        break;
    }
    ClampValue(attributes->height, 0.0f, 0.0f, CLAMP_MIN);
    heightDatahandle.set(attributes->height);

    attributes->boundingType = BOUNDING_CAPSULE;
    
    return(returnStatus);
}

//********************************************************************************************
// Compute the attributes since we are using the scale in the 
// transform and the context of the bounding volume type to 
// determine what the attribute plug values should be set to.
//********************************************************************************************
MStatus p3dBoundVolShape::computePlaneAttributes(MDataBlock& datablock)
{
    MStatus returnStatus;
    MDataHandle scaleInputDatahandle = datablock.inputValue(scaleInput, &returnStatus);
    if(returnStatus != MS::kSuccess) return returnStatus;
    MDataHandle lengthDatahandle     = datablock.outputValue(length, &returnStatus);
    if(returnStatus != MS::kSuccess) return returnStatus;
    MDataHandle widthDatahandle      = datablock.outputValue(width, &returnStatus);
    if(returnStatus != MS::kSuccess) return returnStatus;
    MDataHandle heightDatahandle     = datablock.outputValue(height, &returnStatus);
    if(returnStatus != MS::kSuccess) return returnStatus;

    //
    // Get the scaleing input data
    //
    double3 &scaleInputValue = scaleInputDatahandle.asDouble3();

    //
    // Set the data values
    //
    attributes->width = (float)scaleInputValue[0];
    ClampValue(attributes->width, 0.0f, 0.0f, CLAMP_MIN);
    widthDatahandle.set(attributes->width);

    attributes->height = (float)scaleInputValue[2];
    ClampValue(attributes->height, 0.0f, 0.0f, CLAMP_MIN);
    heightDatahandle.set(attributes->height);

    attributes->boundingType = BOUNDING_PLANE;

    return(returnStatus);
}

//********************************************************************************************
// Based on the type of bounding volumes and/or what the
// major axis is, we lock the values of the scale attribute
// that controls the size of the bounding volume
//********************************************************************************************
void p3dBoundVolShape::lockTransformScale(void)
{
    MObject this_object = thisMObject();
    MFnDagNode dagNodeFn(this_object);
    MDagPath dagPath;
    dagNodeFn.getPath(dagPath);
    dagNodeFn.setObject(dagPath.transform());
    MPlug sxPlug = dagNodeFn.findPlug("sx");
    MPlug syPlug = dagNodeFn.findPlug("sy");
    MPlug szPlug = dagNodeFn.findPlug("sz");    

    switch (attributes->boundingType) 
    {
    case BOUNDING_BOX:
        {
            sxPlug.setLocked(false);
            syPlug.setLocked(false);
            szPlug.setLocked(false);
        }
        break;

    case BOUNDING_SPHERE:
        {
            sxPlug.setLocked(true);
            syPlug.setLocked(true);
            szPlug.setLocked(true);
            if (attributes->max == 0 )
                  sxPlug.setLocked(false);
            else if (attributes->max == 1 )
                  syPlug.setLocked(false);
            else
                  szPlug.setLocked(false);
        }
        break;

    case BOUNDING_CYLINDER: //lock the smallest size
    case BOUNDING_CAPSULE:
        {
            sxPlug.setLocked(false);
            syPlug.setLocked(false);
            szPlug.setLocked(false); 
            if ( 0 != attributes->max && 0 != attributes->med )
                  sxPlug.setLocked(true);
            else if (1 != attributes->max && 1 != attributes->med )
                  syPlug.setLocked(true);
            else 
                  szPlug.setLocked(true);
        }
        break;
    case BOUNDING_PLANE:
        {
          sxPlug.setLocked(false);
          syPlug.setLocked(true);
          szPlug.setLocked(false);
        }
        break;

     default:
            break;
    }
}

//********************************************************************************************
// This transfers attribute info from the plugs
// into the p3dBoundVolAttr data structure
//********************************************************************************************
void p3dBoundVolShape::updateAttributesFromPlugs(void)
{
    MObject this_object = thisMObject();

    MPlug plug( this_object, boundingType );
    plug.getValue( attributes->boundingType );

    plug.setAttribute( radius );                       
    plug.getValue( attributes->radius );

    plug.setAttribute( height );                       
    plug.getValue( attributes->height );

    plug.setAttribute( width );                        
    plug.getValue( attributes->width );

    plug.setAttribute( length );                       
    plug.getValue( attributes->length );

    plug.setAttribute( max );                    
    plug.getValue( attributes->max );

    plug.setAttribute( med );                    
    plug.getValue( attributes->med );   
}

//********************************************************************************************
// BoundingVolume Factory
//********************************************************************************************
void* p3dBoundVolShape::creator()
{
    return new p3dBoundVolShape();
}

//********************************************************************************************
// This creates attributes and there relationships 
// for the Bounding Volume Shape
//********************************************************************************************
MStatus p3dBoundVolShape::initialize()
{
    MStatus           status;
    MFnEnumAttribute  boundingTypeAttr;

    // Attributes to hold which dimension is being used as radius and height of the bounding volume
    MFnEnumAttribute       maxAttr;
    max = maxAttr.create( "max", "mx", -1, &status ); //default y
    CHECKRESULT( status, "Error creating max or med attribute" );
    maxAttr.addField( "sx", 0 );
    maxAttr.addField( "sy", 1 );
    maxAttr.addField( "sz", 2 );
    maxAttr.setInternal(true);
    maxAttr.setHidden(false);//true);
    maxAttr.setKeyable(false);
    status = addAttribute( max );
    CHECKRESULT( status, "Error adding max attribute." );

    MFnEnumAttribute       medAttr;
    med = medAttr.create( "med", "md", -1, &status ); //default x
    medAttr.addField( "sx", 0 );
    medAttr.addField( "sy", 1 );
    medAttr.addField( "sz", 2 );
    medAttr.setInternal(false);//true);
    medAttr.setHidden(false); //true);
    medAttr.setKeyable(false);
    status = addAttribute( med );
    CHECKRESULT( status, "Error adding med attributes." );
    
    boundingType = boundingTypeAttr.create( "boundingType", "bt", 0, &status);
    CHECKRESULT( status, "Error creating boundingType attribute" );
    boundingTypeAttr.addField( "box", 0 );
    boundingTypeAttr.addField( "sphere", 1 );
    boundingTypeAttr.addField( "cylinder", 2 );
    boundingTypeAttr.addField( "capsule", 3 );
    boundingTypeAttr.addField( "plane", 4 );
    boundingTypeAttr.setInternal( false );//true );
    boundingTypeAttr.setHidden( false );
    boundingTypeAttr.setKeyable( false );
    status = addAttribute( boundingType );
    CHECKRESULT( status, "Error adding boundingType attribute." );

    MAKE_NUMERIC_ATTR( radius,    "radius",   "rd",  MFnNumericData::kFloat, 1.0f, false, true );
    MAKE_NUMERIC_ATTR( height,    "height",   "hgt", MFnNumericData::kFloat, 1.0f, false, true );
    MAKE_NUMERIC_ATTR( width,     "width",    "wdt", MFnNumericData::kFloat, 1.0f, false, true );
    MAKE_NUMERIC_ATTR( length,    "length",   "len", MFnNumericData::kFloat, 1.0f, false, true );
    MAKE_NUMERIC_ATTR( scaleInput,"scaleInput","si", MFnNumericData::k3Double, 0.0f, true, false );

    //
    // Internal Attribute Dependencies
    //
    status = attributeAffects ( boundingType, radius );
    CHECKRESULT(status, "Couldnt evaluate set up dependencies for radius attribute\n");
    status = attributeAffects ( scaleInput,  radius );
    CHECKRESULT(status, "Couldnt evaluate set up dependencies for radius attribute\n");
    status = attributeAffects ( max,  radius );
    CHECKRESULT(status, "Couldnt evaluate set up dependencies for radius attribute\n");
    status = attributeAffects ( med,  radius );
    CHECKRESULT(status, "Couldnt evaluate set up dependencies for radius attribute\n");

    status = attributeAffects ( boundingType,length );
    CHECKRESULT(status, "Couldnt evaluate set up dependencies for length attribute\n");
    status = attributeAffects ( scaleInput,  length );
    CHECKRESULT(status, "Couldnt evaluate set up dependencies for length attribute\n");
    status = attributeAffects ( max,  length );
    CHECKRESULT(status, "Couldnt evaluate set up dependencies for length attribute\n");
    status = attributeAffects ( med,  length );
    CHECKRESULT(status, "Couldnt evaluate set up dependencies for length attribute\n");

    status = attributeAffects ( boundingType,width );
    CHECKRESULT(status, "Couldnt evaluate set up dependencies for width attribute\n");
    status = attributeAffects ( scaleInput,  width );
    CHECKRESULT(status, "Couldnt evaluate set up dependencies for width attribute\n");
    status = attributeAffects ( max,  width );
    CHECKRESULT(status, "Couldnt evaluate set up dependencies for width attribute\n");
    status = attributeAffects ( med,  width );
    CHECKRESULT(status, "Couldnt evaluate set up dependencies for width attribute\n");

    status = attributeAffects ( boundingType,height );
    CHECKRESULT(status, "Couldnt evaluate set up dependencies for height attribute\n");
    status = attributeAffects ( scaleInput,  height );
    CHECKRESULT(status, "Couldnt evaluate set up dependencies for height attribute\n");
    status = attributeAffects ( max,  height );
    CHECKRESULT(status, "Couldnt evaluate set up dependencies for height attribute\n");
    status = attributeAffects ( med,  height );
    CHECKRESULT(status, "Couldnt evaluate set up dependencies for height attribute\n");

    return status;
}

//********************************************************************************************
// This function gets the values of all the attributes and
// assigns them to the fGeometry. Calling MPlug::getValue
// will ensure that the values are up-to-date.
//********************************************************************************************
p3dBoundVolAttr* p3dBoundVolShape::getAttributes()
{
    //
    // This replaces the locking of the scale axis
    // in the getInternalValue() since the attributes
    // are no longer internal.
    //
    updateAttributesFromPlugs();

    return attributes;
}

//********************************************************************************************
// Returns a the scale value for the shapeNode... it's painfull 
// to have to do this every time you want the values
//********************************************************************************************
MStatus p3dBoundVolShape::GetTransformScale(double scale[3])
{
    MStatus status = MS::kSuccess;
    MObject obj = thisMObject();
    
    MFnDagNode dagFn(obj);
    MObject parentObj = dagFn.parent(0);
    MFnDagNode parentFn(parentObj);
    
    MPlug sxPlug = parentFn.findPlug("sx");
    sxPlug.getValue(scale[0]);
    MPlug syPlug = parentFn.findPlug("sy");
    syPlug.getValue(scale[1]);
    MPlug szPlug = parentFn.findPlug("sz");
    szPlug.getValue(scale[2]);

    return(status);
}


//********************************************************************************************
// Returns a MBoundingBox whose size will be multiplied with the inclusive matrix
// to be used for determining selection.
//********************************************************************************************
MBoundingBox p3dBoundVolShape::boundingBox() const
{
    MBoundingBox  result; 
 
    MStatus status;
    MObject obj = thisMObject();
    
    MFnDagNode dagFn(obj);
    MObject parentObj = dagFn.parent(0);
    MFnDagNode parentFn(parentObj);
    
    // Just to see, assume there are no bns above this.
    MObject grandParentObj = parentFn.parent(0);
    MDagPath grandParentPath;
    cout<<grandParentPath.partialPathName();
    MDagPath::getAPathTo(grandParentObj, grandParentPath);
    MMatrix excMatrix = grandParentPath.exclusiveMatrix(&status);
    double scale[3] = {1,1,1};
    //MTransformationMatrix::RotationOrder rotOrder;
    MTransformationMatrix excTrans(excMatrix);
    excTrans.setScale(scale, MSpace::kTransform);
    MMatrix rotateMatrix = excTrans.asRotateMatrix();

    MMatrix excMatrixInv = grandParentPath.exclusiveMatrixInverse(&status);
    MTransformationMatrix transform(excMatrixInv);
    MMatrix invScaleMatrix = transform.asScaleMatrix();
    
    double inverseScale[3];
    transform.getScale(inverseScale, MSpace::kLast); 

    MPlug sxPlug = parentFn.findPlug("sx");
    sxPlug.getValue(scale[0]);
    MPlug syPlug = parentFn.findPlug("sy");
    syPlug.getValue(scale[1]);
    MPlug szPlug = parentFn.findPlug("sz");
    szPlug.getValue(scale[2]);
    
    MPoint minPt, maxPt;

    switch ( attributes->boundingType )
    {
    case BOUNDING_BOX :
        {
            minPt = MPoint(-0.48, -0.48, -0.48);
            maxPt = MPoint(0.48, 0.48, 0.48);
            break;
        }
     case BOUNDING_SPHERE :
        {
         if (attributes->max == 0)
         {
             minPt = MPoint(-0.35, -scale[0]/(3*scale[1]), -scale[0]/(3*scale[2]) ); 
             maxPt = MPoint(0.35, scale[0]/(3*scale[1]), scale[0]/(3*scale[2]) );
         }
         else if (attributes->max == 1) 
         {
             minPt = MPoint(-scale[1]/(3*scale[0]), -0.35, -scale[1]/(3*scale[2]) ); 
             maxPt = MPoint(scale[1]/(3*scale[0]), 0.35, scale[1]/(3*scale[2]) );
         }
         else  
         {
             minPt = MPoint(-scale[2]/(3*scale[0]), -scale[2]/(3*scale[1]), -0.35 ); 
             maxPt = MPoint(scale[2]/(3*scale[0]), scale[2]/(3*scale[1]), 0.35 );
         }
            break;
        } 
    case BOUNDING_CYLINDER :
        {
         if (attributes->max == 0)
         {
             if( attributes->med == 1 ) 
             {
                minPt = MPoint(-0.5, -0.35, -scale[1]/(3*scale[2]) );
                maxPt = MPoint(0.5, 0.35, scale[1]/(3*scale[2]) );
             }
             else 
             {
                 minPt = MPoint(-0.5, -scale[2]/(3*scale[1]), -0.35 );
                maxPt = MPoint(0.5, scale[2]/(3*scale[1]), 0.35 );
             }
         }
         else if (attributes->max == 1)
         {
             if( attributes->med == 0 )
             {
                minPt = MPoint(-0.35, -0.5, -scale[0]/(3*scale[2]) );
                maxPt = MPoint(0.35, 0.5, scale[0]/(3*scale[2]) );
             }
             else
             {
                minPt = MPoint(-scale[2]/(3*scale[0]), -0.5, -0.35 );
                maxPt = MPoint(scale[2]/(3*scale[0]), 0.5, 0.35 );
             }

         }
         else 
         {
             if( attributes->med == 0 )
             {
                minPt = MPoint( -0.35, -scale[0]/(3*scale[1]), -0.5 );
                maxPt = MPoint( 0.35, scale[0]/(3*scale[1]), 0.5 );
             }
             else 
             {
                minPt = MPoint( -scale[1]/(3*scale[0]), -0.35, -0.5 );
                maxPt = MPoint( scale[1]/(3*scale[0]), 0.35, 0.5 );
             }
         }
            break;
        }
    case BOUNDING_CAPSULE : 
        {
         if (attributes->max == 0)
         {
             if( attributes->med == 1 )  //height is x, radius is half y
             {
                minPt = MPoint( -0.5 - (scale[1]/(3*scale[0])), -0.375, -scale[1]/(3*scale[2]) );
                maxPt = MPoint( 0.5 + (scale[1]/(3*scale[0])), 0.375, scale[1]/(3*scale[2]) );
             }
             else //height is x, radius is half z
             {
                 minPt = MPoint( -0.5 - (scale[2]/(3*scale[0])), -scale[2]/(3*scale[1]), -0.375 );
                maxPt = MPoint( 0.5 + (scale[2]/(3*scale[0])), scale[2]/(3*scale[1]), 0.375 );
             }
         }
         else if (attributes->max == 1)
         {
             if( attributes->med == 0 ) //height is y, radius is half x
             {
                minPt = MPoint(-0.375, -0.5 - (scale[0]/(3*scale[1])), -scale[0]/(3*scale[2]) );
                maxPt = MPoint(0.375, 0.5 + (scale[0]/(3*scale[1])), scale[0]/(3*scale[2]) );
             }
             else //height is y, radius is half z
             {
                minPt = MPoint(-scale[2]/(3*scale[0]), -0.5 - (scale[2]/(3*scale[1])), -0.375 );
                maxPt = MPoint(scale[2]/(3*scale[0]), 0.5 + (scale[2]/(3*scale[1])), 0.375 );
             }
         }
         else 
         {
             if( attributes->med == 0 ) //height is z, radius is half x
             {
                minPt = MPoint(-0.375, -scale[0]/(3*scale[1]), -0.5 - (scale[0]/(3*scale[2])) );
                maxPt = MPoint(0.375, scale[0]/(3*scale[1]), 0.5 + (scale[0]/(3*scale[2])) );
             }
             else //height is z, radius is half y
             {
                minPt = MPoint(-scale[1]/(3*scale[0]), -0.375, -0.5 - (scale[1]/(3*scale[2])) );
                maxPt = MPoint(scale[1]/(3*scale[0]), 0.375, 0.5 + (scale[1]/(3*scale[2])) );
             }
         }
            break;
        }
        
    case BOUNDING_PLANE :
        {
            minPt = MPoint(-0.5, 0, -0.5 );
            maxPt = MPoint(0.5, 0, 0.5 );
            break;
        }

    }
/*   
    minPt.x *= inverseScale[0];
    minPt.y *= inverseScale[1];
    minPt.z *= inverseScale[2];

    maxPt.x *= inverseScale[0];
    maxPt.y *= inverseScale[1];
    maxPt.z *= inverseScale[2];
*/

    minPt *= invScaleMatrix;
    maxPt *= invScaleMatrix;

    result.expand( minPt );
    result.expand( maxPt );

    result.transformUsing( rotateMatrix );
    return result;
}

//********************************************************************************************
// Ray intersection for Bounding Volumes
// This function dispatches the actual Ray intersection 
// to the appropreate bounding volume types
//********************************************************************************************
bool p3dBoundVolShape::intersectionRoutine
( 
    MPoint  rayStartPoint, 
    MVector rayDirection
)
{
    bool isIntersected = false;

    //
    // Scale this direction Vector and the startingPoint 
    // with respect the size of the object since it's size is given 
    // from 1.0 -> -1.0
    //
    double scale[3];
    this->GetTransformScale(scale);
    
    rayDirection.x *= scale[0];
    rayDirection.y *= scale[1];
    rayDirection.z *= scale[2];

    rayStartPoint.x *= scale[0];
    rayStartPoint.y *= scale[1];
    rayStartPoint.z *= scale[2];

    //
    // Now construct the object intersection line
    //
    switch(attributes->boundingType)
    {
        case BOUNDING_BOX:
            {
                isIntersected = intersectingBox(rayStartPoint, rayDirection);
            }
            break;
        case BOUNDING_SPHERE:
            {
                isIntersected = intersectingSphere(rayStartPoint, rayDirection);
            }
            break;
        case BOUNDING_CYLINDER:
            {
                isIntersected = intersectingCylinder(rayStartPoint, rayDirection);
            }
            break;
        case BOUNDING_CAPSULE:
            {
                isIntersected = intersectingCapsule(rayStartPoint, rayDirection);
            }
            break;
        case BOUNDING_PLANE:
            {
                isIntersected = intersectingPlane(rayStartPoint, rayDirection);
            }
            break;
        default:
            isIntersected = false;
            break;
    }

    //
    // Were there any intersections?
    //
    return(isIntersected);
}

//********************************************************************************************
// Ray intersection of a box. 
// This by default should return true if not implemented...
//********************************************************************************************
bool p3dBoundVolShape::intersectingBox(MPoint rayStartPoint, MVector rayDirection)
{
    return(true);
}

//********************************************************************************************
// Ray intersection of a sphere. 
//
// This is a special case since the sphere is at the origin
// Since the Ray is in local space...
// Combining a Ray function R(t) with a sphere equation
// the result is a quadratic:
// t^2 + 2*a1*t + a0 = 0
// As described in:
// 3D Game Engine Design 
// By:
// David H. Eberly
//
//********************************************************************************************
bool p3dBoundVolShape::intersectingSphere(MPoint rayStartPoint, MVector rayDirection)
{
    MVector distanceToSphereCenter(rayStartPoint);   // since sphere is at the center
    
    double radius = this->attributes->radius;

    double a0 = distanceToSphereCenter*distanceToSphereCenter - radius*radius;

    if(a0 <= 0)
    {
        //
        // rayStartPoint is in the sphere 
        //
        return(true);
    }

    double a1 = rayDirection*distanceToSphereCenter;

    if(a1 >=0)
    {
        //
        // The Ray is pointing away from the sphere... this will never happen
        //
        return(false);
    }

    //
    // The Quadratic function has a real root if the 
    // descriminant isn't negative
    //
    return(a1*a1 >= a0);
}

//********************************************************************************************
// Ray intersection of a cylinder. 
// Start and endpoints are in local space
// This by default should return true if not implemented...
//********************************************************************************************
bool p3dBoundVolShape::intersectingCylinder(MPoint rayStartPoint, MVector rayDirection)
{
/*
    tlPoint pointStartA;
    tlPoint pointEndA;
    tlPoint pointStartB;
    tlPoint pointEndB;

    //
    // Convert the MPoints
    //
    pointStartA.x = rayStartPoint.x;
    pointStartA.y = rayStartPoint.y;
    pointStartA.z = rayStartPoint.z;

    pointEndA.x = rayEndPoint.x;
    pointEndA.y = rayEndPoint.y;
    pointEndA.z = rayEndPoint.z;

    //
    // Now construct the object intersection line
    //
    switch(attributes->max)
    {
        case 0:
            {
                pointStartB.x  = -attributes->height/2;
                pointEndB.x    =  attributes->height/2;
            }
            break;
        case 1:
            {
                pointStartB.y  = -attributes->height/2;
                pointEndB.y    =  attributes->height/2;
            }
            break;
        case 2:
            {
                pointStartB.z  = -attributes->height/2;
                pointEndB.z    =  attributes->height/2;
            }
            break;
        default:
            {
                pointStartB.x  = -attributes->height/2;
                pointEndB.x    =  attributes->height/2;
            }
            break;
    }

    return( IsLineSegmentsIntersecting
                (  pointStartA,
                    pointEndA,
                    pointStartB,
                    pointEndB,
                    attributes->radius ///100.0f // unit conversion
                )
                );
*/
    return(true);
}

//********************************************************************************************
// Ray intersection of a capsule. 
// This by default should return true if not implemented...
//********************************************************************************************
bool p3dBoundVolShape::intersectingCapsule(MPoint rayStartPoint, MVector rayDirection)
{
    return(intersectingCylinder(rayStartPoint, rayDirection));
}

//********************************************************************************************
// Ray intersection of a plane. 
// This by default should return true if not implemented...
//********************************************************************************************
bool p3dBoundVolShape::intersectingPlane(MPoint rayStartPoint, MVector rayDirection)
{
    return(true);
}

/////////////////////////////////////////////////////////////////////
// SHAPE NODE IMPLEMENTATION
/////////////////////////////////////////////////////////////////////

MObject p3dBoundNodeShape::handleSize;
MTypeId p3dBoundNodeShape::id(P3D_BOUNDING_NODE_ID);

//********************************************************************************************
// Constructor 
//********************************************************************************************
p3dBoundNodeShape::p3dBoundNodeShape()
{
    attributes = new p3dBoundNodeAttr;
    attributes->handleSize = (float)MDistance::uiToInternal(1.0);
    
}

//********************************************************************************************
// Destructor 
//********************************************************************************************
p3dBoundNodeShape::~p3dBoundNodeShape()
{
    delete attributes;
}

//********************************************************************************************
// Description
// 
//    When instances of this node are created internally, the MObject associated
//    with the instance is not created until after the constructor of this class
//    is called. This means that no member functions of MPxSurfaceShape can
//    be called in the constructor.
//    The postConstructor solves this problem. Maya will call this function
//    after the internal object has been created.
//    As a general rule do all of your initialization in the postConstructor.
//********************************************************************************************
void p3dBoundNodeShape::postConstructor()
{ 
    // This call allows the shape to have shading groups assigned
    setRenderable( true );
 
}

//********************************************************************************************
// Handle internal attributes.
// In order to impose limits on our attribute values we
// mark them internal and use the values in attributes instead.
//********************************************************************************************
bool p3dBoundNodeShape::getInternalValue( const MPlug& plug, MDataHandle& datahandle )
{
    bool isOk = true;

    if ( plug == handleSize ) 
    {
        datahandle.set( attributes->handleSize );
        isOk = true;
    }
    else 
    {
        isOk = MPxSurfaceShape::getInternalValue( plug, datahandle );
    }
    return isOk;
}

//********************************************************************************************
// Handle internal attributes.
// In order to impose limits on our attribute values we
// mark them internal and use the values in attributes instead.
//********************************************************************************************
bool p3dBoundNodeShape::setInternalValue( const MPlug& plug, const MDataHandle& datahandle )
{
    bool isOk = true;

    if ( plug == handleSize ) 
    {
      attributes->handleSize = datahandle.asFloat();
        isOk = true;
    }
    else 
    {
        isOk = MPxSurfaceShape::setInternalValue( plug, datahandle );
    }
    return isOk;
}

//********************************************************************************************
// BoundingNode Factory
//********************************************************************************************
void* p3dBoundNodeShape::creator()
{
    return new p3dBoundNodeShape();
}

//********************************************************************************************
// This creates attributes and there relationships 
// for the Bounding Node Shape
//********************************************************************************************
MStatus p3dBoundNodeShape::initialize()
{ 
    MStatus           status;

    MAKE_NUMERIC_ATTR( handleSize, "handleSize", "hs", MFnNumericData::kFloat, 3.00F, false, false );

    return status;
}

//********************************************************************************************
// This function gets the values of all the attributes and
// assigns them to the fGeometry. Calling MPlug::getValue
// will ensure that the values are up-to-date.
//********************************************************************************************
p3dBoundNodeAttr* p3dBoundNodeShape::getAttributes()
{
    MObject this_object = thisMObject();
    MPlug plug( this_object, handleSize );             plug.getValue( attributes->handleSize );
    return attributes;
}

//********************************************************************************************
// Returns the bounding box for the shape.
// In this case just use the radius and height attributes
// to determine the bounding box.
//********************************************************************************************
MBoundingBox p3dBoundNodeShape::boundingBox() const
{
    MBoundingBox  result; 

    float halfSize = attributes->handleSize / 4.5f;

    result.expand( MPoint(-halfSize, -halfSize, -halfSize) );
    result.expand( MPoint(halfSize, halfSize, halfSize) );
    return result;
}

}; // end P3DBoundingVolume
