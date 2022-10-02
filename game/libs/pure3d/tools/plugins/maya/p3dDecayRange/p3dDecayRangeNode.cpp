//===========================================================================
// Copyright ©2002 Radical Entertainment Ltd.  All rights reserved.
//
// Created:     30 July, 2002
// Modified:    30 July, 2002
// Version:     
//
// Component:   
//
// Description: 
//
// Constraints: 
//
// Creator:     Bryan Ewert
//
//===========================================================================
//===========================================================================
// Includes
//===========================================================================

#include "p3dDecayRangeNode.h"
#include "p3dDecayRangeGL.hpp"

#include <maya/MDagPath.h>
#include <maya/MPlug.h>
#include <maya/MDataBlock.h>
#include <maya/MDataHandle.h>
#include <maya/MFnMatrixData.h>
#include <maya/MFnUnitAttribute.h>
#include <maya/MFnTypedAttribute.h>
#include <maya/MFnCompoundAttribute.h>
#include <maya/MFnEnumAttribute.h>
#include <maya/MFnCamera.h>
#include <maya/MFnTransform.h>
#include <maya/MVector.h>
#include <maya/MMatrix.h>
#include <maya/MDistance.h>
#include <maya/MAngle.h>
#include <maya/MFileIO.h>

#include <maya/MPxManipContainer.h>

#include <maya/MSelectionList.h>
#include <maya/MGlobal.h>

#include <gl/gl.h>
#include <math.h>

#include <bewert_debug.h>

//===========================================================================
// Local Constants, Typedefs, and Macros
//===========================================================================

static const unsigned int kDiscResolution = 32;
static const MColor kInnerColour( 0.5f, 0.5f, 0.2f, 0.3f );
static const MColor kOuterColour( 0.025f, 0.0125f, 0.0f, 0.1f );
static const MColor kInnerRingColour( 0.667f, 0.667f, 0.333f, 0.667f );
static const MColor kOuterRingColour( 0.5f, 0.5f, 0.2f, 0.5f );

//===========================================================================
// Global Data, Local Data, Local Classes
//===========================================================================

MTypeId     p3dDecayRange::id( P3DDECAYRANGE_MTYPEID );

MObject     p3dDecayRange::aInWorldMatrix;

MObject     p3dDecayRange::aDecayMode;

//MObject     p3dDecayRange::aInnerSphere;
//MObject     p3dDecayRange::aOuterSphere;

MObject     p3dDecayRange::aInnerRadius;
MObject     p3dDecayRange::aInnerRadiusX;
MObject     p3dDecayRange::aInnerRadiusY;
MObject     p3dDecayRange::aInnerRadiusZ;

MObject     p3dDecayRange::aOuterRadius;
MObject     p3dDecayRange::aOuterRadiusX;
MObject     p3dDecayRange::aOuterRadiusY;
MObject     p3dDecayRange::aOuterRadiusZ;

MObject     p3dDecayRange::aRotateY;

//===========================================================================
// Constructor / Destructor
//===========================================================================

p3dDecayRange::p3dDecayRange() 
:   mRotateY( 0.0 )
{
    double innerRadiusDefault = MDistance::uiToInternal( 0.5 );
    double outerRadiusDefault = MDistance::uiToInternal( 1.0 );

    mInnerRadius = MVector( innerRadiusDefault, innerRadiusDefault, innerRadiusDefault );
    mOuterRadius = MVector( outerRadiusDefault, outerRadiusDefault, outerRadiusDefault );
}

p3dDecayRange::~p3dDecayRange()
{
}

//===========================================================================
// COPY Constructor / Assignment
//===========================================================================

//===========================================================================
// Operator Overloads
//===========================================================================

//===========================================================================
// Member Functions
//===========================================================================

