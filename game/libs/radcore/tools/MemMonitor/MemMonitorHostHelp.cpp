//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


#include "stdafx.h"
#include "MemMonitorHost.h"
#include "MemMonitor.h"

bool CMemMonitorHost::GetAttachedStatus( ) const
{
    return m_bAttached;
}

void CMemMonitorHost::SetAttachedStatus( bool bAttached )
{
    m_bAttached = bAttached;
}

//
// Return true if data is only half way through the packet, 
//
template< class T >
static bool ReadBufferData( unsigned int & uRxBytesQueued, unsigned int & uRxBytesProcessed, T ** pData, unsigned char ** pBuffer )
{
    if ( uRxBytesQueued >= sizeof( T ) )   // this make sure we not just get half of the packet
    {
        *pData = reinterpret_cast< T * >( *pBuffer );

        (*pBuffer) += sizeof( T );
        uRxBytesProcessed += sizeof( T );
        uRxBytesQueued -= sizeof( T );
        return false;   // there are still some buffer left
    }
    else
    {
        return true;
    }
}

void CMemMonitorHost::ProcessRxBuffer( )
{
    CSingleLock sLock( & g_cs, true );

    unsigned char * pBuffer = reinterpret_cast< unsigned char * >( m_pRxBuffer );

    MM_DataPacket * pDataPacket = reinterpret_cast< MM_DataPacket * >( pBuffer );

    bool bEndOfBuffer = false;

    while ( pDataPacket->header != DummyType && ! bEndOfBuffer )
    {
        //
        // are there any readable data left in the buffer
        //
        if ( m_uRxBytesQueued >= sizeof( MM_DataPacket ) )
        {
            pDataPacket = reinterpret_cast< MM_DataPacket * >( pBuffer );
            MM_DataPacketBlock RawData; ZeroMemory( & RawData, sizeof( RawData ) );
            switch( pDataPacket->header )
            {
                // end of buffer is filled with zeros, and DummyType is just zeros
                case DummyType:
                {
                    bEndOfBuffer = true;
                }
                break;

                case DeclarePlatformType:
                {
                    MM_DeclarePlatformData * pData = NULL;
                    bEndOfBuffer = ReadBufferData( m_uRxBytesQueued, m_uRxBytesProcessed, & pData, & pBuffer );
                    if ( ! bEndOfBuffer )
                    {
                        memcpy( & RawData, pData, GetPacketSize( *reinterpret_cast< MM_DataPacketBlock* >( pData ) ) );
                        sLock.Unlock( );

                        Notify( SSC_MEM_HOST_ONRECIEVE, 0, & RawData );
                    }
                }
                break;

                case DeclareSpaceDataType:
                {
                    MM_DeclareSpaceData * pData = NULL;
                    bEndOfBuffer = ReadBufferData( m_uRxBytesQueued, m_uRxBytesProcessed, & pData, & pBuffer );
                    if ( ! bEndOfBuffer )
                    {
                        memcpy( & RawData, pData, GetPacketSize( *reinterpret_cast< MM_DataPacketBlock* >( pData ) ) );
                        sLock.Unlock( );

                        Notify( SSC_MEM_HOST_ONRECIEVE, 0, & RawData );
                    }
                }
                break;

                case DeclareSectionType:
                {
                    MM_DeclareSectionData * pData = NULL;
                    bEndOfBuffer = ReadBufferData( m_uRxBytesQueued, m_uRxBytesProcessed, & pData, & pBuffer );
                    if ( ! bEndOfBuffer )
                    {
                        memcpy( & RawData, pData, GetPacketSize( *reinterpret_cast< MM_DataPacketBlock* >( pData ) ) );
                        sLock.Unlock( );

                        Notify( SSC_MEM_HOST_ONRECIEVE, 0, & RawData );
                    }
                }
                break;

                case RescindSectionType:
                {
                    MM_RescindSectionData * pData = NULL;
                    bEndOfBuffer = ReadBufferData( m_uRxBytesQueued, m_uRxBytesProcessed, & pData, & pBuffer );
                    if ( ! bEndOfBuffer )
                    {
                        memcpy( & RawData, pData, GetPacketSize( *reinterpret_cast< MM_DataPacketBlock* >( pData ) ) );
                        sLock.Unlock( );

                        Notify( SSC_MEM_HOST_ONRECIEVE, 0, & RawData );
                    }
                }
                break;

                case IdentifySectionType:
                {
                    MM_IdenitfySectionData * pData = NULL;
                    bEndOfBuffer = ReadBufferData( m_uRxBytesQueued, m_uRxBytesProcessed, & pData, & pBuffer );
                    if ( ! bEndOfBuffer )
                    {
                        memcpy( & RawData, pData, GetPacketSize( *reinterpret_cast< MM_DataPacketBlock* >( pData ) ) );
                        sLock.Unlock( );

                        Notify( SSC_MEM_HOST_ONRECIEVE, 0, & RawData );
                    }
                }
                break;

                case DeclareAllocationType:
                {
                    MM_DeclareAllocationData * pData = NULL;
                    bEndOfBuffer = ReadBufferData( m_uRxBytesQueued, m_uRxBytesProcessed, & pData, & pBuffer );
                    if ( ! bEndOfBuffer )
                    {
                        m_uAllocationCount ++;
                        memcpy( & RawData, pData, GetPacketSize( *reinterpret_cast< MM_DataPacketBlock* >( pData ) ) );
                        sLock.Unlock( );

                        Notify( SSC_MEM_HOST_ONRECIEVE, 0, & RawData );
                    }
                }
                break;

                case RescindAllocationType:
                {
                    MM_RescindAllocationData * pData = NULL;
                    bEndOfBuffer = ReadBufferData( m_uRxBytesQueued, m_uRxBytesProcessed, & pData, & pBuffer );
                    if ( ! bEndOfBuffer )
                    {
                        m_uDeallocationCout ++;
                        memcpy( & RawData, pData, GetPacketSize( *reinterpret_cast< MM_DataPacketBlock* >( pData ) ) );
                        sLock.Unlock( );

                        Notify( SSC_MEM_HOST_ONRECIEVE, 0, & RawData );
                    }
                }
                break;

                case IdentifyAllocationType:
                {
                    MM_IdentifyAllocationData * pData = NULL;
                    bEndOfBuffer = ReadBufferData( m_uRxBytesQueued, m_uRxBytesProcessed, & pData, & pBuffer );
                    if ( ! bEndOfBuffer )
                    {
                        memcpy( & RawData, pData, GetPacketSize( *reinterpret_cast< MM_DataPacketBlock* >( pData ) ) );
                        sLock.Unlock( );

                        Notify( SSC_MEM_HOST_ONRECIEVE, 0, & RawData );
                    }
                }
                break;

                case IssueFlagType:
                {
                    MM_IssueFlagData * pData = NULL;
                    bEndOfBuffer = ReadBufferData( m_uRxBytesQueued, m_uRxBytesProcessed, & pData, & pBuffer );
                    if ( ! bEndOfBuffer )
                    {
                        memcpy( & RawData, pData, GetPacketSize( *reinterpret_cast< MM_DataPacketBlock* >( pData ) ) );
                        sLock.Unlock( );

                        Notify( SSC_MEM_HOST_ONRECIEVE, 0, & RawData );
                    }
                }
                break;

                case ReportAddRefType:
                {
                    MM_ReportAddRefData * pData = NULL;
                    bEndOfBuffer = ReadBufferData( m_uRxBytesQueued, m_uRxBytesProcessed, & pData, & pBuffer );
                    if ( ! bEndOfBuffer )
                    {
                        memcpy( & RawData, pData, GetPacketSize( *reinterpret_cast< MM_DataPacketBlock* >( pData ) ) );
                        sLock.Unlock( );

                        Notify( SSC_MEM_HOST_ONRECIEVE, 0, & RawData );
                    }
                }
                break;

                case ReportReleaseType:
                {
                    MM_ReportReleaseData * pData = NULL;
                    bEndOfBuffer = ReadBufferData( m_uRxBytesQueued, m_uRxBytesProcessed, & pData, & pBuffer );
                    if ( ! bEndOfBuffer )
                    {
                        memcpy( & RawData, pData, GetPacketSize( *reinterpret_cast< MM_DataPacketBlock* >( pData ) ) );
                        sLock.Unlock( );

                        Notify( SSC_MEM_HOST_ONRECIEVE, 0, & RawData );
                    }
                }
                break;

                case MemoryBlockType:
                {
                    MM_SendMemoryBlockData * pData = NULL;
                    bEndOfBuffer = ReadBufferData( m_uRxBytesQueued, m_uRxBytesProcessed, & pData, & pBuffer );
                    if ( ! bEndOfBuffer )
                    {
                        memcpy( & RawData, pData, GetPacketSize( *reinterpret_cast< MM_DataPacketBlock* >( pData ) ) );
                        sLock.Unlock( );

                        Notify( SSC_MEM_HOST_ONRECIEVE, 0, & RawData );
                    }
                }
                break;

                case AcknowledgementType:
                {
                    MM_Acknowledgement * pData;
                    bEndOfBuffer = ReadBufferData( m_uRxBytesQueued, m_uRxBytesProcessed, & pData, & pBuffer );
                    if ( ! bEndOfBuffer )
                    {
                        m_bSendDataAcked = true;
                    }
                }
                break;

                case ReportSuspendStateType:
                {
                    MM_ReportSuspend * pData;
                    bEndOfBuffer = ReadBufferData( m_uRxBytesQueued, m_uRxBytesProcessed, & pData, & pBuffer );
                    if ( ! bEndOfBuffer )
                    {
                        m_bClientSuspended = pData->isSuspended;

                        sLock.Unlock( );
                        if ( m_bClientSuspended )
                        {
                            Notify( SSC_MEM_HOST_SUSPENDED, 0, NULL );
                        }
                        else
                        {
                            Notify( SSC_MEM_HOST_RESUMED, 0, NULL );
                        }
                    }
                }
                break;

                case ReportStackUsageType:
                {
                    MM_RequestStackUsageData * pData = NULL;
                    bEndOfBuffer = ReadBufferData( m_uRxBytesQueued, m_uRxBytesProcessed, & pData, & pBuffer );
                    if ( ! bEndOfBuffer )
                    {
                        memcpy( & RawData, pData, GetPacketSize( *reinterpret_cast< MM_DataPacketBlock* >( pData ) ) );

                        sLock.Unlock( );
                        Notify( SSC_MEM_HOST_ONRECIEVE, 0, & RawData );
                    }
                }
                break;

                default:
                {
                    ASSERT( false );
                }
            };
        }
        else
        {
            // no more data left, rise end of buffer flag
            bEndOfBuffer = true;
        }
    };

    //
    // cross-thread messaging
    //
    Notify( SSC_MEM_RAWDATAQUEUE_NEWDATA, 0, NULL );
}

