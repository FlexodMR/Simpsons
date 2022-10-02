//=============================================================================
// Copyright (C) 2001 Radical Entertainment Ltd.  All Rights Reserved
//
// Component   : Scrooby
//
// Description : A communication channel to the scrooby viewer.  It will be
//               implemented first in the scrooby builder to allow a 'real'
//               view of the current project in the builder
//
// Author(s)   : Mike Perzel
//
//=============================================================================

//=============================================================================
// Includes
//=============================================================================

#include "ViewComm.h"

//=============================================================================
// Local constants, typedefs, macros
//=============================================================================

//=============================================================================
// Global data, local data, local classes
//=============================================================================

static ViewerComm* g_pViewerCommInstance = NULL;

//=============================================================================
// Member functions
//=============================================================================

//=============================================================================
// ViewerComm::GetInstance
//=============================================================================
// Description : This should be used instead of the constructor.  It makes sure
//               there is only one copy of the ViewerComm object open to avoid
//               communication channel conficts
//
// Constraints : As this is used in place of a constructor, the Release
//               function should be used to destroy any user created objects
//
// Parameters  : None
//
// Return      : A pointer to the instance of the global ViewerComm object
//
//=============================================================================
ViewerComm* ViewerComm::GetInstance()
{
    if ( g_pViewerCommInstance == NULL )
    {
        g_pViewerCommInstance = new ViewerComm();
    }
    g_pViewerCommInstance->AddRef();
    return g_pViewerCommInstance;
}

//=============================================================================
// ViewerComm::ViewerComm
//=============================================================================
// Description : Sets up the target table, and then tries to connect to the
//               target.
//
// Constraints : None
//
// Parameters  : None
//
// Return      : void
//
//=============================================================================
ViewerComm::ViewerComm() :
m_RefCount( 0 ),
m_pChannel( NULL ),
m_bufSize( DEFAULT_BUFFER_SIZE ),
m_bufCurrent( 0 ),
m_bufTail( 0 )
{
    m_pRxBuffer = new MessagePacket();
    /*m_pTxBuffer = new MessagePacket*[m_bufSize];
    for ( unsigned int i = 0; i < m_bufSize; i++ )
    {
    m_pTxBuffer[i] = NULL;
}*/
    m_pTxBuffer = new MessagePacket*[m_bufSize];
    
    radDbgComHostGetTargetTable( &m_pTargetTable );
    rAssert( m_pTargetTable != NULL );
    
    // This is now done in the XCon app by switching the viewer
    if ( m_pTargetTable->GetDefaultTarget( m_pTargetName ) )
    {
        Connect();
    }   
}

//=============================================================================
// ViewerComm::~ViewerComm
//=============================================================================
// Description : Closes the communication channels.
//
// Constraints : None
//
// Parameters  : None
//
// Return      : void
//
//=============================================================================
ViewerComm::~ViewerComm()
{
    //
    // Clean up references to the objects still left in memory
    // that we don't need anymore. 
    //
    
    m_pTargetTable->Release();
    m_pTargetTable = NULL;
    
    Disconnect();
}

//=============================================================================
// ViewerComm::AddRef
//=============================================================================
// Description : increases the counter to keep track of the number of objects
//               which are using it
//
// Constraints : This shouldn't really be used unless you've got a very good
//               reason.  It should be handled by the init/deinit automatically
//
// Parameters  : None
//
// Return      : void
//
//=============================================================================
void ViewerComm::AddRef()
{
    m_RefCount++;
}

//=============================================================================
// ViewerComm::Connect
//=============================================================================
// Description : Establish a connection to the current target
//
// Constraints : none
//
// Parameters  : None
//
// Return      : true on successful connection, false on any error
//
//=============================================================================
bool ViewerComm::Connect()
{
    Disconnect();
    bool rValue = false;
    //
    // Get the communication host
    //
    radDbgComHostCreateChannel( m_pTargetName, 0xee11, &m_pChannel);
    rValue = ( m_pChannel != NULL );
    if (rValue)
    {
        
        //
        // Create a status callback to monitor for connections status and to drive sends and receives
        //
        m_pChannel->RegisterStatusCallback( this );
        
        //
        // Attach to the target
        //
        m_pChannel->Attach();   
    }
    
    return rValue;
}

