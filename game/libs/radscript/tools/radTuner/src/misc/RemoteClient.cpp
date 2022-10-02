//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


//=============================================================================
//
// File:        RemoteClient.cpp
//
// Subsystem:   Radical Remote Command Console
//
// Description:    This file contains the implementation of the Remote Command Console
//
// Revisions:    09-Feb-2001    Creation
//
//=============================================================================

//=============================================================================
// Include Files
//=============================================================================

#include "stdafx.h"
#include <windows.h>
#include "RemoteClient.h"
#include "..\src\radprotocols\RemoteCommandProtocol.hpp"

//=============================================================================
// Function:    RemoteClient::RemoteClient
//=============================================================================
// Description: Constructor for the server object.
//
// Returns:     N/A
//
// Notes:
//------------------------------------------------------------------------------

RemoteClient::RemoteClient( void ) :
    m_Channel( NULL ),
    m_CommandNotSent( true ),
    m_SelfDestruct( false ),
    m_ListItemsPending( 0 ),
    m_pCallbackFunction( NULL ),
    m_HrcsResultCode( HrcsFail ),
    m_pITimer( NULL ),
    m_EnableTimeout( true ),
    m_TimerList( NULL )
{
    radTimeInitialize( );

}

//=============================================================================
// Function:    RemoteClient::~RemoteClient
//=============================================================================
// Description: Destructor for the server object.
//
// Returns:     N/A
//
// Notes:
//------------------------------------------------------------------------------

RemoteClient::~RemoteClient( void )
{

    if( m_Channel != NULL )
    {
        m_Channel->RegisterStatusCallback( NULL );
        m_Channel = NULL;
    }
    m_pCallbackFunction = NULL;

    if (m_TimerList)
    {
        m_TimerList->Release( );
    }

    radTimeTerminate( );
}

//=============================================================================
// Function:    RemoteClient::ListFunctions
//=============================================================================
// Description: Public function that will list available functions
//
// Parameters:  RemoteCallback pCallback        - Callback Function
//              bIDebugHost::TargetName target  - target name ( '\0' == default )
//
// Returns:     false, error
//
// Notes:
//------------------------------------------------------------------------------

bool RemoteClient::ListFunctions
(
    RemoteCallback pCallback,
    const radDbgComTargetName target
    )
{
    //
    // Set the command that should be sent
    //
    m_Command = HrcsList;

    //
    // Remember the callback function
    //
    rAssert( pCallback != NULL );
    m_pCallbackFunction = pCallback;

    return( ConnectCommandServer( target ) );
}

//=============================================================================
// Function:    RemoteClient::CallFunction
//=============================================================================
// Description: Calls a function on the remote command server
//
// Parameters:  char* funcName                       - name of funciton to call
//                int argc,                            - # arguments
//                char* argv,                          - argList( '/' as token )
//                RemoteCallback pCallback,            - callback function
//                const bIDebugHost::TargetName target - target ( '\0' == defualt )
//
//
// Returns:     false, error
//
// Notes:
//------------------------------------------------------------------------------

bool RemoteClient::CallFunction
(
    char* funcName,
    char* argv,
    RemoteCallback pCallback,
    const radDbgComTargetName target
    )
{
    //
    // Set the command that should be sent
    //
    m_Command = HrcsRemoteFunction;

    //
    // Count argument list
    //
    int nArgc = 0;
    int i = 0;
    while ( argv[ i ] != '\0' )
    {
        // backslash is used as a argument delimitor
        if ( argv[i] == '/' )
        {
            nArgc++;
        }
        i++;
    }

    //
    // Remember the function name and the argument list
    //
    if( funcName != NULL )
    {
        strncpy( m_FunctionName, funcName, sizeof( m_FunctionName ) );
        m_argc = nArgc;
        strcpy( m_argv, argv );
    }

    //
    // Remember the Callback function
    //
    rAssert( pCallback != NULL );
    m_pCallbackFunction = pCallback;
    return( ConnectCommandServer( target ) );
}

//=============================================================================
// Function:    RemoteClient::Service
//=============================================================================
// Description: Keep things running.
//
// Parameters:
//
// Returns:
//
// Notes:
//------------------------------------------------------------------------------

void RemoteClient::Service( )
{
    //
    // Make sure windows messages are serviced and the timer is service.
    //
    MSG msg;

    if( PeekMessage( &msg, NULL, 0, 0, PM_REMOVE ) )
    {
        TranslateMessage(&msg);

        //
        // We have a message. Normally, we would check for a quit message. We
        // use our own termination system instead.
        //
        DispatchMessage(&msg);
    }

    if ( m_TimerList )
    {
        m_TimerList->Service( );
    }
}

