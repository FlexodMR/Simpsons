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

// Recompillation Protection
#ifndef VIEWER_COMM_H
#define VIEWER_COMM_H

//=============================================================================
// Nested Includes
//=============================================================================

#include <raddebug.hpp>
#include <radplatform.hpp>
#include <raddebugcommunication.hpp>
#include "net/MessagePacket.h"

//=============================================================================
// Forward References
//=============================================================================

//=============================================================================
// Constants, Typedefs, and Macro Definitions
//=============================================================================
#define DEFAULT_BUFFER_SIZE 10
//=============================================================================
// Interface Definitions
//=============================================================================

class ViewerComm :
                  public IRadDbgComChannelStatusCallback,
                  public IRadDbgComChannelSendCallback,
                  public IRadDbgComChannelReceiveCallback
//=============================================================================
// Description : This class is used to communicate with the Scrooby Viewer on
//               Remote machines.
//
// Constraints :
//=============================================================================
{
public:
   static ViewerComm* GetInstance();

   virtual char* GetTarget();
   virtual void SetTarget( radDbgComTargetName target );

   virtual void OnStatusChange( IRadDbgComChannel::ConnectionState connectionState, const char* pMessage );
   virtual void OnSendComplete( bool Successful );
   virtual void OnReceiveComplete( bool Successful, unsigned int bytesReceived );

   virtual void SendMessage( enum CommandType command, const char* message );

   virtual void ResizeBuffer( unsigned int size );

   //
   // Member functions implemented for Reference Counting
   //
   virtual void AddRef( void );
   virtual void Release( void ); 

   // functions to establish a connection
   virtual bool Connect();
   virtual bool Disconnect();
   
protected:
   // Restrict access to force the use of GetInstance() and Release();
   ViewerComm( void );
   ~ViewerComm( void );


   unsigned int m_RefCount; 
   IRadDbgComChannel* m_pChannel;
   IRadDbgComTargetTable* m_pTargetTable;
   radDbgComTargetName m_pTargetName;

   MessagePacket* m_pRxBuffer;
   MessagePacket** m_pTxBuffer;

   bool m_bSendReady;

   unsigned int m_bufCurrent;
   unsigned int m_bufTail;
   unsigned int m_bufSize;

private:
};

#endif