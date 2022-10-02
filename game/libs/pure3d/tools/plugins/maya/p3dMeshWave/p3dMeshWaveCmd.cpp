//===========================================================================
// Copyright ©2002 Radical Entertainment Ltd.  All rights reserved.
//
// Created:     24 May, 2002
//
// Component:   p3dMeshWaveCmd.h
//
// Description: MEL command to create the p3dMeshWave node and wire it
//              up to the specified mesh node's dependency graph.
//
// Constraints: Undo added/fixed: 08 Oct 2002
//
// Creator:     Bryan Ewert
//
//===========================================================================
//===========================================================================
// Includes
//===========================================================================

#include "p3dMeshWaveCmd.h"

#include <maya/MGlobal.h>
#include <maya/MSelectionList.h>
#include <maya/MFnDagNode.h>
#include <maya/MFnDependencyNode.h>
#include <maya/MPlug.h>
#include <maya/MFnMesh.h>
#include <maya/MPlugArray.h>

#include <iostream.h>

//===========================================================================
// Local Constants, Typedefs, and Macros
//===========================================================================

//===========================================================================
// Global Data, Local Data, Local Classes
//===========================================================================

//===========================================================================
// Constructor / Destructor
//===========================================================================

p3dMeshWaveCmd::p3dMeshWaveCmd() 
:   mDGModifierCreate( NULL ),
    mDGModifierDisconnect( NULL ),
    mDGModifierConnect( NULL )
{
}
p3dMeshWaveCmd::~p3dMeshWaveCmd() 
{
}

//===========================================================================
// Operator Overloads
//===========================================================================

//===========================================================================
// Member Functions
//===========================================================================

MStatus p3dMeshWaveCmd::doIt( const MArgList& args ) 
{
    MStatus                     status;

    MString                     name;
    name = args.asString( 0, &status );
    if ( status != MS::kSuccess )
    {
        MGlobal::displayError( "No object specified." );
        return status;
    }

    MSelectionList              selList;
    status = MGlobal::getSelectionListByName( name, selList );
    if ( status != MS::kSuccess )
    {
        MGlobal::displayError( "Object not found: " + name );
        return status;
    }

    status = selList.getDagPath( 0, mOriginalMesh );
    if ( status != MS::kSuccess )
    {
        MGlobal::displayError( "Object not a mesh: " + name );
        return status;
    }

    mOriginalMesh.extendToShape();

    if ( !mOriginalMesh.hasFn( MFn::kMesh ) )
    {
        MGlobal::displayError( "Object not a mesh: " + name );
        return status;
    }

    bool isIntermediate = false;
    MFnDependencyNode           fnDependNode( mOriginalMesh.node() );
    MPlug intermediatePlug = fnDependNode.findPlug( "intermediateObject", &status );
    intermediatePlug.getValue( isIntermediate );
    if ( isIntermediate )
    {
        MGlobal::displayError( "Can not operate on intermediate object: " + name );
        return status;
    }

    MPlug currentUVSet = fnDependNode.findPlug( "currentUVSet", &status );
    if ( status == MS::kSuccess )
    {
        currentUVSet.getValue( mCurrentUVSet );
    }

    status = redoIt();

    return status;
}

