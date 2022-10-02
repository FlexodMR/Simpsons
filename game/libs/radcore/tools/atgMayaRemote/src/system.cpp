//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


//=============================================================================
//
// File:        system.cpp
//
// Subsystem:	atgMayaRemote
//
// Description:	This file contains the implementation of the system object.
//              Responsible for performing system initialization.
//
// Author:		Peter Mielcarski
//
// Revisions:	V1.00	Sept 23, 2002
//
// Notes:       
//
//=============================================================================

//=============================================================================
// Include Files
//=============================================================================//

#include <maya/MFnPlugin.h>
#include <maya/MGlobal.h>
#include "system.hpp"
#include "commands.hpp"
#include "client.hpp"

//=============================================================================
// Global Data Objects.
//=============================================================================//

AtgMayaRemoteSystem theSystem;

//=============================================================================
// Public Functions
//=============================================================================

//=============================================================================
// Function:    AtgMayaRemoteSystem::AtgMayaRemoteSystem
//=============================================================================
// Description: Constructor. Set up any data structures.
//
// Parameters:  n/a
//              
// Returns:     n/a
//
// Notes:       
//------------------------------------------------------------------------------

AtgMayaRemoteSystem::AtgMayaRemoteSystem( void )
{

}

//=============================================================================
// Function:    AtgMayaRemoteSystem::~AtgMayaRemoteSystem
//=============================================================================
// Description: Destructor. Clean up system object
//
// Parameters:  n/a
//              
// Returns:     n/a
//
// Notes:       
//------------------------------------------------------------------------------

AtgMayaRemoteSystem::~AtgMayaRemoteSystem( void )
{

}

//=============================================================================
// Function:    AtgMayaRemoteSystem::Initialize
//=============================================================================
// Description: This function is invoked by Maya when the plug-in is first 
//              loaded.
//
// Parameters:  obj - a handle to the plug-in object (use MFnPlugin to access it)
//              
// Returns:     MStatus
//
// Notes:       
//------------------------------------------------------------------------------

MStatus AtgMayaRemoteSystem::Initialize
(
    MObject obj
)
{
    //
    // Display info regarding initialization of the plug-in
    //
    MGlobal::displayInfo( "Initializing Atg Maya Remote\n" );

    //
    // Get reference to the client used for communication,
    //
    m_pClient = AtgMayaRemoteClient::Get( );
    m_pClient->AddRef( );

    //
    // Lets add the various commands.
    //
	MStatus   status;
	MFnPlugin plugin( obj, "Radical Entertainment - Advanced Technology Group", "4.0", "Any");

	status = plugin.registerCommand( "AtgRemoteConnect", AtgMayaRemoteConnect::creator );
	if( !status )
    {
		status.perror("Failed to register AtgRemoteConnect");
		return( status );
	}

	status = plugin.registerCommand( "AtgRemoteDisconnect", AtgMayaRemoteDisconnect::creator );
	if( !status )
    {
        plugin.deregisterCommand( "AtgRemoteConnect" );
		status.perror("Failed to register AtgRemoteDisconnect");
		return( status );
	}

	status = plugin.registerCommand( "AtgRemoteCommand", AtgMayaRemoteCommand::creator );
	if( !status )
    {
        plugin.deregisterCommand( "AtgRemoteConnect" );
        plugin.deregisterCommand( "AtgRemoteDisconnect" );
		status.perror("Failed to register AtgRemoteCommand");
		return( status );
	}

	return( status );
}

//=============================================================================
// Function:    AtgMayaRemoteSystem::Terminate
//=============================================================================
// Description: This function is invoked by Maya when the plug-in is unloaded
//
// Parameters:  obj - a handle to the plug-in object (use MFnPlugin to access it)
//              
// Returns:     MStatus
//
// Notes:       
//------------------------------------------------------------------------------

MStatus AtgMayaRemoteSystem::Terminate
(
    MObject obj
)
{
    //
    // Display info regarding termination of the plug-in
    //
    MGlobal::displayInfo( "Terminating Atg Maya Remote\n" );

	MStatus   status;
	MFnPlugin plugin( obj );

	status = plugin.deregisterCommand( "AtgRemoteConnect" );
	status = plugin.deregisterCommand( "AtgRemoteDisconnect" );
	status = plugin.deregisterCommand( "AtgRemoteCommand" );

	if( !status )
    {
		status.perror("deregisterCommand");
	}

    //
    // Free refernce to the client object.
    //
    m_pClient->Release( );

	return( status );
}
