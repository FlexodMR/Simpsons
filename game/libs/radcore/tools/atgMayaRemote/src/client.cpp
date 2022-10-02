//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


//=============================================================================
//
// File:        client.cpp
//
// Subsystem:	atgMayaRemote
//
// Description:	This file contains the implementation the object responsible
//				for communicating with the target server.
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
#include "client.hpp"
#include <windows.h>
#include <raddebugcommunication.hpp>
#include "../src/radprotocols/remotecommandprotocol.hpp"

//=============================================================================
// Local Definitions
//=============================================================================//

//
// This constant governs the time we wait for a response to a transaction from
// the target.
//
#define RESPONSE_TIMEOUT    (3000)        // 3 Seconds

//=============================================================================
// Statics
//=============================================================================//

AtgMayaRemoteClient* AtgMayaRemoteClient::s_theClient = NULL;

//=============================================================================
// Public Functions
//=============================================================================

//=============================================================================
// Function:    AtgMayaRemoteClient::AtgMayaRemoteClient
//=============================================================================
// Description: Constructor.
//
// Parameters:  n/a
//              
// Returns:     n/a
//
// Notes:       
//------------------------------------------------------------------------------

AtgMayaRemoteClient::AtgMayaRemoteClient( void )
    :
        m_RefCount( 0 ),
        m_ConnectIssued( false ),
        m_pComChannel( NULL )
{
    //
    // Save ourself as the singleton instance.
    //
    s_theClient = this;

}

//=============================================================================
// Function:    AtgMayaRemoteClient::~AtgMayaRemoteClient
//=============================================================================
// Description: Destructor.
//
// Parameters:  n/a
//              
// Returns:     n/a
//
// Notes:       
//------------------------------------------------------------------------------

AtgMayaRemoteClient::~AtgMayaRemoteClient( void )
{
    //
    // Check if connected. If so disconnect.
    //
    if( m_ConnectIssued )
    {
        Disconnect( );
    }

    //
    // Null out the existance of the client.
    //
    s_theClient = NULL;

}

//=============================================================================
// Function:    AtgMayaRemoteClient::Get
//=============================================================================
// Description: This is the factory for the client object. Responsible for
//              serving up singleton object.
//
// Parameters:  n/a
//              
// Returns:     AtgMayaRemoteCleint
//
// Notes:       
//------------------------------------------------------------------------------

AtgMayaRemoteClient* AtgMayaRemoteClient::Get( void )
{
    //
    // Check if we have already constructed the object. If not, new up one.
    // Otherwise just return the object.
    //
    if( s_theClient == NULL )
    {
        new AtgMayaRemoteClient( );
    }

    return( s_theClient );
}

//=============================================================================
// Function:    AtgMayaRemoteClient::AddRef
//=============================================================================
// Description: Used for lifetime management
//
// Parameters:  n/a
//              
// Returns:     n/a
//
// Notes:       
//------------------------------------------------------------------------------

void AtgMayaRemoteClient::AddRef( void )
{
    m_RefCount++;
}

//=============================================================================
// Function:    AtgMayaRemoteClient::Release
//=============================================================================
// Description: Used for lifetime management
//
// Parameters:  n/a
//              
// Returns:     n/a
//
// Notes:       
//------------------------------------------------------------------------------

void AtgMayaRemoteClient::Release( void )
{
    m_RefCount--;
    if( m_RefCount == 0 )
    {
        delete this;
    }
}

//=============================================================================
// Function:    AtgMayaRemoteClient::Connect
//=============================================================================
// Description: This routine is invoked to initiate a connection with the 
//              remote target.
//
// Parameters:  Name of target ( call be null if default target is specified )
//              
// Returns:     true, success, false failure.
//
// Notes:       
//------------------------------------------------------------------------------

