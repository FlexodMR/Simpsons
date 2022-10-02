//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


//=============================================================================
//
// File:        commands.cpp
//
// Subsystem:	atgMayaRemote
//
// Description:	This file contains the implementation the various command
//              objects.
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

#include <maya/MGlobal.h>
#include <maya/MArgList.h>
#include "system.hpp"
#include "commands.hpp"
#include "client.hpp"

//=============================================================================
// Local Definitions
//=============================================================================//


//=============================================================================
// Public Functions
//=============================================================================

//=============================================================================
// Function:    AtgMayaRemoteConnect::AtgMayaRemoteConnect
//=============================================================================
// Description: Constructor.
//
// Parameters:  pointer to communication cleint object.
//              
// Returns:     n/a
//
// Notes:       
//------------------------------------------------------------------------------

AtgMayaRemoteConnect::AtgMayaRemoteConnect( AtgMayaRemoteClient* pClient )
{
    //
    // Save the refernce to the client object.
    //
    m_pClient = pClient;
    m_pClient->AddRef( );
}

//=============================================================================
// Function:    AtgMayaRemoteConnect::AtgMayaRemoteConnect
//=============================================================================
// Description: Destructor
//
// Parameters:  n/a
//              
// Returns:     n/a
//
// Notes:       
//------------------------------------------------------------------------------

AtgMayaRemoteConnect::~AtgMayaRemoteConnect( void )
{
    //
    // Release reference to communication client.
    //
    m_pClient->Release( );

}

//=============================================================================
// Function:    AtgMayaRemoteConnect::creator
//=============================================================================
// Description: Object Factory
//
// Parameters:  n/a
//              
// Returns:     command instance
//
// Notes:       
//------------------------------------------------------------------------------

void* AtgMayaRemoteConnect::creator( void )
{
    //
    // Simply construct the object and return it.
    //
	return( new AtgMayaRemoteConnect( AtgMayaRemoteClient::Get( ) ) );
}

//=============================================================================
// Function:    AtgMayaRemoteConnect::doIt
//=============================================================================
// Description: Resposible for carry out the connect request.
//
// Parameters:  Command argument list. 
//              
// Returns:     MStatus
//
// Notes:       Syntax for command is AtgRemoteConnect <optional Target Name>
//              Examples:
//                          AtgRemoteConnect
//                          AtgRemoteConnect PS2DevUnit
//                          AtgRemoteConnect GameCubeGDev            
//------------------------------------------------------------------------------

MStatus AtgMayaRemoteConnect::doIt
(
    const MArgList& argList
)
{
    //
    // Check the number of arguments. If 0 or 1, things are fine.
    //
    if( argList.length( ) <= 1 )
    {
        bool result;
    
        //
        // Connect to the default target.
        //
        if( argList.length( ) == 0 )
        {
            result = m_pClient->Connect( NULL );
        }
        else
        {
            result = m_pClient->Connect( argList.asString( 0 ).asChar( ) );
        }
                           
        if( result == false )
        {
          	return( MS::kFailure );
        }
        else
        {
        	return( MS::kSuccess );
        }  
    }            
    else
    {
        //
        // Incorrect number of arguments. Display usage.
        //
        MGlobal::displayError( "usage: AtgRemoteConnect [optional target name ]" );

       	return( MS::kFailure );

    }

	return( MS::kSuccess );
}

//=============================================================================
// Function:    AtgMayaRemoteDisconnect::AtgMayaRemoteDisconnect
//=============================================================================
// Description: Constructor.
//
// Parameters:  pointer to communication cleint object.
//              
// Returns:     n/a
//
// Notes:       
//------------------------------------------------------------------------------

AtgMayaRemoteDisconnect::AtgMayaRemoteDisconnect( AtgMayaRemoteClient* pClient )
{
    //
    // Save the refernce to the client object.
    //
    m_pClient = pClient;
    m_pClient->AddRef( );

}

//=============================================================================
// Function:    AtgMayaRemoteDisconnect::AtgMayaRemoteDisconnect
//=============================================================================
// Description: Destructor
//
// Parameters:  n/a
//              
// Returns:     n/a
//
// Notes:       
//------------------------------------------------------------------------------

AtgMayaRemoteDisconnect::~AtgMayaRemoteDisconnect( void )
{
    //
    // Release reference to communication client.
    //
    m_pClient->Release( );
}

//=============================================================================
// Function:    AtgMayaRemoteDisconnect::creator
//=============================================================================
// Description: Object Factory
//
// Parameters:  n/a
//              
// Returns:     command instance
//
// Notes:       
//------------------------------------------------------------------------------

