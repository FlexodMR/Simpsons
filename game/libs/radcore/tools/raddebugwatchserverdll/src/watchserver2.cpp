//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


//=============================================================================
//
// File:        WatchServer2.cpp
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

//===========================================================================
// CWatchServer::DispatchValueOnChange
//===========================================================================
// Description: When value gets changed from the client, it is pushed into a
//              queue and this function will dispatch those change list.
//
// Constraints: None
//
// Parameters:  None
// return:      None
//===========================================================================
void CWatchServer::DispatchValueOnChange( )
{
    while ( m_aryValueOnChange.size( ) > 0 )
    {
        string strWatchPointFullName = m_aryValueOnChange.front( );
        m_aryValueOnChange.pop_front( );
        
        //
        // Do callbacks
        //
        if ( m_pWPValueCallBack != NULL )
        {
            m_pWPValueCallBack( strWatchPointFullName.c_str( ), m_pUserData );
        }
    }
}

//===========================================================================
// CWatchServer::DispatchValueRequest
//===========================================================================
// Description: Dispatch value that has been changed.
//
// Constraints: None
//
// Parameters:  None
// return:      None
//===========================================================================
void CWatchServer::DispatchValueRequest( )
{
    rAssert( m_pRootNode != NULL );

    //
    // Do update if calcultaed interval time is more than update time we set before.
    //
    if ( ( GetTickCount( ) - m_uLastUpdateTime ) > m_uUpdateIntervalInMilliSec )
    {
        //
        // go through each entry and send the request packet.
        //
        DispatchValueRequest( m_pRootNode );
        
        m_uLastUpdateTime = GetTickCount( );
    }
}

//===========================================================================
// CWatchServer::DispatchValueRequest
//===========================================================================
// Description: Dispatch node value that has been requested
//
// Constraints: None
//
// Parameters:  pNode - node value needs to be requested
// return:      None
//===========================================================================
void CWatchServer::DispatchValueRequest( const CWatchNode * pNode )
{
    rAssert( pNode != NULL );

    //
    // go through each watch point and send request if can.
    //
    list< CWatchPointPtr > aryWatchPoints;
    pNode->GetWatchPoints( aryWatchPoints );

    for ( list< CWatchPointPtr >::const_iterator p = aryWatchPoints.begin( ); p != aryWatchPoints.end( ); p ++ )
    {
        void * pAddress = (*p)->GetValueRequestAddr( );

        if ( pAddress != NULL )
        {
            WCRequestValue* pValue = (WCRequestValue*) GetTxBuffer( sizeof( WCRequestValue ) );
            if ( pValue != NULL )
            {
                pValue->m_Address = pAddress;
                pValue->m_Command = WPCRequestValue;
                pValue->m_DataType = (*p)->GetProtocalDataType( );
                InitiateTransmission( );
            }
        }
    }

    //
    // recrusive down each node.
    //
    list< CWatchNodePtr > aryWatchNodes;
    pNode->GetWatchNodes( aryWatchNodes );

    for ( list< CWatchNodePtr >::const_iterator n = aryWatchNodes.begin( ); n != aryWatchNodes.end( ); n ++ )
    {
        DispatchValueRequest( (*n) );
    }
}

//===========================================================================
// CWatchServer::DispatchWPOnChange
//===========================================================================
// Description: Dispatch Watch point that has been created/destoryed
//
// Constraints: None
//
// Parameters:  None
// return:      None
//===========================================================================
void CWatchServer::DispatchWPOnChange( )
{
    while( m_aryWPCreate.size( ) > 0 )
    {
        pair< string, bool > oWatchPointCreate = m_aryWPCreate.front( );
        m_aryWPCreate.pop_front( );

        //
        // Do callbacks
        //
        if ( m_pWPChangeCallBack != NULL )
        {
            m_pWPChangeCallBack( oWatchPointCreate.first.c_str( ), oWatchPointCreate.second, m_pUserData );
        }
    } 
}

