//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


//=============================================================================
//
// File:        WatchServer.cpp
//
// Subsystem:   Radical Foundation Tech - Debug Watch Server DLL
//
// Description: implementation of the CWatchServer class.
//
// Revisions:   Apr 30, 2002
//
//=============================================================================

#include "stdafx.h"
#include "watchserver.h"
#include <radtime.hpp>
#include <raddebug.hpp>
#include <radplatform.hpp>
#include <raddebugcommunication.hpp>

const char CWatchServer::ms_ErrorMessage[ ][ 256 ] = 
{
    "Unknown Error.",
    "Watch Server is already initialized.",
    "Program out of memory.",
    "Default client console target is not specified.",
    "Selected target console cannot be attached."
};

//===========================================================================
// CWatchServer::CWatchServer
//===========================================================================
// Description: cstor.
//===========================================================================
CWatchServer::CWatchServer( ) :
    m_pHost( NULL ),
    m_pChannel( NULL ),
    m_bConnected( false )
{
}

//===========================================================================
// CWatchServer::~CWatchServer
//===========================================================================
// Description: dstor.
//===========================================================================
CWatchServer::~CWatchServer( )
{
}

//===========================================================================
// CWatchServer::Initialize
//===========================================================================
// Description: Initialize the watch server.
//
// Constraints: Cannot be initialized previously.
//
// Parameters:  pTargetName - name of the target client.
//              updateTimeInMilliSec - time interval for each update.
//              radWatchServerConnectionStatusCallBack - callback for
//              debug comm connection status.
//              radWatchServerOnWPChangeCallBack - callback for watch point
//              add/del callback.
//              radWatchServerOnRecieveWPValueCallBack - callback for watch
//              point value change callback.
// return:      true if successfully done.
//===========================================================================
bool CWatchServer::Initialize
        (
            const char * pTargetName,
            unsigned int updateTimeInMilliSec,
            radWatchServerConnectionStatusCallBack * pStatusCallBack,
            radWatchServerOnWPChangeCallBack * pWPChangeCallBack,
            radWatchServerOnRecieveWPValueCallBack * pWPValueCallBack,
            void * pUserData
        )
{
    //
    // Precondition check
    //
    rAssert( m_pHost == NULL );
    rAssert( m_pChannel == NULL );
    rAssert( m_pRootNode == NULL );

    //========================================================================
    // 1) Find out the target name we want to use for channel.
    //========================================================================
    radDbgComHostGetTargetTable( & m_pHost );

    if ( pTargetName == NULL || strlen( pTargetName ) == 0 )
    {
        //
        // No target, get default name.
        //
        if( ! m_pHost->GetDefaultTarget( m_szTargetName ) )
        {
            m_szTargetName[ 0 ] = '\0';
            SetLastErrorCode( ErrorDefaultTargetNotFound );
            return false;
        }
    }
    else
    {
        strncpy( m_szTargetName, pTargetName, sizeof( m_szTargetName ) );
    }

    //========================================================================
    // 2) Attemp to create a communication channel.
    //========================================================================
    IRadDbgComChannel * pChannel = NULL;
    radDbgComHostCreateChannel( m_szTargetName, WATCH_PROTOCOL, & pChannel );

    if( pChannel == NULL )
    {
        m_szTargetName[ 0 ] = '\0';
        SetLastErrorCode( ErrorTargetSelectedCannotBeAttached );
        return false;
    }

    m_pChannel = pChannel;

    //========================================================================
    // Initalize all debug communication member data.
    //========================================================================
    m_SelfDetach = false;
    memset( m_RxBuffer, 0, sizeof( m_RxBuffer ) );
    memset( m_TxBuffer1, 0, sizeof( m_TxBuffer1 ) );
    memset( m_TxBuffer2, 0, sizeof( m_TxBuffer2 ) );
    m_CurrentTxAddress = m_TxBuffer1;
    m_Buffer1Active = true;
    m_WaitingForTxAcknowledge = false;

    //========================================================================
    // Initalize all other member data.
    //========================================================================
    m_LastError         = ErrorUnknown;
    m_pStatusCallBack   = pStatusCallBack;
    m_pWPChangeCallBack = pWPChangeCallBack;
    m_pWPValueCallBack  = pWPValueCallBack;
    m_pUserData         = pUserData;
    m_uLastUpdateTime   = GetTickCount( );
    m_uUpdateIntervalInMilliSec = updateTimeInMilliSec;
    m_bInService        = false;
    m_bConnected        = false;
    m_szCurrentNameSpace[ 0 ] = '\0';
    m_aryWPCreate.clear( );
    m_aryValueOnChange.clear( );

    //
    // create a root watch node
    //
    m_pRootNode         = new CWatchNode;

    pChannel->RegisterStatusCallback( this );

    pChannel->Attach( );

    return true;
}

//===========================================================================
// CWatchServer::Terminate
//===========================================================================
// Description: Terminate the watch server.
//
// Constraints: Must be initialized previously.
//
// Parameters:  None
// return:      true if successfully done.
//===========================================================================
void CWatchServer::Terminate( )
{
    //
    // Detach before releasing channel.
    //
    m_SelfDetach = true;

    m_pChannel->Detach( );
    m_pChannel->RegisterStatusCallback( NULL );
    m_pChannel->Release( );
    m_pChannel = NULL;

    m_pHost->Release( );
    m_pHost = NULL;
}

