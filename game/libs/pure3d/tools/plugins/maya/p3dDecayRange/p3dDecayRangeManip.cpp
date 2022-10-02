//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


#include "p3dDecayRangeManip.hpp"
#include "p3dDecayRangeGL.hpp"

#include <maya/MFnDistanceManip.h>
#include <maya/MFnDiscManip.h>
#include <maya/MFnDependencyNode.h>
#include <maya/MFnCamera.h>

#include <math.h>

#include <bewert_debug.h>

MTypeId p3dDecayRangeManip::id( 0x04017A );

p3dDecayRangeManip::p3dDecayRangeManip() 
:   mDecayMode( DecayRange::kDecayModeSphere ),
    mUiScaleFactor( 1.0 )
{ 
    // Do not call createChildren from here - 
    // MayaPtr has not been set up yet.
}


p3dDecayRangeManip::~p3dDecayRangeManip() 
{
}


void *p3dDecayRangeManip::creator()
{
     return new p3dDecayRangeManip();
}

MStatus p3dDecayRangeManip::initialize()
{ 
    MStatus status;
    status = MPxManipContainer::initialize();
    return status;
}


//===========================================================================
// p3dDecayRangeManip::createChildren
//===========================================================================
// Description: Adds six (6) manipulators, two for each axis (inner and
//              outer).
//
// Constraints: 
//
//  Parameters: (void)
//
//      Return: (MStatus): The usual.
//
//===========================================================================
MStatus p3dDecayRangeManip::createChildren()
{
    MStatus status = MStatus::kSuccess;

    MString distanceName("distance");
    MString angleName("angle");
//    MString innerSphere("innerSphere");
//    MString outerSphere("outerSphere");
    MString innerRadiusX("innerRadiusX");
    MString innerRadiusY("innerRadiusY");
    MString innerRadiusZ("innerRadiusZ");
    MString outerRadiusX("outerRadiusX");
    MString outerRadiusY("outerRadiusY");
    MString outerRadiusZ("outerRadiusZ");
    MString rotateY("rotateY");

    MPoint startPoint(0.0, 0.0, 0.0);

//    mInnerSphere = addDistanceManip(innerSphere, distanceName);
//    mOuterSphere = addDistanceManip(outerSphere, distanceName);
//
//	MFnDistanceManip fnInnerSphere( mInnerSphere );
//	fnInnerSphere.setStartPoint(startPoint);
//
//	MFnDistanceManip fnOuterSphere( mOuterSphere );
//	fnOuterSphere.setStartPoint(startPoint);

    mInnerManipX = addDistanceManip(innerRadiusX, distanceName);
    mOuterManipX = addDistanceManip(outerRadiusX, distanceName);

	MFnDistanceManip fnInnerManipX( mInnerManipX );
	fnInnerManipX.setStartPoint(startPoint);
	fnInnerManipX.setDirection( MVector::xAxis );

	MFnDistanceManip fnOuterManipX( mOuterManipX );
	fnOuterManipX.setStartPoint(startPoint);
	fnOuterManipX.setDirection( MVector::xAxis );

    mInnerManipY = addDistanceManip(innerRadiusY, distanceName);
    mInnerManipZ = addDistanceManip(innerRadiusZ, distanceName);

    mOuterManipY = addDistanceManip(outerRadiusY, distanceName);
    mOuterManipZ = addDistanceManip(outerRadiusZ, distanceName);

	MFnDistanceManip fnInnerManipY( mInnerManipY );
	fnInnerManipY.setStartPoint(startPoint);
	fnInnerManipY.setDirection( MVector::yAxis );

	MFnDistanceManip fnOuterManipY( mOuterManipY );
	fnOuterManipY.setStartPoint(startPoint);
	fnOuterManipY.setDirection( MVector::yAxis );

	MFnDistanceManip fnInnerManipZ( mInnerManipZ );
	fnInnerManipZ.setStartPoint(startPoint);
	fnInnerManipZ.setDirection( MVector::zAxis );

	MFnDistanceManip fnOuterManipZ( mOuterManipZ );
	fnOuterManipZ.setStartPoint(startPoint);
	fnOuterManipZ.setDirection( MVector::zAxis );

    mRotateYManip = addDiscManip(rotateY, angleName);
	MFnDiscManip fnRotateYManip( mRotateYManip, &status );
    if ( !status ) status.perror( "No .rotateY manip!" );
	fnRotateYManip.setCenterPoint(startPoint);
	fnRotateYManip.setNormal( MVector::yNegAxis );

    return status;
}