//===========================================================================
// CWatchServer::DispatchWPOnChange
//===========================================================================
// Description: construct watch point full name from a watch point
//
// Constraints: None
//
// Parameters:  strFullName - name of the watch point
// return:      bool - return true if fullname is constructed successfully.
//===========================================================================
bool CWatchServer::ConstructWatchPointFullName( const CWatchPoint * pWatchPoint, string & strFullName )
{
    if ( pWatchPoint == NULL )
    {
        return false;
    }

    strFullName.assign( "\\" );
    strFullName.append( pWatchPoint->GetName( ) );

    const CWatchNode * pParentNode = pWatchPoint->GetParentNode( );

    while ( pParentNode != NULL )
    {
        string strParentPath;
        strParentPath.assign( "\\" );
        strParentPath.append( pParentNode->GetName( ) );
        strFullName.insert( 0, strParentPath );
        pParentNode = pParentNode->GetParentNode( );
    }
    return true;
}

//===========================================================================
// CWatchServer::GetTxBuffer
//===========================================================================
// Description: allocate a space in Tx buffer.
//
// Constraints: None
//
// Parameters:  uBufferSize - size of buffer to be allocated
// return:      void * - buffer location.
//===========================================================================
void* CWatchServer::GetTxBuffer( unsigned int uBufferSize )
{
    void* p = NULL;
    //
    // Check if room in the active buffer to add 
    //
    if( ( m_TxBytesQueued + uBufferSize ) <= sizeof( m_TxBuffer1 ) )
    {
        p = m_CurrentTxAddress;
        m_CurrentTxAddress += uBufferSize;
        m_TxBytesQueued += uBufferSize;
    }
    else
    {
        //
        // report error as buffer overflow
        //
    }   
    
    return( p );
}


//===========================================================================
// CWatchServer::InitiateTransmission
//===========================================================================
// Description: start the transmission
//
// Constraints: None
//
// Parameters:  None
// return:      None
//===========================================================================
void CWatchServer::InitiateTransmission( void )
{
    //
    // Check if no transmit outstanding and that we have data to send.,
    //
    if( !m_TxOutstanding && (m_TxBytesQueued != 0) && !m_WaitingForTxAcknowledge )
    {
        if( m_Buffer1Active )
        {
            //
            // We will send buffer1 and reset things for buffer 2
            //
            m_pChannel->SendAsync( m_TxBuffer1, m_TxBytesQueued, this );
            m_CurrentTxAddress = m_TxBuffer2;
        }
        else
        {
            //
            // We will send buffer2 and reset things for buffer 1
            //
            m_pChannel->SendAsync( m_TxBuffer2, m_TxBytesQueued, this );
            m_CurrentTxAddress = m_TxBuffer1;

        }

        m_Buffer1Active = !m_Buffer1Active;
        m_TxBytesQueued = 0;
        m_TxOutstanding = true;
        m_WaitingForTxAcknowledge = true;
    
    }
}

//===========================================================================
// CWatchServer::SetAttachStatus
//===========================================================================
// Description: Internal help function
//
// Constraints: n/a
//
// Parameters:  n/a
// return:      n/a
//===========================================================================
void CWatchServer::SetAttachStatus( bool bAttached )
{
    if ( m_pStatusCallBack != NULL )
    {
        m_pStatusCallBack( bAttached, m_pUserData );
    }
}