MStatus p3dMeshWaveCmd::redoIt() 
{

    MStatus                     status;

    // --------  Allocate new MDGModifiers  --------
    mDGModifierCreate = new MDGModifier;
    mDGModifierDisconnect = new MDGModifier;
    mDGModifierConnect = new MDGModifier;

    // --------  Duplicate the mesh node  ---------

    MObject                     newMesh;
    MFnMesh                     fnOriginalMesh( mOriginalMesh );

    MDagPath                    transform( mOriginalMesh );
    transform.pop();

    MFnMesh                     fnNewMesh;
    newMesh = fnNewMesh.copy( mOriginalMesh.node(), transform.node(), &status );

    status = MDagPath::getAPathTo( newMesh, mNewMesh );
    if ( status != MS::kSuccess )
    {
        MGlobal::displayError( "FAILED to generate intermediate node." );
        return status;
    }

    status = fnNewMesh.setObject( mNewMesh );
    if ( status != MS::kSuccess )
    {
        MGlobal::displayError( "FAILED to get fnDagNode for new mesh." );
        return status;
    }

    // ---------  Set duplicate node to be an intermediate  --------

    MPlug intermediatePlug = fnNewMesh.findPlug( "intermediateObject", &status );
    intermediatePlug.setValue( true );

    // --------  Create the p3dMeshWave node  --------
    MObject meshWaveNode = mDGModifierCreate->createNode( MString( "p3dMeshWave" ), &status );
    if ( status != MS::kSuccess )
    {
        MGlobal::displayError( "FAILED to generate p3dMeshWave node." );
        return status;
    }

    mDGModifierCreate->doIt();

    // Must store NAME for new p3dMeshWave node.
    // Storing MObject will cause Undo/Redo to CRASH. And no, I have no idea why.
    MFnDependencyNode           fnMeshWave( meshWaveNode );
    mMeshWaveNodeName = fnMeshWave.name();

    // --------  Set target UVSet Name --------
    MPlug uvSetName = fnMeshWave.findPlug( "uvSetName", &status );
    if ( status == MS::kSuccess )
    {
        uvSetName.setValue( mCurrentUVSet );
    }

    // --------  Get all the necessary plugs  --------
    MPlug inNewMeshPlug = fnNewMesh.findPlug( "inMesh", &status );
    if ( status != MS::kSuccess )
    {
        MGlobal::displayError( "FAILED to get .inMesh plug from new mesh." );
        return status;
    }
    MPlug outNewMeshPlug = fnNewMesh.findPlug( "outMesh", &status );

    MPlug inMeshWavePlug = fnMeshWave.findPlug( "inMesh", &status );
    MPlug outMeshWavePlug = fnMeshWave.findPlug( "outMesh", &status );
    if ( status != MS::kSuccess )
    {
        MGlobal::displayError( "FAILED to get .outMesh plug from p3dMeshWave node." );
        return status;
    }

    MPlug inOriginalMeshPlug = fnOriginalMesh.findPlug( "inMesh", &status );

    // ---------  Determine if this needs to be inserted into Construction History  --------

    MPlugArray connectedTo;
    if ( inOriginalMeshPlug.connectedTo( connectedTo, true /* asDst */, false, &status ) )
    {
        mDGModifierDisconnect->disconnect( connectedTo[0], inOriginalMeshPlug );
        mDGModifierDisconnect->connect( connectedTo[0], inNewMeshPlug );
        mDGModifierDisconnect->doIt();
    }

    // --------  Wire up the DG network  --------

    status = mDGModifierConnect->connect( outNewMeshPlug, inMeshWavePlug );
    if ( status != MS::kSuccess )
    {
        MGlobal::displayError( "FAILED to connect original mesh to p3dMeshWave node." );
        return status;
    }

    status = mDGModifierConnect->connect( outMeshWavePlug, inOriginalMeshPlug );
    if ( status != MS::kSuccess )
    {
        MGlobal::displayError( "FAILED to connect p3dMeshWave node to new mesh." );
        return status;
    }

    // --------  Find the time node  ---------
    MSelectionList              selList;
    status = MGlobal::getSelectionListByName( "time1", selList );
    if ( status == MS::kSuccess )
    {
        bool                    bAllOK = true;
        MObject                 timeNode;
        selList.getDependNode( 0, timeNode );

        MFnDependencyNode       fnTime( timeNode, &status );
        bAllOK &= ( status == MS::kSuccess );
        MPlug outTimePlug = fnTime.findPlug( "outTime", &status );
        bAllOK &= ( status == MS::kSuccess );
        MPlug inTimePlug = fnMeshWave.findPlug( "time", &status );
        bAllOK &= ( status == MS::kSuccess );

        if ( bAllOK )
        {
            mDGModifierConnect->connect( outTimePlug, inTimePlug );
        }
        else
        {
            MGlobal::displayError( "FAILED to find time1 node/plug." );
            return status;
        }
    }

    status = mDGModifierConnect->doIt();
    if ( status != MS::kSuccess )
    {
        MGlobal::displayError( "After all that, it FAILED!" );
        return status;
    }

    setResult( mMeshWaveNodeName );

    return MS::kSuccess;
}

MStatus p3dMeshWaveCmd::undoIt() 
{
    MStatus                     status;

    // --------  Disconnect everything  --------
    status = mDGModifierConnect->undoIt();
    if ( status != MS::kSuccess ) MGlobal::displayError( " !! FAILED to undo mDGModifierConnect !! " );

    // --------  Disconnect everything  --------
    status = mDGModifierDisconnect->undoIt();
    if ( status != MS::kSuccess ) MGlobal::displayError( " !! FAILED to undo mDGModifierDisconnect !! " );

    // --------  Delete the p3dMeshWave node  --------
    status = mDGModifierCreate->undoIt();
    if ( status != MS::kSuccess ) MGlobal::displayError( " !! FAILED to undo mDGModifierCreate !! " );

    // --------  Restore non-intermediate status of original mesh  --------
//    MFnDagNode                  fnOriginalMesh( mOriginalMesh);
//    MPlug intermediatePlug = fnOriginalMesh.findPlug( "intermediateObject" );
//    intermediatePlug.setValue( false );

    // --------  Delete the duplicate mesh  --------
    MGlobal::deleteNode( mNewMesh.node() );

    // --------  Delete the MDGModifier nodes  --------
    delete mDGModifierConnect;
    mDGModifierConnect = NULL;
    delete mDGModifierDisconnect;
    mDGModifierDisconnect = NULL;
    delete mDGModifierCreate;
    mDGModifierCreate = NULL;

    return MS::kSuccess;
}

bool p3dMeshWaveCmd::isUndoable() const 
{
    return true;
}

void* p3dMeshWaveCmd::creator() 
{
    return new p3dMeshWaveCmd();
}