//===========================================================================
// p3dDecayRange::postConstructor
//===========================================================================
// Description: Names the shape node and provides a "hint" so Maya names
//              its transform accordingly.
//
//              ** Thanks to Dean Edmonds (Gooroos Software) !! **
//
// Constraints: 
//
//  Parameters: (void)
//
//      Return: (void)
//
//===========================================================================
void p3dDecayRange::postConstructor( void )
{
    MFnDependencyNode nodeFn(thisMObject());

    nodeFn.setName("p3dDecayRangeShape#");
}

MStatus p3dDecayRange::compute( const MPlug& plug, MDataBlock& data )
{
	MStatus                     status = MS::kSuccess;

    { 
		status = MS::kUnknownParameter;
	}

	return status;
}

bool p3dDecayRange::getInternalValue( const MPlug& outPlug, MDataHandle& hOutData )
{
    bool isOk = true;

//    if ( outPlug == aInnerSphere )
//    {
//		hOutData.set( mInnerSphere );
//        isOk = true;
//    }
//    else if ( outPlug == aOuterSphere )
//    {
//		hOutData.set( mOuterSphere );
//        isOk = true;
//    }
    if ( outPlug == aInnerRadius )
    {
        // For some reason known only to Alias, querying as a Vector
        // returns (cm) whereas querying each double returns UI Unit.
        hOutData.set( mInnerRadius * MDistance::internalToUI( 1.0 ) );
        isOk = true;
    }
    else if ( outPlug == aOuterRadius )
    {
        // For some reason known only to Alias, querying as a Vector
        // returns (cm) whereas querying each double returns UI Unit.
        hOutData.set( mOuterRadius * MDistance::internalToUI( 1.0 ) );
        isOk = true;
    }
    else if ( outPlug == aInnerRadiusX )
    {
		hOutData.set( mInnerRadius.x );
        isOk = true;
    }
    else if ( outPlug == aInnerRadiusY )
    {
		hOutData.set( mInnerRadius.y );
        isOk = true;
    }
    else if ( outPlug == aInnerRadiusZ )
    {
		hOutData.set( mInnerRadius.z );
        isOk = true;
    }
    else if ( outPlug == aOuterRadiusX )
    {
		hOutData.set( mOuterRadius.x );
        isOk = true;
    }
    else if ( outPlug == aOuterRadiusY )
    {
		hOutData.set( mOuterRadius.y );
        isOk = true;
    }
    else if ( outPlug == aOuterRadiusZ )
    {
		hOutData.set( mOuterRadius.z );
        isOk = true;
    }
    else if ( outPlug == aRotateY )
    {
		hOutData.set( mRotateY );
        isOk = true;
    }
    else
    {
        isOk = MPxLocatorNode::getInternalValue( outPlug, hOutData );
    }

    return isOk;
}