//===========================================================================
// p3dDecayRangeManip::connectToDependNode
//===========================================================================
// Description: Connects the manipulators to the dependency node.
//
//              Use this opportunity to derive this node's relationship to
//              its associated light (if any), and for caching this node's
//              Decay Mode.
//
// Constraints: 
//
//  Parameters: const MObject& node: The p3dDecayRange dependency node.
//
//      Return: (MStatus): The usual.
//
//===========================================================================
MStatus p3dDecayRangeManip::connectToDependNode(const MObject &node)
{
    MStatus status;

    // Get function wrapper
    MFnDependencyNode           fnDependNode( node );

    // Get decay mode
    MPlug decayModePlug = fnDependNode.findPlug( "decayMode", &status );
    if ( status == MS::kSuccess )
    {
        decayModePlug.getValue( mDecayMode );
    }
    else CDEBUG << "No .decayMode for manip" << endl;

    MDagPath                    path;
    path = MDagPath::getAPathTo( node );

    // When we connect to the node, store its DAG path.
    mConnectedTo = path;

    // Get attached light.
    path.pop();
    getAttachedLight( path, mStartPoint, mLightColour );

    // Connect the plugs
    //    

    // NOTE: The order in which these are connected determines the
    //       "manipulator index" used in MPxManipContainer::getConverterPlugValue().

    if ( mDecayMode == DecayRange::kDecayModeSphere )
    {
//        MPlug isPlug = fnDependNode.findPlug("innerSphere", &status);
//        MPlug osPlug = fnDependNode.findPlug("outerSphere", &status);
//
//        MFnDistanceManip fnInnerSphere( mInnerSphere );
//        fnInnerSphere.connectToDistancePlug(isPlug);
//        fnInnerSphere.setStartPoint( mStartPoint );
//
//        MFnDistanceManip fnOuterSphere( mOuterSphere );
//        fnOuterSphere.connectToDistancePlug(osPlug);
//        fnOuterSphere.setStartPoint( mStartPoint );

        MPlug ixPlug = fnDependNode.findPlug("innerRadiusX", &status);
        MPlug oxPlug = fnDependNode.findPlug("outerRadiusX", &status);

        MFnDistanceManip fnInnerManipX( mInnerManipX );
        fnInnerManipX.connectToDistancePlug(ixPlug);
        fnInnerManipX.setStartPoint( mStartPoint );

        MFnDistanceManip fnOuterManipX( mOuterManipX );
        fnOuterManipX.connectToDistancePlug(oxPlug);
        fnOuterManipX.setStartPoint( mStartPoint );
    }

    if ( mDecayMode == DecayRange::kDecayModeCube )
    {
        MPlug ixPlug = fnDependNode.findPlug("innerRadiusX", &status);
        MPlug oxPlug = fnDependNode.findPlug("outerRadiusX", &status);

        MPlug iyPlug = fnDependNode.findPlug("innerRadiusY", &status);
        MPlug izPlug = fnDependNode.findPlug("innerRadiusZ", &status);

        MPlug oyPlug = fnDependNode.findPlug("outerRadiusY", &status);
        MPlug ozPlug = fnDependNode.findPlug("outerRadiusZ", &status);

        MPlug ryPlug = fnDependNode.findPlug("rotateY", &status);
        if ( !status ) status.perror ( "No .rotateY plug to connect!" );

        MFnDistanceManip fnInnerManipX( mInnerManipX );
        fnInnerManipX.connectToDistancePlug(ixPlug);
        fnInnerManipX.setStartPoint( mStartPoint );

        MFnDistanceManip fnOuterManipX( mOuterManipX );
        fnOuterManipX.connectToDistancePlug(oxPlug);
        fnOuterManipX.setStartPoint( mStartPoint );

        MFnDistanceManip fnInnerManipY( mInnerManipY );
        fnInnerManipY.connectToDistancePlug(iyPlug);
        fnInnerManipY.setStartPoint( mStartPoint );

        MFnDistanceManip fnOuterManipY( mOuterManipY );
        fnOuterManipY.connectToDistancePlug(oyPlug);
        fnOuterManipY.setStartPoint( mStartPoint );

        MFnDistanceManip fnInnerManipZ( mInnerManipZ );
        fnInnerManipZ.connectToDistancePlug(izPlug);
        fnInnerManipZ.setStartPoint( mStartPoint );

        MFnDistanceManip fnOuterManipZ( mOuterManipZ );
        fnOuterManipZ.connectToDistancePlug(ozPlug);
        fnOuterManipZ.setStartPoint( mStartPoint );

	    MFnDiscManip fnRotateYManip( mRotateYManip );
	    status = fnRotateYManip.connectToAnglePlug(ryPlug);
        if ( !status ) status.perror( "Could not connect manip to .ry plug!" );
	    fnRotateYManip.setCenterPoint( mStartPoint );
    }

    finishAddingManips();

    MPxManipContainer::connectToDependNode(node);        

    return status;
}