//=============================================================================
// Function:    RemoteClient::ConnectCommandServer
//=============================================================================
// Description: Sets up things and listens for console requests.
//
// Parameters:
//
// Returns:     false, error
//
// Notes:
//------------------------------------------------------------------------------

bool RemoteClient::ConnectCommandServer
(
    const radDbgComTargetName target
    )
{
    //
    // Lets get the host system.
    //
    ref< IRadDbgComTargetTable > pHost;
    radDbgComHostGetTargetTable( &pHost );
    rAssert( pHost != NULL );

    //
    // We'll use a specified target if it exists
    //
    if( target[ 0 ] != '\0' )
    {
        //
        // Here the caller has specified a target name. Try to create a channel
        //
        radDbgComHostCreateChannel( target, HOST_REMOTE_COMMAND_PROTOCOL, &m_Channel );
        if( m_Channel == NULL )
        {
            //
            // Failed to create channel using specified target.
            //
            CString strError;
            strError.Format( "\nERROR: Failed to attached to target: %s\n", target );
            AfxMessageBox(strError);
            return( false );
        }
    }
    else
    {
        //
        // Lets see if default target exists. If so lets try to use it.
        //
        radDbgComTargetName xTarget;
        if( pHost->GetDefaultTarget( xTarget ) )
        {
            m_Channel = NULL;
            radDbgComHostCreateChannel( xTarget, HOST_REMOTE_COMMAND_PROTOCOL, &m_Channel );
            if( m_Channel == NULL )
            {

                //
                // Failed to create channel using specified target.
                //
                CString strError;
                strError.Format( "\nERROR: Failed to attached to target: %s\n", xTarget );
                AfxMessageBox(strError);
                return( false );
            }
        }
        else
        {
            AfxMessageBox("Error: No default target found or specified.");
            return( false );
        }
    }
    //
    // Install a notfication routine.
    //
    pHost = NULL;
    m_Channel->RegisterStatusCallback( this );

    //
    // We'll get a timer in case this connection doesn't work
    //
    radTimeCreateList( &m_TimerList );
    rAssert( m_TimerList != NULL );
    m_TimerList->CreateTimer( &m_pITimer, RCS_CONNECTION_TIMEOUT, this, NULL, true, IRadTimer::ResetModeOneShot );

    //
    // Try to attach
    //
    m_Channel->Attach( );

    return( true );
}

//=============================================================================
// Function:    RemoteClient::Terminate
//=============================================================================
// Description:
//
// Parameters:
//
// Returns:     n/a
//
// Notes:
//------------------------------------------------------------------------------

void RemoteClient::Terminate
(
    void
    )
{
    m_SelfDestruct = true;
    m_Channel->Detach( );

    m_pCallbackFunction( m_HrcsResultCode );
}

//=============================================================================
// Function:    RemoteClient::OnStatusChange
//=============================================================================
// Description:
//
// Parameters:
//
// Returns:     n/a
//
// Notes:
//------------------------------------------------------------------------------

void RemoteClient::OnStatusChange
(
    IRadDbgComChannel::ConnectionState connectionState,
    const char* Message
    )
{
    //
    // Switch on status message.
    //
    switch( connectionState )
    {
    case IRadDbgComChannel::Attached :
        {
            //
            // We don't need to time out
            //
            m_EnableTimeout = false;

            //
            // Set up the trasmitter variables.
            //
            m_TxOutstanding = false;
            m_TxBytesQueued = 0;
            m_CurrentTxAddress = m_TxBuffer1;
            m_Buffer1Active = true;

            m_SelfDestruct = true;

            //
            // Send off the appropriate command
            //
            if( m_CommandNotSent )
            {
                switch( m_Command )
                {
                case HrcsList:
                    //
                    // Obtain List of Functions
                    //
                    SendListCommand();
                    break;

                case HrcsRemoteFunction:
                    //
                    // Call Remote Function
                    //
                    SendRemoteFunction();
                    break;

                default:
                    m_pCallbackFunction( HrcsFail );;
                    break;
                }
                //
                // Will only attempt this one time
                //
                m_CommandNotSent = false;
            }
            break;
        }

    case IRadDbgComChannel::Detached :
        {
            //
            // Check if we have self destructed. If not display reason for detach.
            //
            if( !m_SelfDestruct )
            {
                m_pCallbackFunction( HrcsFail );;
                CString strError;
                strError.Format( "Error: Failed to attach to target \"%s\" because [%s].", m_Target , Message );
                AfxMessageBox(strError);
            }
            break;
        }

    default:
        {
            //
            // Close windows that exist for the other messages.
            //
            break;
        }
    }
}