bool p3dDecayRange::setInternalValue( const MPlug& inPlug, const MDataHandle& hInData )
{
    bool bIsOk = true;

//    if ( inPlug == aInnerSphere )
//    {
//        mInnerSphere = hInData.asDouble();
//        if ( mInnerSphere > mOuterSphere ) mInnerSphere = mOuterSphere;
//    }
//    else if ( inPlug == aOuterSphere )
//    {
//        mOuterSphere = hInData.asDouble();
//        if ( mOuterSphere < mInnerSphere ) mOuterSphere = mInnerSphere;
//    }
    if ( inPlug == aInnerRadius )
    {
        mInnerRadius = hInData.asVector();
        if ( !MFileIO::isReadingFile() )
        {
            if ( mInnerRadius.x > mOuterRadius.x ) mInnerRadius.x = mOuterRadius.x;
            if ( mInnerRadius.y > mOuterRadius.y ) mInnerRadius.y = mOuterRadius.y;
            if ( mInnerRadius.z > mOuterRadius.z ) mInnerRadius.z = mOuterRadius.z;
        }
    }
    else if ( inPlug == aOuterRadius )
    {
        mOuterRadius = hInData.asVector();
        if ( !MFileIO::isReadingFile() )
        {
            if ( mOuterRadius.x < mInnerRadius.x ) mOuterRadius.x = mInnerRadius.x;
            if ( mOuterRadius.y < mInnerRadius.y ) mOuterRadius.y = mInnerRadius.y;
            if ( mOuterRadius.z < mInnerRadius.z ) mOuterRadius.z = mInnerRadius.z;
        }
    }
    else if ( inPlug == aInnerRadiusX )
    {
        mInnerRadius.x = hInData.asDouble();
        if ( !MFileIO::isReadingFile() )
        {
            if ( mInnerRadius.x > mOuterRadius.x ) mInnerRadius.x = mOuterRadius.x;
        }
    }
    else if ( inPlug == aInnerRadiusY )
    {
        mInnerRadius.y = hInData.asDouble();
        if ( !MFileIO::isReadingFile() )
        {
            if ( mInnerRadius.y > mOuterRadius.y ) mInnerRadius.y = mOuterRadius.y;
        }
    }
    else if ( inPlug == aInnerRadiusZ )
    {
        mInnerRadius.z = hInData.asDouble();
        if ( !MFileIO::isReadingFile() )
        {
            if ( mInnerRadius.z > mOuterRadius.z ) mInnerRadius.z = mOuterRadius.z;
        }
    }
    else if ( inPlug == aOuterRadiusX )
    {
        mOuterRadius.x = hInData.asDouble();
        if ( !MFileIO::isReadingFile() )
        {
            if ( mOuterRadius.x < mInnerRadius.x ) mOuterRadius.x = mInnerRadius.x;
        }
    }
    else if ( inPlug == aOuterRadiusY )
    {
        mOuterRadius.y = hInData.asDouble();
        if ( !MFileIO::isReadingFile() )
        {
            if ( mOuterRadius.y < mInnerRadius.y ) mOuterRadius.y = mInnerRadius.y;
        }
    }
    else if ( inPlug == aOuterRadiusZ )
    {
        mOuterRadius.z = hInData.asDouble();
        if ( !MFileIO::isReadingFile() )
        {
            if ( mOuterRadius.z < mInnerRadius.z ) mOuterRadius.z = mInnerRadius.z;
        }
    }
    else if ( inPlug == aRotateY )
    {
        mRotateY = hInData.asDouble();
    }
    else
    {
        bIsOk = MPxLocatorNode::setInternalValue( inPlug, hInData );
    }
    
    return bIsOk;
}

void* p3dDecayRange::creator()
{
	return new p3dDecayRange();
}

