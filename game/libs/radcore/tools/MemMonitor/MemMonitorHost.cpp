//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


//=============================================================================
//
// File:        memmonitorhost.cpp
//
// Subsystem:	Foundation Technologies - Memory Monitor Host
//
// Description:	This file contains the implementation of the Foundation 
//              Technologies memory monitor host
//
// Date:    	Nov 30, 2001
//
//=============================================================================

//=============================================================================
// Include Files
//=============================================================================
#include "stdafx.h"
#include "MemMonitorHost.h"

//=============================================================================
// Local Defintions
//=============================================================================

//=============================================================================
// Static Data Defintions
//=============================================================================

//=============================================================================
// MFC Macro
//=============================================================================
IMPLEMENT_DYNCREATE(CMemMonitorHost, CWinThread)

//=============================================================================
// Function:    CMemMonitorHost::CMemMonitorHost
//=============================================================================
// Description: Default constructor
//              
// Returns:     N/A
//
// Notes:
//------------------------------------------------------------------------------
CMemMonitorHost::CMemMonitorHost( )
{
    ZeroMemory( m_szTargetName, sizeof( m_szTargetName ) );
    m_bSelfDetach               = false;
    m_bAttached                 = false;
    m_bTxOutstanding            = false;
    m_bWaitingForTxAcknowledge  = false;
    m_bClientSuspended          = false;
    m_uRxBytesQueued            = 0;
    m_bSendDataAcked            = true;
    m_uRxBytesQueued            = 0;
    m_uRxBytesProcessed         = 0;
    m_uAllocationCount          = 0;
    m_uDeallocationCout         = 0;

    ZeroMemory( m_pRxBuffer, sizeof( m_pRxBuffer ) );
    ZeroMemory( m_pTxBuffer, sizeof( m_pTxBuffer ) );

    m_aryContentRequestQueue.empty( );
    m_aryTargetList.clear( );
    while( ! m_aryTxQueue.empty( ) )
    {
        m_aryTxQueue.pop( );
    }
}

//=============================================================================
// Function:    CMemMonitorHost::~CMemMonitorHost
//=============================================================================
// Description: destructor
//              
// Returns:     N/A
//
// Notes:
//------------------------------------------------------------------------------
CMemMonitorHost::~CMemMonitorHost()
{
    if ( m_pChannel != NULL )
    {
        m_bSelfDetach = true;
        m_pChannel->Detach( );
        m_pChannel = NULL;
    }

    ClearAllData( );

    PostThreadMessage( TM_MM_END_TREAD, NULL, NULL );

    Sleep( 100 );
}

//=============================================================================
// CMemMonitorHost::ClearAllData
//=============================================================================
// Description: Clear all data in the host
// 
// Parameter:
// 
// Return: void 
// 
// Notes: 
//------------------------------------------------------------------------------
void CMemMonitorHost::ClearAllData( )
{
    CSingleLock sLock( & g_cs, true );

    if ( m_pChannel != NULL )
    {
        m_bSelfDetach = true;
        m_pChannel->Detach( );
        m_pChannel = NULL;
    }

    m_bSelfDetach               = false;
    m_bAttached                 = false;
    m_bTxOutstanding            = false;
    m_bWaitingForTxAcknowledge  = false;
    m_bClientSuspended          = false;
    m_uRxBytesQueued            = 0;
    m_uRxBytesQueued            = 0;
    m_uRxBytesProcessed         = 0;
    m_uAllocationCount          = 0;
    m_uDeallocationCout         = 0;

    ZeroMemory( m_pRxBuffer, sizeof( m_pRxBuffer ) );
    ZeroMemory( m_pTxBuffer, sizeof( m_pTxBuffer ) );

    m_aryContentRequestQueue.empty( );
    m_aryTargetList.clear( );
    while( ! m_aryTxQueue.empty( ) )
    {
        m_aryTxQueue.pop( );
    }
}

//=============================================================================
// Function:    CMemMonitorHost::InitInstance
//=============================================================================
// Description: Initialization call
//              
// Returns:     N/A
//
// Notes:
//------------------------------------------------------------------------------
BOOL CMemMonitorHost::InitInstance()
{
    AfxTrace( "Starting MemMonitorHost thread...\n" );
    CSingleLock sLock( & g_cs, true );
    ClearAllData( );
    radDbgComHostGetTargetTable( & m_pDbgComTargetTable );
    sLock.Unlock( );
    return TRUE;
}

//=============================================================================
// Function:    CMemMonitorHost::SetCurrentTarget
//=============================================================================
// Description: Set current target by name
//              
// Returns:     N/A
//
// Notes:       This function is designed to be called from another thread.
//------------------------------------------------------------------------------
void CMemMonitorHost::SetCurrentTarget( const CString & strTarget )
{
    static char szTargetName[ 128 ];
    strcpy( szTargetName, strTarget );

    PostThreadMessage( TM_MM_SET_CURRENT_TARGET_NAME, (WPARAM)szTargetName, NULL );
    Sleep( 100 );
}