void CMemMonitorHost::SendAck( )
{
    CSingleLock sLock( & g_cs, true );
    MM_DataPacketBlock Data;
    Data.acknowledgementData.header = AcknowledgementType;
    Data.acknowledgementData.userData = 0;

    m_aryTxQueue.push( Data );
    InitiateTransmission( );
}

void CMemMonitorHost::SendRequestStackUsage( MM_ClientMemorySpace memorySpace, unsigned int uStackStartAddress )
{
    CSingleLock sLock( & g_cs, true );
    MM_DataPacketBlock Data;
    Data.requestStackUsageData.header = RequestStackUsageType;
    Data.requestStackUsageData.memorySpace = memorySpace;
    Data.requestStackUsageData.address = uStackStartAddress;

    m_aryTxQueue.push( Data );
    InitiateTransmission( );
}

void CMemMonitorHost::InitiateTransmission( )
{
    CSingleLock sLock( & g_cs, true );
    //
    // Check if attached, and no transmit outstanding and that we have data to send.,
    // and we have been acked with last transmition
    if( m_bAttached && !m_bTxOutstanding && ( ! m_aryTxQueue.empty( ) ) && m_bSendDataAcked )
    {
        ZeroMemory( m_pTxBuffer, sizeof( m_pTxBuffer ) );

        unsigned char * pBuffer = m_pTxBuffer;
        unsigned int uTxBytesQueued = 0;

        while( ! m_aryTxQueue.empty( ) )
        {
            MM_DataPacketBlock Data = m_aryTxQueue.front( );

            m_aryTxQueue.pop( );

            unsigned int uDataSize = GetPacketSize( Data );

            memcpy( pBuffer, & Data, uDataSize );
            pBuffer += uDataSize;
            uTxBytesQueued += uDataSize;
        }

        m_pChannel->SendAsync( m_pTxBuffer, uTxBytesQueued, this );

        m_bTxOutstanding = true;

        m_bSendDataAcked = false;
    }
}

