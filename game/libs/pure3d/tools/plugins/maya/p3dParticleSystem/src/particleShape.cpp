//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


#include <maya/MFnMessageAttribute.h>
#include <maya/MFnNumericAttribute.h>
#include <maya/MFnCompoundAttribute.h>
#include <maya/MFnEnumAttribute.h>
#include <maya/MFnTypedAttribute.h>
#include <maya/MFnStringData.h>
#include <maya/MPoint.h>
#include <maya/MPlug.h>
#include <maya/MPlugArray.h>
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
#include <maya/MFileIO.h>
#include <GL/glu.h>

#include <math.h>
 
#include "particleUtility.hpp"
#include "particleShape.hpp"

#include <bewert_debug.h>

/////////////////////////////////////////////////////////////////////

#define MAKE_NUMERIC_ATTR( NAME, LONGNAME, SHORTNAME, TYPE, DEFAULT, MIN, MAX, KEYABLE, HIDDEN, INTERNAL)  \
    MStatus NAME##_stat;                                                            \
    MFnNumericAttribute NAME##_fn;                                                  \
    NAME = NAME##_fn.create( LONGNAME, SHORTNAME, TYPE, DEFAULT );                  \
    CHECKRESULT_FAILURE(NAME##_stat, "numeric attr create error");                  \
    NAME##_fn.setHidden( HIDDEN );                                                  \
    NAME##_fn.setKeyable( KEYABLE );                                                \
    NAME##_fn.setInternal( INTERNAL );                                              \
    NAME##_stat = addAttribute( NAME );                                             \
    CHECKRESULT_FAILURE(NAME##_stat, "addAttribute error");

namespace P3DParticleSystem
{

void SetQuadricDrawStyle (GLUquadricObj* qobj, int token, bool enable_texturing)
{
    if ((token==SMOOTH_SHADED)||(token==FLAT_SHADED))
    {
        gluQuadricNormals( qobj, GLU_SMOOTH );
        gluQuadricTexture( qobj, enable_texturing );
        gluQuadricDrawStyle( qobj, GLU_FILL );
    }
    else
    {
        gluQuadricDrawStyle( qobj, GLU_LINE );
    }
}

/////////////////////////////////////////////////////////////////////
// p3dBaseShape IMPLEMENTATION
/////////////////////////////////////////////////////////////////////
void p3dBaseShape::postConstructor()
{ 
    // This call allows the shape to have shading groups assigned
    setRenderable( true );
}

/////////////////////////////////////////////////////////////////////
// p3dBaseShapeUI IMPLEMENTATION
/////////////////////////////////////////////////////////////////////
void p3dBaseShapeUI::getDrawRequests( const MDrawInfo & info, bool objectAndActiveOnly, MDrawRequestQueue & queue )
{
    MDrawData data;
    MDrawRequest request = info.getPrototype( *this );
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

void p3dBaseShapeUI::getDrawRequestsShaded( MDrawRequest& request, const MDrawInfo& info, MDrawRequestQueue& queue, MDrawData& data )
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
// p3dEmitterBlendStateNode IMPLEMENTATION
/////////////////////////////////////////////////////////////////////
MTypeId p3dEmitterBlendStateNode::id(P3D_EMITTER_BLEND_STATE_NODE_ID);
MObject p3dEmitterBlendStateNode::parent;
MObject p3dEmitterBlendStateNode::particleType;
MObject p3dEmitterBlendStateNode::generatorType;
MObject p3dEmitterBlendStateNode::particleAngleType;
MObject p3dEmitterBlendStateNode::horizSpread;
MObject p3dEmitterBlendStateNode::vertSpread;
MObject p3dEmitterBlendStateNode::radialVar;
MObject p3dEmitterBlendStateNode::length;
MObject p3dEmitterBlendStateNode::height;
MObject p3dEmitterBlendStateNode::width;
MObject p3dEmitterBlendStateNode::emissionRate;
MObject p3dEmitterBlendStateNode::numParticles;
MObject p3dEmitterBlendStateNode::infiniteLife;
MObject p3dEmitterBlendStateNode::life;
MObject p3dEmitterBlendStateNode::lifeVar;
MObject p3dEmitterBlendStateNode::speed;
MObject p3dEmitterBlendStateNode::speedVar;
MObject p3dEmitterBlendStateNode::weight;
MObject p3dEmitterBlendStateNode::weightVar;
MObject p3dEmitterBlendStateNode::gravity;
MObject p3dEmitterBlendStateNode::drag;
MObject p3dEmitterBlendStateNode::red;
MObject p3dEmitterBlendStateNode::green;
MObject p3dEmitterBlendStateNode::blue;
MObject p3dEmitterBlendStateNode::colour;
MObject p3dEmitterBlendStateNode::colourVar;
MObject p3dEmitterBlendStateNode::alpha;
MObject p3dEmitterBlendStateNode::alphaVar;
MObject p3dEmitterBlendStateNode::size;
MObject p3dEmitterBlendStateNode::sizeVar;
MObject p3dEmitterBlendStateNode::spin;
MObject p3dEmitterBlendStateNode::spinVar;

p3dEmitterBlendStateNode::p3dEmitterBlendStateNode() 
{
    attributes = new p3dEmitterBlendStateAttr;
    attributes->particleType = SPRITE_PARTICLE;
    attributes->generatorType = POINT_GENERATOR;
    attributes->particleAngleType = SPECIFIED_ANGLE;
    attributes->infiniteLife = 0;
} 

p3dEmitterBlendStateNode::~p3dEmitterBlendStateNode()
{
    delete attributes;
}

bool p3dEmitterBlendStateNode::getInternalValue( const MPlug& plug, MDataHandle& datahandle )
{
    bool isOk = true;
    MObject this_object = thisMObject();  
    MFnDependencyNode dependNodeFn(this_object);

    if ( plug == particleType ) 
    {
        MPlug spinPlug = dependNodeFn.findPlug("spin");
        MPlug spinVarPlug = dependNodeFn.findPlug("spinVariance");
        MPlug sizePlug = dependNodeFn.findPlug("size");
        MPlug sizeVarPlug = dependNodeFn.findPlug("sizeVariance");
        datahandle.set( attributes->particleType );
        switch (attributes->particleType)
        {
        case SPRITE_PARTICLE:
            {
                spinPlug.setLocked(false);
                spinVarPlug.setLocked(false);
                sizePlug.setLocked(false);
                sizeVarPlug.setLocked(false);
                break;
            }
        }
        isOk = true;
    }
    else if ( plug == generatorType ) 
    { 
        MPlug horizPlug = dependNodeFn.findPlug("horizEmissionSpread");
        MPlug vertPlug = dependNodeFn.findPlug("vertEmissionSpread");
        MPlug radialPlug = dependNodeFn.findPlug("radialVariance");
        MPlug lengthPlug = dependNodeFn.findPlug("length");
        MPlug heightPlug = dependNodeFn.findPlug("height");
        MPlug widthPlug = dependNodeFn.findPlug("width");
        datahandle.set( attributes->generatorType );
        switch (attributes->generatorType)
        {
        case POINT_GENERATOR:
            {
                horizPlug.setLocked(false);
                vertPlug.setLocked(false);
                radialPlug.setLocked(false);
                lengthPlug.setLocked(true);
                heightPlug.setLocked(true);
                widthPlug.setLocked(true);
                break;
            }
        case PLANE_GENERATOR:
            {
                horizPlug.setLocked(false);
                vertPlug.setLocked(false);
                radialPlug.setLocked(false);
                lengthPlug.setLocked(false);
                heightPlug.setLocked(true);
                widthPlug.setLocked(false);
                break;
            }
        case SPHERE_GENERATOR:
            {
                horizPlug.setLocked(true);
                vertPlug.setLocked(true);
                radialPlug.setLocked(false);
                lengthPlug.setLocked(true);
                heightPlug.setLocked(false);
                widthPlug.setLocked(true);
                break;
            }
        }   
        isOk = true;
    }
    else if ( plug == particleAngleType )
    {
        MPlug spinPlug = dependNodeFn.findPlug("spin");
        MPlug spinVarPlug = dependNodeFn.findPlug("spinVariance");
        switch (attributes->particleType)
        {
        case SPRITE_PARTICLE:
            {
                datahandle.set( attributes->particleAngleType );
                switch (attributes->particleAngleType)
                {
                case SPECIFIED_ANGLE:
                    {
                        spinPlug.setLocked(false);
                        spinVarPlug.setLocked(false);
                        break;
                    }
                case RANDOM_ANGLE:
                    {
                        spinPlug.setLocked(false);
                        spinVarPlug.setLocked(false);
                        break;
                    }
                case ALIGNED_TO_MOTION:
                    {
                        spinPlug.setLocked(true);
                        spinVarPlug.setLocked(true);
                        break;
                    }
                }
                break;
            }
        }
        isOk = true;
    }
    else if ( plug == infiniteLife )
    {
        MPlug lifePlug = dependNodeFn.findPlug("life");
        MPlug lifeVarPlug = dependNodeFn.findPlug("lifeVariance");
        datahandle.set( attributes->infiniteLife );
        if (attributes->infiniteLife==0)
        {
            lifePlug.setLocked(false);
            lifeVarPlug.setLocked(false);
        }
        else
        {
            lifePlug.setLocked(true);
            lifeVarPlug.setLocked(true);
        }
        isOk = true;
    }
    else 
    {
        isOk = MPxNode::getInternalValue( plug, datahandle );
    }
    return isOk;
}

bool p3dEmitterBlendStateNode::setInternalValue( const MPlug& plug, const MDataHandle& datahandle )
{
    bool isOk = true;

    if ( plug == particleType ) 
    {
        attributes->particleType = datahandle.asShort();
        isOk = true;
    }
    else if ( plug == generatorType ) 
    {
        attributes->generatorType = datahandle.asShort();
        isOk = true;
    }
    else if ( plug == particleAngleType ) 
    {
        attributes->particleAngleType = datahandle.asShort();
        isOk = true;
    }
    else if ( plug == infiniteLife ) 
    {
        attributes->infiniteLife = datahandle.asShort();
        isOk = true;
    }
    else 
    {
        isOk = MPxNode::setInternalValue( plug, datahandle );
    }
    return isOk;
}

void* p3dEmitterBlendStateNode::creator()
{
    return new p3dEmitterBlendStateNode();
}

MStatus p3dEmitterBlendStateNode::initialize()
{
    MStatus             status;
    MFnEnumAttribute    enumAttr;
    MFnNumericAttribute numAttr;
    MFnMessageAttribute  messageAttr;

    parent = messageAttr.create("parent", "par", &status);
    CHECKRESULT_FAILURE( status, "Error creating parent attribute" );
        messageAttr.setHidden( true );
    status = addAttribute( parent );
    CHECKRESULT_FAILURE( status, "Error adding parent attribute" );

    particleType = enumAttr.create( "particleType", "pt", 0, &status);
    CHECKRESULT_FAILURE( status, "Error creating particleType attribute" );
        enumAttr.addField( "sprites", 0 );
    enumAttr.setInternal( true );
    enumAttr.setHidden( false );
    enumAttr.setKeyable( true );
    status = addAttribute( particleType );
    CHECKRESULT_FAILURE( status, "Error adding particleType attribute." );

    generatorType = enumAttr.create( "generatorType", "et", 0, &status);
    CHECKRESULT_FAILURE( status, "Error creating generatorType attribute" );
        enumAttr.addField( "point", 0 );
        enumAttr.addField( "plane", 1 );
        enumAttr.addField( "sphere", 2 );
    enumAttr.setInternal( true );
    enumAttr.setHidden( false );
    enumAttr.setKeyable( true );
    status = addAttribute( generatorType );
    CHECKRESULT_FAILURE( status, "Error adding generatorType attribute." );

    particleAngleType = enumAttr.create( "particleAngleType", "pat", 0, &status);
    CHECKRESULT_FAILURE( status, "Error creating particleAngleType attribute" );
        enumAttr.addField( "specified", 0 );
        enumAttr.addField( "random", 1 );
        enumAttr.addField( "aligned to motion", 2 );
    enumAttr.setInternal( true );
    enumAttr.setHidden( false );
    enumAttr.setKeyable( true );
    status = addAttribute( particleAngleType );
    CHECKRESULT_FAILURE( status, "Error adding particleAngleType attribute." );

    horizSpread = numAttr.create ("horizEmissionSpread", "sp", MFnNumericData::kFloat, 90.0f, &status);
    CHECKRESULT_FAILURE( status, "Error creating horizEmissionSpread attribute" );
    numAttr.setMin(0.0);
    numAttr.setMax(180.0);
    numAttr.setInternal( false );
    numAttr.setHidden( false );
    numAttr.setKeyable( true );
    status = addAttribute( horizSpread );
    CHECKRESULT_FAILURE( status, "Error adding horizEmissionSpread attribute." );

    vertSpread = numAttr.create ("vertEmissionSpread", "vsp", MFnNumericData::kFloat, 90.0f, &status);
    CHECKRESULT_FAILURE( status, "Error creating vertEmissionSpread attribute" );
    numAttr.setMin(0.0);
    numAttr.setMax(180.0);
    numAttr.setInternal( false );
    numAttr.setHidden( false );
    numAttr.setKeyable( true );
    status = addAttribute( vertSpread );
    CHECKRESULT_FAILURE( status, "Error adding vertEmissionSpread attribute." );

    radialVar = numAttr.create ("radialVariance", "rdv", MFnNumericData::kFloat, 0.0f, &status);
    CHECKRESULT_FAILURE( status, "Error creating radialVariance attribute" );
    numAttr.setMin(0.0);
    numAttr.setInternal( false );
    numAttr.setHidden( false );
    numAttr.setKeyable( true );
    status = addAttribute( radialVar );
    CHECKRESULT_FAILURE( status, "Error adding radialVariance attribute." );

    length = numAttr.create ("length", "lth", MFnNumericData::kFloat, 1.0f, &status);
    CHECKRESULT_FAILURE( status, "Error creating length attribute" );
    numAttr.setMin(0.0);
    numAttr.setInternal( false );
    numAttr.setHidden( false );
    numAttr.setKeyable( true );
    status = addAttribute( length );
    CHECKRESULT_FAILURE( status, "Error adding length attribute." );

    height = numAttr.create ("height", "hgt", MFnNumericData::kFloat, 1.0f, &status);
    CHECKRESULT_FAILURE( status, "Error creating height attribute" );
    numAttr.setMin(0.0);
    numAttr.setInternal( false );
    numAttr.setHidden( false );
    numAttr.setKeyable( true );
    status = addAttribute( height );
    CHECKRESULT_FAILURE( status, "Error adding height attribute." );

    width = numAttr.create ("width", "wdt", MFnNumericData::kFloat, 1.0f, &status);
    CHECKRESULT_FAILURE( status, "Error creating width attribute" );
    numAttr.setMin(0.0);
    numAttr.setInternal( false );
    numAttr.setHidden( false );
    numAttr.setKeyable( true );
    status = addAttribute( width );
    CHECKRESULT_FAILURE( status, "Error adding width attribute." );
  
    emissionRate = numAttr.create ("emissionRate", "er", MFnNumericData::kFloat, 1.0f, &status);
    CHECKRESULT_FAILURE( status, "Error creating emissionRate attribute" );
    numAttr.setMin(0.0);
    numAttr.setInternal( false );
    numAttr.setHidden( false );
    numAttr.setKeyable( true );
    status = addAttribute( emissionRate );
    CHECKRESULT_FAILURE( status, "Error adding emissionRate attribute." );

    numParticles = numAttr.create ("numberOfParticles", "np", MFnNumericData::kShort, 100, &status);
    CHECKRESULT_FAILURE( status, "Error creating numberOfParticles attribute" );
    numAttr.setMin(0.0);
    numAttr.setInternal( false );
    numAttr.setHidden( false );
    numAttr.setKeyable( true );
    status = addAttribute( numParticles );
    CHECKRESULT_FAILURE( status, "Error adding numberOfParticles attribute." );

    infiniteLife = enumAttr.create ("infiniteLife", "ifl", 0, &status);
    CHECKRESULT_FAILURE( status, "Error creating infiniteLife attribute" );
        enumAttr.addField( "no", 0 );
        enumAttr.addField( "yes", 1 );
    enumAttr.setInternal( true );
    enumAttr.setHidden( false );
    enumAttr.setKeyable( true );
    status = addAttribute( infiniteLife );
    CHECKRESULT_FAILURE( status, "Error adding infiniteLife attribute." );

    life = numAttr.create ("life", "l", MFnNumericData::kFloat, 30.0f, &status);
    CHECKRESULT_FAILURE( status, "Error creating life attribute" );
    numAttr.setMin(0.0);
    numAttr.setInternal( false );
    numAttr.setHidden( false );
    numAttr.setKeyable( true );
    status = addAttribute( life );
    CHECKRESULT_FAILURE( status, "Error adding life attribute." );

    lifeVar = numAttr.create ("lifeVariance", "lv", MFnNumericData::kFloat, 0.0f, &status);
    CHECKRESULT_FAILURE( status, "Error creating lifeVariance attribute" );
    numAttr.setMin(0.0);
    numAttr.setInternal( false );
    numAttr.setHidden( false );
    numAttr.setKeyable( true );
    status = addAttribute( lifeVar );
    CHECKRESULT_FAILURE( status, "Error adding lifeVariance attribute." );

    speed = numAttr.create ("speed", "spd", MFnNumericData::kFloat, 1.0f, &status);
    CHECKRESULT_FAILURE( status, "Error creating speed attribute" );
    numAttr.setInternal( false );
    numAttr.setHidden( false );
    numAttr.setKeyable( true );
    status = addAttribute( speed );
    CHECKRESULT_FAILURE( status, "Error adding speed attribute." );

    speedVar = numAttr.create ("speedVariance", "sdv", MFnNumericData::kFloat, 0.0f, &status);
    CHECKRESULT_FAILURE( status, "Error creating speedVariance attribute" );
    numAttr.setInternal( false );
    numAttr.setHidden( false );
    numAttr.setKeyable( true );
    status = addAttribute( speedVar );
    CHECKRESULT_FAILURE( status, "Error adding speedVariance attribute." );

    weight = numAttr.create ("weight", "w", MFnNumericData::kFloat, 1.0f, &status);
    CHECKRESULT_FAILURE( status, "Error creating weight attribute" );
    numAttr.setInternal( false );
    numAttr.setHidden( false );
    numAttr.setKeyable( true );
    status = addAttribute( weight );
    CHECKRESULT_FAILURE( status, "Error adding weight attribute." );

    weightVar = numAttr.create ("weightVariance", "wv", MFnNumericData::kFloat, 0.0f, &status);
    CHECKRESULT_FAILURE( status, "Error creating weightVariance attribute" );
    numAttr.setInternal( false );
    numAttr.setHidden( false );
    numAttr.setKeyable( true );
    status = addAttribute( weightVar );
    CHECKRESULT_FAILURE( status, "Error adding weightVariance attribute." );

    gravity = numAttr.create ("gravity", "grv", MFnNumericData::kFloat, 0.0f, &status);
    CHECKRESULT_FAILURE( status, "Error creating gravity attribute" );
    numAttr.setInternal( false );
    numAttr.setHidden( false );
    numAttr.setKeyable( true );
    status = addAttribute( gravity );
    CHECKRESULT_FAILURE( status, "Error adding gravity attribute." );

    drag = numAttr.create ("drag", "drg", MFnNumericData::kFloat, 0.0f, &status);
    CHECKRESULT_FAILURE( status, "Error creating drag attribute" );
    numAttr.setMin(0.0);
    numAttr.setInternal( false );
    numAttr.setHidden( false );
    numAttr.setKeyable( true );
    status = addAttribute( drag );
    CHECKRESULT_FAILURE( status, "Error adding drag attribute." );

    red = numAttr.create ("red", "r", MFnNumericData::kFloat, 1.0f, &status);
    CHECKRESULT_FAILURE( status, "Error creating red attribute" );
        numAttr.setMin(0.0);
        numAttr.setMax(1.0);
        numAttr.setHidden( false );
        numAttr.setKeyable( true );
    green = numAttr.create ("green", "g", MFnNumericData::kFloat, 1.0f, &status);
    CHECKRESULT_FAILURE( status, "Error creating green attribute" );
        numAttr.setMin(0.0);
        numAttr.setMax(1.0);
        numAttr.setHidden( false );
        numAttr.setKeyable( true );
    blue = numAttr.create ("blue", "b", MFnNumericData::kFloat, 1.0f, &status);
    CHECKRESULT_FAILURE( status, "Error creating blue attribute" );
        numAttr.setMin(0.0);
        numAttr.setMax(1.0);
        numAttr.setHidden( false );
        numAttr.setKeyable( true );
    colour = numAttr.create( "colour", "clr", red, green, blue, &status);
    CHECKRESULT_FAILURE( status, "Error creating colour attribute" );
        numAttr.setKeyable( true );
        numAttr.setUsedAsColor(true);
    status = addAttribute( colour );
    CHECKRESULT_FAILURE( status, "Error adding colour attribute." );

    colourVar = numAttr.create ("colourVariance", "cv", MFnNumericData::kFloat, 0.0f, &status);
    CHECKRESULT_FAILURE( status, "Error creating colourVariance attribute" );
    numAttr.setMin(0.0);
    numAttr.setInternal( false );
    numAttr.setHidden( false );
    numAttr.setKeyable( true );
    status = addAttribute( colourVar );
    CHECKRESULT_FAILURE( status, "Error adding colourVariance attribute." );

    alpha = numAttr.create ("alpha", "t", MFnNumericData::kFloat, 1.0f, &status);
    CHECKRESULT_FAILURE( status, "Error creating alpha attribute" );
    numAttr.setMin(0.0);
    numAttr.setMax(1.0);
    numAttr.setInternal( false );
    numAttr.setHidden( false );
    numAttr.setKeyable( true );
    status = addAttribute( alpha );
    CHECKRESULT_FAILURE( status, "Error adding alpha attribute." );

    alphaVar = numAttr.create ("alphaVariance", "tv", MFnNumericData::kFloat, 0.0f, &status);
    CHECKRESULT_FAILURE( status, "Error creating alphaVariance attribute" );
    numAttr.setMin(0.0);
    numAttr.setMax(1.0);
    numAttr.setInternal( false );
    numAttr.setHidden( false );
    numAttr.setKeyable( true );
    status = addAttribute( alphaVar );
    CHECKRESULT_FAILURE( status, "Error adding alphaVariance attribute." );
   
    size = numAttr.create ("size", "sze", MFnNumericData::kFloat, 1.0f, &status);
    CHECKRESULT_FAILURE( status, "Error creating size attribute" );
    numAttr.setMin(0.0);
    numAttr.setInternal( false );
    numAttr.setHidden( false );
    numAttr.setKeyable( true );
    status = addAttribute( size );
    CHECKRESULT_FAILURE( status, "Error adding size attribute." );

    sizeVar = numAttr.create ("sizeVariance", "szv", MFnNumericData::kFloat, 0.0f, &status);
    CHECKRESULT_FAILURE( status, "Error creating sizeVariance attribute" );
    numAttr.setMin(0.0);
    numAttr.setInternal( false );
    numAttr.setHidden( false );
    numAttr.setKeyable( true );
    status = addAttribute( sizeVar );
    CHECKRESULT_FAILURE( status, "Error adding sizeVariance attribute." );

    spin = numAttr.create ("spin", "spn", MFnNumericData::kFloat, 0.0f, &status);
    CHECKRESULT_FAILURE( status, "Error creating spin attribute" );
    numAttr.setMin(-360.0);
    numAttr.setMax(360.0);
    numAttr.setInternal( false );
    numAttr.setHidden( false );
    numAttr.setKeyable( true );
    status = addAttribute( spin );
    CHECKRESULT_FAILURE( status, "Error adding spin attribute." );

    spinVar = numAttr.create ("spinVariance", "spv", MFnNumericData::kFloat, 0.0f, &status);
    CHECKRESULT_FAILURE( status, "Error creating spinVariance attribute" );
    numAttr.setMin(-360.0);
    numAttr.setMax(360.0);
    numAttr.setInternal( false );
    numAttr.setHidden( false );
    numAttr.setKeyable( true );
    status = addAttribute( spinVar );
    CHECKRESULT_FAILURE( status, "Error adding spinVariance attribute." );

    return status;
}

p3dEmitterBlendStateAttr* p3dEmitterBlendStateNode::getAttributes()
{
    MObject this_object = thisMObject();
    MPlug plug( this_object, particleType );           plug.getValue( attributes->particleType );
    plug.setAttribute( generatorType );                plug.getValue( attributes->generatorType );
    plug.setAttribute( particleAngleType );            plug.getValue( attributes->particleAngleType );
    plug.setAttribute( infiniteLife );                 plug.getValue( attributes->infiniteLife );
    return attributes;
}  

/////////////////////////////////////////////////////////////////////
// p3dEmitterShape IMPLEMENTATION
/////////////////////////////////////////////////////////////////////
MTypeId p3dEmitterShape::id(P3D_EMITTER_ID);
MObject p3dEmitterShape::parent;
MObject p3dEmitterShape::zTest;
MObject p3dEmitterShape::zWrite;
MObject p3dEmitterShape::fog;
MObject p3dEmitterShape::particleType;
MObject p3dEmitterShape::generatorType;
MObject p3dEmitterShape::particleAngleType;
MObject p3dEmitterShape::particleAngle;
MObject p3dEmitterShape::horizSpread;
MObject p3dEmitterShape::vertSpread;
MObject p3dEmitterShape::radialVar;
MObject p3dEmitterShape::length;
MObject p3dEmitterShape::height;
MObject p3dEmitterShape::width;
MObject p3dEmitterShape::emissionRate;
MObject p3dEmitterShape::maxNumParticles;
MObject p3dEmitterShape::numParticles;
MObject p3dEmitterShape::infiniteLife;
MObject p3dEmitterShape::life;
MObject p3dEmitterShape::lifeVar;
MObject p3dEmitterShape::speed;
MObject p3dEmitterShape::speedVar;
MObject p3dEmitterShape::speedOL;
MObject p3dEmitterShape::weight;
MObject p3dEmitterShape::weightVar;
MObject p3dEmitterShape::weightOL;
MObject p3dEmitterShape::gravity;
MObject p3dEmitterShape::drag;
MObject p3dEmitterShape::rotationalCohesion;
MObject p3dEmitterShape::translationalCohesion;
MObject p3dEmitterShape::red;
MObject p3dEmitterShape::green;
MObject p3dEmitterShape::blue;
MObject p3dEmitterShape::colour;
MObject p3dEmitterShape::colourVar;
MObject p3dEmitterShape::redOL;
MObject p3dEmitterShape::greenOL;
MObject p3dEmitterShape::blueOL;
MObject p3dEmitterShape::colourOL;
MObject p3dEmitterShape::alpha;
MObject p3dEmitterShape::alphaVar;
MObject p3dEmitterShape::alphaOL;
MObject p3dEmitterShape::size;
MObject p3dEmitterShape::sizeVar;
MObject p3dEmitterShape::sizeOL;
MObject p3dEmitterShape::spin;
MObject p3dEmitterShape::spinVar;
MObject p3dEmitterShape::spinOL;
MObject p3dEmitterShape::textureAnimMode;
MObject p3dEmitterShape::texFrameRate;
MObject p3dEmitterShape::texFrameOL;
MObject p3dEmitterShape::numTexFrames;
MObject p3dEmitterShape::displaySize;
MObject p3dEmitterShape::origSize;
//attributes no longer used but must be maintained for old art
MObject p3dEmitterShape::particleMode;
MObject p3dEmitterShape::animTexture; 

MCallbackId p3dEmitterShape::tagCallbackId;

p3dEmitterShape::p3dEmitterShape()
{
    attributes = new p3dEmitterAttr;
    attributes->particleType = SPRITE_PARTICLE;
    attributes->generatorType = POINT_GENERATOR;
    attributes->particleAngleType = SPECIFIED_ANGLE;
    attributes->infiniteLife = 0;
    attributes->textureAnimMode = NO_ANIMATION;
} 
 
p3dEmitterShape::~p3dEmitterShape()
{
    delete attributes;
}

void p3dEmitterShape::postConstructor()
{ 
    p3dBaseShape::postConstructor();
    MFnDagNode dagNodeFn(thisMObject());
    dagNodeFn.findPlug(displaySize).setValue((float)MDistance::uiToInternal(1.0));   
}

bool p3dEmitterShape::getInternalValue( const MPlug& plug, MDataHandle& datahandle )
{
    bool isOk = true;
    MObject this_object = thisMObject();  
    MFnDagNode dagNodeFn(this_object);

    if ( plug == particleType ) 
    {
        MPlug spinPlug = dagNodeFn.findPlug("spin");
        MPlug spinVarPlug = dagNodeFn.findPlug("spinVariance");
        MPlug spinOLPlug = dagNodeFn.findPlug("spinOverLife");
        MPlug sizePlug = dagNodeFn.findPlug("size");
        MPlug sizeVarPlug = dagNodeFn.findPlug("sizeVariance");
        MPlug sizeOLPlug = dagNodeFn.findPlug("sizeOverLife");
        MPlug texModePlug = dagNodeFn.findPlug("textureAnimationMode");
        MPlug texRatePlug = dagNodeFn.findPlug("textureFrameRate");
        MPlug numTexFramePlug = dagNodeFn.findPlug("numberOfTextureFrames");
        MPlug particleAnglePlug = dagNodeFn.findPlug("particleAngle");
        MPlug particleAngleTypePlug = dagNodeFn.findPlug("particleAngleType");
        datahandle.set( attributes->particleType );
        switch (attributes->particleType)
        {
        case SPRITE_PARTICLE:
            {
                spinPlug.setLocked(false);
                spinVarPlug.setLocked(false);
                spinOLPlug.setLocked(false);
                sizePlug.setLocked(false);
                sizeVarPlug.setLocked(false);
                sizeOLPlug.setLocked(false);
                texModePlug.setLocked(false);
                texRatePlug.setLocked(false);
                numTexFramePlug.setLocked(false);
                particleAnglePlug.setLocked(false);
                particleAngleTypePlug.setLocked(false);
                break;
            }
        }
        isOk = true;
    }
    else if ( plug == generatorType ) 
    { 
        MDagPath dagPath;
        dagNodeFn.getPath(dagPath);
        MFnDagNode transformNodeFn(dagPath.transform());
        MPlug sxPlug = transformNodeFn.findPlug("sx");
        MPlug syPlug = transformNodeFn.findPlug("sy");
        MPlug szPlug = transformNodeFn.findPlug("sz");
        MPlug horizPlug = dagNodeFn.findPlug("horizEmissionSpread");
        MPlug vertPlug = dagNodeFn.findPlug("vertEmissionSpread");
        MPlug radialPlug = dagNodeFn.findPlug("radialVariance");
        MPlug lengthPlug = dagNodeFn.findPlug("length");
        MPlug heightPlug = dagNodeFn.findPlug("height");
        MPlug widthPlug = dagNodeFn.findPlug("width");
        datahandle.set( attributes->generatorType );
        switch (attributes->generatorType)
        {
        case POINT_GENERATOR:
            {
                sxPlug.setLocked(true);
                syPlug.setLocked(true);
                szPlug.setLocked(true);
                horizPlug.setLocked(false);
                vertPlug.setLocked(false);
                radialPlug.setLocked(false);
                lengthPlug.setLocked(true);
                heightPlug.setLocked(true);
                widthPlug.setLocked(true);
                break;
            }
        case PLANE_GENERATOR:
            {
                sxPlug.setLocked(false);
                syPlug.setLocked(true);
                szPlug.setLocked(false);
                horizPlug.setLocked(false);
                vertPlug.setLocked(false);
                radialPlug.setLocked(false);
                lengthPlug.setLocked(false);
                heightPlug.setLocked(true);
                widthPlug.setLocked(false);
                break;
            }
        case SPHERE_GENERATOR:
            {
                sxPlug.setLocked(true);
                syPlug.setLocked(false);
                szPlug.setLocked(true);
                horizPlug.setLocked(true);
                vertPlug.setLocked(true);
                radialPlug.setLocked(false);
                lengthPlug.setLocked(true);
                heightPlug.setLocked(false);
                widthPlug.setLocked(true);
                break;
            }
        }   
        isOk = true;
    }
    else if ( plug == particleAngleType )
    {
        MPlug anglePlug = dagNodeFn.findPlug("particleAngle");
        MPlug spinPlug = dagNodeFn.findPlug("spin");
        MPlug spinVarPlug = dagNodeFn.findPlug("spinVariance");
        switch (attributes->particleType)
        {
        case SPRITE_PARTICLE:
            {
                datahandle.set( attributes->particleAngleType );
                switch (attributes->particleAngleType)
                {
                case SPECIFIED_ANGLE:
                    {
                        anglePlug.setLocked(false);
                        spinPlug.setLocked(false);
                        spinVarPlug.setLocked(false);
                        break;
                    }
                case RANDOM_ANGLE:
                    {
                        anglePlug.setLocked(true);
                        spinPlug.setLocked(false);
                        spinVarPlug.setLocked(false);
                        break;
                    }
                case ALIGNED_TO_MOTION:
                    {
                        anglePlug.setLocked(false);
                        spinPlug.setLocked(true);
                        spinVarPlug.setLocked(true);
                        break;
                    }
                }
                break;
            }
        }
        isOk = true;
    }
    else if ( plug == infiniteLife )
    {
        MPlug lifePlug = dagNodeFn.findPlug("life");
        MPlug lifeVarPlug = dagNodeFn.findPlug("lifeVariance");
        MPlug speedOLPlug = dagNodeFn.findPlug("speedOverLife");
        MPlug weightOLPlug = dagNodeFn.findPlug("weightOverLife");
        MPlug colourOLPlug = dagNodeFn.findPlug("colourOverLife");
        MPlug alphaOLPlug = dagNodeFn.findPlug("alphaOverLife");
        MPlug spinOLPlug = dagNodeFn.findPlug("spinOverLife");
        MPlug sizeOLPlug = dagNodeFn.findPlug("sizeOverLife");
        datahandle.set( attributes->infiniteLife );
        if (attributes->infiniteLife==0)
        {
            lifePlug.setLocked(false);
            lifeVarPlug.setLocked(false);
            speedOLPlug.setLocked(false);
            weightOLPlug.setLocked(false);
            switch (attributes->particleType)
            {
            case SPRITE_PARTICLE:
                {
                    colourOLPlug.setLocked(false);
                    alphaOLPlug.setLocked(false);
                    spinOLPlug.setLocked(false);
                    sizeOLPlug.setLocked(false);
                    break;
                }
            }
        }
        else
        {
            lifePlug.setLocked(true);
            lifeVarPlug.setLocked(true);
            speedOLPlug.setLocked(true);
            weightOLPlug.setLocked(true);
            switch (attributes->particleType)
            {
            case SPRITE_PARTICLE:
                {
                    colourOLPlug.setLocked(true);
                    alphaOLPlug.setLocked(true);
                    spinOLPlug.setLocked(true);
                    sizeOLPlug.setLocked(true);
                    break;
                }
            }
        }
        isOk = true;
    }
    else if ( plug == textureAnimMode )
    {
        switch (attributes->particleType)
        {
        case SPRITE_PARTICLE:
            {
                MPlug texFrameRatePlug = dagNodeFn.findPlug("textureFrameRate");
                MPlug texFrameOLPlug = dagNodeFn.findPlug("textureFrameOverLife");
                datahandle.set( attributes->textureAnimMode );
                switch (attributes->textureAnimMode)
                {
                case NO_ANIMATION:
                    {
                        texFrameOLPlug.setLocked(true);
                        texFrameRatePlug.setLocked(true);
                        break;
                    }
                case LINEAR_ANIMATION:
                    {
                        texFrameOLPlug.setLocked(true);
                        texFrameRatePlug.setLocked(false);
                        break;
                    }
                case SPECIFIED_ANIMATION:
                    {
                        texFrameOLPlug.setLocked(false);
                        texFrameRatePlug.setLocked(true);
                        break;
                    }
                case RANDOM_ANIMATION:
                    {
                        texFrameOLPlug.setLocked(true);
                        texFrameRatePlug.setLocked(false);
                        break;
                    }
                }
                break;
            }
        }
    }
    else 
    {
        isOk = MPxNode::getInternalValue( plug, datahandle );
    }
    return isOk;
}

bool p3dEmitterShape::setInternalValue( const MPlug& plug, const MDataHandle& datahandle )
{
    bool isOk = true;

    if ( plug == particleType ) 
    {
        attributes->particleType = datahandle.asShort();
        isOk = true;
    }
    else if ( plug == generatorType ) 
    {
        attributes->generatorType = datahandle.asShort();
        isOk = true;
    }
    else if ( plug == particleAngleType ) 
    {
        attributes->particleAngleType = datahandle.asShort();
        isOk = true;
    }
    else if ( plug == infiniteLife ) 
    {
        attributes->infiniteLife = datahandle.asShort();
        isOk = true;
    }
    else if ( plug == textureAnimMode ) 
    {
        attributes->textureAnimMode = datahandle.asShort();
        isOk = true;
    }
    else 
    {
        isOk = MPxNode::setInternalValue( plug, datahandle );
    }
    return isOk;
}

void* p3dEmitterShape::creator()
{
    return new p3dEmitterShape();
}

MStatus p3dEmitterShape::initialize()
{ 
    MStatus             status;
    MFnEnumAttribute    enumAttr;
    MFnNumericAttribute numAttr;
    MFnMessageAttribute  messageAttr;

    parent = messageAttr.create("parent", "par", &status);
    CHECKRESULT_FAILURE( status, "Error creating parent attribute" );
        messageAttr.setHidden( true );
    status = addAttribute( parent );
    CHECKRESULT_FAILURE( status, "Error adding parent attribute" );

    zTest = enumAttr.create( "enableZTest", "ezt", 1, &status);
    CHECKRESULT_FAILURE( status, "Error creating zTest attribute" );
        enumAttr.addField( "no", 0 );
        enumAttr.addField( "yes", 1 );
    enumAttr.setInternal( false );
    enumAttr.setHidden( false );
    enumAttr.setKeyable( true );
    status = addAttribute( zTest );
    CHECKRESULT_FAILURE( status, "Error adding zTest attribute." );

    zWrite = enumAttr.create( "enableZWrite", "ezw", 0, &status);
    CHECKRESULT_FAILURE( status, "Error creating zWrite attribute" );
        enumAttr.addField( "no", 0 );
        enumAttr.addField( "yes", 1 );
    enumAttr.setInternal( false );
    enumAttr.setHidden( false );
    enumAttr.setKeyable( true );
    status = addAttribute( zWrite );
    CHECKRESULT_FAILURE( status, "Error adding zWrite attribute." );

    fog = enumAttr.create( "enableFog", "efg", 0, &status);
    CHECKRESULT_FAILURE( status, "Error creating fog attribute" );
        enumAttr.addField( "no", 0 );
        enumAttr.addField( "yes", 1 );
    enumAttr.setInternal( false );
    enumAttr.setHidden( false );
    enumAttr.setKeyable( true );
    status = addAttribute( fog );
    CHECKRESULT_FAILURE( status, "Error adding fog attribute." );

    particleType = enumAttr.create ("particleType", "pt", 0, &status);
    CHECKRESULT_FAILURE( status, "Error creating particleType attribute" );
        enumAttr.addField( "sprites", 0 );
    enumAttr.setInternal( true );
    enumAttr.setStorable( true );
    enumAttr.setHidden( false );
    enumAttr.setKeyable( true );
    status = addAttribute( particleType );
    CHECKRESULT_FAILURE( status, "Error adding particleType attribute." );

    generatorType = enumAttr.create ("generatorType", "et", 0, &status);
    CHECKRESULT_FAILURE( status, "Error creating generatorType attribute" );
        enumAttr.addField( "point", 0 );
        enumAttr.addField( "plane", 1 );
        enumAttr.addField( "sphere", 2 );
    enumAttr.setInternal( true );
    enumAttr.setHidden( false );
    enumAttr.setKeyable( true );
    status = addAttribute( generatorType );
    CHECKRESULT_FAILURE( status, "Error adding generatorType attribute." );

    particleAngleType = enumAttr.create ("particleAngleType", "pat", 0, &status);
    CHECKRESULT_FAILURE( status, "Error creating particleAngleType attribute" );
        enumAttr.addField( "specified", 0 );
        enumAttr.addField( "random", 1 );
        enumAttr.addField( "aligned to motion", 2 );
    enumAttr.setInternal( true );
    enumAttr.setHidden( false );
    enumAttr.setKeyable( true );
    status = addAttribute( particleAngleType );
    CHECKRESULT_FAILURE( status, "Error adding particleAngleType attribute." );

    particleAngle = numAttr.create ("particleAngle", "pa", MFnNumericData::kFloat, 0.0f, &status);
    CHECKRESULT_FAILURE( status, "Error creating particleAngle attribute" );
    numAttr.setMin(-360.0);
    numAttr.setMax(360.0);
    numAttr.setInternal( false );
    numAttr.setHidden( false );
    numAttr.setKeyable( true );
    status = addAttribute( particleAngle );
    CHECKRESULT_FAILURE( status, "Error adding particleAngle attribute." );
    
    horizSpread = numAttr.create ("horizEmissionSpread", "sp", MFnNumericData::kFloat, 90.0f, &status);
    CHECKRESULT_FAILURE( status, "Error creating horizEmissionSpread attribute" );
    numAttr.setMin(0.0);
    numAttr.setMax(180.0);
    numAttr.setInternal( false );
    numAttr.setHidden( false );
    numAttr.setKeyable( true );
    status = addAttribute( horizSpread );
    CHECKRESULT_FAILURE( status, "Error adding horizEmissionSpread attribute." );

    vertSpread = numAttr.create ("vertEmissionSpread", "vsp", MFnNumericData::kFloat, 90.0f, &status);
    CHECKRESULT_FAILURE( status, "Error creating vertEmissionSpread attribute" );
    numAttr.setMin(0.0);
    numAttr.setMax(180.0);
    numAttr.setInternal( false );
    numAttr.setHidden( false );
    numAttr.setKeyable( true );
    status = addAttribute( vertSpread );
    CHECKRESULT_FAILURE( status, "Error adding vertEmissionSpread attribute." );

    radialVar = numAttr.create ("radialVariance", "rdv", MFnNumericData::kFloat, 0.0f, &status);
    CHECKRESULT_FAILURE( status, "Error creating radialVariance attribute" );
    numAttr.setMin(0.0);
    numAttr.setInternal( false );
    numAttr.setHidden( false );
    numAttr.setKeyable( true );
    status = addAttribute( radialVar );
    CHECKRESULT_FAILURE( status, "Error adding radialVariance attribute." );

    length = numAttr.create ("length", "lth", MFnNumericData::kFloat, 1.0f, &status);
    CHECKRESULT_FAILURE( status, "Error creating length attribute" );
    numAttr.setMin(0.0);
    numAttr.setInternal( false );
    numAttr.setHidden( false );
    numAttr.setKeyable( true );
    status = addAttribute( length );
    CHECKRESULT_FAILURE( status, "Error adding length attribute." );

    height = numAttr.create ("height", "hgt", MFnNumericData::kFloat, 1.0f, &status);
    CHECKRESULT_FAILURE( status, "Error creating height attribute" );
    numAttr.setMin(0.0);
    numAttr.setInternal( false );
    numAttr.setHidden( false );
    numAttr.setKeyable( true );
    status = addAttribute( height );
    CHECKRESULT_FAILURE( status, "Error adding height attribute." );

    width = numAttr.create ("width", "wdt", MFnNumericData::kFloat, 1.0f, &status);
    CHECKRESULT_FAILURE( status, "Error creating width attribute" );
    numAttr.setMin(0.0);
    numAttr.setInternal( false );
    numAttr.setHidden( false );
    numAttr.setKeyable( true );
    status = addAttribute( width );
    CHECKRESULT_FAILURE( status, "Error adding width attribute." );
  
    emissionRate = numAttr.create ("emissionRate", "er", MFnNumericData::kFloat, 1.0f, &status);
    CHECKRESULT_FAILURE( status, "Error creating emissionRate attribute" );
    numAttr.setMin(0.0);
    numAttr.setInternal( false );
    numAttr.setHidden( false );
    numAttr.setKeyable( true );
    status = addAttribute( emissionRate );
    CHECKRESULT_FAILURE( status, "Error adding emissionRate attribute." );

    maxNumParticles = numAttr.create ("maxNumberOfParticles", "mnp", MFnNumericData::kShort, 100, &status);
    CHECKRESULT_FAILURE( status, "Error creating maxNumberOfParticles attribute" );
    numAttr.setMin(0.0);
    numAttr.setInternal( false );
    numAttr.setHidden( false );
    numAttr.setKeyable( true );
    status = addAttribute( maxNumParticles );
    CHECKRESULT_FAILURE( status, "Error adding numberOfParticles attribute." );

    numParticles = numAttr.create ("numberOfParticles", "np", MFnNumericData::kShort, 100, &status);
    CHECKRESULT_FAILURE( status, "Error creating numberOfParticles attribute" );
    numAttr.setMin(0.0);
    numAttr.setInternal( false );
    numAttr.setHidden( false );
    numAttr.setKeyable( true );
    status = addAttribute( numParticles );
    CHECKRESULT_FAILURE( status, "Error adding numberOfParticles attribute." );
    
    infiniteLife = enumAttr.create ("infiniteLife", "ifl", 0, &status);
    CHECKRESULT_FAILURE( status, "Error creating infiniteLife attribute" );
        enumAttr.addField( "no", 0 );
        enumAttr.addField( "yes", 1 );
    enumAttr.setInternal( true );
    enumAttr.setHidden( false );
    enumAttr.setKeyable( true );
    status = addAttribute( infiniteLife );
    CHECKRESULT_FAILURE( status, "Error adding infiniteLife attribute." );

    life = numAttr.create ("life", "l", MFnNumericData::kFloat, 30.0f, &status);
    CHECKRESULT_FAILURE( status, "Error creating life attribute" );
    numAttr.setMin(0.0);
    numAttr.setInternal( false );
    numAttr.setHidden( false );
    numAttr.setKeyable( true );
    status = addAttribute( life );
    CHECKRESULT_FAILURE( status, "Error adding life attribute." );

    lifeVar = numAttr.create ("lifeVariance", "lv", MFnNumericData::kFloat, 0.0f, &status);
    CHECKRESULT_FAILURE( status, "Error creating lifeVariance attribute" );
    numAttr.setMin(0.0);
    numAttr.setInternal( false );
    numAttr.setHidden( false );
    numAttr.setKeyable( true );
    status = addAttribute( lifeVar );
    CHECKRESULT_FAILURE( status, "Error adding lifeVariance attribute." );

    speed = numAttr.create ("speed", "spd", MFnNumericData::kFloat, 1.0f, &status);
    CHECKRESULT_FAILURE( status, "Error creating speed attribute" );
    numAttr.setInternal( false );
    numAttr.setHidden( false );
    numAttr.setKeyable( true );
    status = addAttribute( speed );
    CHECKRESULT_FAILURE( status, "Error adding speed attribute." );

    speedVar = numAttr.create ("speedVariance", "sdv", MFnNumericData::kFloat, 0.0f, &status);
    CHECKRESULT_FAILURE( status, "Error creating speedVariance attribute" );
    numAttr.setMin(0.0);
    numAttr.setInternal( false );
    numAttr.setHidden( false );
    numAttr.setKeyable( true );
    status = addAttribute( speedVar );
    CHECKRESULT_FAILURE( status, "Error adding speedVariance attribute." );

    speedOL = numAttr.create ("speedOverLife", "sdl", MFnNumericData::kFloat, 1.0f, &status);
    CHECKRESULT_FAILURE( status, "Error creating speedOverLife attribute" );
    numAttr.setInternal( false );
    numAttr.setHidden( false );
    numAttr.setKeyable( true );
    status = addAttribute( speedOL );
    CHECKRESULT_FAILURE( status, "Error adding speedOverLife attribute." );

    weight = numAttr.create ("weight", "w", MFnNumericData::kFloat, 1.0f, &status);
    CHECKRESULT_FAILURE( status, "Error creating weight attribute" );
    numAttr.setInternal( false );
    numAttr.setHidden( false );
    numAttr.setKeyable( true );
    status = addAttribute( weight );
    CHECKRESULT_FAILURE( status, "Error adding weight attribute." );

    weightVar = numAttr.create ("weightVariance", "wv", MFnNumericData::kFloat, 0.0f, &status);
    CHECKRESULT_FAILURE( status, "Error creating weightVariance attribute" );
    numAttr.setInternal( false );
    numAttr.setHidden( false );
    numAttr.setKeyable( true );
    status = addAttribute( weightVar );
    CHECKRESULT_FAILURE( status, "Error adding weightVariance attribute." );

    weightOL = numAttr.create ("weightOverLife", "wol", MFnNumericData::kFloat, 1.0f, &status);
    CHECKRESULT_FAILURE( status, "Error creating weightOverLife attribute" );
    numAttr.setInternal( false );
    numAttr.setHidden( false );
    numAttr.setKeyable( true );
    status = addAttribute( weightOL );
    CHECKRESULT_FAILURE( status, "Error adding weightOverLife attribute." );

    gravity = numAttr.create ("gravity", "grv", MFnNumericData::kFloat, 0.0f, &status);
    CHECKRESULT_FAILURE( status, "Error creating gravity attribute" );
    numAttr.setInternal( false );
    numAttr.setHidden( false );
    numAttr.setKeyable( true );
    status = addAttribute( gravity );
    CHECKRESULT_FAILURE( status, "Error adding gravity attribute." );

    drag = numAttr.create ("drag", "drg", MFnNumericData::kFloat, 0.0f, &status);
    CHECKRESULT_FAILURE( status, "Error creating drag attribute" );
    numAttr.setMin(0.0);
    numAttr.setInternal( false );
    numAttr.setHidden( false );
    numAttr.setKeyable( true );
    status = addAttribute( drag );
    CHECKRESULT_FAILURE( status, "Error adding drag attribute." );

    rotationalCohesion = numAttr.create ("rotationalCohesion", "roc", MFnNumericData::kFloat, 0.0f, &status);
    CHECKRESULT_FAILURE( status, "Error creating rotationalCohesion attribute" );
    numAttr.setMin(0.0);
    numAttr.setMax(1.0);
    numAttr.setInternal( false );
    numAttr.setHidden( false );
    numAttr.setKeyable( true );
    status = addAttribute( rotationalCohesion );
    CHECKRESULT_FAILURE( status, "Error adding rotationalCohesion attribute." );

    translationalCohesion = numAttr.create ("translationalCohesion", "trc", MFnNumericData::kFloat, 0.0f, &status);
    CHECKRESULT_FAILURE( status, "Error creating translationalCohesion attribute" );
    numAttr.setMin(0.0);
    numAttr.setMax(1.0);
    numAttr.setInternal( false );
    numAttr.setHidden( false );
    numAttr.setKeyable( true );
    status = addAttribute( translationalCohesion );
    CHECKRESULT_FAILURE( status, "Error adding translationalCohesion attribute." );

    red = numAttr.create ("red", "r", MFnNumericData::kFloat, 1.0f, &status);
    CHECKRESULT_FAILURE( status, "Error creating red attribute" );
        numAttr.setMin(0.0);
        numAttr.setMax(1.0);
        numAttr.setHidden( false );
        numAttr.setKeyable( true );
    green = numAttr.create ("green", "g", MFnNumericData::kFloat, 1.0f, &status);
    CHECKRESULT_FAILURE( status, "Error creating green attribute" );
        numAttr.setMin(0.0);
        numAttr.setMax(1.0);
        numAttr.setHidden( false );
        numAttr.setKeyable( true );
    blue = numAttr.create ("blue", "b", MFnNumericData::kFloat, 1.0f, &status);
    CHECKRESULT_FAILURE( status, "Error creating blue attribute" );
        numAttr.setMin(0.0);
        numAttr.setMax(1.0);
        numAttr.setHidden( false );
        numAttr.setKeyable( true );
    colour = numAttr.create( "colour", "clr", red, green, blue, &status);
    CHECKRESULT_FAILURE( status, "Error creating colour attribute" );
        numAttr.setKeyable( true );
        numAttr.setUsedAsColor(true);
    status = addAttribute( colour );
    CHECKRESULT_FAILURE( status, "Error adding colour attribute." );

    colourVar = numAttr.create ("colourVariance", "cv", MFnNumericData::kFloat, 0.0f, &status);
    CHECKRESULT_FAILURE( status, "Error creating colourVariance attribute" );
    numAttr.setMin(0.0);
    numAttr.setInternal( false );
    numAttr.setHidden( false );
    numAttr.setKeyable( true );
    status = addAttribute( colourVar );
    CHECKRESULT_FAILURE( status, "Error adding colourVariance attribute." );

    redOL = numAttr.create ("redOverLife", "rol", MFnNumericData::kFloat, 1.0f, &status);
    CHECKRESULT_FAILURE( status, "Error creating redOverLife attribute" );
        numAttr.setMin(0.0);
        numAttr.setMax(1.0);
        numAttr.setHidden( false );
        numAttr.setKeyable( true );
    greenOL = numAttr.create ("greenOverLife", "gol", MFnNumericData::kFloat, 1.0f, &status);
    CHECKRESULT_FAILURE( status, "Error creating greenOverLife attribute" );
        numAttr.setMin(0.0);
        numAttr.setMax(1.0);
        numAttr.setHidden( false );
        numAttr.setKeyable( true );
    blueOL = numAttr.create ("blueOverLife", "bol", MFnNumericData::kFloat, 1.0f, &status);
    CHECKRESULT_FAILURE( status, "Error creating blueOverLife attribute" );
        numAttr.setMin(0.0);
        numAttr.setMax(1.0);
        numAttr.setHidden( false );
        numAttr.setKeyable( true );
    colourOL = numAttr.create( "colourOverLife", "col", redOL, greenOL, blueOL, &status );
    CHECKRESULT_FAILURE( status, "Error creating colourOverLife attribute" );
        numAttr.setKeyable( true );
        numAttr.setUsedAsColor(true);
    status = addAttribute( colourOL );
    CHECKRESULT_FAILURE( status, "Error adding colour attribute." );

    alpha = numAttr.create ("alpha", "t", MFnNumericData::kFloat, 1.0f, &status);
    CHECKRESULT_FAILURE( status, "Error creating alpha attribute" );
    numAttr.setMin(0.0);
    numAttr.setMax(1.0);
    numAttr.setInternal( false );
    numAttr.setHidden( false );
    numAttr.setKeyable( true );
    status = addAttribute( alpha );
    CHECKRESULT_FAILURE( status, "Error adding alpha attribute." );

    alphaVar = numAttr.create ("alphaVariance", "tv", MFnNumericData::kFloat, 0.0f, &status);
    CHECKRESULT_FAILURE( status, "Error creating alphaVariance attribute" );
    numAttr.setMin(0.0);
    numAttr.setMax(1.0);
    numAttr.setInternal( false );
    numAttr.setHidden( false );
    numAttr.setKeyable( true );
    status = addAttribute( alphaVar );
    CHECKRESULT_FAILURE( status, "Error adding alphaVariance attribute." );

    alphaOL = numAttr.create ("alphaOverLife", "tol", MFnNumericData::kFloat, 1.0f, &status);
    CHECKRESULT_FAILURE( status, "Error creating alphaOverLife attribute" );
    numAttr.setMin(0.0);
    numAttr.setMax(1.0);
    numAttr.setInternal( false );
    numAttr.setHidden( false );
    numAttr.setKeyable( true );
    status = addAttribute( alphaOL );
    CHECKRESULT_FAILURE( status, "Error adding alphaOverLife attribute." );

    size = numAttr.create ("size", "sze", MFnNumericData::kFloat, 1.0f, &status);
    CHECKRESULT_FAILURE( status, "Error creating size attribute" );
    numAttr.setMin(0.0);
    numAttr.setInternal( false );
    numAttr.setHidden( false );
    numAttr.setKeyable( true );
    status = addAttribute( size );
    CHECKRESULT_FAILURE( status, "Error adding size attribute." );

    sizeVar = numAttr.create ("sizeVariance", "szv", MFnNumericData::kFloat, 0.0f, &status);
    CHECKRESULT_FAILURE( status, "Error creating sizeVariance attribute" );
    numAttr.setMin(0.0);
    numAttr.setInternal( false );
    numAttr.setHidden( false );
    numAttr.setKeyable( true );
    status = addAttribute( sizeVar );
    CHECKRESULT_FAILURE( status, "Error adding sizeVariance attribute." );

    sizeOL = numAttr.create ("sizeOverLife", "szl", MFnNumericData::kFloat, 1.0f, &status);
    CHECKRESULT_FAILURE( status, "Error creating sizeOverLife attribute" );
    numAttr.setMin(0.0);
    numAttr.setInternal( false );
    numAttr.setHidden( false );
    numAttr.setKeyable( true );
    status = addAttribute( sizeOL );
    CHECKRESULT_FAILURE( status, "Error adding sizeOverLife attribute." );

    spin = numAttr.create ("spin", "spn", MFnNumericData::kFloat, 0.0f, &status);
    CHECKRESULT_FAILURE( status, "Error creating spin attribute" );
    numAttr.setMin(-360.0);
    numAttr.setMax(360.0);
    numAttr.setInternal( false );
    numAttr.setHidden( false );
    numAttr.setKeyable( true );
    status = addAttribute( spin );
    CHECKRESULT_FAILURE( status, "Error adding spin attribute." );

    spinVar = numAttr.create ("spinVariance", "spv", MFnNumericData::kFloat, 0.0f, &status);
    CHECKRESULT_FAILURE( status, "Error creating spinVariance attribute" );
    numAttr.setMin(-360.0);
    numAttr.setMax(360.0);
    numAttr.setInternal( false );
    numAttr.setHidden( false );
    numAttr.setKeyable( true );
    status = addAttribute( spinVar );
    CHECKRESULT_FAILURE( status, "Error adding spinVariance attribute." );

    spinOL = numAttr.create ("spinOverLife", "spl", MFnNumericData::kFloat, 1.0f, &status);
    CHECKRESULT_FAILURE( status, "Error creating spinOverLife attribute" );
    numAttr.setInternal( false );
    numAttr.setHidden( false );
    numAttr.setKeyable( true );
    status = addAttribute( spinOL );
    CHECKRESULT_FAILURE( status, "Error adding spinOverLife attribute." );

    textureAnimMode = enumAttr.create ("textureAnimationMode", "tam", 0, &status);
    CHECKRESULT_FAILURE( status, "Error creating textureAnimationMode attribute" );
        enumAttr.addField( "none", 0 );
        enumAttr.addField( "linear", 1 );
        enumAttr.addField( "specified", 2 );
        enumAttr.addField( "random", 3 );
    enumAttr.setInternal( true );
    enumAttr.setHidden( false );
    enumAttr.setKeyable( true );
    status = addAttribute( textureAnimMode );
    CHECKRESULT_FAILURE( status, "Error adding textureAnimationMode attribute." );

    texFrameRate = numAttr.create ("textureFrameRate", "tfr", MFnNumericData::kShort, 1, &status);
    CHECKRESULT_FAILURE( status, "Error creating textureFrameRate attribute" );
    numAttr.setMin(1);
    numAttr.setInternal( false );
    numAttr.setHidden( false );
    numAttr.setKeyable( true );
    status = addAttribute( texFrameRate );
    CHECKRESULT_FAILURE( status, "Error adding textureFrameRate attribute." );

    texFrameOL = numAttr.create ("textureFrameOverLife", "tfl", MFnNumericData::kShort, 1, &status);
    CHECKRESULT_FAILURE( status, "Error creating textureFrameOverLife attribute" );
    numAttr.setMin(1);
    numAttr.setInternal( false );
    numAttr.setHidden( false );
    numAttr.setKeyable( true );
    status = addAttribute( texFrameOL );
    CHECKRESULT_FAILURE( status, "Error adding textureFrameOverLife attribute." );

    numTexFrames = numAttr.create ("numberOfTextureFrames", "ntf", MFnNumericData::kShort, 1, &status);
    CHECKRESULT_FAILURE( status, "Error creating numberOfTextureFrames attribute" );
    numAttr.setMin(1);
    numAttr.setInternal( false );
    numAttr.setHidden( false );
    numAttr.setKeyable( true );
    status = addAttribute( numTexFrames );
    CHECKRESULT_FAILURE( status, "Error adding numberOfTextureFrames attribute." );
   
    displaySize = numAttr.create ("displaySize", "dis", MFnNumericData::kFloat, 1.0, &status);
    CHECKRESULT_FAILURE( status, "Error creating displaySize attribute" );
    numAttr.setMin(0.0);
    numAttr.setInternal( false );
    numAttr.setHidden( true );
    numAttr.setKeyable( true );
    status = addAttribute( displaySize );
    CHECKRESULT_FAILURE( status, "Error adding displaySize attribute." );
 
    //old attributes
    animTexture = enumAttr.create( "animateTexture", "at", 0, &status);
    CHECKRESULT_FAILURE( status, "Error creating animateTexture attribute" );
        enumAttr.addField( "no", 0 );
        enumAttr.addField( "yes", 1 );
    enumAttr.setInternal( true );
    enumAttr.setHidden( true );
    enumAttr.setKeyable( true );
    status = addAttribute( animTexture );
    CHECKRESULT_FAILURE( status, "Error adding animateTexture attribute." );

    particleMode = enumAttr.create( "particleMode", "ate", 0, &status);
    CHECKRESULT_FAILURE( status, "Error creating particleMode attribute" );
        enumAttr.addField( "normal", 0 );
        enumAttr.addField( "attached to emitter", 1 );
        enumAttr.addField( "apply real world physics", 2 );
    enumAttr.setInternal( true );
    enumAttr.setHidden( true );
    enumAttr.setKeyable( true );
    status = addAttribute( particleMode );
    CHECKRESULT_FAILURE( status, "Error adding particleMode attribute." );
    
    origSize = numAttr.create ("origSize", "os", MFnNumericData::kFloat, 1.0, &status);
    CHECKRESULT_FAILURE( status, "Error creating origSize attribute" );
    numAttr.setMin(0.0);
    numAttr.setInternal( false );
    numAttr.setHidden( true );
    numAttr.setKeyable( true );
    status = addAttribute( origSize );
    CHECKRESULT_FAILURE( status, "Error adding origSize attribute." );

    return status;
}

MBoundingBox p3dEmitterShape::boundingBox() const
{
    MBoundingBox  result; 
  
    MStatus status;
    MObject obj = thisMObject();

    float displaySizeValue;
    short generatorTypeValue;
    float halfLengthValue;
    float halfHeightValue;
    float halfWidthValue;
        
    MFnDagNode dagNodeFn(obj);
    MPlug plug;

    plug = dagNodeFn.findPlug(displaySize,&status);
    plug.getValue(displaySizeValue);
    plug = dagNodeFn.findPlug(generatorType,&status);
    plug.getValue(generatorTypeValue);
    plug = dagNodeFn.findPlug(length,&status);
    plug.getValue(halfLengthValue);
    plug = dagNodeFn.findPlug(height,&status);
    plug.getValue(halfHeightValue);
    plug = dagNodeFn.findPlug(width,&status);
    plug.getValue(halfWidthValue);
    halfLengthValue /= 2.0f;
    halfHeightValue /= 2.0f;
    halfWidthValue /= 2.0f;

    switch ( generatorTypeValue )
    {
    case POINT_GENERATOR :
        {
            result.expand( MPoint(displaySizeValue,displaySizeValue,displaySizeValue) );
            result.expand( MPoint(-displaySizeValue,-displaySizeValue,-displaySizeValue) );
            break;
        }
    case PLANE_GENERATOR :
        {
            result.expand( MPoint(displaySizeValue*halfWidthValue,displaySizeValue,displaySizeValue*halfLengthValue) );
            result.expand( MPoint(-displaySizeValue*halfWidthValue,-displaySizeValue,-displaySizeValue*halfLengthValue) );
            break;
        }
    case SPHERE_GENERATOR : 
        {
            result.expand( MPoint(displaySizeValue*halfHeightValue,displaySizeValue*halfHeightValue,displaySizeValue*halfHeightValue) );
            result.expand( MPoint(-displaySizeValue*halfHeightValue,-displaySizeValue*halfHeightValue,-displaySizeValue*halfHeightValue) );
            break;
        }
    }
    return result;
}

p3dEmitterAttr* p3dEmitterShape::getAttributes()
{
    MObject this_object = thisMObject();
    MPlug plug( this_object, particleType );           plug.getValue( attributes->particleType );
    plug.setAttribute( generatorType );                plug.getValue( attributes->generatorType );
    plug.setAttribute( particleAngleType );            plug.getValue( attributes->particleAngleType );
    plug.setAttribute( infiniteLife );                 plug.getValue( attributes->infiniteLife );
    plug.setAttribute( textureAnimMode );              plug.getValue( attributes->textureAnimMode );
    return attributes;
}  

void p3dEmitterShape::TagCallback( MObject& node, void* clientData )
{
    // add p3d specific material attributes
    MStatus stat;

    // try and use MEL script gui
    MString      command;

    MString                     tagName = "";
    if ( node.hasFn( MFn::kDagNode ) )
    {
        MFnDagNode                  fnDagNode( node );
        tagName = fnDagNode.fullPathName();
    }
    else if ( node.hasFn( MFn::kDependencyNode ) )
    {
        MFnDependencyNode       fnDependNode( node );
        tagName = fnDependNode.name();
    }

    // If no valid name was found, DO NOT attempt a tag.
    if ( tagName != "" )
    {
        // An attempt to fix the dreaded "crash on save" bug:
        
        // If Maya is loading a file, defer the p3dtags call:
        if ( MFileIO::isReadingFile() )
        {
            command = "evalDeferred \"p3dtags \\\"";
        }
        // else initiate it immediately
        else
        {
            command = "eval \"p3dtags \\\"";
        }
        command += tagName;
        command += "\\\"\";";

        stat = MGlobal::executeCommand(command);
        if (stat != MS::kSuccess) 
        {
            MGlobal::displayError( MString( "Failed to add Pure3D tags to node: " ) + tagName );
        }
    }
}

/////////////////////////////////////////////////////////////////////
// p3dEmitterShapeUI IMPLEMENTATION
/////////////////////////////////////////////////////////////////////

p3dEmitterShapeUI::p3dEmitterShapeUI() 
{ 
    dormant_color = 5; 
    emitterObject = gluNewQuadric();
}

p3dEmitterShapeUI::~p3dEmitterShapeUI() 
{
    gluDeleteQuadric(emitterObject);
}

void* p3dEmitterShapeUI::creator()
{
    return new p3dEmitterShapeUI();
}

void p3dEmitterShapeUI::drawEmitter(int drawMode) const
{  
    p3dEmitterShape* shapeNode = (p3dEmitterShape*)surfaceShape();
    MObject obj = shapeNode->thisMObject();
    p3dEmitterAttr* attributes = shapeNode->getAttributes();
    
    float displaySizeValue;
        
    MFnDagNode dagNodeFn(obj);
    MPlug plug;

    plug = dagNodeFn.findPlug("displaySize");
    plug.getValue(displaySizeValue);
    
    MDagPath dagPath;
    dagNodeFn.getPath(dagPath);
    MMatrix inclusiveMatrix = dagPath.inclusiveMatrix();
    MTransformationMatrix transform(inclusiveMatrix);      
    double scale[3];
    transform.getScale(scale, MSpace::kWorld);
    float invScaleX = 1.0f/(float)scale[0];
    float invScaleY = 1.0f/(float)scale[1];
    float invScaleZ = 1.0f/(float)scale[2];
    
    glPushMatrix();

    glScalef(invScaleX,invScaleY,invScaleZ);
    glScalef(displaySizeValue,displaySizeValue,displaySizeValue);
    glRotatef(-90.0f, 1.0f, 0.0, 0.0);

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

    switch ( attributes->generatorType )
    {
    case POINT_GENERATOR :
        {         
            SetQuadricDrawStyle (emitterObject, drawMode, false);
            gluSphere( emitterObject, 0.5f, 4, 2 );
            gluCylinder( emitterObject, 0.0f, 0.25f, 1.0f, 4, 1 );
            break;
        }
    case PLANE_GENERATOR :
        {
            SetQuadricDrawStyle (emitterObject, drawMode, false);
            gluCylinder( emitterObject, 0.0f, 0.25f, 1.0f, 4, 1 );
            float halfWidth;
            float halfLength;
            plug = dagNodeFn.findPlug("width");
            plug.getValue(halfWidth);
            plug = dagNodeFn.findPlug("length");
            plug.getValue(halfLength);
            halfWidth /= 2.0f;
            halfLength /= 2.0f;

            glBegin(glDrawMode);
                glVertex2f ( -halfWidth, -halfLength );
                glVertex2f ( -halfWidth, halfLength );
                glVertex2f ( halfWidth, halfLength );
                glVertex2f ( halfWidth, -halfLength );
            glEnd();
            break;
        }
    case SPHERE_GENERATOR : 
        {
            float halfHeightValue;
            plug = dagNodeFn.findPlug("height");
            plug.getValue(halfHeightValue);
            halfHeightValue /= 2.0f;
            SetQuadricDrawStyle (emitterObject, drawMode, false);
            gluSphere( emitterObject, halfHeightValue, 8, 8 );
            break;
        }
    }

    glPopMatrix();

    glPolygonMode ( GL_FRONT_AND_BACK, GL_FILL);
}
      
void p3dEmitterShapeUI::draw( const MDrawRequest & request, M3dView & view ) const
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
 
    drawEmitter(token);

    view.endGL(); 
}

bool p3dEmitterShapeUI::select( MSelectInfo &selectInfo, MSelectionList &selectionList, MPointArray &worldSpaceSelectPts ) const
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
            drawEmitter(SMOOTH_SHADED);
            break;
        
        case M3dView::kFlatShaded :
            drawEmitter(FLAT_SHADED);
            break;

        default :
            drawEmitter(WIREFRAME);
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
// p3dPartSystemShape IMPLEMENTATION
/////////////////////////////////////////////////////////////////////
MTypeId p3dPartSystemShape::id(P3D_PARTICLE_SYSTEM_ID);
MObject p3dPartSystemShape::numberOfInstances;
MObject p3dPartSystemShape::numberOfAnimationFrames;
MObject p3dPartSystemShape::numberOfOverLifeFrames;
MObject p3dPartSystemShape::animationStartFrame;
MObject p3dPartSystemShape::overLifeStartFrame;
MObject p3dPartSystemShape::preloadFrames;
MObject p3dPartSystemShape::cycleAnimation;
MObject p3dPartSystemShape::enableSorting;
MObject p3dPartSystemShape::displaySize;
// old attributes
MObject p3dPartSystemShape::origSize;

MCallbackId p3dPartSystemShape::tagCallbackId;

p3dPartSystemShape::p3dPartSystemShape()
{
    attributes = new p3dPartSystemAttr;
    attributes->cycleAnim = 0;
}

p3dPartSystemShape::~p3dPartSystemShape()
{
    delete attributes;
}

void p3dPartSystemShape::postConstructor()
{ 
    p3dBaseShape::postConstructor();
    MFnDagNode dagNodeFn(thisMObject());
    dagNodeFn.findPlug(displaySize).setValue((float)MDistance::uiToInternal(1.0));   
}

bool p3dPartSystemShape::getInternalValue( const MPlug& plug, MDataHandle& datahandle )
{
    bool isOk = true;
    MObject this_object = thisMObject();  
    MFnDagNode dagNodeFn(this_object);

    if ( plug == cycleAnimation ) 
    {
        MPlug animStartFramePlug = dagNodeFn.findPlug("animationStartFrame");
        MPlug numAnimFramesPlug = dagNodeFn.findPlug("numAnimationFrames");
        datahandle.set( attributes->cycleAnim );
        if (attributes->cycleAnim==0)
        {
            animStartFramePlug.setLocked(true);
            numAnimFramesPlug.setLocked(true);
        }
        else
        {
            animStartFramePlug.setLocked(false);
            numAnimFramesPlug.setLocked(false);
        }
        isOk = true;
    }
    else 
    {
        isOk = MPxNode::getInternalValue( plug, datahandle );
    }
    return isOk;
}

bool p3dPartSystemShape::setInternalValue( const MPlug& plug, const MDataHandle& datahandle )
{
    bool isOk = true;

    if ( plug == cycleAnimation ) 
    {
        attributes->cycleAnim = datahandle.asShort();
        isOk = true;
    }
    else 
    {
        isOk = MPxNode::setInternalValue( plug, datahandle );
    }
    return isOk;
}

void* p3dPartSystemShape::creator()
{
    return new p3dPartSystemShape();
}

MStatus p3dPartSystemShape::initialize()
{ 
    MStatus             status;
    MFnEnumAttribute    enumAttr;
    MFnNumericAttribute numAttr;

    numberOfInstances = numAttr.create ("numInstances", "ni", MFnNumericData::kShort, 1, &status);
    CHECKRESULT_FAILURE( status, "Error creating numInstances attribute" );
    numAttr.setMin(1);
    numAttr.setInternal( false );
    numAttr.setHidden( false );
    numAttr.setKeyable( true );
    status = addAttribute( numberOfInstances );
    CHECKRESULT_FAILURE( status, "Error adding numInstances attribute." );

    numberOfAnimationFrames = numAttr.create ("numAnimationFrames", "sf", MFnNumericData::kShort, 100, &status);
    CHECKRESULT_FAILURE( status, "Error creating numAnimationFrames attribute" );
    numAttr.setMin(1);
    numAttr.setInternal( false );
    numAttr.setHidden( false );
    numAttr.setKeyable( true );
    status = addAttribute( numberOfAnimationFrames );
    CHECKRESULT_FAILURE( status, "Error adding numAnimationFrames attribute." );

    numberOfOverLifeFrames = numAttr.create ("numOverLifeFrames", "nf", MFnNumericData::kShort, 100, &status);
    CHECKRESULT_FAILURE( status, "Error creating numOverLifeFrames attribute" );
    numAttr.setMin(1);
    numAttr.setInternal( false );
    numAttr.setHidden( false );
    numAttr.setKeyable( true );
    status = addAttribute( numberOfOverLifeFrames );
    CHECKRESULT_FAILURE( status, "Error adding numOverLifeFrames attribute." );

    animationStartFrame = numAttr.create ("animationStartFrame", "ans", MFnNumericData::kShort, 0, &status);
    CHECKRESULT_FAILURE( status, "Error creating animationStartFrame attribute" );
    numAttr.setInternal( false );
    numAttr.setHidden( false );
    numAttr.setKeyable( true );
    status = addAttribute( animationStartFrame );
    CHECKRESULT_FAILURE( status, "Error adding animationStartFrame attribute." );

    overLifeStartFrame = numAttr.create ("overLifeStartFrame", "ols", MFnNumericData::kShort, 0, &status);
    CHECKRESULT_FAILURE( status, "Error creating overLifeStartFrame attribute" );
    numAttr.setInternal( false );
    numAttr.setHidden( false );
    numAttr.setKeyable( true );
    status = addAttribute( overLifeStartFrame );
    CHECKRESULT_FAILURE( status, "Error adding overLifeStartFrame attribute." );

    preloadFrames = numAttr.create ("preloadFrame", "pnf", MFnNumericData::kShort, 0, &status);
    CHECKRESULT_FAILURE( status, "Error creating preloadFrame attribute" );
    numAttr.setMin(0);
    numAttr.setInternal( false );
    numAttr.setHidden( false );
    numAttr.setKeyable( true );
    status = addAttribute( preloadFrames );
    CHECKRESULT_FAILURE( status, "Error adding preloadFrame attribute." );

    cycleAnimation = enumAttr.create( "cycleAnimation", "ca", 0, &status);
    CHECKRESULT_FAILURE( status, "Error creating cycleAnimation attribute" );
        enumAttr.addField( "false", 0 );
        enumAttr.addField( "true", 1 );
    enumAttr.setInternal( true );
    enumAttr.setHidden( false );
    enumAttr.setKeyable( true );
    status = addAttribute( cycleAnimation );
    CHECKRESULT_FAILURE( status, "Error adding cycleAnimation attribute." );
    
    enableSorting = enumAttr.create( "enableSorting", "es", 0, &status);
    CHECKRESULT_FAILURE( status, "Error creating enableSorting attribute" );
        enumAttr.addField( "false", 0 );
        enumAttr.addField( "true", 1 );
    enumAttr.setInternal( false );
    enumAttr.setHidden( false );
    enumAttr.setKeyable( true );
    status = addAttribute( enableSorting );
    CHECKRESULT_FAILURE( status, "Error adding enableSorting attribute." );

    displaySize = numAttr.create ("displaySize", "dis", MFnNumericData::kFloat, 1.0, &status);
    CHECKRESULT_FAILURE( status, "Error creating displaySize attribute" );
    numAttr.setMin(0.0);
    numAttr.setInternal( false );
    numAttr.setHidden( true );
    numAttr.setKeyable( true );
    status = addAttribute( displaySize );
    CHECKRESULT_FAILURE( status, "Error adding displaySize attribute." );

    origSize = numAttr.create ("origSize", "os", MFnNumericData::kFloat, 1.0, &status);
    CHECKRESULT_FAILURE( status, "Error creating origSize attribute" );
    numAttr.setMin(0.0);
    numAttr.setInternal( false );
    numAttr.setHidden( true );
    numAttr.setKeyable( true );
    status = addAttribute( origSize );
    CHECKRESULT_FAILURE( status, "Error adding origSize attribute." );

    return status;
}

MBoundingBox p3dPartSystemShape::boundingBox() const
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

p3dPartSystemAttr* p3dPartSystemShape::getAttributes()
{
    MObject this_object = thisMObject();
    MPlug plug( this_object, cycleAnimation );         plug.getValue( attributes->cycleAnim );
    return attributes;
}  

/////////////////////////////////////////////////////////////////////
// p3dPartSystemShapeUI IMPLEMENTATION
/////////////////////////////////////////////////////////////////////
p3dPartSystemShapeUI::p3dPartSystemShapeUI() 
{    
    dormant_color = 3;   
}

p3dPartSystemShapeUI::~p3dPartSystemShapeUI() 
{
}

void* p3dPartSystemShapeUI::creator()
{
    return new p3dPartSystemShapeUI();
}

void p3dPartSystemShapeUI::drawSystem(int drawMode) const
{  
    p3dPartSystemShape* shapeNode = (p3dPartSystemShape*)surfaceShape();
    MObject obj = shapeNode->thisMObject();
    p3dPartSystemAttr* attributes = shapeNode->getAttributes();

    float displaySizeValue;
        
    MFnDagNode dagNodeFn(obj);
    MPlug plug;

    plug = dagNodeFn.findPlug("displaySize");
    plug.getValue(displaySizeValue);
    
    MDagPath dagPath;
    dagNodeFn.getPath(dagPath);
    MMatrix inclusiveMatrix = dagPath.inclusiveMatrix();
    MTransformationMatrix transform(inclusiveMatrix);      
    double scale[3];
    transform.getScale(scale, MSpace::kWorld);
    float invScaleX = 1.0f/(float)scale[0];
    float invScaleY = 1.0f/(float)scale[1];
    float invScaleZ = 1.0f/(float)scale[2];

    glPushMatrix();

    glScalef(invScaleX,invScaleY,invScaleZ);
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
        glVertex2f ( -0.5f, -0.5f );
        glVertex2f ( -0.5f, 0.5f );
        glVertex2f ( 0.5f, 0.5f );
        glVertex2f ( 0.5f, -0.5f );
    glEnd();
    glRotatef(90.0f, 1.0f, 0.0, 0.0); 
    glBegin(glDrawMode);
        glVertex2f ( -0.5f, -0.5f );
        glVertex2f ( -0.5f, 0.5f );
        glVertex2f ( 0.5f, 0.5f );
        glVertex2f ( 0.5f, -0.5f );
    glEnd();
    glRotatef(90.0f, 0.0, 1.0f, 0.0);
    glBegin(glDrawMode);
        glVertex2f ( -0.5f, -0.5f );
        glVertex2f ( -0.5f, 0.5f );
        glVertex2f ( 0.5f, 0.5f );
        glVertex2f ( 0.5f, -0.5f );
    glEnd(); 

    glPopMatrix();

    glPolygonMode ( GL_FRONT_AND_BACK, GL_FILL);
}

void p3dPartSystemShapeUI::draw( const MDrawRequest & request, M3dView & view ) const
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
 
    drawSystem(token);

    view.endGL(); 
}

bool p3dPartSystemShapeUI::select( MSelectInfo &selectInfo, MSelectionList &selectionList, MPointArray &worldSpaceSelectPts ) const
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
            drawSystem(SMOOTH_SHADED);
            break;
        
        case M3dView::kFlatShaded :
            drawSystem(FLAT_SHADED);
            break;

        default :
            drawSystem(WIREFRAME);
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

}  //namespace PPS