//===========================================================================
// p3dDecayRangeManip::CalculateMatrix
//===========================================================================
// Description: Uses the '.rotateY' from the driven node to calculate a
//              rotation matrix. From the rows of this matrix we can
//              derive the normals for the manipulator widgets.
//
// Constraints: Creates a Y rotation matrix.
//
//  Parameters: (void)
//
//      Return: (void)
//
//===========================================================================
void p3dDecayRangeManip::CalculateMatrix( void )
{
    MFnDependencyNode           fnDependNode( mConnectedTo.node() );
    MPlug rotateYPlug = fnDependNode.findPlug( "rotateY" );
    double ry;
    rotateYPlug.getValue( ry );
    mRotateMatrix.setToIdentity();
    mRotateMatrix[0][0] =  cos(ry);
    mRotateMatrix[0][2] = -sin(ry);
    mRotateMatrix[2][0] =  sin(ry);
    mRotateMatrix[2][2] =  cos(ry);
}

void p3dDecayRangeManip::GetNormalX( M3dView& view, MVector& normalX )
{
    MDagPath                    camera;
    view.getCamera( camera );
    MFnCamera                   fnCamera( camera );

    if ( mDecayMode == DecayRange::kDecayModeSphere )
    {
        normalX = fnCamera.rightDirection( MSpace::kWorld );
    }
    else
    {
        normalX.x = mRotateMatrix[0][0];
        normalX.y = mRotateMatrix[0][1];
        normalX.z = mRotateMatrix[0][2];
    }
}

void p3dDecayRangeManip::GetNormalY( M3dView& view, MVector& normalY )
{
    MDagPath                    camera;
    view.getCamera( camera );
    MFnCamera                   fnCamera( camera );

    if ( mDecayMode == DecayRange::kDecayModeSphere )
    {
        normalY = fnCamera.upDirection( MSpace::kWorld );
    }
    else
    {
        normalY.x = mRotateMatrix[1][0];
        normalY.y = mRotateMatrix[1][1];
        normalY.z = mRotateMatrix[1][2];
    }
}