unsigned int CMemMonitorHost::GetPacketSize( const MM_DataPacketBlock & Data )
{
    return radMemoryMonitorGetPacketSize( Data.acknowledgementData.header );
}

//=============================================================================
// Function:    CMemMonitorHost::OnStatusChange
//=============================================================================
// Description: callback function when communication status has been changed
//              
// Returns:     N/A
//
// Notes:       
//------------------------------------------------------------------------------
void CMemMonitorHost::OnStatusChange( IRadDbgComChannel::ConnectionState connectionState,
                     const char* Message )
{
    CSingleLock sLock( & g_cs, true );
    //
    // Switch on status message.
    //  
    switch( connectionState )
    {
        case IRadDbgComChannel::Attached :
        {
            //
            // clear output buffer for first time attached
            //
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

            Notify( SSC_MEM_HOST_RECONNECT, 0, NULL );
            SetAttachedStatus( true );

            //
            // send normal message
            //
            CMemErrorMsgPtr pError = static_cast< CMemErrorMsg * >( RUNTIME_CLASS( CMemErrorMsg )->CreateObject( ) );
            CString strError = "Connected to client.";
            pError->Initialize( CMemErrorMsg::Message, strError, NULL );
            Notify( SSC_MEM_ERROR_MSG, 0, pError );

            //
		    // We are attached. Issue a receive.
		    //								
            m_pChannel->ReceiveAsync( (void*) m_pRxBuffer, sizeof( m_pRxBuffer ) , this );
        }
        break;

        case IRadDbgComChannel::Detached :
        {
            m_bClientSuspended = false;
            SetAttachedStatus( false );
            if( !m_bSelfDetach )
            {
                CMemErrorMsgPtr pError = static_cast< CMemErrorMsg * >( RUNTIME_CLASS( CMemErrorMsg )->CreateObject( ) );
                CString strError;
                strError.Format( "Error: Failed to attach to target \"%s\" because [%s].", m_szTargetName , Message );
                pError->Initialize( CMemErrorMsg::Error, strError, NULL );

                Notify( SSC_MEM_ERROR_MSG, 0, pError );
            }
            //
            // send normal message
            //
            CMemErrorMsgPtr pError = static_cast< CMemErrorMsg * >( RUNTIME_CLASS( CMemErrorMsg )->CreateObject( ) );
            CString strError = "Disconnected from client.";
            pError->Initialize( CMemErrorMsg::Message, strError, NULL );
            Notify( SSC_MEM_ERROR_MSG, 0, pError );

            Notify( SSC_MEM_HOST_DISCONNECT, 0, NULL );
        }
        break;

        case IRadDbgComChannel::Attaching :
        case IRadDbgComChannel::Detaching:
        {
            m_bClientSuspended = false;
            SetAttachedStatus( false );
        }
        break;
    }
}

