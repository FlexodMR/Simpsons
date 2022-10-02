//===========================================================================
// Copyright ©2002 Radical Entertainment Ltd.  All rights reserved.
//
// Created:     28 June, 2002
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

#include "../inc/gangChannels.hpp"

#include <maya/MAnimUtil.h>
#include <maya/MObjectArray.h>
#include <maya/MFnDependencyNode.h>
#include <maya/MPlugArray.h>
#include <maya/MDGModifier.h>
#include <maya/MSelectionList.h>
#include <maya/MGlobal.h>

#include <bewert_debug.h>

//===========================================================================
// Local Constants, Typedefs, and Macros
//===========================================================================

//===========================================================================
// Global Data, Local Data, Local Classes
//===========================================================================

//===========================================================================
// Constructor / Destructor
//===========================================================================



//===========================================================================
// COPY Constructor / Assignment
//===========================================================================

//===========================================================================
// Operator Overloads
//===========================================================================

ostream& operator << ( ostream& os, const CGangChannels& gang )
{
    os << "  Red: \"" << gang.mVertexColor[ CGangChannels::kRed   ] << "\"" << endl;
    os << "Green: \"" << gang.mVertexColor[ CGangChannels::kGreen ] << "\"" << endl;
    os << " Blue: \"" << gang.mVertexColor[ CGangChannels::kBlue  ] << "\"" << endl;
    os << "Alpha: \"" << gang.mVertexColor[ CGangChannels::kAlpha ] << "\"" << endl;

    return os;
}

//===========================================================================
// Member Functions
//===========================================================================

void CGangChannels::GetVertexColor( MString& vertexColor, CGangChannels::Channel channel )
{
    vertexColor = mVertexColor[channel];
}

bool CGangChannels::SetVertexColor( MPlug& vc, CGangChannels::Channel channel )
{
    bool                        bAssigned = false;

    // If this channel is already assigned, don't reassign
    if ( mVertexColor[channel] != "" ) return false;

//    CDEBUG << "SetVertexColor( " << vc.name() << " )" << endl;

    MStatus                     status;

    // Is this plug animated?
    MObjectArray            objects;
    if ( MAnimUtil::findAnimation( vc, objects, &status ) )
    {
        MFnDependencyNode       fnDependNode( objects[0] );
        mVertexColor[channel] = fnDependNode.name();
        bAssigned = true;
    }

    return bAssigned;
}

MStatus CGangChannels::DisconnectVertexColor( MPlug& vc, MDGModifier* pModifier, bool bDoIt )
{
    MStatus                     status = MS::kSuccess;

    MPlugArray                  plugs;
    if ( vc.connectedTo( plugs, true /* asDst */, false, &status ) )
    {
        status = MS::kFailure;

        MObject                 from( plugs[0].node() );
        MFnDependencyNode       fnDependNode( from );
        MString connectedFrom( fnDependNode.name() );

//        CDEBUG << "Disconnect \"" << plugs[0].name() << "\" from \"" << vc.name() << "\"" << endl;

        status = pModifier->disconnect( plugs[0], vc );

        // Should clean up 'from' node if not used.
        if ( ( status == MS::kSuccess ) &&
             ( connectedFrom != mVertexColor[0] ) && 
             ( connectedFrom != mVertexColor[1] ) && 
             ( connectedFrom != mVertexColor[2] ) && 
             ( connectedFrom != mVertexColor[3] ) )
        {
            status = pModifier->deleteNode( from );
        }

        if ( ( status == MS::kSuccess ) && ( bDoIt ) ) 
        {
            status = pModifier->doIt();
        }
    }
    
    // If this returns Failure then caller should DESTROY the MDGModifier
    // without performing a ::doIt().
    return status;
}

bool CGangChannels::ConnectVertexColor( MPlug& vc, CGangChannels::Channel channel, MDGModifier* pModifier, bool bDoIt )
{
    MStatus                     status;

    bool                        bConnected = false;

// ----------------  Is this plug already connected?  ----------------
    status = DisconnectVertexColor( vc, pModifier, false );
    if ( status != MS::kSuccess )
    {
        return false;
    }

// ----------------  Connect to the specified channel  ----------------
    
    // First must find node with specified name.
//    MSelectionList              findNode;
//    MGlobal::getSelectionListByName( mVertexColor[channel], findNode );
//
//    if ( findNode.length() > 0 )

    MObject animNode = GetMObject( channel, &status );
    if ( status == MS::kSuccess )
    {
//        MObject                 dependNode;
//        findNode.getDependNode( 0, dependNode );
        MFnDependencyNode       fnDependNode( animNode );
        MPlug output = fnDependNode.findPlug( "output", &status );

        if ( status == MS::kSuccess )
        {
//            CDEBUG << "Connect \"" << output.name() << "\" to \"" << vc.name() << "\"" << endl;

            status = pModifier->connect( output, vc );
            if ( bDoIt ) status = pModifier->doIt();

            if ( status == MS::kSuccess ) bConnected = true;
        }
    }
//    else
//    {
//        MGlobal::displayWarning( "Unable to find source animCurve: " + mVertexColor[channel] );
//    }

    // If this returns FALSE then caller should DESTROY the MDGModifier
    // without performing a ::doIt().
    return bConnected;
}

bool CGangChannels::Has( CGangChannels::Channel channel )
{
    return mVertexColor[ channel ] != "";
}

MObject CGangChannels::GetMObject( CGangChannels::Channel channel, MStatus* pStatus )
{
    MStatus                     status = MS::kFailure;

    MObject                     animNode( MObject::kNullObj );

    // First must find node with specified name.
    MSelectionList              findNode;
    MGlobal::getSelectionListByName( mVertexColor[channel], findNode );

    if ( findNode.length() > 0 )
    {
        status = findNode.getDependNode( 0, animNode );
    }
    
    if ( pStatus != NULL ) *pStatus = status;

    return animNode;
}