//===========================================================================
// CWatchServer::OnStatusChange
//===========================================================================
// Description: Internal help function
//
// Constraints: n/a
//
// Parameters:  n/a
// return:      n/a
//===========================================================================
void CWatchServer::OnStatusChange( IRadDbgComChannel::ConnectionState connectionState,  const char* Message )
{
    //
    // Switch on status message.
    //  
    switch( connectionState )
    {
        case IRadDbgComChannel::Attached :
        {   
            SetAttachStatus( true );

            //
            // Simply issue a receive to wait for data.
            //
            m_pChannel->ReceiveAsync( m_RxBuffer, sizeof( m_RxBuffer ), this );

            //
            // Set up the trasmitter variables.
            //
            m_TxOutstanding             = false;
            m_WaitingForTxAcknowledge   = false;
            m_TxBytesQueued             = 0;
            m_CurrentTxAddress          = m_TxBuffer1;
            m_Buffer1Active             = true;
            m_TxBytesLeftOver           = 0;
            m_bConnected                = true;

        }
        break;

        case IRadDbgComChannel::Detached :
        {
            //
            // Check if we have self destructed. If not display reason for detach.
            //
            if( !m_SelfDetach )
            {
            }
            SetAttachStatus( false );
            m_TxOutstanding             = false;
            m_WaitingForTxAcknowledge   = false;
            m_TxBytesQueued             = 0;
            m_CurrentTxAddress          = m_TxBuffer1;
            m_Buffer1Active             = true;
            m_TxBytesLeftOver           = 0;
            m_bConnected                = false;
        }
        break;

        case IRadDbgComChannel::Attaching:
        case IRadDbgComChannel::Detaching:
        {
            SetAttachStatus( false );
            m_bConnected                = false;
        }
        break;
    }
}

//===========================================================================
// CWatchServer::OnSendComplete
//===========================================================================
// Description: Internal help function
//
// Constraints: n/a
//
// Parameters:  n/a
// return:      n/a
//===========================================================================
void CWatchServer::OnSendComplete( bool Successful )
{
    m_TxOutstanding = false;

    if( Successful )
    {
        //
        // Initiate send possible,
        //
        InitiateTransmission( );
    }
}