//=============================================================================
// Function:    RemoteClient::OnReceiveComplete
//=============================================================================
// Description:
//
// Parameters:
//
// Returns:     n/a
//
// Notes:
//------------------------------------------------------------------------------

void RemoteClient::OnReceiveComplete
(
    bool            successful,
    unsigned int    bytesReceived
    )
{
    if( successful )
    {
        //
        // Here we have received a buffer. Process the data. Simply process each packet
        // of data in the buffer.
        //
        unsigned char* pRxAddress = m_RxBuffer;

        while( bytesReceived != 0 )
        {
            //
            // Switch on the command code of the buffer.
            //
            switch( *((HrcsCommand*) pRxAddress) )
            {
            case HrcsListReply :
                {
                    HrcsListReplyCommand* pCommand = (HrcsListReplyCommand*) pRxAddress;

                    m_ListItemsPending = pCommand->m_NumItems;
                    m_HrcsResultCode = HrcsSuccess;
                    //
                    // Update receive pointer and bytes to process.
                    //
                    bytesReceived -= sizeof( HrcsListReplyCommand );
                    pRxAddress += sizeof( HrcsListReplyCommand );

                    printf( "\n%d REGISTERED FUNCTIONS:\n", m_ListItemsPending );
                    break;
                }

            case HrcsListItem :
                {
                    HrcsListItemCommand* pCommand = (HrcsListItemCommand*) pRxAddress;
                    printf( "  - %s\n", pCommand->m_FunctionName );
                    --m_ListItemsPending;

                    //
                    // Update receive pointer and bytes to process.
                    //
                    bytesReceived -= sizeof( HrcsListItemCommand );
                    pRxAddress += sizeof( HrcsListItemCommand );
                    break;

                }
            case HrcsResult :
                {
                    HrcsResultCommand* pCommand = (HrcsResultCommand*) pRxAddress;
                    m_HrcsResultCode = pCommand->m_ResultCode;
                    if( pCommand->m_ResultCode == HrcsSuccess )
                    {
                        printf( "Remote function called succesfully!\n" );
                    }
                    else
                    {
                        //AfxMessageBox("Remote function call was not succesful.\n");
                    }
                    //
                    // Update receive pointer and bytes to process.
                    //
                    bytesReceived -= sizeof( HrcsResultCommand );
                    pRxAddress += sizeof( HrcsResultCommand );
                    break;
                }

            default:
                {
                    m_pCallbackFunction( HrcsFail );
                    rAssertMsg( false, "Bad packet received from target");
                    break;
                }

            }
        }
    }
    //
    // If there are list items pending we must receive them.
    // Or we are all finished.
    //
    if( m_ListItemsPending > 0 )
    {
        m_Channel->ReceiveAsync( m_RxBuffer, sizeof( m_RxBuffer ), this );
    }
    else
    {
        Terminate();
    }
}

//=============================================================================
// Function:    RemoteClient::OnSendComplete
//=============================================================================
// Description: Check if successful, If so, see if more to send and do so if
//              ready.
//
// Parameters:
//
// Returns:     n/a
//
// Notes:
//------------------------------------------------------------------------------

void RemoteClient::OnSendComplete
(
    bool successful
    )
{
    if( successful )
    {
        if( m_TxBytesQueued != 0 )
        {
            //
            // We have data to send. Lets do so.
            //
            if( m_Buffer1Active )
            {
                //
                // We will send buffer1 and reset things for buffer 2
                //
                m_Channel->SendAsync( m_TxBuffer1, m_TxBytesQueued, this );
                m_CurrentTxAddress = m_TxBuffer2;
            }
            else
            {
                //
                // We will send buffer2 and reset things for buffer 1
                //
                m_Channel->SendAsync( m_TxBuffer2, m_TxBytesQueued, this );
                m_CurrentTxAddress = m_TxBuffer1;

            }
            m_Buffer1Active = !m_Buffer1Active;
            m_TxBytesQueued = 0;

        }
        else
        {
            m_TxOutstanding = false;
        }
        m_Channel->ReceiveAsync( m_RxBuffer, sizeof( m_RxBuffer ), this );
    }
    else
    {
        //
        // Something didn't work.  We need to exit
        //
        CString strError;
        strError.Format( "ERROR: Unable to send to Remote Command Server\n" );
        //AfxMessageBox(strError);
        Terminate();
    }
}