void p3dDecayRangeManip::GetNormalZ( M3dView& view, MVector& normalZ )
{
    MDagPath                    camera;
    view.getCamera( camera );
    MFnCamera                   fnCamera( camera );

    if ( mDecayMode == DecayRange::kDecayModeSphere )
    {
        normalZ = fnCamera.upDirection( MSpace::kWorld );
    }
    else
    {
        normalZ.x = mRotateMatrix[2][0];
        normalZ.y = mRotateMatrix[2][1];
        normalZ.z = mRotateMatrix[2][2];
    }
}

//===========================================================================
// p3dDecayRangeManip::CalculateScaleFactor
//===========================================================================
// Description: Calculates the Scale factor for drawing the manipulator.
//              This is based on a 100-pixel line drawn at the camera's
//              near-clip plane. If the camera is not orthographic then
//              the scale factor is adjusted against the manipulator's
//              distance from the camera.
//
//              ** Thanks to Dean Edmonds (Gooroos Software) !! **
//
// Constraints: 
//
//  Parameters: M3dView& view: The 3D view for which to calculate the scale
//                             factor.
//
//      Return: (bool): FALSE if asked to draw the manip for Sphere mode
//                      in an ortho view; else TRUE.
//
//===========================================================================
bool p3dDecayRangeManip::CalculateScaleFactor( M3dView& view )
{
    MDagPath                    camera;
    view.getCamera( camera );
    MFnCamera                   fnCamera( camera );

    if ( fnCamera.isOrtho() && ( mDecayMode == DecayRange::kDecayModeSphere ) ) return false;

    MDagPath                    transform( camera );
    transform.pop();
    MFnTransform                fnTransform( transform );

	//
	// Find the endpoints of a 100-pixel long line on the near clipping
	// plane of the camera.
	//
	MPoint	leftPoint;
	MPoint	rightPoint;
	MPoint	dummy;

	view.viewToWorld(0, 0, leftPoint, dummy);
	view.viewToWorld(100, 0, rightPoint, dummy);

	MVector	testVector = rightPoint - leftPoint;
	mUiScaleFactor = testVector.length() / 100.0;

    if ( !fnCamera.isOrtho() )
    {
        // ** Thanks to Dean Edmonds (Gooroos Software) !! **

	    //
	    // In an ortho view, a 100-pixel line has the same world-space length
	    // no matter where it is displayed.
	    //
	    // That's not true in a perspective view, though, so we must calculate
	    // its length at the depth of the manip.
	    //

	    //
	    // Get a vector from the camera to the manip.
	    //
	    MPoint	cameraPos(fnTransform.translation(MSpace::kWorld));
	    MVector	manipPosVec = mStartPoint - cameraPos;

	    //
	    // We want to know how far the manip is between the two clipping planes.
	    //
	    // That is easiest to do if the manip lies directly along the viewing
	    // vector. So we take the length of the manip's position vector when
	    // projected onto the viewing vector.
	    //
	    double	angle = fnCamera.viewDirection( MSpace::kWorld ).angle(manipPosVec);
	    double	projectedManipDistance = manipPosVec.length() * cos(angle);

	    //
	    // Find the ratio of the manip's projected distance to the distance of
	    // the near clipping plane.
	    //
	    double	manipDistanceRatio =
	            projectedManipDistance / fnCamera.nearClippingPlane();

	    //
	    // Apply this ratio to the scaleFactor calculated earlier.  This
	    // will give us the scaling for lines drawn at the same depth as
	    // the manip.
	    //
	    mUiScaleFactor *= manipDistanceRatio;
    }

    return true;
}

