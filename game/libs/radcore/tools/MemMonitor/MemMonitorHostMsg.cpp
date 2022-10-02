//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


//=============================================================================
//
// File:        memmonitorhostmsg.cpp
//
// Subsystem:	Foundation Technologies - Memory Monitor host thread message
//              handler
//
// Description:	This file contains the implementation of the Foundation 
//              Technologies memory monitor host message handler.
//
// Date:    	Nov 30, 2001
//
//=============================================================================

#include "stdafx.h"
#include "MemMonitorHost.h"
#include "MemErrorMsg.h"
//=============================================================================
// MFC thread message mapping
//=============================================================================
BEGIN_MESSAGE_MAP(CMemMonitorHost, CWinThread)
    ON_THREAD_MESSAGE( TM_MM_START_COMMUNICATION, OnStartCommunication )
    ON_THREAD_MESSAGE( TM_MM_STOP_COMMUNICATION, OnStopCommunication )
    ON_THREAD_MESSAGE( TM_MM_DO_CLIENT_SUSPEND, OnDoClientSuspend )
    ON_THREAD_MESSAGE( TM_MM_DO_CLIENT_RESUME, OnDoClientResume )
    ON_THREAD_MESSAGE( TM_MM_DO_MEMCONTENT, OnDoMemContent )
    ON_THREAD_MESSAGE( TM_MM_DO_STACK_USAGE, OnDoStackUsage )
    ON_THREAD_MESSAGE( TM_MM_SET_CURRENT_TARGET_NAME, OnSetCurrentTargetName )
    ON_THREAD_MESSAGE( TM_MM_END_TREAD, OnEndThread )

END_MESSAGE_MAP()

void CMemMonitorHost::OnStartCommunication( WPARAM wParam, LPARAM lParam )
{
    ASSERT( m_pChannel == NULL );

    try
    {
        CSingleLock sLock( & g_cs, true );

        while( ! m_aryTxQueue.empty( ) )
        {
            m_aryTxQueue.pop( );
        }

        if ( m_pDbgComTargetTable == NULL )
        {
            radDbgComHostGetTargetTable( & m_pDbgComTargetTable );
        }

	    if ( strlen( m_szTargetName ) == 0 )
        {
            //
	        // Get default target name.
	        //
	        if( !m_pDbgComTargetTable->GetDefaultTarget( m_szTargetName ) )
	        {
                //
                // send message that symbol file is not specified loaded
                //
                CMemErrorMsgPtr pError = static_cast< CMemErrorMsg * >( RUNTIME_CLASS( CMemErrorMsg )->CreateObject( ) );
                CString strError( "No target specified and default target not defined." );
                pError->Initialize( CMemErrorMsg::Error, strError, NULL );

                Notify( SSC_MEM_ERROR_MSG, 0, pError );
	        }
        }

        //
	    // Attempt to create a communication channel.
	    //
        radDbgComHostCreateChannel( m_szTargetName, MEM_MONITOR_PROTOCOL, & m_pChannel );

        if( m_pChannel == NULL )
        {
            //
            // send message that symbol file is not specified loaded
            //
            CMemErrorMsgPtr pError = static_cast< CMemErrorMsg * >( RUNTIME_CLASS( CMemErrorMsg )->CreateObject( ) );
            CString strError;
            strError.Format( "Target [\"%s\"] may be in use or may not exist.", m_szTargetName );
            pError->Initialize( CMemErrorMsg::Error, strError, NULL );

            Notify( SSC_MEM_ERROR_MSG, 0, pError );
	    }
        else
        {
            m_pChannel->RegisterStatusCallback( this );

            m_pChannel->Attach( );
        }
    }
    catch( ... )
    {
        OnStopCommunication( 0, 0 );
    }
}