bool AtgMayaRemoteClient::Connect( const char* pTarget )
{
    //
    // If caller has specified null, he wants to connect to the default target.
    // Lets see if one is defined.
    //
    radDbgComTargetName DefaultTargetName;

    if( pTarget == NULL )
    {
        IRadDbgComTargetTable* pTargetTable;
        radDbgComHostGetTargetTable( &pTargetTable );
        rAssert( pTargetTable != NULL );

        if( !pTargetTable->GetDefaultTarget( DefaultTargetName ) )
        {
            //
            // Here no default target has been defined. Print error message
            // and fail.
            //
            MGlobal::displayError( "Cannot connect. No default target defined" );
            pTargetTable->Release( );
            return( false );
        }        
    
        pTargetTable->Release( );
    }

    //
    // First check if a connect has already been issued.
    //
    if( m_ConnectIssued )
    {
        //
        // Here we have a connect request already in place. Check the name of
        // the target. If different from what we currently are connected to,
        // disconnect and reconnect. If the same, just return. 
        //
        if( pTarget == NULL )
        {
            //
            // Caller wants default. Let see if that is who we are connected to.
            //
            if( 0 == stricmp( m_TargetName, DefaultTargetName ) )
            {
                //
                // Names are the same. Return success.
                //
                return( true );  
            }
            else
            {
                //
                // Names are different. Disconnect.
                //
                Disconnect( );
            }
        }
        else
        {
            //
            // Caller has specified a name. See if it is the same as what we are connected to.
            //
            if( 0 == stricmp( m_TargetName, pTarget ) )
            {
                //
                // Names are the same. Return success.
                //
                return( true );  
            }
            else
            {
                //
                // Names are different. Disconnect.
                //
                Disconnect( );
            }
        }
    }
    
    //
    // Here we are not connected. Lets attempt to create a communcation channel.
    //
    if( pTarget == NULL )
    {
        //
        // Here we are using the default target definition.
        //
        strcpy( m_TargetName, DefaultTargetName );
    }       
    else
    {
        strncpy( m_TargetName, pTarget, sizeof( radDbgComTargetName ) );
        m_TargetName[ sizeof( radDbgComTargetName ) - 1 ] = '\0';
    }

    radDbgComHostCreateChannel( m_TargetName, HOST_REMOTE_COMMAND_PROTOCOL, &m_pComChannel );

    //
    // Check if error creating channel. If so, fail.
    //
    if( m_pComChannel == NULL )
    {
        MGlobal::displayError( "Cannot connect. Target name not found. Check target table" );
        return( false );
    }

    //
    // Set state inidicating that a connect is issued and that the actual state is not connected.
    //
    m_ConnectIssued = true;
    m_Connected = false;

    //
    // Register callback so we are informed of connection status changes,
    //
    m_pComChannel->RegisterStatusCallback( this );

    //
    // Finally issue the attach.
    //
    m_pComChannel->Attach( );

    return( true );
}

//=============================================================================
// Function:    AtgMayaRemoteClient::Disconnect
//=============================================================================
// Description: This routine is invoked to terminate a connection with the
//              target.
//
// Parameters:  n/a
//              
// Returns:     true, success, false failure.
//
// Notes:       
//------------------------------------------------------------------------------

bool AtgMayaRemoteClient::Disconnect( void )
{
    //
    // Make sure we are connected. If not fail request )
    //
    if( !m_ConnectIssued )
    {
        MGlobal::displayError( "Not currently connected" );
        return( false );
    }

    m_ConnectIssued = false;

    //
    // Issue a detach.
    //
    m_pComChannel->Detach( );

    //
    // Free resouces and unregister connection status.
    //
    m_pComChannel->RegisterStatusCallback( NULL );

    m_pComChannel->Release( );
    m_pComChannel = NULL;

    return( true );
}

//=============================================================================
// Function:    AtgMayaRemoteClient::IssueCommand
//=============================================================================
// Description: This routine is invoked to send a command request to the target.
//
// Parameters:  functionName - Name of function to invoke remotely.
//              argCount     - Count of argments   
///             argList      - string of arguments.
//              
// Returns:     true, success, false failure.
//
// Notes:       
//------------------------------------------------------------------------------