void p3dDecayRangeManip::AlignManipulators( M3dView& view )
{
    MVector manipNormalX, manipNormalY, manipNormalZ;
    GetNormalX( view, manipNormalX );
    GetNormalY( view, manipNormalY );
    GetNormalZ( view, manipNormalZ );

    // Adjust the all manipulators to align to their appropriate axes.
    MFnDistanceManip            fnDistanceManip( mInnerManipX );
    fnDistanceManip.setDirection( manipNormalX );
    fnDistanceManip.setObject( mOuterManipX );
    fnDistanceManip.setDirection( manipNormalX );

    fnDistanceManip.setObject( mInnerManipY );
    fnDistanceManip.setDirection( manipNormalY );
    fnDistanceManip.setObject( mOuterManipY );
    fnDistanceManip.setDirection( manipNormalY );

    fnDistanceManip.setObject( mInnerManipZ );
    fnDistanceManip.setDirection( manipNormalZ );
    fnDistanceManip.setObject( mOuterManipZ );
    fnDistanceManip.setDirection( manipNormalZ );

}


//===========================================================================
// p3dDecayRangeManip::draw
//===========================================================================
// Description: Draws the manipulator for the p3dDecayRange node.  For each
//              axis a double-arrow manip is drawn for dragging the inner-
//              and outer-radius.
//
//              In Sphere mode only the X axis is drawn, and is aligned in
//              camera-space.
//
// Constraints: Y- and Z- axes are not drawn in Sphere mode.
//              
//              For Sphere mode _no_ manipulators are drawn in ortho
//              views.
//
//  Parameters: 
//
//      Return: 
//
//===========================================================================
void p3dDecayRangeManip::draw(M3dView & view, 
					 const MDagPath & path, 
					 M3dView::DisplayStyle style,
					 M3dView::DisplayStatus status)
{ 
    CalculateMatrix();

    // If view is not applicable for drawing a manipulator, just bail.
    if ( !CalculateScaleFactor( view ) ) return;

    AlignManipulators( view );

// Use Maya's drawing only for observing its behavior.. 
// I'll draw this myself, thank you.
//    MPxManipContainer::draw(view, path, style, status);

    MDagPath                    camera;
    view.getCamera( camera );
    MFnCamera                   fnCamera( camera );

    bool bIsTopDown = fnCamera.isOrtho() && fnCamera.viewDirection(MSpace::kWorld).isEquivalent( MVector::yNegAxis, 0.01 );

    view.beginGL(); 

    glPushAttrib( GL_ENABLE_BIT | GL_CURRENT_BIT | GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT );
    glDisable( GL_LIGHTING );
    glDisable( GL_DEPTH_TEST );
    glDisable( GL_BLEND );
    glDepthMask(GL_FALSE);

    double innerValue, outerValue;
    double radius      = DecayRange::kGlManipRadius * mUiScaleFactor;
    double arrowRadius = DecayRange::kGlArrowRadius * mUiScaleFactor;
    double arrowHeight = DecayRange::kGlArrowHeight * mUiScaleFactor;
    double rotateY;

    MVector manipNormalX, manipNormalY, manipNormalZ;
    GetNormalX( view, manipNormalX );
    GetNormalY( view, manipNormalY );
    GetNormalZ( view, manipNormalZ );

    // NOTE: The "manipulator index" used in MPxManipContainer::getConverterPlugValue()
    //       is determined by the order the manipulators are connected in
    //       MPxManipContainer::connectToDependNode().

    if ( mDecayMode == DecayRange::kDecayModeSphere )
    {
        if ( !fnCamera.isOrtho() )
        {
            // What's the inner- and outer-distances for the X axis?
            getConverterPlugValue( 0, innerValue );
            getConverterPlugValue( 1, outerValue );
            MPoint startInnerX( mStartPoint );
            MPoint startOuterX( mStartPoint );
            // Move the cone point outward by this distance.
            startInnerX += manipNormalX * innerValue;
            startOuterX += manipNormalX * outerValue;
            // Draw the X-axis manipulator.
            fillCyl( radius, outerValue - arrowHeight, mStartPoint, manipNormalX, 8, DecayRange::kGlManipSphere );
            fillCone( arrowRadius, arrowHeight, startInnerX, manipNormalX, 8, DecayRange::kGlManipSphere );
            fillCone( arrowRadius, arrowHeight, startOuterX, manipNormalX, 8, DecayRange::kGlManipSphere );
        }

//        if ( bIsTopDown )
//        {
//            // What's the inner- and outer-distances for the Z axis?
//            getConverterPlugValue( 2, innerValue );
//            getConverterPlugValue( 3, outerValue );
//            MPoint startInnerZ( mStartPoint );
//            MPoint startOuterZ( mStartPoint );
//            // Move the cone point outward by this distance.
//            startInnerZ.z += innerValue;
//            startOuterZ.z += outerValue;
//            // Draw the X-axis manipulator.
//            fillCyl( radius, outerValue - arrowHeight, mStartPoint, MVector::zAxis, 8, DecayRange::kGlManipColourZ );
//            fillCone( arrowRadius, arrowHeight, startInnerZ, MVector::zAxis, 8, DecayRange::kGlManipColourZ );
//            fillCone( arrowRadius, arrowHeight, startOuterZ, MVector::zAxis, 8, DecayRange::kGlManipColourZ );
//        }
    }

    // The Y- and Z-axis manipulators are drawn only for Cube mode.
    if ( mDecayMode == DecayRange::kDecayModeCube )
    {
        // What's the inner- and outer-distances for the X axis?
        getConverterPlugValue( 0, innerValue );
        getConverterPlugValue( 1, outerValue );
        MPoint startInnerX( mStartPoint );
        MPoint startOuterX( mStartPoint );
        // Move the cone point outward by this distance.
        startInnerX += manipNormalX * innerValue;
        startOuterX += manipNormalX * outerValue;
        // Draw the X-axis manipulator.
        fillCyl( radius, outerValue - arrowHeight, mStartPoint, manipNormalX, 8, DecayRange::kGlManipColourX);
        fillCone( arrowRadius, arrowHeight, startInnerX, manipNormalX, 8, DecayRange::kGlManipColourX );
        fillCone( arrowRadius, arrowHeight, startOuterX, manipNormalX, 8, DecayRange::kGlManipColourX );

        // What's the inner- and outer-distances for the Y axis?
        getConverterPlugValue( 2, innerValue );
        getConverterPlugValue( 3, outerValue );
        MPoint startInnerY( mStartPoint );
        MPoint startOuterY( mStartPoint );
        // Move the cone point outward by this distance.
        startInnerY += manipNormalY * innerValue;
        startOuterY += manipNormalY * outerValue;
        // Draw the X-axis manipulator.
        fillCyl( radius, outerValue - arrowHeight, mStartPoint, manipNormalY, 8, DecayRange::kGlManipColourY );
        fillCone( arrowRadius, arrowHeight, startInnerY, manipNormalY, 8, DecayRange::kGlManipColourY );
        fillCone( arrowRadius, arrowHeight, startOuterY, manipNormalY, 8, DecayRange::kGlManipColourY );

        // What's the inner- and outer-distances for the Z axis?
        getConverterPlugValue( 4, innerValue );
        getConverterPlugValue( 5, outerValue );
        MPoint startInnerZ( mStartPoint );
        MPoint startOuterZ( mStartPoint );
        // Move the cone point outward by this distance.
        startInnerZ += manipNormalZ * innerValue;
        startOuterZ += manipNormalZ * outerValue;
        // Draw the X-axis manipulator.
        fillCyl( radius, outerValue - arrowHeight, mStartPoint, manipNormalZ, 8, DecayRange::kGlManipColourZ );
        fillCone( arrowRadius, arrowHeight, startInnerZ, manipNormalZ, 8, DecayRange::kGlManipColourZ );
        fillCone( arrowRadius, arrowHeight, startOuterZ, manipNormalZ, 8, DecayRange::kGlManipColourZ );

        getConverterPlugValue( 6, rotateY );
        double radius = 46.0 * mUiScaleFactor;
        drawDisc( radius, mStartPoint, MVector::yAxis, 32, DecayRange::kGLManipColourRotateY );
    }

    glPopAttrib();

    view.endGL();
}