MStatus p3dDecayRange::initialize()
{
	MStatus				        status = MS::kSuccess;

	// This sample creates a single input float attribute and a single
	// output float attribute.
	//
    MFnTypedAttribute           tAttr;
	MFnNumericAttribute         nAttr;
    MFnUnitAttribute            uAttr;
    MFnCompoundAttribute        cAttr;
    MFnEnumAttribute            eAttr;

    MFnMatrixData               fnMatrixData;
    MObject                     defaultMatrix;
    defaultMatrix = fnMatrixData.create( MMatrix() );

    double innerRadiusDefault = MDistance::uiToInternal( 0.5 );
    double outerRadiusDefault = MDistance::uiToInternal( 1.0 );

    aInWorldMatrix = tAttr.create( "inWorldMatrix", "iwm", MFnData::kMatrix, defaultMatrix, &status );
    if ( status != MS::kSuccess ) status.perror( "Error creating .inWorldMatrix" );
    tAttr.setKeyable( false );
    tAttr.setStorable( false );
    tAttr.setReadable( false );
    tAttr.setInternal( false );

    aDecayMode = eAttr.create( "decayMode", "dm", DecayRange::kDecayModeSphere, &status );
    if ( status != MS::kSuccess ) status.perror( "Error creating .decayMode" );
    eAttr.addField( "sphere", DecayRange::kDecayModeSphere );
    eAttr.addField( "cube", DecayRange::kDecayModeCube );

//    aInnerSphere = uAttr.create( "innerSphere", "is", MFnUnitAttribute::kDistance, 50.0f, &status );
//    if ( status != MS::kSuccess ) status.perror( "Error creating .innerSphere" );
//    uAttr.setMin( 0.0f );
//    uAttr.setKeyable( true );
//    uAttr.setStorable( true );
//    uAttr.setInternal( true );
//
//    aOuterSphere = uAttr.create( "outerSphere", "os", MFnUnitAttribute::kDistance, 100.0f, &status );
//    if ( status != MS::kSuccess ) status.perror( "Error creating .outerSphere" );
//    uAttr.setMin( 0.0f );
//    uAttr.setKeyable( true );
//    uAttr.setStorable( true );
//    uAttr.setInternal( true );

    // Note: Setting the default here is just for show. This is an internal attribute and thus
    //       it will obtain its initial value from the mInnerRadius data member.
    aInnerRadiusX = uAttr.create( "innerRadiusX", "irx", MFnUnitAttribute::kDistance, innerRadiusDefault, &status );
    if ( status != MS::kSuccess ) status.perror( "Error creating .innerRadiusX" );
    uAttr.setMin( 0.0f );
    uAttr.setKeyable( true );
    uAttr.setStorable( true );
    uAttr.setInternal( true );

    aInnerRadiusY = uAttr.create( "innerRadiusY", "iry", MFnUnitAttribute::kDistance, innerRadiusDefault, &status );
    if ( status != MS::kSuccess ) status.perror( "Error creating .innerRadiusY" );
    uAttr.setMin( 0.0f );
    uAttr.setKeyable( true );
    uAttr.setStorable( true );
    uAttr.setInternal( true );

    aInnerRadiusZ = uAttr.create( "innerRadiusZ", "irz", MFnUnitAttribute::kDistance, innerRadiusDefault, &status );
    if ( status != MS::kSuccess ) status.perror( "Error creating .innerRadiusZ" );
    uAttr.setMin( 0.0f );
    uAttr.setKeyable( true );
    uAttr.setStorable( true );
    uAttr.setInternal( true );

    aInnerRadius = cAttr.create( "innerRadius", "ir", &status );
    if ( status != MS::kSuccess ) status.perror( "Error creating .innerRadius" );
    cAttr.addChild( aInnerRadiusX );
    cAttr.addChild( aInnerRadiusY );
    cAttr.addChild( aInnerRadiusZ );
    cAttr.setKeyable( true );
    cAttr.setStorable( true );
    cAttr.setInternal( true );

    // Note: Setting the default here is just for show. This is an internal attribute and thus
    //       it will obtain its initial value from the mOuterRadius data member.
    aOuterRadiusX = uAttr.create( "outerRadiusX", "orx", MFnUnitAttribute::kDistance, outerRadiusDefault, &status );
    if ( status != MS::kSuccess ) status.perror( "Error creating .outerRadiusX" );
    uAttr.setMin( 0.0f );
    uAttr.setKeyable( true );
    uAttr.setStorable( true );
    uAttr.setInternal( true );

    aOuterRadiusY = uAttr.create( "outerRadiusY", "ory", MFnUnitAttribute::kDistance, outerRadiusDefault, &status );
    if ( status != MS::kSuccess ) status.perror( "Error creating .outerRadiusY" );
    uAttr.setMin( 0.0f );
    uAttr.setKeyable( true );
    uAttr.setStorable( true );
    uAttr.setInternal( true );

    aOuterRadiusZ = uAttr.create( "outerRadiusZ", "orz", MFnUnitAttribute::kDistance, outerRadiusDefault, &status );
    if ( status != MS::kSuccess ) status.perror( "Error creating .outerRadiusZ" );
    uAttr.setMin( 0.0f );
    uAttr.setKeyable( true );
    uAttr.setStorable( true );
    uAttr.setInternal( true );

    aOuterRadius = cAttr.create( "outerRadius", "or", &status );
    if ( status != MS::kSuccess ) status.perror( "Error creating .outerRadius" );
    cAttr.addChild( aOuterRadiusX );
    cAttr.addChild( aOuterRadiusY );
    cAttr.addChild( aOuterRadiusZ );
    cAttr.setKeyable( true );
    cAttr.setStorable( true );
    cAttr.setInternal( true );

    aRotateY = uAttr.create( "rotateY", "ry", MAngle( 0.0, MAngle::kRadians ), &status );
    if ( status != MS::kSuccess ) status.perror( "Error creating .rotateY" );
    uAttr.setKeyable( true );
    uAttr.setStorable( true );
    uAttr.setInternal( true );

    addAttribute( aInWorldMatrix );

    addAttribute( aDecayMode );

//    addAttribute( aInnerSphere );
//    addAttribute( aOuterSphere );

    addAttribute( aInnerRadiusX );
    addAttribute( aInnerRadiusY );
    addAttribute( aInnerRadiusZ );
    addAttribute( aInnerRadius );

    addAttribute( aOuterRadiusX );
    addAttribute( aOuterRadiusY );
    addAttribute( aOuterRadiusZ );
    addAttribute( aOuterRadius );

    addAttribute( aRotateY );

	// Set up a dependency between the input and the output.  This will cause
	// the output to be marked dirty when the input changes.  The output will
	// then be recomputed the next time the value of the output is requested.
	//

    // Connect to default manipulator
    MPxManipContainer::addToManipConnectTable(id);

	return status;
}