//=============================================================================
// ViewerComm::Disconnect
//=============================================================================
// Description : kill the current connection
//
// Constraints : None
//
// Parameters  : None
//
// Return      : true on successful disconnect, false on any error
//
//=============================================================================
bool ViewerComm::Disconnect()
{
    if ( m_pChannel != NULL )
    {
        m_pChannel->Detach();
        m_pChannel->Release();
        m_pChannel = NULL;
    }
    
    return true;
}

//=============================================================================
// ViewerComm::GetTarget
//=============================================================================
// Description : tells us the current target of the communications channel
//
// Constraints : None
//
// Parameters  : None
//
// Return      : The current Target
//
//=============================================================================
char* ViewerComm::GetTarget()
{
    return m_pTargetName;
}
//=============================================================================
// ViewerComm::OnReceiveComplete
//=============================================================================
// Description : A Callback function which is triggered at the end of a recieve
//
// Constraints : Not to be used by the programmer.
//
// Parameters  :
//       Successful - whether the transfer was successful
//       bytesRecieved = the number of bytes recieved
//
// Return      : void
//
//=============================================================================
void ViewerComm::OnReceiveComplete( bool Successful, unsigned int bytesRecieved )
{
    if( Successful )
    {
        rDebugString( "Received\n" );
        if ( m_pRxBuffer->GetCommand() == e_ctAcknowledge )
        {
            delete m_pTxBuffer[m_bufCurrent];
            m_pTxBuffer[m_bufCurrent] = NULL;
            m_bufCurrent++;
            if ( m_bufCurrent >= m_bufSize )
            {
                m_bufCurrent = 0;
            }
            if ( m_pTxBuffer[m_bufCurrent] != NULL )
            {
                m_bSendReady = false;
                m_pChannel->SendAsync( m_pTxBuffer[m_bufCurrent], m_pTxBuffer[m_bufCurrent]->Size(), this );
                //m_pChannel->ReceiveAsync( (void*) m_pRxBuffer, m_pRxBuffer->Size(), this );
                
            }
            else
            {
                m_bSendReady = true;
            }
            //m_pChannel->ReceiveAsync( (void*) m_pRxBuffer, m_pRxBuffer->Size() , this );
        }
    }
    else
    {
        rDebugString( "Receive Failed\n" );
    }
}

//=============================================================================
// ViewerComm::OnSendSuccessful
//=============================================================================
// Description : A Callback function triggered after a send operation
//
// Constraints : Not to be used by the programmer
//
// Parameters  : Successful - whether the transfer succeeded
//
// Return      : void
//
//=============================================================================
void ViewerComm::OnSendComplete( bool Successful )
{
    if( Successful )
    {
        m_pChannel->ReceiveAsync( (void*) m_pRxBuffer, m_pRxBuffer->Size(), this );
        rDebugString( "Send Completed\n" );
    }
    else
    {
        rDebugString( "Send Failed\n" );
    }
}

//=============================================================================
// ViewerComm::OnStatusChange
//=============================================================================
// Description : Callback function which is triggered when the status of the
//               connection changes
//
// Constraints : Not to be used by the programmer
//
// Parameters  :
//       connectionState - the new state of the connection
//       pMessage - any messages sent along with the state change
//
// Return      : void
//
//=============================================================================
void ViewerComm::OnStatusChange( IRadDbgComChannel::ConnectionState connectionState, const char* pMessage )
{
    char outbuf[ 200 ];
    
    if( connectionState == IRadDbgComChannel::Detached )
    {
        sprintf( outbuf, "State: [Detached], Message: [%s]\n",pMessage );
    }
    else if( connectionState == IRadDbgComChannel::Attaching )
    {
        sprintf( outbuf, "State: [Attaching], Message: [%s]\n",pMessage );
    }   
    else if( connectionState == IRadDbgComChannel::Detaching )
    {
        sprintf( outbuf, "State: [Detaching], Message: [%s]\n",pMessage );
    }   
    else if( connectionState == IRadDbgComChannel::Attached )
    {
        sprintf( outbuf, "State: [Attached], Message: [%s]\n",pMessage );
        
        
        //
        // Issue a send of some data. We don't care what the data is, just send it.
        //
        ResizeBuffer( m_bufSize );
        m_pTxBuffer[0] = new MessagePacket();
        m_pTxBuffer[0]->SetCommand( e_ctConnect );
        m_pTxBuffer[0]->SetMessage( "Connecting..." );
        m_bSendReady = false;
        m_pChannel->SendAsync( m_pTxBuffer[0], m_pTxBuffer[0]->Size(), this );
        delete m_pTxBuffer[0];
        m_pTxBuffer[0] = NULL;
        //
        // We are attached. Issue a receive.
        //                
        //m_pChannel->ReceiveAsync( (void*) m_pRxBuffer, m_pRxBuffer->Size() , this );
        
    }   
    
    rDebugString( outbuf );
    
}