CString CMemMonitorHost::GetDefaultTarget( ) const
{
    CSingleLock sLock( & g_cs, true );
	ASSERT( m_pDbgComTargetTable != NULL );
	
	radDbgComTargetName szDefaultName = { 0 };
	m_pDbgComTargetTable->GetDefaultTarget( szDefaultName );
	return CString( szDefaultName );
}

//=============================================================================
// CMemMonitorHost::IsCommStarted
//=============================================================================
// Description: Is communication channel started already
// 
// Parameter:
// 
// Return: bool 
// 
// Notes: 
//------------------------------------------------------------------------------
bool CMemMonitorHost::IsCommStarted( )
{
    CSingleLock sLock( & g_cs, true );

    if ( m_pChannel != NULL )
    {
        return true;
    }
    else
    {
        return false;
    }
}

//=============================================================================
// Function:    CMemMonitorHost::IsConnected
//=============================================================================
// Description: is communication channel currently connected
//              
// Returns:     N/A
//
// Notes:       This function is designed to be called from another thread.
//------------------------------------------------------------------------------
bool CMemMonitorHost::IsConnected( )
{
    CSingleLock sLock( & g_cs, true );
    if ( m_pChannel != NULL )
    {
        IRadDbgComChannel::ConnectionState eState;
        char szMsg[ 256 ];
        m_pChannel->GetStatus( & eState, szMsg );
        return ( eState == IRadDbgComChannel::Attached );
    }
    else
    {
        return false;
    }
}

//=============================================================================
// CMemMonitorHost::GetConnectionStatus
//=============================================================================
// Description: get connection status of the host
// 
// Parameter:
//              IRadDbgComChannel::ConnectionState & eStatus
//              CString & strStatus
// 
// Return: void 
// 
// Notes: 
//------------------------------------------------------------------------------
void CMemMonitorHost::GetConnectionStatus( IRadDbgComChannel::ConnectionState & eStatus, CString & strStatus )
{
    CSingleLock sLock( & g_cs, true );
    if ( m_pChannel != NULL )
    {
        IRadDbgComChannel::ConnectionState eGetStatus;
        char szMsg[ 256 ];
        m_pChannel->GetStatus( & eGetStatus, szMsg );
        strStatus = szMsg;
        eStatus = eGetStatus;
    }
    else
    {
        strStatus = "Communication channel is not created yet.";
        eStatus = IRadDbgComChannel::Detached;
    }
}

//=============================================================================
// CMemMonitorHost::IsClientSuspended
//=============================================================================
// Description: Is client operation suspended
// 
// Parameter:
// 
// Return: bool 
// 
// Notes: 
//------------------------------------------------------------------------------
bool CMemMonitorHost::IsClientSuspended( )
{
    return m_bClientSuspended;
}

//=============================================================================
// Function:    CMemMonitorHost::StartCommunication
//=============================================================================
// Description: Initialize and start communication channel with console system.
//              Must called before any communication can be transmitted put
//              in program startup.
//              
// Returns:     void
//
// Notes:       This function is designed to be called from another thread.
//------------------------------------------------------------------------------
void CMemMonitorHost::StartCommunication( )
{
    PostThreadMessage( TM_MM_START_COMMUNICATION, NULL, NULL );
    Sleep( 100 );
}

//=============================================================================
// Function:    CMemMonitorHost::StopCommunication
//=============================================================================
// Description: de-initialize and stop communication channel with console system
//              
// Returns:     N/A
//
// Notes:       This function is designed to be called from another thread.
//------------------------------------------------------------------------------
void CMemMonitorHost::StopCommunication( )
{
    PostThreadMessage( TM_MM_STOP_COMMUNICATION, NULL, NULL );
    Sleep( 100 );
}

//=============================================================================
// Function:    CMemMonitorHost::RequestClientSuspend
//=============================================================================
// Description: request suspending of client, if not connected, does nothing
//              
// Returns:     N/A
//
// Notes:       This function is designed to be called from another thread.
//------------------------------------------------------------------------------
void CMemMonitorHost::RequestClientSuspend( )
{
    CSingleLock sLock( & g_cs, true );

    if ( ! m_bAttached )
    {
        return;
    }

    PostThreadMessage( TM_MM_DO_CLIENT_SUSPEND, 0, 0 );
}

//=============================================================================
// Function:    CMemMonitorHost::RequestClientResume
//=============================================================================
// Description: request resume of client, if not connected, does nothing
//              
// Returns:     N/A
//
// Notes:       This function is designed to be called from another thread.
//------------------------------------------------------------------------------
void CMemMonitorHost::RequestClientResume( )
{
    CSingleLock sLock( & g_cs, true );

    if ( ! m_bAttached )
    {
        return;
    }

    PostThreadMessage( TM_MM_DO_CLIENT_RESUME, 0, 0 );
}