void CMemMonitorHost::OnStopCommunication( WPARAM wParam, LPARAM lParam )
{
    CSingleLock sLock( & g_cs, true );
    while( ! m_aryTxQueue.empty( ) )
    {
        m_aryTxQueue.pop( );
    }

    if ( m_pChannel != NULL )
    {
        m_bSelfDetach = true;
        m_pChannel->Detach( );
        m_pChannel = NULL;
    }

    ClearAllData( );
}

void CMemMonitorHost::OnDoClientSuspend( WPARAM wParam, LPARAM lParam )
{
    CSingleLock sLock( & g_cs, true );
    MM_DataPacketBlock Data;
    Data.commandPacket.header = RequestSuspendType;

    AfxTrace( "OnDoClientSuspend().\n" );
    m_aryTxQueue.push( Data );

    InitiateTransmission( );
}

void CMemMonitorHost::OnDoClientResume( WPARAM wParam, LPARAM lParam )
{
    CSingleLock sLock( & g_cs, true );
    MM_DataPacketBlock Data;
    Data.commandPacket.header = RequestResumeType;

    AfxTrace( "OnDoClientResume.\n" );
    m_aryTxQueue.push( Data );
    InitiateTransmission( );
}

void CMemMonitorHost::OnDoMemContent( WPARAM wParam, LPARAM lParam )
{
    CSingleLock sLock( & g_cs, true );

    while ( ! m_aryContentRequestQueue.empty( ) )
    {
        _ContentRequest request = m_aryContentRequestQueue.front( );
        m_aryContentRequestQueue.pop( );

        MM_DataPacketBlock Data;

        Data.requestMemoryBlockData.header = RequestMemoryBlockType;
        Data.requestMemoryBlockData.memorySpace = request.eMemorySpaceType;
        Data.requestMemoryBlockData.memStartPos = request.uAddress;
        Data.requestMemoryBlockData.memLength = request.uSize;
        ASSERT( request.uAddress % 128 == 0 );
        ASSERT( request.uSize == 128 );

        m_aryTxQueue.push( Data );
    }
    InitiateTransmission( );
}

void CMemMonitorHost::OnDoStackUsage( WPARAM wParam, LPARAM lParam )
{
    MM_ClientMemorySpace eSpace = (MM_ClientMemorySpace)wParam;
    unsigned int uStackSectionStartAddress = lParam;
    SendRequestStackUsage( eSpace, uStackSectionStartAddress );
}

void CMemMonitorHost::OnSetCurrentTargetName( WPARAM wParam, LPARAM lParam )
{
    char * pTargetName = reinterpret_cast< char * >( wParam );

    vector< CString > aryName;

    // Get a list of target name
    GetTargetList( aryName );

    //
    // stop communication first
    //
    OnStopCommunication( 0, 0 );

    //
    // search through entire list to find the name of the target
    //
    vector< CString >::iterator p;

    for ( p = aryName.begin( ); p != aryName.end( ); p ++ )
    {
        if ( p->Compare( pTargetName ) == 0 )
        {
            CSingleLock sLock( & g_cs, true );
            strcpy( m_szTargetName, *p );
            OnStartCommunication( 0, 0 );
        }
    }
}

void CMemMonitorHost::OnEnumerateTarget( void* context, const radDbgComTargetName pName, const radDbgComIPAddress pIpAddress, unsigned short port, bool InUse )
{
    CMemMonitorHost * pThisPtr = reinterpret_cast< CMemMonitorHost * >( context );

    CMemMonitorHost::_TargetData data;

    data.strName = pName;
    data.strIPAddr = pIpAddress;
    data.uPort = port;
    data.bInUse = InUse;

    CSingleLock sLock( & g_cs, true );
    pThisPtr->m_aryTargetList.push_back( data );
}

void CMemMonitorHost::OnEndThread( WPARAM wParam, LPARAM lParam )
{
    ::AfxTrace( "Ending MemMonitor Host Thread...\n" );
    ::AfxEndThread( 0, FALSE );
}