bool AtgMayaRemoteClient::IssueCommand
( 
    const char*  functionName,
    unsigned int argCount, 
    const char*  argList
)
{
    //
    // First check if are actively connected. If not fail request.
    //
    if( !m_Connected )
    {
        MGlobal::displayError( "Cannot issue command. Not currently connected to target" );
        return( false );
    }
    
    //
    // Validate length of function name arguments. This should change in future but leave
    // things this way until required. This size is based on the packet definition,
    //
    if( strlen( functionName ) >= 40 ) 
    {
        MGlobal::displayError( "Cannot issue command. Function name too long, sorry..." );
        return( false );
    }

    if( argCount != 0 )
    {
        if( strlen( argList ) >= RCS_MAX_ARG_LENGTH ) 
        {
            MGlobal::displayError( "Cannot issue command. Function params are too long, sorry..." );
            return( false );
        }
    }
    
    //
    // Lets build up the protocol send packet.
    //
    HrcsRemoteFunctionCommand TxPacket;
    HrcsResultCommand         RxPacket;  

    TxPacket.m_Command = HrcsRemoteFunction;
    TxPacket.m_argc = argCount;
    strcpy( TxPacket.m_FunctionName, functionName );
    if( argCount != 0 )
    {
        strcpy( TxPacket.m_argv, argList );
    }

    //
    // Set flags used to signal competion of send and receives.
    //
    m_TxOutstanding = true;
    m_RxOutstanding = true;

    //
    // Before sending the packet, lets make sure our reply buffer is in place.
    //
    memset( &RxPacket, 0, sizeof( RxPacket ) );
    m_pComChannel->ReceiveAsync( &RxPacket, sizeof( RxPacket), this );     

    //
    // Issue the transmit.
    //
    m_pComChannel->SendAsync( &TxPacket, sizeof( TxPacket ), this );

    //
    // Now wait for the transaction to complete. We will wait a little while
    // for the operation to complete.
    //
    unsigned int startTime = GetTickCount( );

    while( (m_TxOutstanding || m_RxOutstanding) && 
           (( GetTickCount( ) - startTime) < RESPONSE_TIMEOUT ) )
    {
        radDbgComHostService( );
    }
    
    //
    // Verify the replay packet. If not valid fail the request.
    //
    if( RxPacket.m_Command == HrcsResult )
    {
        //
        // Life is good. Return the clients result.
        //
        return( RxPacket.m_ResultCode == HrcsSuccess );
    }
    else
    {
        //
        // Here have had a problem. If we have either a tx or rx outstanding
        // disconnect as there is a problem.
        //
        if( m_TxOutstanding || m_RxOutstanding )
        {
            Disconnect( );
        }

        MGlobal::displayError( "Remote command issue failed. Disconnecting ..." );
    
        return( false );
    }                 
}


//=============================================================================
// Function:    AtgMayaRemoteClient::OnStatusChange
//=============================================================================
// Description: This routine is invoked to when a change to the connection stata
//              with the target occurs.
//
// Parameters:  connection state
//              message that can be displayed
//              
// Returns:     n/a
//
// Notes:       
//------------------------------------------------------------------------------

void AtgMayaRemoteClient::OnStatusChange
( 
    IRadDbgComChannel::ConnectionState connectionState,
    const char* Message
)
{
    (void) Message;

    //
    // Determine what happenned.
    //
    switch( connectionState )
    {
        case IRadDbgComChannel::Detached :
        {
            m_Connected = false;
            MGlobal::displayInfo( "Current connection status: Disconnected" );
            break;
        }
            
        case IRadDbgComChannel::Attaching :
        {
            m_Connected = false;
            MGlobal::displayInfo( "Current connection status: Waiting for connection" );
            break;
        }

        case IRadDbgComChannel::Detaching :
        {
            m_Connected = false;
            break;
        }

        case IRadDbgComChannel::Attached :
        {
            m_Connected = true;
            MGlobal::displayInfo( "Current connection status: Connected" );
            break;
        }
    }
}

//=============================================================================
// Function:    AtgMayaRemoteClient::OnSendComplete
//=============================================================================
// Description: This routine is invoked to a send completes. We don't care
//              about the result as we have other checks in place for intergrity
//              of the tranasction.
//
// Parameters:  result of the send
//              
// Returns:     n/a
//
// Notes:       
//------------------------------------------------------------------------------

void AtgMayaRemoteClient::OnSendComplete
( 
    bool Successful
)
{
    (void) Successful;

    //
    // Simply indicate that the send was complete.
    //
    m_TxOutstanding = false;
}

//=============================================================================
// Function:    AtgMayaRemoteClient::OnReceiveComplete
//=============================================================================
// Description: This routine is invoked to a receive completes. 
//
// Parameters:  result of receive
//              number of bytes received.
//              
// Returns:     n/a
//
// Notes:       
//------------------------------------------------------------------------------

void AtgMayaRemoteClient::OnReceiveComplete
( 
    bool         Successful,
    unsigned int bytesReceived
)
{
    //
    // In reallity, receives can be paritioned by underlying network layer. However,
    // for our small tranaction, this is very unlikely. Hence keep the system simple.
    //
    if( Successful )
    {
        rAssert( bytesReceived == sizeof( HrcsResultCommand ) );
    }
    
    //
    // Simply indicate that the send was complete.
    //
    m_RxOutstanding = false;
}          