void* AtgMayaRemoteDisconnect::creator( void )
{
    //
    // Simply construct the object and return it.

	return( new AtgMayaRemoteDisconnect( AtgMayaRemoteClient::Get( ) ) );
}

//=============================================================================
// Function:    AtgMayaRemoteDisconnect::doIt
//=============================================================================
// Description: Resposible for carry out the disconnect request.
//
// Parameters:  Command argument list
//              
// Returns:     MStatus
//
// Notes:       
//------------------------------------------------------------------------------

MStatus AtgMayaRemoteDisconnect::doIt
(
    const MArgList& argList
)
{
    //
    // Check the number of arguments. Must be zero
    //
    if( argList.length( ) == 0 )
    {
        bool result;
    
        result = m_pClient->Disconnect(  );
                           
        if( result == false )
        {
          	return( MS::kFailure );
        }
        else
        {
        	return( MS::kSuccess );
        }  
    }            
    else
    {
        //
        // Incorrect number of arguments. Display usage.
        //
        MGlobal::displayError( "usage: AtgRemoteDisconnect" );

       	return( MS::kFailure );

    }

	return( MS::kSuccess );
}

//=============================================================================
// Function:    AtgMayaRemoteCommand::AtgMayaRemoteCommand
//=============================================================================
// Description: Constructor.
//
// Parameters:  pointer to communication cleint object.
//              
// Returns:     n/a
//
// Notes:       
//------------------------------------------------------------------------------

AtgMayaRemoteCommand::AtgMayaRemoteCommand( AtgMayaRemoteClient* pClient )
{
    //
    // Save the refernce to the client object.
    //
    m_pClient = pClient;
    m_pClient->AddRef( );

}

//=============================================================================
// Function:    AtgMayaRemoteCommand::AtgMayaRemoteCommand
//=============================================================================
// Description: Destructor
//
// Parameters:  n/a
//              
// Returns:     n/a
//
// Notes:       
//------------------------------------------------------------------------------

AtgMayaRemoteCommand::~AtgMayaRemoteCommand( void )
{
    //
    // Release reference to communication client.
    //
    m_pClient->Release( );
}

//=============================================================================
// Function:    AtgMayaRemoteCommand::creator
//=============================================================================
// Description: Object Factory
//
// Parameters:  n/a
//              
// Returns:     command instance
//
// Notes:       
//------------------------------------------------------------------------------

void* AtgMayaRemoteCommand::creator( void )
{
    //
    // Simply construct the object and return it.

	return( new AtgMayaRemoteCommand( AtgMayaRemoteClient::Get( ) ) );
}

//=============================================================================
// Function:    AtgMayaRemoteCommand::doIt
//=============================================================================
// Description: Resposible for carry out the command request.
//
// Parameters:  Command argument list
//              
// Returns:     MStatus
//
// Notes:       Syntax for command is AtgRemoteCommand Function <optional params>
//              Examples:
//                          AtgRemoteCommand EnableDebug
//                          AtgRemoteConnect Set Speed 100
//
//------------------------------------------------------------------------------

MStatus AtgMayaRemoteCommand::doIt
(
    const MArgList& argList
)
{
    //
    // Check the number of arguments. Must be at least 1
    //
    if( argList.length( ) >= 1 )
    {
        //
        // Build up the argument list. First calculate size of buffer required to hold 
        // arguments 
        //
        unsigned int argCount = 0;
        unsigned int argListSize = 0;
        char*        argBuffer = NULL;

        while( argList.length( ) - 1 > argCount )
        {
            argCount++;
            argListSize += (strlen( argList.asString( argCount ).asChar( ) ) + 1);
        }
        
        //
        // Check if we have any arguments. If so allocate buffer and move copy agruements.
        //
        if( argCount != 0 )
        {
            argBuffer = new char[ argListSize ];
            argBuffer[ 0 ] = '\0';

            for( unsigned int i = 0 ; i < argCount ; i++ )
            {
                strcat( argBuffer, argList.asString( i + 1 ).asChar( ) );
                if( i != (argCount - 1) )
                {
                    strcat( argBuffer, "/");
                }
            }
        }
                             
        //
        // Lets invoke the remote function.
        //
 
        bool result;
        result = m_pClient->IssueCommand( argList.asString( 0 ).asChar( ),
                                          argCount, argBuffer );
        //
        // Free the argument buffer if it was allocated.
        //
        if( argBuffer != NULL )
        {
            delete [ ] argBuffer;
        }

        if( result == false )
        {
          	return( MS::kFailure );
        }
        else
        {
        	return( MS::kSuccess );
        }  
    }            
    else
    {
        //
        // Incorrect number of arguments. Display usage.
        //
        MGlobal::displayError( "usage: AtgRemoteCommand Function [optional arguments]" );

       	return( MS::kFailure );

    }
}