void CMemMonitorHost::OnSendComplete( bool Successful )
{
    CSingleLock sLock( & g_cs, true );
    m_bTxOutstanding = false;

    if( Successful )
    {
        //
        // Initiate send possible,
        //
        InitiateTransmission( );
    }
}

void CMemMonitorHost::OnReceiveComplete( bool Successful, unsigned int bytesReceived )
{
    if( Successful )
    {
        CSingleLock sLock( & g_cs );
        sLock.Lock( );
        m_uRxBytesQueued += bytesReceived;
        m_uRxBytesProcessed = 0;

        sLock.Unlock( );

        ProcessRxBuffer( );

        sLock.Lock( );
        if ( m_uRxBytesQueued > 0 )
        {
            memcpy( m_pRxBuffer, ( m_pRxBuffer + m_uRxBytesProcessed ), m_uRxBytesQueued );
        }

        ZeroMemory( ( m_pRxBuffer + m_uRxBytesQueued ), sizeof( m_pRxBuffer ) - m_uRxBytesQueued );
        m_pChannel->ReceiveAsync( (void*) ( m_pRxBuffer + m_uRxBytesQueued ), sizeof( m_pRxBuffer ) - m_uRxBytesQueued, this );

        m_bSendDataAcked = true;

        sLock.Unlock( );
    }
}