void p3dDecayRange::draw ( M3dView & view, const MDagPath & path, M3dView::DisplayStyle style, M3dView:: DisplayStatus )
{
    MStatus                     status = MS::kSuccess;

    MColor                      lightColour;
    if ( !getAttachedLight( path, mPosition, lightColour ) ) return;
    mInnerColour = lightColour * 0.5f;
    mInnerColour.a = 0.3f;
    mOuterColour = mInnerColour * 0.25f;
    mOuterColour.a = 0.1f;

	MObject		thisNode = thisMObject();

    MVector                     viewDirection;

    MDagPath                    thisCameraView;       // the dagPath for this modelPanel's Camera
    view.getCamera( thisCameraView );

    thisCameraView.pop();
    MFnTransform                fnCamera( thisCameraView );
    MVector posCamera = fnCamera.translation( MSpace::kWorld );

//    MFnTransform                fnObject( path, &status );
//    if ( !status ) status.perror ( "No MFnTransform!" );
//    mPosition = fnObject.translation( MSpace::kWorld, &status );
//    if ( !status ) status.perror ( "No translation!" );

    viewDirection = mPosition - posCamera;

    short       mode;
    double      ix, iy, iz;
    double      ox, oy, oz;
    double      ry;

    MMatrix                     cameraInverseMatrix;  // inverse matrix for the modelPanel's Camera
    double                      dMatrix[4][4];        // the 4×4 array for the OpenGL matrix

    // Load inverse of the Camera's Matrix
    cameraInverseMatrix = thisCameraView.inclusiveMatrix().inverse();

    // Get 4×4 array to represent matrix (required for glLoadMatrix)
    cameraInverseMatrix.get( dMatrix );

    MPlug modePlug( thisNode, aDecayMode );
    modePlug.getValue( mode );

//    MPlug innerSpherePlug( thisNode, aInnerSphere );
//    innerSpherePlug.getValue( is );
//
//    MPlug outerSpherePlug( thisNode, aOuterSphere );
//    outerSpherePlug.getValue( os );

    MPlug innerPlug( thisNode, aInnerRadius );
    innerPlug.child(0).getValue( ix );
    innerPlug.child(1).getValue( iy );
    innerPlug.child(2).getValue( iz );

    MPlug outerPlug( thisNode, aOuterRadius );
    outerPlug.child(0).getValue( ox );
    outerPlug.child(1).getValue( oy );
    outerPlug.child(2).getValue( oz );

    MPlug rotateYPlug( thisNode, aRotateY );
    rotateYPlug.getValue( ry );

    MMatrix     rotMatrix;
    rotMatrix[0][0] =  cos(ry);
    rotMatrix[0][2] = -sin(ry);
    rotMatrix[2][0] =  sin(ry);
    rotMatrix[2][2] =  cos(ry);

    view.beginGL();

    glPushAttrib( GL_ENABLE_BIT | GL_CURRENT_BIT | GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT );
    glDisable( GL_LIGHTING );

    glMatrixMode( GL_MODELVIEW );
    glPushMatrix();

    // Load the inverse of the Camera's matrix into the Model View.
    // This places the render origin at Maya's world center.
    glLoadMatrixd( (GLdouble *)dMatrix );

    glDisable( GL_DEPTH_TEST );
    glEnable( GL_BLEND );
    glBlendFunc( GL_ONE, GL_ONE );
    glDepthMask(GL_FALSE);

    switch( mode )
    {
        case DecayRange::kDecayModeCube:
        {
            drawCube( mPosition, MVector( ix, iy, iz ), kInnerRingColour, true, viewDirection, rotMatrix );
            drawCube( mPosition, MVector( ox, oy, oz ), kOuterRingColour, true, viewDirection, rotMatrix );

            if ( style == M3dView::kFlatShaded || style == M3dView::kGouraudShaded )
            {
                fillCube( mPosition, MVector( ix, iy, iz ), mInnerColour, true, viewDirection, rotMatrix );
                fillCube( mPosition, MVector( ix, iy, iz ), MVector( ox, oy, oz ), mInnerColour, mOuterColour, true, viewDirection, rotMatrix );
            }

            break;
        }
        case DecayRange::kDecayModeSphere:
        default:
        {
            drawDisc( ix, mPosition, viewDirection, kDiscResolution, kInnerRingColour );
            drawDisc( ox, mPosition, viewDirection, kDiscResolution, kOuterRingColour );

            if ( style == M3dView::kFlatShaded || style == M3dView::kGouraudShaded )
            {
                fillDisc( ix, mPosition, viewDirection, kDiscResolution, mInnerColour );
                fillDisc( ix, ox, mPosition, viewDirection, kDiscResolution, mInnerColour, mOuterColour );
            }

            break;
        }
    }

    glPopMatrix();

    glPopAttrib();

    view.endGL();

}
 
