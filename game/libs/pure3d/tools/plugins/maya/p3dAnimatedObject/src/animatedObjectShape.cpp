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
#include <GL/glu.h>

#include <math.h>
 
#include "animatedObjectUtility.hpp"
#include "animatedObjectShape.hpp"
 
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

namespace P3DAnimatedObject
{

void SetQuadricDrawStyle (GLUquadricObj* qobj, int token, bool enable_texturing)
{
    if ((token==SMOOTH_SHADED)||(token==FLAT_SHADED))
    {
        gluQuadricNormals( qobj, GLU_SMOOTH );
        gluQuadricTexture( qobj, enable_texturing);
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

    if ( enable_texturing && material.materialIsTextured() ) 
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
MObject p3dAnimatedObjectShape::displaySize;
MObject p3dAnimatedObjectShape::factoryName;
MObject p3dAnimatedObjectShape::currentAnimation;
MObject p3dAnimatedObjectShape::frameOffset;
MTypeId p3dAnimatedObjectShape::id(P3D_ANIMATED_OBJECT_ID);

p3dAnimatedObjectShape::p3dAnimatedObjectShape()
{
}

p3dAnimatedObjectShape::~p3dAnimatedObjectShape()
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
void p3dAnimatedObjectShape::postConstructor()
{ 
    // This call allows the shape to have shading groups assigned
    setRenderable( true );
    
    MFnDagNode dagNodeFn(thisMObject());
    dagNodeFn.findPlug(displaySize).setValue((float)MDistance::uiToInternal(1.0));   
    dagNodeFn.findPlug("factoryName").setValue("");
}

//********************************************************************************************
// Compute attribute values of the node
//********************************************************************************************
MStatus p3dAnimatedObjectShape::compute( const MPlug& plug, MDataBlock& datablock )
{
    return MS::kSuccess;
}

//********************************************************************************************
// Create instance of shape
//********************************************************************************************
void* p3dAnimatedObjectShape::creator()
{
    return new p3dAnimatedObjectShape();
}

//********************************************************************************************
// Create and initialize all attributes in maya
//********************************************************************************************
MStatus p3dAnimatedObjectShape::initialize()
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

    factoryName = strAttr.create( "factoryName", "ftn", MFnData::kString, &status);
    CHECKRESULT_FAILURE(status, "Error creating factoryName attribute.");
    strAttr.setInternal( false );
    strAttr.setHidden( false );
    strAttr.setKeyable( true );
    status = addAttribute (factoryName);
    CHECKRESULT_FAILURE(status, "Error adding factoryName attribute.");

    currentAnimation = numAttr.create ("currentAnimation", "ca", MFnNumericData::kLong, 0, &status);
    CHECKRESULT_FAILURE( status, "Error creating currentAnimation attribute" );
    numAttr.setMin(0);
    numAttr.setInternal( false );
    numAttr.setHidden( false );
    numAttr.setKeyable( true );
    status = addAttribute( currentAnimation );
    CHECKRESULT_FAILURE( status, "Error adding currentAnimation attribute." );

    frameOffset = numAttr.create ("frameOffset", "fos", MFnNumericData::kFloat, 0.0, &status);
    CHECKRESULT_FAILURE( status, "Error creating frameOffset attribute" );
    numAttr.setMin(0.0);
    numAttr.setInternal( false );
    numAttr.setHidden( false );
    numAttr.setKeyable( true );
    status = addAttribute( frameOffset );
    CHECKRESULT_FAILURE( status, "Error adding frameOffset attribute." );

    return MS::kSuccess;
}

//********************************************************************************************
// Returns the bounding box for the shape.
// In this case just use the radius and height attributes
// to determine the bounding box.
//********************************************************************************************
MBoundingBox p3dAnimatedObjectShape::boundingBox() const
{
    MBoundingBox  result; 

    MStatus status;
    MObject obj = thisMObject();

    float displaySizeValue;
        
    MFnDagNode dagNodeFn(obj);
    MPlug plug;

    plug = dagNodeFn.findPlug(displaySize,&status);
    plug.getValue(displaySizeValue);
    
    result.expand( MPoint(displaySizeValue,displaySizeValue,displaySizeValue) );
    result.expand( MPoint(-displaySizeValue,-displaySizeValue,-displaySizeValue) );

    return result;
}

/////////////////////////////////////////////////////////////////////
// UI IMPLEMENTATION
/////////////////////////////////////////////////////////////////////

p3dAnimatedObjectShapeUI::p3dAnimatedObjectShapeUI() 
{ 
    dormant_color = 7; 
    enable_texturing = false;
    animatedObject = gluNewQuadric();
}

p3dAnimatedObjectShapeUI::~p3dAnimatedObjectShapeUI() 
{
    gluDeleteQuadric(animatedObject);
}

void* p3dAnimatedObjectShapeUI::creator()
{
    return new p3dAnimatedObjectShapeUI();
}

//********************************************************************************************
// The draw data is used to pass geometry through the 
// draw queue. The data should hold all the information
// needed to draw the shape.
//********************************************************************************************
void p3dAnimatedObjectShapeUI::getDrawRequests( const MDrawInfo & info, bool objectAndActiveOnly, MDrawRequestQueue & queue )
{
    MDrawData data;
    MDrawRequest request = info.getPrototype( *this );
    p3dAnimatedObjectShape* shapeNode = (p3dAnimatedObjectShape*)surfaceShape();
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
void p3dAnimatedObjectShapeUI::drawAnimatedObject(int drawMode) const
{
    float displaySizeValue;

    p3dAnimatedObjectShape* shapeNode = (p3dAnimatedObjectShape*)surfaceShape();
    MFnDagNode dagNodeFn(shapeNode->thisMObject());
    MPlug plug;

    plug = dagNodeFn.findPlug("displaySize");
    plug.getValue(displaySizeValue);
    
    glPushMatrix();

    glScalef(displaySizeValue,displaySizeValue,displaySizeValue);

    GLenum glDrawMode;

    if ((drawMode==SMOOTH_SHADED)||(drawMode==FLAT_SHADED))
    {
        glPolygonMode ( GL_FRONT_AND_BACK, GL_FILL);
        glDrawMode = GL_POLYGON;
    }
    else 
    {
        glPolygonMode ( GL_FRONT_AND_BACK, GL_LINE);
        glDrawMode = GL_LINE_LOOP;
    }

    glBegin(glDrawMode);
        glNormal3f ( 0.0f, 0.0f, -1.0f );
        glVertex3f ( -0.5f, -0.5f, -1.0f);
        glVertex3f ( -0.5f, 0.5f, -1.0f);
        glVertex3f ( 0.5f, 0.5f, -1.0f);
        glVertex3f ( 0.5f, -0.5f, -1.0f);
    glEnd();

    glBegin(glDrawMode);
        glNormal3f ( 0.0f, 0.0f, 1.0f );
        glVertex3f ( 0.5f, -0.5f, 1.0f);
        glVertex3f ( 0.5f, 0.5f, 1.0f);
        glVertex3f ( -0.5f, 0.5f, 1.0f);
        glVertex3f ( -0.5f, -0.5f, 1.0f);
    glEnd();
      
    glBegin(glDrawMode);
        glNormal3f ( -1.0f, 0.0f, 0.0f );
        glVertex3f ( -1.0f, -0.5f, 0.5f);
        glVertex3f ( -1.0f, 0.5f, 0.5f);
        glVertex3f ( -1.0f, 0.5f, -0.5f);
        glVertex3f ( -1.0f, -0.5f, -0.5f);
    glEnd();

    glBegin(glDrawMode);
        glNormal3f ( 1.0f, 0.0f, 0.0f );
        glVertex3f ( 1.0f, -0.5f, -0.5f);
        glVertex3f ( 1.0f, 0.5f, -0.5f);
        glVertex3f ( 1.0f, 0.5f, 0.5f);
        glVertex3f ( 1.0f, -0.5f, 0.5f);
    glEnd();

    glBegin(glDrawMode);
        glNormal3f ( 0.0f, -1.0f, 0.0f );
        glVertex3f ( 0.5f, -1.0f, -0.5f);
        glVertex3f ( 0.5f, -1.0f, 0.5f);
        glVertex3f ( -0.5f, -1.0f, 0.5f);
        glVertex3f ( -0.5f, -1.0f, -0.5f);
    glEnd();

    glBegin(glDrawMode);
        glNormal3f ( 0.0f, 1.0f, 0.0f );
        glVertex3f ( -0.5f, 1.0f, -0.5f);
        glVertex3f ( -0.5f, 1.0f, 0.5f);
        glVertex3f ( 0.5f, 1.0f, 0.5f);
        glVertex3f ( 0.5f, 1.0f, -0.5f);
    glEnd();
                    
    SetQuadricDrawStyle (animatedObject, drawMode, false);
    gluSphere(animatedObject, 0.5f, 4, 2);

    glPopMatrix();

    glPolygonMode ( GL_FRONT_AND_BACK, GL_FILL);
}

//********************************************************************************************
// From the given draw request, get the draw data and display the quad
//********************************************************************************************
void p3dAnimatedObjectShapeUI::draw( const MDrawRequest & request, M3dView & view ) const
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
    }
 
    drawAnimatedObject(token);

    view.endGL(); 
}

//********************************************************************************************
// Select function. Gets called when the bbox for the object is selected.
// This function just selects the object without doing any intersection tests.
//********************************************************************************************
bool p3dAnimatedObjectShapeUI::select( MSelectInfo &selectInfo, MSelectionList &selectionList, MPointArray &worldSpaceSelectPts ) const
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
            drawAnimatedObject(SMOOTH_SHADED);
            break;
        
        case M3dView::kFlatShaded :
            drawAnimatedObject(FLAT_SHADED);
            break;

        default :
            drawAnimatedObject(WIREFRAME);
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


