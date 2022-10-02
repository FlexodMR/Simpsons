//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


#include <maya/MFnNumericAttribute.h>
#include <maya/MFnCompoundAttribute.h>
#include <maya/MFnMessageAttribute.h>
#include <maya/MFnEnumAttribute.h>
#include <maya/MFnTypedAttribute.h>
#include <maya/MFnStringData.h>
#include <maya/MPoint.h>
#include <maya/MPlug.h>
#include <maya/MDrawData.h>
#include <maya/MDrawRequest.h>
#include <maya/MSelectionMask.h>
#include <maya/MSelectionList.h>
#include <maya/MDagPath.h>
#include <maya/MFnDagNode.h>
#include <maya/MMaterial.h>
#include <maya/MMatrix.h>
#include <maya/MTransformationMatrix.h>
#include <maya/MAnimControl.h>
#include <maya/MTime.h>
#include <maya/MDGModifier.h>
#include <maya/MDistance.h>
#include <maya/MGlobal.h>
#include <maya/MDGMessage.h>
#include <GL/glu.h>

#include <math.h>
 
#include "billboardObjectUtility.hpp"
#include "billboardObjectShape.hpp"
 
/////////////////////////////////////////////////////////////////////

#define MAKE_NUMERIC_ATTR( NAME, LONGNAME, SHORTNAME, TYPE, DEFAULT, KEYABLE, HIDDEN )  \
    MStatus NAME##_stat;                                                       \
    MFnNumericAttribute NAME##_fn;                                             \
    NAME = NAME##_fn.create( LONGNAME, SHORTNAME, TYPE, DEFAULT );             \
    CHECKRESULT_FAILURE(NAME##_stat, "numeric attr create error");             \
    NAME##_fn.setKeyable( KEYABLE );                                           \
    NAME##_fn.setHidden( HIDDEN );                                             \
    NAME##_stat = addAttribute( NAME );                                        \
    CHECKRESULT_FAILURE(NAME##_stat, "addAttribute error");

namespace P3DBillboardObject
{

void SetQuadricDrawStyle (GLUquadricObj* qobj, int token)
{
    if ((token==SMOOTH_SHADED)||(token==FLAT_SHADED))
    {
        gluQuadricNormals( qobj, GLU_SMOOTH );
        gluQuadricTexture( qobj, true );
        gluQuadricDrawStyle( qobj, GLU_FILL );
    }
    else
    {
        gluQuadricDrawStyle( qobj, GLU_LINE );
    }
}

void p3dBaseShapeUI::getDrawRequestsWireframe( MDrawRequest& request, const MDrawInfo& info )
{
    request.setToken( WIREFRAME );

    M3dView::DisplayStatus displayStatus = info.displayStatus();
    M3dView::ColorTable activeColorTable = M3dView::kActiveColors;
    M3dView::ColorTable dormantColorTable = M3dView::kDormantColors;
    switch ( displayStatus )
    {
        case M3dView::kLead :
            request.setColor( lead_color, activeColorTable );
            break;
        case M3dView::kActive :
            request.setColor( active_color, activeColorTable );
            break;
        case M3dView::kActiveAffected :
            request.setColor( active_affected_color, activeColorTable );
            break;
        case M3dView::kDormant :
            request.setColor( dormant_color, dormantColorTable );
            break;
        case M3dView::kHilite :
            request.setColor( hilite_color, activeColorTable );
            break;
    }
}

void p3dBaseShapeUI::getDrawRequestsShaded( MDrawRequest& request, const MDrawInfo& info,
                                                          MDrawRequestQueue& queue, MDrawData& data )
{
    // Need to get the material info
    //
    MDagPath path = info.multiPath();   // path to your dag object 
    M3dView view = info.view();;     // view to draw to
    MMaterial material = MPxSurfaceShapeUI::material( path );
    M3dView::DisplayStatus displayStatus = info.displayStatus();

    // Evaluate the material and if necessary, the texture.
    //
    if ( ! material.evaluateMaterial( view, path ) ) 
    {
        cerr << "Couldnt evaluate\n";
    }

    if ( material.materialIsTextured() ) 
    {
        material.evaluateTexture( data );
    }

    request.setMaterial( material );

    bool materialTransparent = false;
    material.getHasTransparency( materialTransparent );
    if ( materialTransparent ) 
    {
        request.setIsTransparent( true );
    }
    
    // create a draw request for wireframe on shaded if
    // necessary.
    //
    if ( (displayStatus == M3dView::kActive) ||
         (displayStatus == M3dView::kLead) ||
         (displayStatus == M3dView::kHilite) )
    {
        MDrawRequest wireRequest = info.getPrototype( *this );
        wireRequest.setDrawData( data );
        getDrawRequestsWireframe( wireRequest, info );
        wireRequest.setToken( WIREFRAME_SHADED );
        wireRequest.setDisplayStyle( M3dView::kWireFrame );
        queue.add( wireRequest );
    }
}

/////////////////////////////////////////////////////////////////////
// SHAPE NODE IMPLEMENTATION
/////////////////////////////////////////////////////////////////////
MTypeId p3dBillboardQuadShape::id(P3D_BILLBOARD_QUAD_ID);
MObject p3dBillboardQuadShape::displaySize;
MObject p3dBillboardQuadShape::billboardMode;
MObject p3dBillboardQuadShape::shader;
MObject p3dBillboardQuadShape::colour;
MObject p3dBillboardQuadShape::red;
MObject p3dBillboardQuadShape::green;
MObject p3dBillboardQuadShape::blue;
MObject p3dBillboardQuadShape::alpha;
MObject p3dBillboardQuadShape::uv0;
MObject p3dBillboardQuadShape::uv1;
MObject p3dBillboardQuadShape::uv2;
MObject p3dBillboardQuadShape::uv3;
MObject p3dBillboardQuadShape::uvOffset;
MObject p3dBillboardQuadShape::cutOffMode;
MObject p3dBillboardQuadShape::uvOffsetAngleRange;
MObject p3dBillboardQuadShape::sourceAngleRange;
MObject p3dBillboardQuadShape::edgeAngleRange;
MObject p3dBillboardQuadShape::zTest;
MObject p3dBillboardQuadShape::zWrite;
MObject p3dBillboardQuadShape::fog;
MObject p3dBillboardQuadShape::distance;
MObject p3dBillboardQuadShape::perspectiveScale;
MObject p3dBillboardQuadShape::aDrawOrder;

p3dBillboardQuadShape::p3dBillboardQuadShape()
{
    attributes = new p3dBillboardQuadAttr;
    attributes->cutOffMode = NONE;
}

p3dBillboardQuadShape::~p3dBillboardQuadShape()
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
void p3dBillboardQuadShape::postConstructor()
{ 
    // This call allows the shape to have shading groups assigned
    setRenderable( true );
    
    MFnDagNode dagNodeFn(thisMObject());
    dagNodeFn.findPlug(displaySize).setValue((float)MDistance::uiToInternal(1.0));   
}

//********************************************************************************************
// Compute attribute values of the node
//********************************************************************************************
MStatus p3dBillboardQuadShape::compute( const MPlug& plug, MDataBlock& datablock )
{
    return MS::kSuccess;
}

//********************************************************************************************
// Capture when connections are made to this shape
//********************************************************************************************
MStatus p3dBillboardQuadShape::connectionMade ( const MPlug &plug, const MPlug &otherPlug, bool asSrc ) 
{
    MObject shaderObj = otherPlug.node();
    if ( asSrc && shaderObj.hasFn(MFn::kShadingEngine) )
    {
        MObject billboardQuadObj = plug.node();
        MFnDependencyNode parentFn( billboardQuadObj );
        MFnDependencyNode shaderFn( shaderObj );
        MStatus statusOfGUI;

        // connect this material with the chosen object
        MString command;
        command = MString( "p3dBillboardObject_UpdateMaterialName " + parentFn.name() + " " + shaderFn.name() ); 
        statusOfGUI = MGlobal::executeCommand( command );

        if ( MS::kSuccess != statusOfGUI )
            cout<<"ERROR: couldnt execute the dialog command"<<endl;
    }

    // let Maya process the connection too
    return MS::kUnknownParameter;
}

//********************************************************************************************
// Create instance of shape
//********************************************************************************************
void* p3dBillboardQuadShape::creator()
{
    return new p3dBillboardQuadShape();
}

//********************************************************************************************
// Create and initialize all attributes in maya
//********************************************************************************************
MStatus p3dBillboardQuadShape::initialize()
{ 
    MStatus              status;
    MFnTypedAttribute    strAttr;
    MFnNumericAttribute  numAttr;
    MFnEnumAttribute     enumAttr;

    displaySize = numAttr.create ("displaySize", "dis", MFnNumericData::kFloat, 1.0f, &status);
    CHECKRESULT_FAILURE( status, "Error creating displaySize attribute" );
    numAttr.setMin(0.0f);
    numAttr.setInternal( false );
    numAttr.setHidden( true );
    numAttr.setKeyable( true );
    status = addAttribute( displaySize );
    CHECKRESULT_FAILURE( status, "Error adding displaySize attribute." );

    billboardMode = enumAttr.create( "billboardMode", "bbm", 0, &status);
    CHECKRESULT_FAILURE( status, "Error creating billboardMode attribute" );
        enumAttr.addField( "all-axis", 0 );
        enumAttr.addField( "world x-axis", 1 );
        enumAttr.addField( "world y-axis", 2 );
        enumAttr.addField( "no-axis", 4 );
        enumAttr.addField( "local x-axis", 5 );
        enumAttr.addField( "local y-axis", 6 );
    enumAttr.setInternal( false );
    enumAttr.setHidden( false );
    enumAttr.setKeyable( true );
    status = addAttribute( billboardMode );
    CHECKRESULT_FAILURE( status, "Error adding billboardMode attribute." );

    shader = strAttr.create( "material", "mt", MFnData::kString, &status);
    CHECKRESULT_FAILURE(status, "Error creating material attribute.");
    strAttr.setInternal( false );
    strAttr.setHidden( false );
    strAttr.setKeyable( true );
    status = addAttribute (shader);
    CHECKRESULT_FAILURE(status, "Error adding material attribute.");

    // Compound colour attribute
    red = numAttr.create ("red", "r", MFnNumericData::kFloat, 1.0f, &status);
    CHECKRESULT_FAILURE( status, "Error creating red attribute" );
        numAttr.setMin(0.0f);
        numAttr.setMax(1.0f);
        numAttr.setHidden( false );
        numAttr.setKeyable( true );
    green = numAttr.create ("green", "g", MFnNumericData::kFloat, 1.0f, &status);
    CHECKRESULT_FAILURE( status, "Error creating green attribute" );
        numAttr.setMin(0.0f);
        numAttr.setMax(1.0f);
        numAttr.setHidden( false );
        numAttr.setKeyable( true );
    blue = numAttr.create ("blue", "b", MFnNumericData::kFloat, 1.0f, &status);
    CHECKRESULT_FAILURE( status, "Error creating blue attribute" );
        numAttr.setMin(0.0f);
        numAttr.setMax(1.0f);
        numAttr.setHidden( false );
        numAttr.setKeyable( true );
    colour = numAttr.create( "colour", "clr", red, green, blue, &status);
    CHECKRESULT_FAILURE( status, "Error creating colour attribute" );
        numAttr.setKeyable( true );
        numAttr.setUsedAsColor(true);
    status = addAttribute( colour );
    CHECKRESULT_FAILURE( status, "Error adding colour attribute." );

    alpha = numAttr.create ("alpha", "a", MFnNumericData::kFloat, 1.0f, &status);
    CHECKRESULT_FAILURE( status, "Error creating alpha attribute" );
    numAttr.setMin(0.0f);
    numAttr.setMax(1.0f);
    numAttr.setInternal( false );
    numAttr.setHidden( false );
    numAttr.setKeyable( true );
    status = addAttribute( alpha );
    CHECKRESULT_FAILURE( status, "Error adding alpha attribute." );

    uv0 = numAttr.create ("textureUV0", "uv0", MFnNumericData::k2Float, 0.0f, &status);
    CHECKRESULT_FAILURE( status, "Error creating uv0 attribute" );
    numAttr.setDefault(0.0f,0.0f);
    numAttr.setMin(0.0f);
    numAttr.setMax(1.0f);
    numAttr.setInternal( false );
    numAttr.setHidden( false );
    numAttr.setKeyable( true );
    status = addAttribute( uv0 );
    CHECKRESULT_FAILURE( status, "Error adding uv0 attribute." );

    uv1 = numAttr.create ("textureUV1", "uv1", MFnNumericData::k2Float, 1.0f, &status);
    CHECKRESULT_FAILURE( status, "Error creating uv1 attribute" );
    numAttr.setDefault(1.0f,0.0f);
    numAttr.setMin(0.0f);
    numAttr.setMax(1.0f);
    numAttr.setInternal( false );
    numAttr.setHidden( false );
    numAttr.setKeyable( true );
    status = addAttribute( uv1 );
    CHECKRESULT_FAILURE( status, "Error adding uv1 attribute." );

    uv2 = numAttr.create ("textureUV2", "uv2", MFnNumericData::k2Float, 1.0f, &status);
    CHECKRESULT_FAILURE( status, "Error creating uv2 attribute" );
    numAttr.setDefault(1.0f,1.0f);
    numAttr.setMin(0.0f);
    numAttr.setMax(1.0f);
    numAttr.setInternal( false );
    numAttr.setHidden( false );
    numAttr.setKeyable( true );
    status = addAttribute( uv2 );
    CHECKRESULT_FAILURE( status, "Error adding uv2 attribute." );

    uv3 = numAttr.create ("textureUV3", "uv3", MFnNumericData::k2Float, 1.0f, &status);
    CHECKRESULT_FAILURE( status, "Error creating uv3 attribute" );
    numAttr.setDefault(0.0f,1.0f);
    numAttr.setMin(0.0f);
    numAttr.setMax(1.0f);
    numAttr.setInternal( false );
    numAttr.setHidden( false );
    numAttr.setKeyable( true );
    status = addAttribute( uv3 );
    CHECKRESULT_FAILURE( status, "Error adding uv3 attribute." );
   
    uvOffset = numAttr.create ("uvOffset", "uvo", MFnNumericData::k2Float, 1.0f, &status);
    CHECKRESULT_FAILURE( status, "Error creating uvOffset attribute" );
    numAttr.setDefault(0.0f,0.0f);
    numAttr.setMin(0.0f);
    numAttr.setMax(1.0f);
    numAttr.setInternal( false );
    numAttr.setHidden( false );
    numAttr.setKeyable( true );
    status = addAttribute( uvOffset );
    CHECKRESULT_FAILURE( status, "Error adding uvOffset attribute." );

    cutOffMode = enumAttr.create( "cutOffMode", "com", 0, &status);
    CHECKRESULT_FAILURE( status, "Error creating cutOffMode attribute" );
        enumAttr.addField( "none", 0 );
        enumAttr.addField( "single sided", 1 );
        enumAttr.addField( "double sided", 2 );
        enumAttr.addField( "camera", 3 );
    enumAttr.setInternal( true );
    enumAttr.setHidden( false );
    enumAttr.setKeyable( true );
    status = addAttribute( cutOffMode );
    CHECKRESULT_FAILURE( status, "Error adding cutOffMode attribute." );    

    uvOffsetAngleRange = numAttr.create ("uvOffsetAngleRange", "uva", MFnNumericData::k2Float, 1.0f, &status);
    CHECKRESULT_FAILURE( status, "Error creating uvOffsetAngleRange attribute" );
    numAttr.setDefault(0.0f,0.0f);
    numAttr.setMin(0.0f);
    numAttr.setMax(1.0f);
    numAttr.setInternal( false );
    numAttr.setHidden( false );
    numAttr.setKeyable( true );
    status = addAttribute( uvOffsetAngleRange );
    CHECKRESULT_FAILURE( status, "Error adding uvOffsetAngleRange attribute." );

    sourceAngleRange = numAttr.create ("sourceAngleRange", "sar", MFnNumericData::kFloat, 0.0f, &status);
    CHECKRESULT_FAILURE( status, "Error creating sourceAngleRange attribute" );
    numAttr.setMin(0.0f);
    numAttr.setMax(90.0f);
    numAttr.setInternal( false );
    numAttr.setHidden( false );
    numAttr.setKeyable( true );
    status = addAttribute( sourceAngleRange );
    CHECKRESULT_FAILURE( status, "Error adding sourceAngleRange attribute." );
    
    edgeAngleRange = numAttr.create ("edgeAngleRange", "ear", MFnNumericData::kFloat, 0.0f, &status);
    CHECKRESULT_FAILURE( status, "Error creating edgeAngleRange attribute" );
    numAttr.setMin(0.0f);
    numAttr.setMax(90.0f);
    numAttr.setInternal( false );
    numAttr.setHidden( false );
    numAttr.setKeyable( true );
    status = addAttribute( edgeAngleRange );
    CHECKRESULT_FAILURE( status, "Error adding edgeAngleRange attribute." );

    zTest = numAttr.create( "enableZTest", "ezt", MFnNumericData::kBoolean, 0, &status);
    CHECKRESULT_FAILURE( status, "Error creating enableZTest attribute" );
    numAttr.setDefault( false );
    numAttr.setInternal( false );
    numAttr.setHidden( false );
    numAttr.setKeyable( true );
    status = addAttribute( zTest );
    CHECKRESULT_FAILURE( status, "Error adding enableZTest attribute." );

    zWrite = numAttr.create( "enableZWrite", "ezw", MFnNumericData::kBoolean, 0, &status);
    CHECKRESULT_FAILURE( status, "Error creating enableZWrite attribute" );
    numAttr.setDefault( false );
    numAttr.setInternal( false );
    numAttr.setHidden( false );
    numAttr.setKeyable( true );
    status = addAttribute( zWrite );
    CHECKRESULT_FAILURE( status, "Error adding enableZWrite attribute." );

    fog = numAttr.create( "enableFog", "efg", MFnNumericData::kBoolean, 0, &status);
    CHECKRESULT_FAILURE( status, "Error creating enableFog attribute" );
    numAttr.setDefault( false );
    numAttr.setInternal( false );
    numAttr.setHidden( false );
    numAttr.setKeyable( true );
    status = addAttribute( fog );
    CHECKRESULT_FAILURE( status, "Error adding enableFog attribute." );

    distance = numAttr.create ("distance", "dst", MFnNumericData::kFloat, 0.0f, &status);
    CHECKRESULT_FAILURE( status, "Error creating distance attribute" );
    numAttr.setInternal( false );
    numAttr.setHidden( false );
    numAttr.setKeyable( true );
    status = addAttribute( distance );
    CHECKRESULT_FAILURE( status, "Error adding distance attribute." );
    
    perspectiveScale = numAttr.create( "enablePerspectiveScale", "eps", MFnNumericData::kBoolean, 1, &status);
    CHECKRESULT_FAILURE( status, "Error creating enablePerspectiveScale attribute" );
    numAttr.setDefault( true );
    numAttr.setInternal( false );
    numAttr.setHidden( false );
    numAttr.setKeyable( true );
    status = addAttribute( perspectiveScale );
    CHECKRESULT_FAILURE( status, "Error adding enablePerspectiveScale attribute." );

    aDrawOrder = numAttr.create( "p3dDrawOrder", "pdo", MFnNumericData::kFloat, 0.5f, &status);
    CHECKRESULT_FAILURE( status, "Error creating p3dDrawOrder attribute" );
    numAttr.setDefault( 0.5f );
    numAttr.setInternal( false );
    numAttr.setHidden( false );
    numAttr.setKeyable( false );
    status = addAttribute( aDrawOrder );
    CHECKRESULT_FAILURE( status, "Error adding p3dDrawOrder attribute." );

    return MS::kSuccess;
}

//********************************************************************************************
// Returns the bounding box for the shape.
// In this case just use the radius and height attributes
// to determine the bounding box.
//********************************************************************************************
MBoundingBox p3dBillboardQuadShape::boundingBox() const
{
    MBoundingBox  result; 

    MStatus status;
    MObject obj = thisMObject();

    float displaySizeValue, distanceValue;
        
    MFnDagNode dagNodeFn(obj);
    MPlug plug;

    plug = dagNodeFn.findPlug(displaySize,&status);
    plug.getValue(displaySizeValue);
    
    plug = dagNodeFn.findPlug(distance,&status);
    plug.getValue(distanceValue);

    result.expand( MPoint((0.5*displaySizeValue),(0.5*displaySizeValue),(distanceValue*displaySizeValue)) );
    result.expand( MPoint((-0.5*displaySizeValue),(-0.5*displaySizeValue),(-0.1f*displaySizeValue)) );

    return result;
}

bool p3dBillboardQuadShape::getInternalValue( const MPlug& plug, MDataHandle& datahandle )
{
    bool isOk = true;
    MObject this_object = thisMObject();  
    MFnDependencyNode dependNodeFn(this_object);

    if ( plug == cutOffMode ) 
    { 
        MPlug uvOffsetAngleRangePlug = dependNodeFn.findPlug("uvOffsetAngleRange");
        MPlug sourceAngleRangePlug = dependNodeFn.findPlug("sourceAngleRange");
        MPlug edgeAngleRangePlug = dependNodeFn.findPlug("edgeAngleRange");
        datahandle.set( attributes->cutOffMode );
        switch (attributes->cutOffMode)
        {
            case NONE:
            {
                uvOffsetAngleRangePlug.setLocked(true);
                sourceAngleRangePlug.setLocked(true);
                edgeAngleRangePlug.setLocked(true);
                break;
            }
            case SINGLE_SIDED:
            case DOUBLE_SIDED:
            case CAMERA:
            {
                uvOffsetAngleRangePlug.setLocked(false);
                sourceAngleRangePlug.setLocked(false);
                edgeAngleRangePlug.setLocked(false);
                break;
            }
        }
        isOk = true;
    }
    else 
    {
        isOk = MPxNode::getInternalValue( plug, datahandle );
    }
    return isOk;
}

bool p3dBillboardQuadShape::setInternalValue( const MPlug& plug, const MDataHandle& datahandle )
{
    bool isOk = true;

    if ( plug == cutOffMode ) 
    {
        attributes->cutOffMode = datahandle.asShort();
        isOk = true;
    }
    else 
    {
        isOk = MPxNode::setInternalValue( plug, datahandle );
    }
    return isOk;
}

p3dBillboardQuadAttr* p3dBillboardQuadShape::getAttributes()
{
    MObject this_object = thisMObject();
    MPlug plug( this_object, cutOffMode );          plug.getValue( attributes->cutOffMode );
    return attributes;
}  

/////////////////////////////////////////////////////////////////////
// UI IMPLEMENTATION
/////////////////////////////////////////////////////////////////////

p3dBillboardQuadShapeUI::p3dBillboardQuadShapeUI()
{ 
}

p3dBillboardQuadShapeUI::~p3dBillboardQuadShapeUI()
{
}

void* p3dBillboardQuadShapeUI::creator()
{
    return new p3dBillboardQuadShapeUI();
}

//********************************************************************************************
// The draw data is used to pass geometry through the 
// draw queue. The data should hold all the information
// needed to draw the shape.
//********************************************************************************************
void p3dBillboardQuadShapeUI::getDrawRequests( const MDrawInfo & info, bool objectAndActiveOnly, MDrawRequestQueue & queue )
{
    MDrawData data;
    MDrawRequest request = info.getPrototype( *this );
    p3dBillboardQuadShape* shapeNode = (p3dBillboardQuadShape*)surfaceShape();
    getDrawData( NULL, data );
    request.setDrawData( data );

    // Use display status to determine what color to draw the object
    switch ( info.displayStyle() )
    {      
        case M3dView::kGouraudShaded :
            request.setToken( SMOOTH_SHADED );
            getDrawRequestsShaded( request, info, queue, data );
            queue.add( request );
            break;
        
        case M3dView::kFlatShaded :
            request.setToken( FLAT_SHADED );
            getDrawRequestsShaded( request, info, queue, data );
            queue.add( request );
            break;

        default :
            request.setToken(WIREFRAME);
            getDrawRequestsWireframe( request, info );
            queue.add( request );
            break;
        
    }
}

//********************************************************************************************
// Actual draw call 
//********************************************************************************************
void p3dBillboardQuadShapeUI::drawQuad(int drawMode) const
{
    float displaySizeValue,uv0Value[2],uv1Value[2],uv2Value[2],uv3Value[2], uvOffset[3], distanceValue;

    p3dBillboardQuadShape* shapeNode = (p3dBillboardQuadShape*)surfaceShape();
    MFnDagNode dagNodeFn(shapeNode->thisMObject());
    MPlug plug;

    //force update of internal attributes
    p3dBillboardQuadAttr* attributes = shapeNode->getAttributes();

    plug = dagNodeFn.findPlug("displaySize");
    plug.getValue(displaySizeValue);
    
    plug = dagNodeFn.findPlug("textureUV0");
    plug.child(0).getValue(uv0Value[0]);
    plug.child(1).getValue(uv0Value[1]);

    plug = dagNodeFn.findPlug("textureUV1");
    plug.child(0).getValue(uv1Value[0]);
    plug.child(1).getValue(uv1Value[1]);
     
    plug = dagNodeFn.findPlug("textureUV2");
    plug.child(0).getValue(uv2Value[0]);
    plug.child(1).getValue(uv2Value[1]);

    plug = dagNodeFn.findPlug("textureUV3");
    plug.child(0).getValue(uv3Value[0]);
    plug.child(1).getValue(uv3Value[1]);

    plug = dagNodeFn.findPlug("uvOffset");
    plug.child(0).getValue(uvOffset[0]);
    plug.child(1).getValue(uvOffset[1]);

    plug = dagNodeFn.findPlug("distance");
    plug.getValue(distanceValue);

    int primType;
    if ((drawMode==SMOOTH_SHADED)||(drawMode==FLAT_SHADED))
    {
        glPolygonMode ( GL_FRONT_AND_BACK, GL_FILL);
        primType = GL_POLYGON;
    }
    else 
    {
        glPolygonMode ( GL_FRONT_AND_BACK, GL_LINE);
        primType = GL_LINE_LOOP;
    }

    glPushMatrix();
    glScalef(displaySizeValue,displaySizeValue,displaySizeValue);

    glBegin(primType);
        glNormal3f ( 0.0f, 0.0f, -1.0f );
        glTexCoord2f ( uv0Value[0]+uvOffset[0], uv0Value[1]+uvOffset[1] );
        glVertex3f ( -0.1f, -0.1f, -0.1f );
        glTexCoord2f ( uv3Value[0]+uvOffset[0], uv3Value[1]+uvOffset[1]);
        glVertex3f ( -0.1f, 0.1f, -0.1f );
        glTexCoord2f ( uv2Value[0]+uvOffset[0], uv2Value[1]+uvOffset[1]);
        glVertex3f ( 0.1f, 0.1f, -0.1f );
        glTexCoord2f ( uv1Value[0]+uvOffset[0], uv1Value[1]+uvOffset[1] );
        glVertex3f ( 0.1f, -0.1f, -0.1f );
    glEnd();

    glBegin(primType);
        glNormal3f ( 0.0f, 0.0f, 1.0f );
        glTexCoord2f ( uv0Value[0]+uvOffset[0], uv0Value[1]+uvOffset[1] );
        glVertex3f ( -0.1f, -0.1f, 0.1f );
        glTexCoord2f ( uv1Value[0]+uvOffset[0], uv1Value[1]+uvOffset[1] );
        glVertex3f ( 0.1f, -0.1f, 0.1f );
        glTexCoord2f ( uv2Value[0]+uvOffset[0], uv2Value[1]+uvOffset[1]);
        glVertex3f ( 0.1f, 0.1f, 0.1f );
        glTexCoord2f ( uv3Value[0]+uvOffset[0], uv3Value[1]+uvOffset[1]);
        glVertex3f ( -0.1f, 0.1f, 0.1f );
    glEnd();

    glBegin(primType);
        glNormal3f ( 0.0f, -1.0f, 0.0f );
        glTexCoord2f ( uv0Value[0]+uvOffset[0], uv0Value[1]+uvOffset[1] );
        glVertex3f ( -0.1f, -0.1f, -0.1f );
        glTexCoord2f ( uv1Value[0]+uvOffset[0], uv1Value[1]+uvOffset[1] );
        glVertex3f ( 0.1f, -0.1f, -0.1f );
        glTexCoord2f ( uv2Value[0]+uvOffset[0], uv2Value[1]+uvOffset[1]);
        glVertex3f ( 0.1f, -0.1f, 0.1f );
        glTexCoord2f ( uv3Value[0]+uvOffset[0], uv3Value[1]+uvOffset[1]);
        glVertex3f ( -0.1f, -0.1f, 0.1f );
    glEnd();

    glBegin(primType);
        glNormal3f ( 0.0f, 1.0f, 0.0f );
        glTexCoord2f ( uv0Value[0]+uvOffset[0], uv0Value[1]+uvOffset[1] );
        glVertex3f ( -0.1f, 0.1f, -0.1f );
        glTexCoord2f ( uv3Value[0]+uvOffset[0], uv3Value[1]+uvOffset[1]);
        glVertex3f ( -0.1f, 0.1f, 0.1f );
        glTexCoord2f ( uv2Value[0]+uvOffset[0], uv2Value[1]+uvOffset[1]);
        glVertex3f ( 0.1f, 0.1f, 0.1f );
        glTexCoord2f ( uv1Value[0]+uvOffset[0], uv1Value[1]+uvOffset[1] );
        glVertex3f ( 0.1f, 0.1f, -0.1f );
    glEnd();
    
    glBegin(primType);
        glNormal3f ( -1.0f, 0.0f, 0.0f );
        glTexCoord2f ( uv0Value[0]+uvOffset[0], uv0Value[1]+uvOffset[1] );
        glVertex3f ( -0.1f, -0.1f, -0.1f );
        glTexCoord2f ( uv1Value[0]+uvOffset[0], uv1Value[1]+uvOffset[1] );
        glVertex3f ( -0.1f, -0.1f, 0.1f );
        glTexCoord2f ( uv2Value[0]+uvOffset[0], uv2Value[1]+uvOffset[1]);
        glVertex3f ( -0.1f, 0.1f, 0.1f );
        glTexCoord2f ( uv3Value[0]+uvOffset[0], uv3Value[1]+uvOffset[1]);
        glVertex3f ( -0.1f, 0.1f, -0.1f );
    glEnd();

    glBegin(primType);
        glNormal3f ( 1.0f, 0.0f, 0.0f );
        glTexCoord2f ( uv0Value[0]+uvOffset[0], uv0Value[1]+uvOffset[1] );
        glVertex3f ( 0.1f, -0.1f, -0.1f );
        glTexCoord2f ( uv3Value[0]+uvOffset[0], uv3Value[1]+uvOffset[1]);
        glVertex3f ( 0.1f, 0.1f, -0.1f );
        glTexCoord2f ( uv2Value[0]+uvOffset[0], uv2Value[1]+uvOffset[1]);
        glVertex3f ( 0.1f, 0.1f, 0.1f );
        glTexCoord2f ( uv1Value[0]+uvOffset[0], uv1Value[1]+uvOffset[1] );
        glVertex3f ( 0.1f, -0.1f, 0.1f );
    glEnd();

    glBegin(primType);
        glNormal3f ( 0.0f, 0.0f, 1.0f );
        glTexCoord2f ( uv0Value[0]+uvOffset[0], uv0Value[1]+uvOffset[1] );
        glVertex3f ( -0.5f, -0.5f, distanceValue );
        glTexCoord2f ( uv1Value[0]+uvOffset[0], uv1Value[1]+uvOffset[1] );
        glVertex3f ( 0.5f, -0.5f, distanceValue );
        glTexCoord2f ( uv2Value[0]+uvOffset[0], uv2Value[1]+uvOffset[1]);
        glVertex3f ( 0.5f, 0.5f, distanceValue );
        glTexCoord2f ( uv3Value[0]+uvOffset[0], uv3Value[1]+uvOffset[1]);
        glVertex3f ( -0.5f, 0.5f, distanceValue );
    glEnd();

    glPopMatrix();

    glPolygonMode ( GL_FRONT_AND_BACK, GL_FILL);
}

//********************************************************************************************
// From the given draw request, get the draw data and display the quad
//********************************************************************************************
void p3dBillboardQuadShapeUI::draw( const MDrawRequest & request, M3dView & view ) const
{  
    MDagPath dagPath = request.multiPath();
    MDrawData data = request.drawData();
    short token = request.token();
    bool drawTexture = false;

    view.beginGL(); 

    if ( (token == SMOOTH_SHADED) || (token == FLAT_SHADED) )
    {
        glEnable( GL_POLYGON_OFFSET_FILL );
        // Set up the material
        //
        MMaterial material = request.material();
        material.setMaterial(dagPath,false);

        // Enable texturing
        //
        drawTexture = material.materialIsTextured();
        if ( drawTexture ) glEnable(GL_TEXTURE_2D);

        // Apply the texture to the current view
        //
        if ( drawTexture ) 
        {
            material.applyTexture( view, data );
        }
    }
 
    drawQuad(token);

    // Turn off texture mode
    //
    if ( drawTexture ) glDisable(GL_TEXTURE_2D);

    view.endGL(); 
}

//********************************************************************************************
// Select function. Gets called when the bbox for the object is selected.
// This function just selects the object without doing any intersection tests.
//********************************************************************************************
bool p3dBillboardQuadShapeUI::select( MSelectInfo &selectInfo, MSelectionList &selectionList, MPointArray &worldSpaceSelectPts ) const
{
    M3dView view = selectInfo.view();

    //
    // Re-Draw the object and see if they lie withing the selection area
    // Sets OpenGL's render mode to select and stores
    // selected items in a pick buffer
    //
    view.beginSelect();

    switch ( selectInfo.displayStyle() )
    {      
        case M3dView::kGouraudShaded :
            drawQuad(SMOOTH_SHADED);
            break;
        
        case M3dView::kFlatShaded :
            drawQuad(FLAT_SHADED);
            break;

        default :
            drawQuad(WIREFRAME);
            break;      
    }

    if( view.endSelect() > 0 )    
    {
        MSelectionMask priorityMask( MSelectionMask::kSelectObjectsMask );
        MSelectionList item;
        item.add( selectInfo.selectPath() );
        MPoint xformedPt;
        selectInfo.addSelection( item, xformedPt, selectionList, worldSpaceSelectPts, priorityMask, false );
        return true;
    }
    return false;
}

/////////////////////////////////////////////////////////////////////
// SHAPE NODE IMPLEMENTATION
/////////////////////////////////////////////////////////////////////
MObject p3dBillboardQuadGroupShape::displaySize;
MObject p3dBillboardQuadGroupShape::shader;
MObject p3dBillboardQuadGroupShape::zTest;
MObject p3dBillboardQuadGroupShape::zWrite;
MObject p3dBillboardQuadGroupShape::fog;
MObject p3dBillboardQuadGroupShape::aDrawOrder;
MTypeId p3dBillboardQuadGroupShape::id(P3D_BILLBOARD_QUAD_GROUP_ID);

p3dBillboardQuadGroupShape::p3dBillboardQuadGroupShape()
{
}

p3dBillboardQuadGroupShape::~p3dBillboardQuadGroupShape()
{
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
void p3dBillboardQuadGroupShape::postConstructor()
{ 
    // This call allows the shape to have shading groups assigned
    setRenderable( true );
    
    MFnDagNode dagNodeFn(thisMObject());
    dagNodeFn.findPlug(displaySize).setValue((float)MDistance::uiToInternal(1.0));   
}

//********************************************************************************************
// Compute attribute values of the node
//********************************************************************************************
MStatus p3dBillboardQuadGroupShape::compute( const MPlug& plug, MDataBlock& datablock )
{
    return MS::kSuccess;
}

//********************************************************************************************
// Capture when connections are made to this shape
//********************************************************************************************
MStatus p3dBillboardQuadGroupShape::connectionMade ( const MPlug &plug, const MPlug &otherPlug, bool asSrc ) 
{
    MObject shaderObj = otherPlug.node();
    if ( asSrc && shaderObj.hasFn(MFn::kShadingEngine) )
    {
        MObject billboardQuadGroupObj = plug.node();
        MFnDependencyNode parentFn( billboardQuadGroupObj );
        MFnDependencyNode shaderFn( shaderObj );
        MStatus statusOfGUI;

        // connect this material with the chosen object
        MString command;
        command = MString( "p3dBillboardObject_UpdateMaterialName " + parentFn.name() + " " + shaderFn.name() ); 
        statusOfGUI = MGlobal::executeCommand( command );

        if ( MS::kSuccess != statusOfGUI )
            cout<<"ERROR: couldnt execute the dialog command"<<endl;
    }

    // let Maya process the connection too
    return MS::kUnknownParameter;
}

//********************************************************************************************
// Create instance of shape
//********************************************************************************************
void* p3dBillboardQuadGroupShape::creator()
{
    return new p3dBillboardQuadGroupShape();
}

//********************************************************************************************
// Create and initialize all attributes in maya
//********************************************************************************************
MStatus p3dBillboardQuadGroupShape::initialize()
{ 
    MStatus              status;
    MFnTypedAttribute    strAttr;
    MFnNumericAttribute  numAttr;
    MFnEnumAttribute     enumAttr;

    displaySize = numAttr.create ("displaySize", "dis", MFnNumericData::kFloat, 1.0, &status);
    CHECKRESULT_FAILURE( status, "Error creating displaySize attribute" );
    numAttr.setMin(0.0);
    numAttr.setInternal( false );
    numAttr.setHidden( true );
    numAttr.setKeyable( true );
    status = addAttribute( displaySize );
    CHECKRESULT_FAILURE( status, "Error adding displaySize attribute." );

    shader = strAttr.create( "material", "mt", MFnData::kString, &status);
    CHECKRESULT_FAILURE(status, "Error creating material attribute.");
    strAttr.setInternal( false );
    strAttr.setHidden( false );
    strAttr.setKeyable( true );
    status = addAttribute (shader);
    CHECKRESULT_FAILURE(status, "Error adding material attribute.");

    zTest = numAttr.create( "enableZTest", "ezt", MFnNumericData::kBoolean, 0, &status);
    CHECKRESULT_FAILURE( status, "Error creating enableZTest attribute" );
    numAttr.setDefault( false );
    numAttr.setInternal( false );
    numAttr.setHidden( false );
    numAttr.setKeyable( true );
    status = addAttribute( zTest );
    CHECKRESULT_FAILURE( status, "Error adding enableZTest attribute." );

    zWrite = numAttr.create( "enableZWrite", "ezw", MFnNumericData::kBoolean, 0, &status);
    CHECKRESULT_FAILURE( status, "Error creating enableZWrite attribute" );
    numAttr.setDefault( false );
    numAttr.setInternal( false );
    numAttr.setHidden( false );
    numAttr.setKeyable( true );
    status = addAttribute( zWrite );
    CHECKRESULT_FAILURE( status, "Error adding enableZWrite attribute." );

    fog = numAttr.create( "enableFog", "efg", MFnNumericData::kBoolean, 0, &status);
    CHECKRESULT_FAILURE( status, "Error creating enableFog attribute" );
    numAttr.setDefault( false );
    numAttr.setInternal( false );
    numAttr.setHidden( false );
    numAttr.setKeyable( true );
    status = addAttribute( fog );
    CHECKRESULT_FAILURE( status, "Error adding enableFog attribute." );

    aDrawOrder = numAttr.create( "p3dDrawOrder", "pdo", MFnNumericData::kFloat, 0.5f, &status);
    CHECKRESULT_FAILURE( status, "Error creating p3dDrawOrder attribute" );
    numAttr.setDefault( 0.5f );
    numAttr.setInternal( false );
    numAttr.setHidden( false );
    numAttr.setKeyable( false );
    status = addAttribute( aDrawOrder);
    CHECKRESULT_FAILURE( status, "Error adding p3dDrawOrder attribute." );

    return MS::kSuccess;
}

//********************************************************************************************
// Returns the bounding box for the shape.
// In this case just use the radius and height attributes
// to determine the bounding box.
//********************************************************************************************
MBoundingBox p3dBillboardQuadGroupShape::boundingBox() const
{
    MBoundingBox  result; 

    MStatus status;
    MObject obj = thisMObject();

    float displaySizeValue;
        
    MFnDagNode dagNodeFn(obj);
    MPlug plug;

    plug = dagNodeFn.findPlug(displaySize,&status);
    plug.getValue(displaySizeValue);

    result.expand( MPoint((0.5*displaySizeValue),(0.5*displaySizeValue),-0.1) );
    result.expand( MPoint((-0.5*displaySizeValue),(-0.5*displaySizeValue),-0.1) );

    result.expand( MPoint((0.5*displaySizeValue)+0.2,(0.5*displaySizeValue)+0.2,0.0) );
    result.expand( MPoint((-0.5*displaySizeValue)-0.2,(-0.5*displaySizeValue)-0.2,0.0) );

    result.expand( MPoint((0.5*displaySizeValue),(0.5*displaySizeValue),0.1) );
    result.expand( MPoint((-0.5*displaySizeValue),(-0.5*displaySizeValue),0.1) );

    return result;
}

/////////////////////////////////////////////////////////////////////
// UI IMPLEMENTATION
/////////////////////////////////////////////////////////////////////

p3dBillboardQuadGroupShapeUI::p3dBillboardQuadGroupShapeUI() { dormant_color = 3; }
p3dBillboardQuadGroupShapeUI::~p3dBillboardQuadGroupShapeUI() {}

void* p3dBillboardQuadGroupShapeUI::creator()
{
    return new p3dBillboardQuadGroupShapeUI();
}

//********************************************************************************************
// The draw data is used to pass geometry through the 
// draw queue. The data should hold all the information
// needed to draw the shape.
//********************************************************************************************
void p3dBillboardQuadGroupShapeUI::getDrawRequests( const MDrawInfo & info, bool objectAndActiveOnly, MDrawRequestQueue & queue )
{
    MDrawData data;
    MDrawRequest request = info.getPrototype( *this );
    p3dBillboardQuadGroupShape* shapeNode = (p3dBillboardQuadGroupShape*)surfaceShape();
    getDrawData( NULL, data );
    request.setDrawData( data );

    // Use display status to determine what color to draw the object
    switch ( info.displayStyle() )
    {      
        case M3dView::kGouraudShaded :
            request.setToken( SMOOTH_SHADED );
            getDrawRequestsShaded( request, info, queue, data );
            queue.add( request );
            break;
        
        case M3dView::kFlatShaded :
            request.setToken( FLAT_SHADED );
            getDrawRequestsShaded( request, info, queue, data );
            queue.add( request );
            break;

        default :
            request.setToken(WIREFRAME);
            getDrawRequestsWireframe( request, info );
            queue.add( request );
            break;
        
    }
}

//********************************************************************************************
// Actual draw call 
//********************************************************************************************
void p3dBillboardQuadGroupShapeUI::drawQuadGroup(int drawMode) const
{
    p3dBillboardQuadGroupShape* shapeNode = (p3dBillboardQuadGroupShape*)surfaceShape();
    MObject obj = shapeNode->thisMObject();

    float displaySizeValue;
        
    MFnDagNode dagNodeFn(obj);
    MPlug plug;

    plug = dagNodeFn.findPlug("displaySize");
    plug.getValue(displaySizeValue);
    
    glPushMatrix();

    glScalef(displaySizeValue,displaySizeValue,displaySizeValue);

    int primType;
    
    if ((drawMode==SMOOTH_SHADED)||(drawMode==FLAT_SHADED))
    {
        glPolygonMode ( GL_FRONT_AND_BACK, GL_FILL);
        primType = GL_POLYGON;
    }
    else 
    {
        glPolygonMode ( GL_FRONT_AND_BACK, GL_LINE);
        primType = GL_LINE_LOOP;
    }

    glBegin(primType);
        glNormal3f ( 0.0f, 0.0f, 1.0f );
        glTexCoord2f ( 0.0f, 0.0f );
        glVertex3f ( -0.5f, -0.5f, -0.1f);
        glTexCoord2f ( 1.0f, 0.0f );
        glVertex3f ( 0.5f, -0.5f, -0.1f );
        glTexCoord2f ( 1.0f, 1.0f);
        glVertex3f ( 0.5f, 0.5f, -0.1f );
        glTexCoord2f ( 0.0f, 1.0f);
        glVertex3f ( -0.5f, 0.5f, -0.1f );
    glEnd();

    glBegin(primType);
        glNormal3f ( 0.0f, 0.0f, 1.0f );
        glTexCoord2f ( 0.0f, 0.0f );
        glVertex3f ( -0.7f, -0.7f, 0.0f);
        glTexCoord2f ( 1.0f, 0.0f );
        glVertex3f ( 0.7f, -0.7f, 0.0f );
        glTexCoord2f ( 1.0f, 1.0f);
        glVertex3f ( 0.7f, 0.7f, 0.0f );
        glTexCoord2f ( 0.0f, 1.0f);
        glVertex3f ( -0.7f, 0.7f, 0.0f );
    glEnd();
                
    glBegin(primType);
        glNormal3f ( 0.0f, 0.0f, 1.0f );
        glTexCoord2f ( 0.0f, 0.0f );
        glVertex3f ( -0.5f, -0.5f, 0.1f);
        glTexCoord2f ( 1.0f, 0.0f );
        glVertex3f ( 0.5f, -0.5f, 0.1f );
        glTexCoord2f ( 1.0f, 1.0f);
        glVertex3f ( 0.5f, 0.5f, 0.1f );
        glTexCoord2f ( 0.0f, 1.0f);
        glVertex3f ( -0.5f, 0.5f, 0.1f );
    glEnd();


    glPopMatrix();

    glPolygonMode ( GL_FRONT_AND_BACK, GL_FILL);
}

//********************************************************************************************
// From the given draw request, get the draw data and display the QuadGroup
//********************************************************************************************
void p3dBillboardQuadGroupShapeUI::draw( const MDrawRequest & request, M3dView & view ) const
{  
    MDagPath dagPath = request.multiPath();
    MDrawData data = request.drawData();
    short token = request.token();
    bool drawTexture = false;

    view.beginGL(); 

    if ( (token == SMOOTH_SHADED) || (token == FLAT_SHADED) )
    {
        glEnable( GL_POLYGON_OFFSET_FILL );
        // Set up the material
        //
        MMaterial material = request.material();
        material.setMaterial(dagPath,false);

        // Enable texturing
        //
        drawTexture = material.materialIsTextured();
        if ( drawTexture ) glEnable(GL_TEXTURE_2D);

        // Apply the texture to the current view
        //
        if ( drawTexture ) 
        {
            material.applyTexture( view, data );
        }
    }
 
    drawQuadGroup(token);

    // Turn off texture mode
    //
    if ( drawTexture ) glDisable(GL_TEXTURE_2D);

    view.endGL(); 
}

//********************************************************************************************
// Select function. Gets called when the bbox for the object is selected.
// This function just selects the object without doing any intersection tests.
//********************************************************************************************
bool p3dBillboardQuadGroupShapeUI::select( MSelectInfo &selectInfo, MSelectionList &selectionList, MPointArray &worldSpaceSelectPts ) const
{
    M3dView view = selectInfo.view();

    //
    // Re-Draw the object and see if they lie withing the selection area
    // Sets OpenGL's render mode to select and stores
    // selected items in a pick buffer
    //
    view.beginSelect();

    switch ( selectInfo.displayStyle() )
    {      
        case M3dView::kGouraudShaded :
            drawQuadGroup(SMOOTH_SHADED);
            break;
        
        case M3dView::kFlatShaded :
            drawQuadGroup(FLAT_SHADED);
            break;

        default :
            drawQuadGroup(WIREFRAME);
            break;      
    }

    if( view.endSelect() > 0 )    
    {
        MSelectionMask priorityMask( MSelectionMask::kSelectObjectsMask );
        MSelectionList item;
        item.add( selectInfo.selectPath() );
        MPoint xformedPt;
        selectInfo.addSelection( item, xformedPt, selectionList, worldSpaceSelectPts, priorityMask, false );
        return true;
    }
    return false;
}
}  //namespace P3DBillboardObject