//=============================================================================
// Function:    CMemMonitorHost::RequestMemContentData
//=============================================================================
// Description: request mem content data transfer
//              
// Returns:     N/A
//
// Notes:       This function is designed to be called from another thread.
//------------------------------------------------------------------------------
void CMemMonitorHost::RequestMemContentData( const MM_ClientMemorySpace eMemorySpaceType, const unsigned int uAddress, const unsigned int uSize )
{
    CSingleLock sLock( & g_cs, true );

    if ( ! m_bAttached )
    {
        return;
    }

    //
    // address must be multiple of 128
    //
    unsigned int uAlignAddr = uAddress - uAddress % 128;
    // divide each request to block of 128 bytes
    int nBlockCount = uSize / 128 + ( ( uSize % 128 == 0 ) ? 0 : 1 );

    for ( int nBlockIdx = 0; nBlockIdx < nBlockCount; nBlockIdx ++ )
    {
        //
        // push request into queue
        //
        _ContentRequest request;
        request.eMemorySpaceType = eMemorySpaceType;
        request.uAddress = uAlignAddr + nBlockIdx * 128;
        request.uSize = 128;
        m_aryContentRequestQueue.push( request );
    }

    AfxTrace( "RequestMemContentData( Addr[0x%x], Size[%d] ), AlignAddr[0x%x], TotalSize[%d].\n", uAddress, uSize, uAlignAddr, nBlockCount * 128 );

    //
    // post thread message to do request
    //
    PostThreadMessage( TM_MM_DO_MEMCONTENT, 0, 0 );
}

void CMemMonitorHost::RequestStackUsage( MM_ClientMemorySpace memorySpace, unsigned int uStackStartAddress )
{
    CSingleLock sLock( & g_cs, true );

    if ( ! m_bAttached )
    {
        return;
    }

    //
    // post thread message to do request
    //
    PostThreadMessage( TM_MM_DO_MEMCONTENT, (WPARAM)memorySpace, (LPARAM)uStackStartAddress );
}


//=============================================================================
// Function:    CMemMonitorHost::AddRef
//=============================================================================
// Description: well, addref
//              
// Returns:     N/A
//
// Notes:       This function is designed to be called from another thread.
//------------------------------------------------------------------------------
void CMemMonitorHost::AddRef( void )
{
    CMFCRefCount::AddRef( );
}

//=============================================================================
// Function:    CMemMonitorHost::AddRef
//=============================================================================
// Description: well, Release
//              
// Returns:     N/A
//
// Notes:       This function is designed to be called from another thread.
//------------------------------------------------------------------------------
void CMemMonitorHost::Release( void )
{
    CMFCRefCount::Release( );
}

//=============================================================================
// Function:    CMemMonitorHost::GetTargetTablePtr
//=============================================================================
// Description: Get current output raw data queue
//              
// Returns:     IRadDbgComTargetTable - debug comm target table
//
// Notes:       
//------------------------------------------------------------------------------
IRadDbgComTargetTable * CMemMonitorHost::GetTargetTablePtr( )
{
    CSingleLock sLock( & g_cs, true );
    IRadDbgComTargetTable * pRet = m_pDbgComTargetTable;
    sLock.Unlock( );
    return pRet;
}

//=============================================================================
// Function:    CMemMonitorHost::GetCurrentTarget
//=============================================================================
// Description: Get current target name, 
//              
// Returns:     CString - name of the target, zero length if no target is connected
//
// Notes:       
//------------------------------------------------------------------------------
CString CMemMonitorHost::GetCurrentTarget( ) const
{
    return CString( m_szTargetName );
}

//=============================================================================
// CMemMonitorHost::GetTargetList
//=============================================================================
// Description: get list of target to connect to
// 
// Parameter:
//             vector< CString > & aryName
// 
// Return: void 
// 
// Notes: 
//------------------------------------------------------------------------------
void CMemMonitorHost::GetTargetList( vector< CString > & aryName ) const
{
    aryName.clear( );
    CSingleLock sLock( & g_cs, true );
    const_cast< CMemMonitorHost * >( this )->m_aryTargetList.clear( );

    if ( m_pDbgComTargetTable != NULL )
    {
        m_pDbgComTargetTable->EnumerateTargets( const_cast< CMemMonitorHost * >( this ), & CMemMonitorHost::OnEnumerateTarget );

        int nSize = m_aryTargetList.size( );

        for ( vector< _TargetData >::const_iterator i = m_aryTargetList.begin( ); i != m_aryTargetList.end( ); i ++ )
        {
            aryName.push_back( i->strName );
        }
    }
}

//=============================================================================
// CMemMonitorHost::GetAllocationCount
//=============================================================================
// Description: 
// 
// Parameter:
//             
// 
// Return: void 
// 
// Notes: 
//------------------------------------------------------------------------------
unsigned int CMemMonitorHost::GetAllocationCount( ) const
{
    return m_uAllocationCount;
}

//=============================================================================
// CMemMonitorHost::GetDeallocationCount
//=============================================================================
// Description: 
// 
// Parameter:
//             
// 
// Return: void 
// 
// Notes: 
//------------------------------------------------------------------------------
unsigned int CMemMonitorHost::GetDeallocationCount( ) const
{
    return m_uDeallocationCout;
}