//=============================================================================
// ViewerComm::Release
//=============================================================================
// Description : In lieu of a deconstructor.  Reduces the references, and
//               cleans up the object if neccessary.
//
// Constraints : This shouldn't really be used unless you've got a very good
//               reason.  It should be handled by the init/deinit automatically
//
// Parameters  : None
//
// Return      : void
//
//=============================================================================
void ViewerComm::Release()
{
    m_RefCount--;
    if ( m_RefCount == 0 )
    {
        delete this;
    }
}

//=============================================================================
// ViewerComm::ResizeBuffer
//=============================================================================
// Description : Sends a message to the target
//
// Constraints : This will wipe the buffer.  Don't use it unless the buffer is
//               empty, or you don't mind losing it.
//
// Parameters  : size - the new buffer size
//
// Return      : void
//
//=============================================================================
void ViewerComm::ResizeBuffer( unsigned int size )
{
    delete[m_bufSize] m_pTxBuffer;
    m_pTxBuffer = new MessagePacket*[size];
    m_bufSize = size;
    for ( unsigned int i = 0; i < m_bufSize; i++ )
    {
        m_pTxBuffer[i] = NULL;
    }
    m_bufCurrent = 0;
    m_bufTail = 0;
}

//=============================================================================
// ViewerComm::SendMessage
//=============================================================================
// Description : Sends a message to the target
//
// Constraints : None
//
// Parameters  : command - the message type
//               message - a text message which may accompany the command.  The
//                         value of message will vary with command type.
//
// Return      : void
//
//=============================================================================
void ViewerComm::SendMessage( enum CommandType command, const char* message )
{
    if (m_pChannel)
    {
        bool safeToSend = false;
        
        // this will only be true if the buffer is empty
        if ( m_pTxBuffer[m_bufCurrent] == NULL )
        {
            m_bufTail = m_bufCurrent;
            m_pTxBuffer[m_bufCurrent] = new MessagePacket();
            safeToSend = m_bSendReady;
        }
        // there's something in the buffer, so tack what we have onto the end
        else
        {
            // This will mean we are overwriting an existing packet
            if ( m_pTxBuffer[m_bufTail] != NULL )
            {
                delete m_pTxBuffer[m_bufTail];
            }
            m_pTxBuffer[m_bufTail] = new MessagePacket();
        }
        m_pTxBuffer[m_bufTail]->SetCommand( command );
        m_pTxBuffer[m_bufTail]->SetMessage( message );
        if ( safeToSend )
        {
            m_bSendReady = false;
            m_pChannel->SendAsync( m_pTxBuffer[m_bufTail], m_pTxBuffer[m_bufTail]->Size(), this );
            //m_pChannel->ReceiveAsync( (void*) m_pRxBuffer, m_pRxBuffer->Size(), this );
        }
        m_bufTail++;
        if ( m_bufTail >= m_bufSize )
        {
            m_bufTail = 0;
        }
    }
}

//=============================================================================
// ViewerComm::SetTarget
//=============================================================================
// Description : This will set the name of the target, so the Connect function
//               can use it.
//
// Constraints : None
//
// Parameters  : target - a string which names a raddebugcomm target
//
// Return      : void
//
//=============================================================================
void ViewerComm::SetTarget( radDbgComTargetName target )
{
    strcpy( m_pTargetName, target );
}
