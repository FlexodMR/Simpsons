//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================




//********************************************************************************************
// Maya Includes
//********************************************************************************************
#include <maya/MDrawData.h>
#include <maya/MDrawRequest.h>
#include <maya/MSelectionMask.h>
#include <maya/MSelectionList.h>
#include <maya/MDagPath.h>
#include <maya/MMaterial.h>
#include <maya/MMatrix.h>
#include <maya/MTransformationMatrix.h>
#include <maya/MPoint.h>
#include <maya/MVector.h>
#include <maya/MPointArray.h>
#include <maya/MColor.h>

//********************************************************************************************
// Open Gl Includes
//********************************************************************************************
#include <GL/glu.h>

//********************************************************************************************
// Local Includes
//********************************************************************************************
#include "boundingUtility.hpp"
#include "boundingShape.hpp"
#include "boundingShapeUI.hpp"

#include <iostream.h>

namespace P3DBoundingVolume
{

//********************************************************************************************
// SetQuadricDrawStyle helper function
//********************************************************************************************
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

//********************************************************************************************
// p3dBaseShapeUI::getDrawRequestsWireframe
//********************************************************************************************
void p3dBaseShapeUI::getDrawRequestsWireframe
( 
    MDrawRequest& request, 
    const MDrawInfo& info 
)
{
    request.setToken( WIREFRAME );

    M3dView::DisplayStatus displayStatus = info.displayStatus();
    M3dView::ColorTable activeColorTable = M3dView::kActiveColors;
    M3dView::ColorTable dormantColorTable = M3dView::kDormantColors;
    switch ( displayStatus )
    {
        case M3dView::kLead :
            request.setColor( LEAD_COLOR, activeColorTable );
            break;
        case M3dView::kActive :
            request.setColor( ACTIVE_COLOR, activeColorTable );
            break;
        case M3dView::kActiveAffected :
            request.setColor( ACTIVE_AFFECTED_COLOR, activeColorTable );
            break;
        case M3dView::kDormant :
            request.setColor( DORMANT_COLOR, dormantColorTable );
            break;
        case M3dView::kHilite :
            request.setColor( HILITE_COLOR, activeColorTable );
            break;
    }
}

//********************************************************************************************
// p3dBaseShapeUI::getDrawRequestsShaded
//********************************************************************************************
void p3dBaseShapeUI::getDrawRequestsShaded
( 
    MDrawRequest& request, 
    const MDrawInfo& info,
    MDrawRequestQueue& queue, 
    MDrawData& data 
)
{
    //
    // Need to get the material info
    //
    MDagPath path = info.multiPath();   // path to your dag object 
    M3dView view = info.view();;     // view to draw to
    MMaterial material = MPxSurfaceShapeUI::material( path );
    M3dView::DisplayStatus displayStatus = info.displayStatus();

    //
    // Evaluate the material and if necessary, the texture.
    //
    if( ! material.evaluateMaterial( view, path ) ) 
    {
        cerr << "Could not evaluate Material\n";
    }

    bool drawTexture = true;
    if( drawTexture && material.materialIsTextured() ) 
    {
        material.evaluateTexture( data );
    }

    request.setMaterial( material );

    bool materialTransparent = false;
    material.getHasTransparency( materialTransparent );
    if( materialTransparent ) 
    {
        request.setIsTransparent( true );
    }
    
    //
    // Create a draw request for wireframe on shaded if
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

//********************************************************************************************
// Just a basic box Drawing function that can be shared
//********************************************************************************************


void p3dBaseShapeUI::DrawBox
(  
    float halfWidth,
    float halfHeight,
    float halfLength,
    long  glDrawType
)
const
{
    glRotatef(90.0f, 1.0f, 0.0, 0.0);
    glBegin(glDrawType);
        glNormal3f ( 0.0f, 0.0f, -1.0f );
        glVertex3f ( -halfWidth, -halfHeight, -halfLength);
        glVertex3f ( -halfWidth, halfHeight, -halfLength);
        glVertex3f ( halfWidth, halfHeight, -halfLength);
        glVertex3f ( halfWidth, -halfHeight, -halfLength);
    glEnd();
    glBegin(glDrawType);
        glNormal3f ( 0.0f, 0.0f, -1.0f );
        glVertex3f ( -halfWidth, -halfHeight, halfLength);
        glVertex3f ( -halfWidth, halfHeight, halfLength);
        glVertex3f ( halfWidth, halfHeight, halfLength);
        glVertex3f ( halfWidth, -halfHeight, halfLength);
    glEnd();

    glRotatef(90.0f, 0.0, 1.0f, 0.0);
    glBegin(glDrawType);
        glNormal3f ( 0.0f, 0.0f, -1.0f );
        glVertex3f ( -halfLength, -halfHeight, -halfWidth);
        glVertex3f ( -halfLength, halfHeight, -halfWidth);
        glVertex3f ( halfLength, halfHeight, -halfWidth);
        glVertex3f ( halfLength, -halfHeight, -halfWidth);
    glEnd();
    glBegin(glDrawType);
        glNormal3f ( 0.0f, 0.0f, -1.0f );
        glVertex3f ( -halfLength, -halfHeight, halfWidth);
        glVertex3f ( -halfLength, halfHeight, halfWidth);
        glVertex3f ( halfLength, halfHeight, halfWidth);
        glVertex3f ( halfLength, -halfHeight, halfWidth);
    glEnd();

    glRotatef(90.0f, 1.0f, 0.0, 0.0);   
    glBegin(glDrawType);
        glNormal3f ( 0.0f, 0.0f, -1.0f );
        glVertex3f ( -halfLength, -halfWidth, -halfHeight);
        glVertex3f ( -halfLength, halfWidth, -halfHeight);
        glVertex3f ( halfLength, halfWidth, -halfHeight);
        glVertex3f ( halfLength, -halfWidth, -halfHeight);
    glEnd();
    glBegin(glDrawType);
        glNormal3f ( 0.0f, 0.0f, -1.0f );
        glVertex3f ( -halfLength, -halfWidth, halfHeight);
        glVertex3f ( -halfLength, halfWidth, halfHeight);
        glVertex3f ( halfLength, halfWidth, halfHeight);
        glVertex3f ( halfLength, -halfWidth, halfHeight);
    glEnd();
}

/////////////////////////////////////////////////////////////////////
// Bounding Volume UI IMPLEMENTATION
/////////////////////////////////////////////////////////////////////
p3dBoundVolShapeUI::p3dBoundVolShapeUI() {}
p3dBoundVolShapeUI::~p3dBoundVolShapeUI() {}

void* p3dBoundVolShapeUI::creator()
{
    return new p3dBoundVolShapeUI();
}

//********************************************************************************************
// Based on the boundingType dispatch the appropreate Draw function
//********************************************************************************************
void p3dBoundVolShapeUI::DrawBoundingVolume
(
    const p3dBoundVolAttr* attributes, 
    DrawMode drawMode
)
const
{
    bool bVis = true;

    MPxSurfaceShape* pSurface = this->surfaceShape();
    if ( pSurface != NULL ) // Should never fail, but I like to be careful.
    {
        MPlug visPlug( pSurface->thisMObject(), pSurface->visibility );
        visPlug.getValue( bVis );
    }

    if ( bVis )
    {
        switch ( attributes->boundingType )
        {
        case BOUNDING_BOX :
            {
                DrawBox(attributes, drawMode);
                break;
            }
        case BOUNDING_SPHERE :
            {
                DrawSphere(attributes, drawMode);
                break;
            }
        case BOUNDING_CYLINDER :
            {
                DrawCylinder(attributes, drawMode);
                break;
            }
        case BOUNDING_CAPSULE :
            {
                DrawCapsule(attributes, drawMode);
                break;
            }
        case BOUNDING_PLANE :
            {
                DrawPlane(attributes, drawMode);
                break;
            }
        }
    }
}

//********************************************************************************************
// Draw a box
//********************************************************************************************
void p3dBoundVolShapeUI::DrawBox
(
    const p3dBoundVolAttr* attributes, 
    DrawMode drawMode
)  
const
{
    float halfWidth = attributes->width/2.0f;
    float halfHeight = attributes->height/2.0f;
    float halfLength = attributes->length/2.0f;

    ClampValue(halfWidth,MIN_BOUNDING_SIZE,0.0f,CLAMP_MIN);
    ClampValue(halfHeight,MIN_BOUNDING_SIZE,0.0f,CLAMP_MIN);
    ClampValue(halfLength,MIN_BOUNDING_SIZE,0.0f,CLAMP_MIN);
    
    //
    // Cache the Draw mode to restore it after drawing.
    //
    GLint params[2];  
    glGetIntegerv(GL_POLYGON_MODE, params);
    long glDrawType;
 
    if((drawMode==SMOOTH_SHADED)||(drawMode==FLAT_SHADED))
    {
        glPolygonMode( GL_FRONT_AND_BACK, GL_FILL);
        glDrawType = GL_POLYGON;
    }
    else
    {
        glPolygonMode( GL_FRONT_AND_BACK, GL_LINE);
        glDrawType = GL_LINE_LOOP;
    }

    p3dBaseShapeUI::DrawBox(halfWidth, halfHeight, halfLength, glDrawType);

    //
    // Restore the Drawing Mode
    //
    glPolygonMode(GL_FRONT, params[0]);
    glPolygonMode(GL_BACK,  params[1]);
}

//********************************************************************************************
// Draw a sphere
//********************************************************************************************
void p3dBoundVolShapeUI::DrawSphere
(
    const p3dBoundVolAttr* attributes, 
    DrawMode drawMode
)  
const
{
    float drawRadius = attributes->radius;
    ClampValue(drawRadius,MIN_BOUNDING_SIZE,0.0f,CLAMP_MIN);

    GLUquadricObj* qobj = gluNewQuadric();
    SetQuadricDrawStyle (qobj, drawMode);
    gluSphere( qobj, drawRadius, 8, 8 );
}

//********************************************************************************************
// Draw a cylinder
//********************************************************************************************
void p3dBoundVolShapeUI::DrawCylinder
(
    const p3dBoundVolAttr* attributes, 
    DrawMode drawMode
)
const
{
    GLUquadricObj* qobjMid = gluNewQuadric();
    GLUquadricObj* qobjTop = gluNewQuadric();
    GLUquadricObj* qobjBot = gluNewQuadric();
    SetQuadricDrawStyle (qobjMid, drawMode);
    SetQuadricDrawStyle (qobjTop, drawMode);
    SetQuadricDrawStyle (qobjBot, drawMode);

    if(attributes->max == 0 )
    {  //sx
        glRotatef(90.0, 0.0, 1.0, 0.0);
    }
    else if(attributes->max == 2)
    {  //sz
        glRotatef(90.0, 1.0, 0.0, 0.0);
    }

    float drawRadius = attributes->radius;
    float drawHeight = attributes->height;
    ClampValue(drawRadius,MIN_BOUNDING_SIZE,0.0f,CLAMP_MIN);
    ClampValue(drawHeight,MIN_BOUNDING_SIZE,0.0f,CLAMP_MIN);

    glTranslatef(0.0f,0.0f,-drawHeight/2.0f); 
    gluCylinder( qobjMid, drawRadius, drawRadius, drawHeight, 8, 8 );
    gluDisk( qobjBot, 0, drawRadius, 8, 8 );
    glTranslatef(0.0f,0.0f,attributes->height);
    gluDisk( qobjTop, 0, drawRadius, 8, 8 );
}

//********************************************************************************************
// Draw a capsule
//********************************************************************************************
void p3dBoundVolShapeUI::DrawCapsule
(
    const p3dBoundVolAttr* attributes, 
    DrawMode drawMode
)  
const
{
    GLUquadricObj* qobjMid = gluNewQuadric();
    GLUquadricObj* qobjTop = gluNewQuadric();
    GLUquadricObj* qobjBot = gluNewQuadric();
    SetQuadricDrawStyle (qobjMid, drawMode);
    SetQuadricDrawStyle (qobjTop, drawMode);
    SetQuadricDrawStyle (qobjBot, drawMode);

    if(attributes->max == 0 )
    {  //sx
        glRotatef(90.0, 0.0, 1.0, 0.0);
    }
    else if(attributes->max == 2)
    {  //sz
        glRotatef(90.0, 1.0, 0.0, 0.0);
    }

    float drawRadius = attributes->radius;
    float drawHeight = attributes->height;
    ClampValue(drawRadius,MIN_BOUNDING_SIZE,0.0f,CLAMP_MIN);
    ClampValue(drawHeight,MIN_BOUNDING_SIZE,0.0f,CLAMP_MIN);

    glTranslatef(0.0f,0.0f,-drawHeight/2.0f);
    gluCylinder( qobjMid, drawRadius, drawRadius, drawHeight, 8, 8 );
    gluSphere( qobjTop, drawRadius, 8, 8 );
    glTranslatef(0.0f,0.0f,drawHeight);
    gluSphere( qobjBot, drawRadius, 8, 8 );
}

//********************************************************************************************
// Draw a plane
//********************************************************************************************
void p3dBoundVolShapeUI::DrawPlane
(
    const p3dBoundVolAttr* attributes, 
    DrawMode drawMode
)  
const
{
    GLUquadricObj* qdir = gluNewQuadric();
    SetQuadricDrawStyle (qdir, drawMode);
    gluCylinder( qdir, 0.25f, 0.0f, 1.0f, 4, 1 );
    float halfWidth = attributes->width/2.0f;
    float halfHeight = attributes->height/2.0f;
    ClampValue(halfWidth,MIN_BOUNDING_SIZE,0.0f,CLAMP_MIN);
    ClampValue(halfHeight,MIN_BOUNDING_SIZE,0.0f,CLAMP_MIN);

    //
    // Cache the Draw mode to restore it after drawing.
    //
    GLint params[2];  
    glGetIntegerv(GL_POLYGON_MODE, params);
    long glDrawType;

    if((drawMode==SMOOTH_SHADED)||(drawMode==FLAT_SHADED))
    {
        glPolygonMode( GL_FRONT_AND_BACK, GL_FILL);
        glDrawType = GL_POLYGON;
    }
    else
    {
        glPolygonMode( GL_FRONT_AND_BACK, GL_LINE);
        glDrawType = GL_LINE_LOOP;
    }

    glBegin(glDrawType);
    glNormal3f  ( 0.0f, 0.0f, 1.0f );
    glVertex2f ( -halfWidth, -halfHeight );
    glVertex2f ( halfWidth, -halfHeight );
    glVertex2f ( halfWidth, halfHeight );
    glVertex2f ( -halfWidth, halfHeight );         
    glEnd();

    //
    // Restore the Drawing Mode
    //
    glPolygonMode(GL_FRONT, params[0]);
    glPolygonMode(GL_BACK,  params[1]);
}

//********************************************************************************************
// The draw data is used to pass geometry through the 
// draw queue. The data should hold all the information
// needed to draw the shape.
//********************************************************************************************
void p3dBoundVolShapeUI::getDrawRequests
( 
    const MDrawInfo & info, 
    bool objectAndActiveOnly, 
    MDrawRequestQueue & queue 
)
{
    MDrawData data;
    MDrawRequest request = info.getPrototype( *this );
    p3dBoundVolShape* shapeNode = (p3dBoundVolShape*)surfaceShape();
    p3dBoundVolAttr* attributes = shapeNode->getAttributes();
    getDrawData( attributes, data );
    request.setDrawData( data );

    //
    // Use display status to determine what color to draw the object
    //
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

        case M3dView::kWireFrame:
            request.setToken(WIREFRAME);
            getDrawRequestsWireframe( request, info );
            queue.add( request );
            break;

        default :
            request.setToken( SMOOTH_SHADED );
            getDrawRequestsShaded( request, info, queue, data );
            queue.add( request );
            break;
            
    }
}

MPoint g_selectionRayStartingPoint;
MVector g_selectionRayDirection;

void DrawSelectionRay
(
    MPoint selectionRayStartingPoint,
    MVector selectionRayDirection,
    double scale[3]
)
{

    MPoint   selectionRayEndingPoint;
    MPoint   zeroPoint(0,0,0);
    //
    // Scale this direction Vector and the startingPoint 
    // with respect the size of the object since it's size is given 
    // from 1.0 -> -1.0
    //
    selectionRayDirection.x *= scale[0];
    selectionRayDirection.y *= scale[1];
    selectionRayDirection.z *= scale[2];

    selectionRayStartingPoint.x *= scale[0];
    selectionRayStartingPoint.y *= scale[1];
    selectionRayStartingPoint.z *= scale[2];
    double   rayLength = selectionRayStartingPoint. distanceTo(zeroPoint);

    selectionRayEndingPoint.x = selectionRayStartingPoint.x + rayLength*selectionRayDirection.x;
    selectionRayEndingPoint.y = selectionRayStartingPoint.y + rayLength*selectionRayDirection.y;
    selectionRayEndingPoint.z = selectionRayStartingPoint.z + rayLength*selectionRayDirection.z;

    selectionRayEndingPoint.w = 1.0; 

    glPolygonMode ( GL_FRONT_AND_BACK, GL_LINE);
    glBegin(GL_LINES);
        glVertex3f (   (float)selectionRayStartingPoint.x,
                            (float)selectionRayStartingPoint.y, 
                            (float)selectionRayStartingPoint.z
                        );
        glVertex3f (   (float)selectionRayEndingPoint.x,
                            (float)selectionRayEndingPoint.y, 
                            (float)selectionRayEndingPoint.z
                        );
    glEnd();

}

//********************************************************************************************
// From the given draw request, get the draw data and determine
// which quadric to draw and with what values.
//********************************************************************************************
void p3dBoundVolShapeUI::draw
( 
    const MDrawRequest & request, 
    M3dView & view 
) 
const
{
    MDagPath dagPath = request.multiPath();
    MMatrix inclusiveMatrix = dagPath.exclusiveMatrix();
    MTransformationMatrix transform(inclusiveMatrix);      
    double scale[3];
    transform.getScale(scale, MSpace::kTransform);
    float invScaleX = 1.0f/(float)scale[0];
    float invScaleY = 1.0f/(float)scale[1];
    float invScaleZ = 1.0f/(float)scale[2];
    
    MDrawData data = request.drawData();
    const p3dBoundVolAttr* attributes = (p3dBoundVolAttr*)data.geometry();
    DrawMode token = (DrawMode)(request.token());
    bool drawTexture = false;

    bool bTemplate = true;

    // Note: MDrawRequest::displayStatus() reflects template status of TRANSFORM ONLY!

    // Determine if SHAPE has '.template' attribute set.
    MPxSurfaceShape* pSurface = this->surfaceShape();
    if ( pSurface != NULL ) // Should never fail, but I like to be careful.
    {
        MPlug templatePlug( pSurface->thisMObject(), pSurface->isTemplated );
        templatePlug.getValue( bTemplate );
    }

    // Determine if TRANSFORM has '.template' attribute set.
    bTemplate |= ( ( request.displayStatus() == M3dView::kActiveTemplate ) || ( request.displayStatus() == M3dView::kTemplate ) );

//    glPushAttrib( GL_CURRENT_BIT );

    view.beginGL(); 

    if( (token == SMOOTH_SHADED) || (token == FLAT_SHADED) )
    {
        glEnable( GL_POLYGON_OFFSET_FILL );

        //
        // Set up the material
        //
        MMaterial material = request.material();

        material.setMaterial(dagPath, true);

        //
        // Enable texturing
        //
        drawTexture = material.materialIsTextured();
        if( drawTexture ) 
        {
            glEnable(GL_TEXTURE_2D);
        }

        //
        // Apply the texture to the current view
        //
        if ( drawTexture ) 
        {
            material.applyTexture( view, data );
        }
    }

    if ( bTemplate )
    {
        MColor templateColor = view.templateColor();
        if ( request.displayStatus() == M3dView::kActive || request.displayStatus() == M3dView::kLead || request.displayStatus() == M3dView::kActiveTemplate )
        {
            templateColor = view.colorAtIndex( 19, M3dView::kActiveColors );
        }
        glColor3d( templateColor.r, templateColor.g, templateColor.b );
    }

    glPushMatrix();
    
    //
    // I'm not sure why this needs to be done... 
    //
    glScalef(invScaleX,invScaleY,invScaleZ);

//   DrawSelectionRay(g_selectionRayStartingPoint, g_selectionRayDirection, scale);

    //
    // What the hell is this??? Why does this need to be done?
    //
    glRotatef(-90.0f, 1.0f, 0.0, 0.0);  

    //
    // This actually dispatched the drawing calls
    //
    DrawBoundingVolume(attributes, token);

    glPopMatrix();

    //
    // Turn off texture mode
    //
    if( drawTexture )
    {
        glDisable(GL_TEXTURE_2D);
    }

    view.endGL(); 

//    glPopAttrib();
}



//********************************************************************************************
// Select function. Gets called when the bbox for the object is selected.
// This function just selects the object without doing any intersection tests.
//********************************************************************************************
bool p3dBoundVolShapeUI::select
( 
    MSelectInfo &selectInfo, 
    MSelectionList &selectionList, 
    MPointArray &worldSpaceSelectPts 
)  
const
{
    bool selected = false;
    p3dBoundVolShape* shapeNode = (p3dBoundVolShape*)surfaceShape();
    p3dBoundVolAttr* attributes = shapeNode->getAttributes();

    MPoint point;
    MVector vector;
    selectInfo.getLocalRay(point, vector);

    g_selectionRayStartingPoint = point;
    g_selectionRayDirection = vector;

    bool singleSelection = selectInfo.singleSelection();
    if( singleSelection ) 
    {
        //
        // First check if there is a Ray Intersection with the 
        // Bounding Volume itself
        //
        selected = shapeNode->intersectionRoutine( point, vector );
    }

    if(selected || !singleSelection)
    {
        //
        // If the Ray intersects the acutal volume
        // Then check if the render components were selected
        //
        selected = selectByDrawBuffer(selectInfo);
    }

    if(selected)
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

//********************************************************************************************
// This function Re-Renders in WireFrame into a selection buffer
// to determine if the object has been selected
//********************************************************************************************
bool p3dBoundVolShapeUI::selectByDrawBuffer( MSelectInfo &selectInfo ) const
{
    bool selected = false;
    M3dView view = selectInfo.view();

    MDagPath selectedObject = selectInfo.selectPath(); 
    
    MMatrix inclusiveMatrix = selectedObject.inclusiveMatrix();
    MTransformationMatrix transform(inclusiveMatrix);      
    double scale[3];
    transform.getScale(scale, MSpace::kTransform);
    float invScaleX = 1.0f/(float)scale[0];
    float invScaleY = 1.0f/(float)scale[1];
    float invScaleZ = 1.0f/(float)scale[2];

    //
    // Get the geometry information
    //
    p3dBoundVolShape* shapeNode = (p3dBoundVolShape*)surfaceShape();
    p3dBoundVolAttr* attributes = shapeNode->getAttributes();

    //
    // Re-Draw the object and see if they lie withing the selection area
    // Sets OpenGL's render mode to select and stores
    // selected items in a pick buffer
    //
    view.beginSelect();

    glPushMatrix();

    //
    // I'm not sure why this needs to be done... 
    //
    glScalef(invScaleX,invScaleY,invScaleZ);
    glRotatef(-90.0f, 1.0f, 0.0, 0.0);  

    //
    // This actually dispatched the drawing calls
    //
    DrawBoundingVolume(attributes, WIREFRAME);

    glPopMatrix();

    if( view.endSelect() > 0 )// Hit count > 0
    {
        selected = true;
    }

    return selected;
}

/////////////////////////////////////////////////////////////////////
// BoundingNode UI IMPLEMENTATION
/////////////////////////////////////////////////////////////////////

p3dBoundNodeShapeUI::p3dBoundNodeShapeUI() {}
p3dBoundNodeShapeUI::~p3dBoundNodeShapeUI() {}

void* p3dBoundNodeShapeUI::creator()
{
    return new p3dBoundNodeShapeUI();
}

//********************************************************************************************
// The draw data is used to pass geometry through the 
// draw queue. The data should hold all the information
// needed to draw the shape.
//********************************************************************************************
void p3dBoundNodeShapeUI::getDrawRequests( const MDrawInfo & info, bool objectAndActiveOnly, MDrawRequestQueue & queue )
{
    MDrawData data;
    MDrawRequest request = info.getPrototype( *this );
    p3dBoundNodeShape* shapeNode = (p3dBoundNodeShape*)surfaceShape();
    p3dBoundNodeAttr* attributes = shapeNode->getAttributes();
    getDrawData( attributes, data );
    request.setDrawData( data );

    //
    // Use display status to determine what color to draw the object
    //
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
// From the given draw request, get the draw data and determine
// which quadric to draw and with what values.
//********************************************************************************************
void p3dBoundNodeShapeUI::draw
( 
    const MDrawRequest & request, 
    M3dView & view 
) 
const
{  
    MDagPath dagPath = request.multiPath();
    MMatrix inclusiveMatrix = dagPath.inclusiveMatrix();
    MTransformationMatrix transform(inclusiveMatrix);      
    double scale[3];
    transform.getScale(scale, MSpace::kTransform);
    float invScaleX = 1.0f/(float)scale[0];
    float invScaleY = 1.0f/(float)scale[1];
    float invScaleZ = 1.0f/(float)scale[2];

    MDrawData data = request.drawData();
    p3dBoundNodeAttr* attributes = (p3dBoundNodeAttr*)data.geometry();
    short token = request.token();
    bool drawTexture = false;

    view.beginGL(); 

    if ( (token == SMOOTH_SHADED) || (token == FLAT_SHADED) )
    {
        glEnable( GL_POLYGON_OFFSET_FILL );
        //
        // Set up the material
        //
        MMaterial material = request.material();

        material.setMaterial(dagPath,false);

        //
        // Enable texturing
        //
        drawTexture = material.materialIsTextured();
        if( drawTexture )
        {
            glEnable(GL_TEXTURE_2D);
        }

        //
        // Apply the texture to the current view
        //
        if( drawTexture ) 
        {
            material.applyTexture( view, data );
        }
    }

    glPushMatrix();
    glScalef(invScaleX,invScaleY,invScaleZ);
    glScalef(attributes->handleSize,attributes->handleSize,attributes->handleSize);

    glRotatef(-90.0f, 1.0f, 0.0, 0.0); 

    GLUquadricObj* qobj = gluNewQuadric();
    SetQuadricDrawStyle (qobj, token);
    gluSphere( qobj, 1/2.0f, 4, 2 );

    glPopMatrix();

    //
    // Turn off texture mode
    //
    if( drawTexture ) 
    {
        glDisable(GL_TEXTURE_2D);
    }

    view.endGL(); 
}

//********************************************************************************************
// Select function. Gets called when the bbox for the object is selected.
// This function just selects the object without doing any intersection tests.
//********************************************************************************************
bool p3dBoundNodeShapeUI::select
( 
    MSelectInfo &selectInfo, 
    MSelectionList &selectionList, 
    MPointArray &worldSpaceSelectPts 
) 
const
{
    MSelectionMask priorityMask( MSelectionMask::kSelectObjectsMask );
    MSelectionList item;
    item.add( selectInfo.selectPath() );
    MPoint xformedPt;
    selectInfo.addSelection( item, xformedPt, selectionList, worldSpaceSelectPts, priorityMask, false );
    return true;
}

}  //namespace PBV





