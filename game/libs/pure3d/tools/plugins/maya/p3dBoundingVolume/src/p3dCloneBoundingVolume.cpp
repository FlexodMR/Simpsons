//===========================================================================
// Copyright ©2002 Radical Entertainment Ltd.  All rights reserved.
//
// Created:     19 September, 2002
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

#include "p3dCloneBoundingVolume.hpp"

#include "boundingConstants.hpp"

#include <maya/MArgList.h>
#include <maya/MDagPath.h>
#include <maya/MFnDependencyNode.h>
#include <maya/MTransformationMatrix.h>
#include <maya/MMatrix.h>
#include <maya/MQuaternion.h>
#include <maya/MEulerRotation.h>
#include <maya/MFnTransform.h>
#include <maya/MSelectionList.h>
#include <maya/MItSelectionList.h>
#include <maya/MItDag.h>
#include <maya/MDagModifier.h>
#include <maya/MGlobal.h>

namespace P3DBoundingVolume
{

//===========================================================================
// Local Constants, Typedefs, and Macros
//===========================================================================

const unsigned int kNumBoundingVolumeTypes = 5;
const char* BOUNDING_VOLUME_TYPES[kNumBoundingVolumeTypes] =
{
    "box",
    "sphere",
    "cylinder",
    "capsule",
    "plane"
};

//===========================================================================
// Global Data, Local Data, Local Classes
//===========================================================================

//===========================================================================
// Constructor / Destructor
//===========================================================================

p3dCloneBoundingVolumeCmd::p3dCloneBoundingVolumeCmd()
{
}

p3dCloneBoundingVolumeCmd::~p3dCloneBoundingVolumeCmd()
{
    Clear();
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


void p3dCloneBoundingVolumeCmd::Clear( void )
{
    mSelectedBoundingVolumes.clear();
    FlushUndo();
}

void p3dCloneBoundingVolumeCmd::FlushUndo( void )
{
    int i;
    for ( i = 0; i < mpCreateBoundingVolumeCmd.Count(); i++ )
    {
        delete mpCreateBoundingVolumeCmd[i];
    }
    mpCreateBoundingVolumeCmd.ZeroCount();
}

void* p3dCloneBoundingVolumeCmd::creator()
{
    return new p3dCloneBoundingVolumeCmd;
}

MStatus p3dCloneBoundingVolumeCmd::doIt( const MArgList& args )
{
    MStatus                     status = MS::kSuccess;

    Clear();

    // Get list of selected Bounding Volumes
    MSelectionList              selList;
    MGlobal::getActiveSelectionList( selList );

    MItSelectionList            itList( selList );
    for ( /* nothing */; !itList.isDone(); itList.next() )
    {
        MDagPath                dag;
        itList.getDagPath( dag );

        if ( dag.hasFn( MFn::kTransform ) ) dag.extendToShape();

        if ( MFnDependencyNode(dag.node()).typeId() == P3D_BOUNDING_VOLUME_ID )
        {
            mSelectedBoundingVolumes.append( dag );            
        }
    }

    return redoIt();
}

MStatus p3dCloneBoundingVolumeCmd::redoIt( void )
{
    MStatus                     status = MS::kSuccess;

    unsigned int i;
    for ( i = 0; i < mSelectedBoundingVolumes.length(); i++ )
    {
        MArgList                argList;
		MTransformationMatrix   MTM;
        MVector                 s;
        MEulerRotation		    r;
        MVector                 t;

        MFnDependencyNode       fnDependNode( mSelectedBoundingVolumes[i].node() );
        MPlug typePlug = fnDependNode.findPlug( "boundingType", &status );
        if ( status != MS::kSuccess ) continue;

        MPlug scalePlug;
        scalePlug = fnDependNode.findPlug( "scaleInput0", &status );
        if ( status == MS::kSuccess ) scalePlug.getValue( s.x );
        scalePlug = fnDependNode.findPlug( "scaleInput1", &status );
        if ( status == MS::kSuccess ) scalePlug.getValue( s.y );
        scalePlug = fnDependNode.findPlug( "scaleInput2", &status );
        if ( status == MS::kSuccess ) scalePlug.getValue( s.z );

        MDagPath                transform( mSelectedBoundingVolumes[i] );
        transform.pop();

        int boundingType;
        typePlug.getValue( boundingType );

        MFnTransform            fnTransform( transform );
        MTM = transform.inclusiveMatrix();  // fnTransform.transformation();

        // Get Scale
//        double                  adScale[3];
//        MTM.getScale( adScale, MSpace::kPostTransform );
//        s = MVector( adScale[0], adScale[1], adScale[2] );

        // Get Rotation
		MQuaternion obRotationQuaternion = MTM.rotation();
		MMatrix mmRotationMatrix = obRotationQuaternion.asMatrix();
        r = MTM.eulerRotation();

        // Get Translation
		t = MTM.translation( MSpace::kPostTransform );

        // Is this Bounding Volume a child of a mesh?
        transform.pop();    // The parent of the Bounding Volume transform (joint)
        MFnDagNode              fnDag( transform );
        // If there's only a single child then its the Bounding Volume,
        // and this is likely one of those extra Maya transforms.
        if ( ( fnDag.childCount() == 1 ) && ( transform.length() > 1 ) )
        {
            transform.pop();
        }

        argList.addArg( MString( "-t" ) );
        argList.addArg( MString( BOUNDING_VOLUME_TYPES[boundingType] ) );
        argList.addArg( MString( "-sx" ) );
        argList.addArg( s.x );
        argList.addArg( MString( "-sy" ) );
        argList.addArg( s.y );
        argList.addArg( MString( "-sz" ) );
        argList.addArg( s.z );
        argList.addArg( MString( "-rx" ) );
        argList.addArg( r.x );
        argList.addArg( MString( "-ry" ) );
        argList.addArg( r.y );
        argList.addArg( MString( "-rz" ) );
        argList.addArg( r.z );
        argList.addArg( MString( "-tx" ) );
        argList.addArg( t.x );
        argList.addArg( MString( "-ty" ) );
        argList.addArg( t.y );
        argList.addArg( MString( "-tz" ) );
        argList.addArg( t.z );

        createBoundingVolumeCmd* pCreateCmd = new createBoundingVolumeCmd;
        mpCreateBoundingVolumeCmd.Append( pCreateCmd );


        pCreateCmd->doIt( argList );

        MObjectArray            boundingVolumes;
        if ( pCreateCmd->GetBoundingVolumes( boundingVolumes ) )
        {
            unsigned int b;
            for ( b = 0; b < boundingVolumes.length(); b++ )
            {
                MDagModifier                    dagModifier;

                // Perform an '-absolute' parent - 
                // Transform the BVz matrix by the inverse of the parent first.
                MMatrix     matrix = transform.inclusiveMatrixInverse();

                fnTransform.setObject( boundingVolumes[b] );
                MTM = fnTransform.transformation();

                matrix = MTM.asMatrix() * matrix;
                MTM = matrix;

                fnTransform.set( MTM );

                // Parent each bounding volume to the mesh transform
                dagModifier.reparentNode( boundingVolumes[b], transform.node() );

                dagModifier.doIt();

                // And now must reset Scale factor.
                status = fnDependNode.setObject( boundingVolumes[b] );

                // The shape's '.scaleInput*' plugs will be driven by transform's '.scale' plug.
                scalePlug = fnDependNode.findPlug( "scaleX", &status );
                if ( status == MS::kSuccess ) scalePlug.setValue( s.x );
                scalePlug = fnDependNode.findPlug( "scaleY", &status );
                if ( status == MS::kSuccess ) scalePlug.setValue( s.y );
                scalePlug = fnDependNode.findPlug( "scaleZ", &status );
                if ( status == MS::kSuccess ) scalePlug.setValue( s.z );

                // Communicate results to MEL
                appendToResult( fnDependNode.name() );

            }

        }


    }

    return status;
}

MStatus p3dCloneBoundingVolumeCmd::undoIt( void )
{
    MStatus                     status = MS::kSuccess;

    int i;
    for ( i = 0; i < mpCreateBoundingVolumeCmd.Count(); i++ )
    {
        mpCreateBoundingVolumeCmd[i]->undoIt();
    }

    FlushUndo();

    return status;
}

} //namespace P3DBoundingVolume