//===========================================================================
// CWatchServer::Service
//===========================================================================
// Description: Service the watch server.
//
// Constraints: None
//
// Parameters:  None
// return:      None
//===========================================================================
void CWatchServer::Service( )
{
    //
    // This is the fix to avoid recursive service call.
    //
    if ( m_bInService )
    {
        return;
    }

    m_bInService = true;

    radDbgComHostService( );

    //
    // dispatch callbacks
    //
    DispatchValueRequest( );

    DispatchValueOnChange( );

    DispatchWPOnChange( );

    m_bInService = false;
}

//===========================================================================
// CWatchServer::SetLastErrorCode
//===========================================================================
// Description: Set the last occured error code
//
// Constraints: None
//
// Parameters:  error - error code
// return:      None
//===========================================================================
void CWatchServer::SetLastErrorCode( CWatchServer::LastError error )
{
    m_LastError = error;
}

//===========================================================================
// CWatchServer::GetLastErrorMessage
//===========================================================================
// Description: return the last occured error code in message
//
// Constraints: None
//
// Parameters:  None
// return:      error code in message
//===========================================================================
const char * CWatchServer::GetLastErrorMessage( ) const
{
    return ms_ErrorMessage[ m_LastError ];
}

//===========================================================================
// CWatchServer::GetClientTargetName
//===========================================================================
// Description: return the name of the client target.
//
// Constraints: None
//
// Parameters:  None
// return:      error code in message
//===========================================================================
const char * CWatchServer::GetClientTargetName( ) const
{
    return m_szTargetName;
}

//===========================================================================
// CWatchServer::GetClientConnectionStatus
//===========================================================================
// Description: return the connection status.
//
// Constraints: None
//
// Parameters:  None
// return:      connection status
//===========================================================================
IRadDbgComChannel::ConnectionState CWatchServer::GetClientConnectionStatus( ) const
{
    if ( m_pChannel != NULL )
    {
        IRadDbgComChannel::ConnectionState status;
        char szMessage[ 256 ];
        m_pChannel->GetStatus( & status, szMessage );
        return status;
    }
    else
    {
        return IRadDbgComChannel::Detached;
    }
}

//===========================================================================
// CWatchServer::SetUpdateTimeInterval
//===========================================================================
// Description: Set the update time interval for watch server
//
// Constraints: None
//
// Parameters:  updateTime - time in millisecond.
// return:      None
//===========================================================================
void CWatchServer::SetUpdateTimeInterval( const unsigned int updateTime )
{
    m_uUpdateIntervalInMilliSec = updateTime;
}

//===========================================================================
// CWatchServer::GetUpdateTimeInterval
//===========================================================================
// Description: Return the update time interval for watch server
//
// Constraints: None
//
// Parameters:  None
// return:      time in millisecond.
//===========================================================================
unsigned int CWatchServer::GetUpdateTimeInterval( ) const
{
    return m_uUpdateIntervalInMilliSec;
}

//===========================================================================
// CWatchServer::EnumerateWatchPoints
//===========================================================================
// Description: enumerate all watch points using Breath first search method.
//
// Constraints: None
//
// Parameters:  pWatchPointCallBack - callback functions
// return:      None
//===========================================================================
void CWatchServer::EnumerateWatchPoints
                (
                    radWatchServerEnumerateWatchPointsCallBack * pWatchPointCallBack,
                    void * pUserData
                ) const
{
    m_pRootNode->EnumerateWatchPoints( pWatchPointCallBack, pUserData );
}

//===========================================================================
// CWatchServer::SelectWPAttribute
//===========================================================================
// Description: Select the watch point attribute
//
// Constraints: None
//
// Parameters:  pWPName - complete name of the watch point
//              pWPAttributes - return attributes.
// return:      
//===========================================================================
bool CWatchServer::SelectWPAttribute( const char * pWPName, radWatchServerWPAttribute * pWPAttributes )
{
    if ( pWPAttributes != NULL )
    {
        CWatchPointPtr pWP = m_pRootNode->FindWatchPoint( pWPName );
        pWP->GetAttribute( pWPAttributes );
        return true;
    }
    else
    {
        return false;
    }
}

//===========================================================================
// CWatchServer::SelectWPValue
//===========================================================================
// Description: Select the watch point value
//
// Constraints: None
//
// Parameters:  pWPName - complete name of the watch point
//              pWPValue - return value
// return:      
//===========================================================================
bool CWatchServer::SelectWPValue( const char * pWPName, radWatchServerWPValue * pWPValue )
{
    if ( pWPValue != NULL )
    {
        CWatchPointPtr pWP = m_pRootNode->FindWatchPoint( pWPName );
        if ( pWP != NULL )
        {
            pWP->GetValue( pWPValue );
            return true;
        }
        else
        {
            return false;
        }
    }
    else
    {
        return false;
    }
}

//===========================================================================
// CWatchServer::UpdateWPValue
//===========================================================================
// Description: update the watch point value on the client console system.
//
// Constraints: None
//
// Parameters:  pWPName - complete name of the watch point
//              pWPValue - value to be updated
// return:      
//===========================================================================
bool CWatchServer::UpdateWPValue( const char * pWPName, const radWatchServerWPValue * pWPValue )
{
    if ( pWPValue != NULL )
    {
        CWatchPointPtr pWP = m_pRootNode->FindWatchPoint( pWPName );
        if ( pWP != NULL )
        {
            unsigned int uBufferSize = pWP->GetUpdateBufferSize( pWPValue );

            rAssert( uBufferSize > 0 );
            void * pBuffer = GetTxBuffer( uBufferSize );

            if ( pBuffer != NULL )
            {
                pWP->UpdateClientValue( pWPValue, pBuffer );
                return true;
            }
            else
            {
                return false;
            }
        }
        else
        {
            return false;
        }
    }
    else
    {
        return false;
    }
}