//===========================================================================
// CWatchServer::OnReceiveComplete
//===========================================================================
// Description: Internal help function
//
// Constraints: n/a
//
// Parameters:  n/a
// return:      n/a
//===========================================================================
void CWatchServer::OnReceiveComplete( bool Successful, unsigned int bytesReceived )
{
    if( Successful )
    {
        //
        // Here we have received a buffer. Process the data. Simply process each packet
        // of data in the buffer. We use a technique were packets can span multiple buffers/
        //
        unsigned char* pRxAddress = m_RxBuffer;
        bytesReceived += m_TxBytesLeftOver;
        m_TxBytesLeftOver = 0;

        while( IsCompletePacket( bytesReceived, pRxAddress ) )
        {
            //
            // Check what kind of packet we got and process.
            //
            switch( *((WPCommand*) pRxAddress) )
            {
                case WPCNameSpace:
                {
                    //
                    // Get the view and set the name space. It understands signifcance 
                    // receiving name space.
                    //
                    WCNameSpace* pPacket = (WCNameSpace*) pRxAddress;

                    pRxAddress += sizeof( WCNameSpace );
                    bytesReceived -= sizeof( WCNameSpace );

                    //
                    // set current namespace context.
                    //
                    strcpy( m_szCurrentNameSpace, pPacket->m_NameSpace );
                }
                break;

                case WPCCreate:
                {
                    // 
                    // Creation of a watch point. Contruct one of the appropriate type. Note
                    // that the constructor adds itself to a list, hence no need to save pointer
                    // returned from new. 
                    // 
                    WCCreate* pPacket = (WCCreate*) pRxAddress;

                    pRxAddress += sizeof( WCCreate );
                    bytesReceived -= sizeof( WCCreate);

                    //
                    // insert into tree
                    //
                    rAssert( m_pRootNode != NULL );
                    if ( m_pRootNode != NULL )
                    {
                        CWatchPointPtr pPoint = new CWatchPoint;
                        if ( pPoint->Initialize( pPacket ) )
                        {
                            CWatchPoint * pInserted = m_pRootNode->InsertWatchPoint( m_szCurrentNameSpace, pPoint );
                            if ( pInserted )
                            {
                                string strFullName;
                                ConstructWatchPointFullName( pInserted, strFullName );
                                m_aryWPCreate.push_back( pair< string, bool >( strFullName, true ) );
                            }
                            else
                            {
                                rAssert( false );
                            }
                        }
                        else
                        {
                            rAssert( false );
                        }
                        m_szCurrentNameSpace[ 0 ] = '\0';
                    }
                }
                break;

                case WPCCreateEnum:
                {
                    //
                    // Creation of an enumeration watchpoint
                    //
                    WCCreateEnum* pPacket = (WCCreateEnum*) pRxAddress;
                    
                    pRxAddress += (sizeof( WCCreateEnum ) + pPacket->m_Length);
                    bytesReceived -= (sizeof( WCCreateEnum) + pPacket->m_Length);

                    //
                    // insert into tree
                    //
                    rAssert( m_pRootNode != NULL );
                    if ( m_pRootNode != NULL )
                    {
                        CWatchPointPtr pPoint = new CWatchPoint;
                        if ( pPoint->Initialize( pPacket ) )
                        {
                            CWatchPoint * pInserted = m_pRootNode->InsertWatchPoint( m_szCurrentNameSpace, pPoint );
                            if ( pInserted )
                            {
                                string strFullName;
                                ConstructWatchPointFullName( pInserted, strFullName );
                                m_aryWPCreate.push_back( pair< string, bool >( strFullName, true ) );
                            }
                            else
                            {
                                rAssert( false );
                            }
                        }
                        else
                        {
                            rAssert( false );
                        }
                        m_szCurrentNameSpace[ 0 ] = '\0';
                    }
                }
                break;

                case WPCDelete:
                {
                    //
                    // Destruction of a watch point
                    //
                    WCDelete* pPacket = (WCDelete*) pRxAddress;
                   
                    pRxAddress += sizeof( WCDelete );
                    bytesReceived -= sizeof( WCDelete );

                    //
                    // delete from tree
                    //
                    rAssert( m_pRootNode != NULL );
                    if ( m_pRootNode != NULL )
                    {
                        CWatchPoint * pPoint = m_pRootNode->FindWatchPoint( pPacket->m_Address );

                        if ( pPoint != NULL )
                        {
                            string strFullName;
                            ConstructWatchPointFullName( pPoint, strFullName );
                            m_aryWPCreate.push_back( pair< string, bool >( strFullName, false ) );
                            m_pRootNode->RemoveWatchPoint( pPacket->m_Address );
                        }
                    }
                }
                break;

                case WPCAssociateFile:
                {
                    //
                    // Get the associate file
                    //
                    WCAssociateFile* pPacket = (WCAssociateFile*) pRxAddress;

                    pRxAddress += sizeof( WCAssociateFile );
                    bytesReceived -= sizeof( WCAssociateFile );

                    //
                    // Don't care
                    //
                }
                break;

                case WPCValue:
                {
                    //
                    // Receipt of a value. Make sure point still exists.
                    //
                    WCValue* pPacket = (WCValue*) pRxAddress;

                    //
                    // Update the receive buffer. Must deal with special case of string.
                    //                    
                    if( pPacket->m_DataType == WPDString )
                    { 
                        pRxAddress += pPacket->m_Attrib.m_string.m_Length;
                        bytesReceived -= pPacket->m_Attrib.m_string.m_Length;
                    }

                    pRxAddress += sizeof( WCValue );
                    bytesReceived -= sizeof( WCValue);

                    //
                    // set value
                    //
                    rAssert( m_pRootNode != NULL );
                    CWatchPointPtr pWP = m_pRootNode->FindWatchPoint( pPacket->m_Address );
                    if ( pWP != NULL )
                    {
                        //
                        // only add to value change list if SetValue return true.
                        //
                        if( pWP->SetValue( pPacket ) )
                        {
                            string strFullName;
                            ConstructWatchPointFullName( pWP, strFullName );
                            m_aryValueOnChange.push_back( strFullName );
                        }
                    }
                    else
                    {
                        rDebugString( "Warning: Cannot update WatchPoint value, because Watch Point specified cannot be found.\n" );
                    }
                }
                break;

                case WPCPacketReceived:
                {
                    //
                    // We have received acknowledge of a previous transmit. See we can send.
                    //
                    m_WaitingForTxAcknowledge = false;

                    pRxAddress += sizeof( WCPacketReceived );
                    bytesReceived -= sizeof( WCPacketReceived );

                    InitiateTransmission( );
                }
                break;

                case WPCHostRequest:
                {
                    //
                    // This command is ignored by the Watch server. May use in the
                    // future.
                    //
                    WCHostRequest* pPacket = (WCHostRequest*) pRxAddress;

                    pRxAddress += (sizeof( WCHostRequest ) + pPacket->m_Length);
                    bytesReceived -= (sizeof( WCHostRequest ) + pPacket->m_Length);
                    break;
                }
                break;

                default:
                {
                    rAssert( false );
                }
                break;
            }
        }
        //
        // Re-issue the receive buffer. Move any bytes remaining to the front of the buffer.
        //
        if( bytesReceived != 0 )
        {
            m_TxBytesLeftOver = bytesReceived;
            memmove( m_RxBuffer, pRxAddress, m_TxBytesLeftOver );
        }  

        m_pChannel->ReceiveAsync( m_RxBuffer + m_TxBytesLeftOver, sizeof( m_RxBuffer ) - m_TxBytesLeftOver, this );
    }
    else
    {
        //
        // if receiving failed, we are in big trouble, delete Tx buffer left over
        // from previous recieve.
        //
        m_TxBytesLeftOver = 0;
    }

}