bool p3dDecayRange::isBounded () const
{
    return false;
}

MBoundingBox p3dDecayRange::boundingBox () const
{
    MStatus                     status;

    MPoint      left( mPosition );
    MPoint      right( mPosition );

    short       mode;
    MPlug modePlug( thisMObject(), aDecayMode );
    modePlug.getValue( mode );

    switch ( mode )
    {
        case 0: // spheroid
        {
            left  -= MPoint( mOuterRadius.x, mOuterRadius.x, mOuterRadius.x );
            right += MPoint( mOuterRadius.x, mOuterRadius.x, mOuterRadius.x );
            break;
        }

        case 1: // cuboid
        {
            left  -= MPoint( mOuterRadius.x, mOuterRadius.y, mOuterRadius.z );
            right += MPoint( mOuterRadius.x, mOuterRadius.y, mOuterRadius.z );
            break;
        }

        default:
        {
            // eh??
            assert( false && "Invalid p3dDecayRange decayMode in boundingBox" );
        }
    }

    // Must offset BBoundingBox by this object's transformation matrix
    // NOTE: I wanted to simply use the shape node's .worldMatrix plug, BUT
    //       Maya refuses to allow the API to query this unless MEL does
    //       a preemptive 'getAttr'.  Suck.
    // NOTE: I also tried using MFnTransform and MTransformationMatrix
    //       but both insisted on only returning the local matrix.

    MDagPath dagPath = MDagPath::getAPathTo( thisMObject(), &status );
    // I'm not 100% confident that .exclusiveMatrix is exactly what I
    // should be using, but it seems to work, so....
    MMatrix     invMatrix = dagPath.exclusiveMatrix().inverse();

    left *= invMatrix;
    right *= invMatrix;

    return MBoundingBox( left, right );
}