//=============================================================================
// Function:    RemoteClient::OnTimerDone
//==============================================================================
// Description: Callback from connection timeout timer
//
// Parameters:
//
// Returns:
//
// Notes:
//------------------------------------------------------------------------------
void RemoteClient::OnTimerDone( unsigned int elapsedtime, void* userData )
{
    //
    // If we haven't been able to attached to the channel
    //
    if( m_EnableTimeout )
    {
        //AfxMessageBox("Connection timed out\n");

        //
        // Detach from the channel
        //
        m_SelfDestruct = true;
        m_Channel->Detach();

        //
        // Give the callback function a fail message
        //
        m_pCallbackFunction( HrcsFail );
    }
}


//=============================================================================
// Function:    RemoteClient::SendListCommand
//=============================================================================
// Description:
//
// Parameters:
//
// Returns:     n/a
//
// Notes:
//------------------------------------------------------------------------------

void RemoteClient::SendListCommand( void )
{
    //
    // Check if room in the active buffer to add
    //
    //
    //

    if( m_TxBytesQueued + sizeof( HrcsListCommand ) <= RCS_BUFFER_SIZE )
    {
        //
        // We have room. Add the data,
        //
        HrcsListCommand* pCommand = (HrcsListCommand*) m_CurrentTxAddress;
        pCommand->m_Command = HrcsList;

        m_CurrentTxAddress += sizeof( HrcsListCommand );
        m_TxBytesQueued += sizeof( HrcsListCommand );

        //
        // Lets check if the transmit buffer is outstandig. If so, just return.
        // Else initiate the send of this buffer and switch buffers.
        //
        if( !m_TxOutstanding )
        {
            if( m_Buffer1Active )
            {
                //
                // We will send buffer1 and reset things for buffer 2
                //
                m_Channel->SendAsync( m_TxBuffer1, m_TxBytesQueued, this );
                m_CurrentTxAddress = m_TxBuffer2;
            }
            else
            {
                //
                // We will send buffer2 and reset things for buffer 1
                //
                m_Channel->SendAsync( m_TxBuffer2, m_TxBytesQueued, this );
                m_CurrentTxAddress = m_TxBuffer1;

            }
            m_Buffer1Active = !m_Buffer1Active;
            m_TxBytesQueued = 0;
            m_TxOutstanding = true;

        }
    }
    else
    {
        //
        // Here we don't have room. Print warning message and return.
        //
        m_pCallbackFunction( HrcsFail );
        rDebugString("RemoteClient lost List Command Message. Increase buffer size\n");
    }

}


//=============================================================================
// Function:    RemoteClient::SendRemoteFunction
//=============================================================================
// Description:
//
// Parameters:
//
// Returns:     n/a
//
// Notes:
//------------------------------------------------------------------------------

void RemoteClient::SendRemoteFunction( void )
{
    //
    // Check if room in the active buffer to add
    //
    if( m_TxBytesQueued + sizeof( HrcsRemoteFunctionCommand ) <= RCS_BUFFER_SIZE )
    {
        //
        // We have room. Add the data,
        //
        HrcsRemoteFunctionCommand* pCommand = (HrcsRemoteFunctionCommand*) m_CurrentTxAddress;

        pCommand->m_Command = HrcsRemoteFunction;
        strncpy( pCommand->m_FunctionName, m_FunctionName, sizeof( pCommand->m_FunctionName ) );
        pCommand->m_argc = m_argc;
        strcpy( pCommand->m_argv, m_argv );
        pCommand->m_argv[ sizeof( pCommand->m_argv ) - 1 ] = '\0';
        pCommand->m_FunctionName[ sizeof( pCommand->m_FunctionName ) - 1 ] = '\0';

        m_CurrentTxAddress += sizeof( HrcsRemoteFunctionCommand );
        m_TxBytesQueued += sizeof( HrcsRemoteFunctionCommand );

        //
        // Lets check if the transmit buffer is outstandig. If so, just return.
        // Else initiate the send of this buffer and switch buffers.
        //
        if( !m_TxOutstanding )
        {
            if( m_Buffer1Active )
            {
                //
                // We will send buffer1 and reset things for buffer 2
                //
                m_Channel->SendAsync( m_TxBuffer1, m_TxBytesQueued, this );
                m_CurrentTxAddress = m_TxBuffer2;
            }
            else
            {
                //
                // We will send buffer2 and reset things for buffer 1
                //
                m_Channel->SendAsync( m_TxBuffer2, m_TxBytesQueued, this );
                m_CurrentTxAddress = m_TxBuffer1;

            }
            m_Buffer1Active = !m_Buffer1Active;
            m_TxBytesQueued = 0;
            m_TxOutstanding = true;

        }
    }
    else
    {
        //
        // Here we don't have room. Print warning message and return.
        //
        m_pCallbackFunction( HrcsFail );
        rDebugString("RemoteClient lost Remote Function Message. Increase buffer size\n");
    }

}