//===========================================================================
// CWatchServer::IsCompletePacket
//===========================================================================
// Description: Internal help function
//
// Constraints: n/a
//
// Parameters:  n/a
// return:      n/a
//===========================================================================
bool CWatchServer::IsCompletePacket(unsigned int bytesRemaining, unsigned char *pRxBuffer)
{
    //
    // First make sure we have a command code.
    //
    if( bytesRemaining < sizeof( WPCommand ) )
    {
        return( false );
    }

    switch( *((WPCommand*) pRxBuffer) )
    {
        case WPCNameSpace :
        {
            if( bytesRemaining < sizeof( WCNameSpace ) )
            {
                return( false );
            }
            break;
        }

        case WPCCreate :
        {
            if( bytesRemaining < sizeof( WCCreate ) )
            {
                return( false );
            }
            break;
        }

        case WPCCreateEnum :
        {
            if( bytesRemaining < sizeof( WCCreateEnum ) )
            {
                return( false );
            }
            WCCreateEnum* pPacket = (WCCreateEnum*) pRxBuffer;
            if( pPacket->m_Length + sizeof( WCCreateEnum ) > bytesRemaining )
            {
                return( false );
            }
    
            break;
        }

        case WPCDelete :
        {
            if( bytesRemaining < sizeof( WCDelete ) )
            {
                return( false );
            }
            break;
        }

        case WPCAssociateFile :
        {
            if( bytesRemaining < sizeof( WCAssociateFile ) )
            {
                return( false );
            }
            break;
        }

        case WPCPacketReceived :
        {
            if( bytesRemaining < sizeof( WCPacketReceived ) )
            {
                return( false );
            }
            break;
        }
        
        case WPCValue :
        {
            if( bytesRemaining < sizeof( WCValue ) )
            {
                return( false );
            }
            WCValue* pPacket = (WCValue*) pRxBuffer;
            if( pPacket->m_DataType == WPDString )
            {
                if( ( pPacket->m_Attrib.m_string.m_Length + sizeof( WCValue ) ) > bytesRemaining )
                {
                    return( false );
                }
           
            }
            break;              
        }

        case WPCHostRequest :
        {
            if( bytesRemaining < sizeof( WCHostRequest ) )
            {
                return( false );
            }
            WCHostRequest* pPacket = (WCHostRequest*) pRxBuffer;
            if( ( pPacket->m_Length + sizeof( WCHostRequest ) ) > bytesRemaining )
            {
                return( false );
            }
    
            break;
        }

        default:
        {
            rAssert( false );
            break;
        }

    }

    return( true );
}
