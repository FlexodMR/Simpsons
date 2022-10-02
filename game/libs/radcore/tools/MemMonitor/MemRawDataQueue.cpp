//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


// MemRawDataQueue.cpp: implementation of the CMemRawDataQueue class.
//
//////////////////////////////////////////////////////////////////////

#include "stdafx.h"
#include "MemMonitor.h"
#include "MemRawDataQueue.h"

//////////////////////////////////////////////////////////////////////
// Construction/Destruction
//////////////////////////////////////////////////////////////////////
IMPLEMENT_DYNCREATE(CMemRawDataQueue, CObject)

CMemRawDataQueue::CMemRawDataQueue() :
    m_bStartDataProcess( false )
{
}

CMemRawDataQueue::~CMemRawDataQueue()
{
}

bool CMemRawDataQueue::OnSubjectStateChange( int nState, int nHints, void * pUserData )
{
    switch( nState )
    {
        case SSC_MEM_HOST_ONRECIEVE:
        {
            ASSERT( pUserData != NULL );
            MM_DataPacketBlock * pData = reinterpret_cast< MM_DataPacketBlock * >( pUserData );
            Add( * pData );
            return true;
        }
        break;

        case SSC_MEM_HOST_RESUMED:
        case SSC_MEM_HOST_SUSPENDED:
        {
            Notify( nState, nHints, pUserData );
        }
        break;

        case SSC_MEM_HOST_RECONNECT:
        {
            ClearData( );
            return true;
        }
        break;
    };
    return false;
}

void CMemRawDataQueue::Add( const MM_DataPacketBlock & RawData )
{
    bool bQueueFull = true;

    DWORD dwStartTime = ::GetTickCount( );
    DWORD dwCurrentTime = ::GetTickCount( );

    //
    // this infinite loop will block the queue from been added if
    // buffer is full.
    //
    while ( bQueueFull )
    {
        //
        // 500 entry as the buffer is a good number
        //
        bQueueFull = m_aryDataQueue.size( ) > 500;

        dwCurrentTime = ::GetTickCount( );
        //
        // Infinite loop check
        //
        if ( ( dwCurrentTime - dwStartTime ) > 25000 )
        {
            ::AfxMessageBox( "Memory Monitor internal error: Data queue buffer is full for too long." );
            break;
        }

        if ( bQueueFull )
        {
            Sleep( 0 );
        }
    }

    CSingleLock sLock( & g_cs, true );
    m_aryDataQueue.push( RawData );
}

MM_DataPacketBlock CMemRawDataQueue::Remove( )
{
    CSingleLock sLock( & g_cs, true );

    MM_DataPacketBlock RawData;

    if ( ! m_aryDataQueue.empty( ) )
    {
        RawData = m_aryDataQueue.front( );
        m_aryDataQueue.pop( );
    }
    return RawData;
}

bool CMemRawDataQueue::IsEmpty( ) const
{
    CSingleLock sLock( & g_cs, true );
    return m_aryDataQueue.empty( );
}

unsigned int CMemRawDataQueue::GetSize( ) const
{
    CSingleLock sLock( & g_cs, true );
    return m_aryDataQueue.size( );
}

void CMemRawDataQueue::ClearData( )
{
    CSingleLock sLock( & g_cs, true );
    while( ! m_aryDataQueue.empty( ) )
    {
        m_aryDataQueue.pop( );
    }
}
