//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


#include "debugcom.hpp"

#include <utility/string.hpp>
#include <utility/queue.hpp>

#include <p3d/utility.hpp>
#include <p3d/platform.hpp>

#include <raddebugcommunication.hpp>
#include <radfile.hpp>
#include <radplatform.hpp>
#include <radprotocols/fileprotocol.hpp>
#include <raddebugfileserver.hpp>

#include <string.h>
#include <stdio.h>

const unsigned char PACKET_SERVER_COMMAND = 1;
const unsigned char PACKET_CLIENT_COMMAND = 2;
const unsigned char PACKET_ACK = 255;

class CommandCallback : public IRadDbgComChannelStatusCallback,
                        public IRadDbgComChannelSendCallback,
                        public IRadDbgComChannelReceiveCallback
{
    public:
        CommandCallback( IRadDbgComChannel* g_pChannel, RadDbgComInterpreter* interp );
        ~CommandCallback( void );
        virtual void OnStatusChange( IRadDbgComChannel::ConnectionState connectionState, const char* pMessage );
        virtual void OnSendComplete( bool Successful );
        virtual void OnReceiveComplete( bool Successful, unsigned int bytesReceived );
            
        //
        // Member functions implemented for IRefCound
        //
        virtual void AddRef( void );
        virtual void Release( void ); 

        Queue<String> sendQueue;

        void Send(void);

    private:
        bool sending;

        char   m_RxBuffer[ 10 * 1024 ]; // Senta
        char   m_TxBuffer[ 10 * 1024 ];

        unsigned int m_RoundTrips;
        unsigned int m_RxCount;
        unsigned int m_RefCount;
        IRadDbgComChannel* m_pChannel;
        RadDbgComInterpreter* interp;
};

CommandCallback::CommandCallback( IRadDbgComChannel* g_pChannel, RadDbgComInterpreter* i) : sendQueue(1024)
{
    interp = i;
    m_RefCount = 1;
    m_pChannel = g_pChannel;
    m_pChannel->AddRef();
   sending = true;
}

CommandCallback::~CommandCallback( void )
{
    m_pChannel->Release();
}

void CommandCallback::AddRef( void )
{
    m_RefCount++;
}

void CommandCallback::Release( void )
{
    m_RefCount--;
    if( m_RefCount == 0 )
    {
        delete this;
    }   
}

void CommandCallback::OnStatusChange( IRadDbgComChannel::ConnectionState connectionState, const char* pMessage )
{
    char outbuf[ 200 ];
        
    if( connectionState == IRadDbgComChannel::Detached )
    {
        sprintf( outbuf, "Command channel (%s) : [Detached], Message: [%s]\n", interp->GetTargetName(), pMessage );
        m_pChannel->Attach();
    }
    else if( connectionState == IRadDbgComChannel::Attaching )
    {
        sprintf( outbuf, "Command channel (%s) : [Attaching], Message: [%s]\n",interp->GetTargetName(), pMessage );
    }   
    else if( connectionState == IRadDbgComChannel::Detaching )
    {
        sprintf( outbuf, "Command channel (%s) : [Detaching], Message: [%s]\n",interp->GetTargetName(), pMessage );
    }   
    else if( connectionState == IRadDbgComChannel::Attached )
    {
        sprintf( outbuf, "Command channel (%s) : [Attached], Message: [%s]\n",interp->GetTargetName(), pMessage );


        sending = false;
        Send();
        //
        // We are attached. Issue a receive.
        //                
        m_pChannel->ReceiveAsync( (void*) m_RxBuffer, sizeof( m_RxBuffer ) , this );
        m_RoundTrips = 0;
        m_RxCount = 0;
    }   

    rDebugString( outbuf );
}

void CommandCallback::Send(void)
{
   if(sending)
      return;

   int pos = 0;
   while(!sendQueue.Empty() && (pos < (sizeof(m_TxBuffer) - 257) ))
   {
      String s = sendQueue.Dequeue();
      int len = s.GetLength();
      m_TxBuffer[pos++] = PACKET_SERVER_COMMAND;
      m_TxBuffer[pos++] = len;
      memcpy(&m_TxBuffer[pos], (const char*)s, len);
      pos += len;
   }

   if(pos)
   {
      m_pChannel->SendAsync((void*) m_TxBuffer, pos, this);
      sending = true;
   }
};

void CommandCallback::OnSendComplete( bool Successful )
{    
   if( !Successful )
   {
      rDebugString("RadDbgComInterpreter : Send Failed\n" );
   }
}

void ClientCommand(const char* c);

void CommandCallback::OnReceiveComplete( bool Successful, unsigned int bytesReceived )
{
    if( Successful )
    {
        char* walk;
        char tmp[256];
        walk = m_RxBuffer;

        while(bytesReceived > 0)
        {
             unsigned char type = *walk++;

             if(type == PACKET_CLIENT_COMMAND)
             {
                 int len = *walk;
                 walk++;
                 memcpy(tmp, walk, len);
                 tmp[len] = 0;
                 ClientCommand(tmp);
                 walk += len;
                 bytesReceived -= len + 2;
             }
             else if (type == PACKET_ACK)
             {
                sending = false;
                bytesReceived -= 1;
                Send();
             }
        }

//        m_TxBuffer[0] = (char)255;
//        dbgChannel->SendAsync( (void*) m_TxBuffer, 1, this );
//        radDbgComService();
        m_pChannel->ReceiveAsync( (void*) m_RxBuffer, sizeof( m_RxBuffer ) , this );
    }
    else
    {
        rDebugString( "Receive Failed \n" );
    }
}


RadDbgComInterpreter::RadDbgComInterpreter(const char* t)
{
   strcpy(targetName, "p3dview.");   
   strcat(targetName, t);
   isFirewire = false;
   channel = NULL;
}

RadDbgComInterpreter::~RadDbgComInterpreter()
{
   if(channel)
   {
      channel->RegisterStatusCallback(NULL);
      channel->Release();
   }
   delete callback;


   struct IRadDbgComTargetTable* host;
   radDbgComHostGetTargetTable( &host );
   host->DeleteTargetDefinition(targetName);
   host->Release();
}

char tmpSend[256];

void RadDbgComInterpreter::Command(const char* line)
{
   callback->sendQueue.Enqueue(String(line));
   callback->Send();
   radDbgComService();
   return;
}

bool RadDbgComInterpreter::Connect(const char* s)
{
   Disconnect();
   radDbgComHostCreateChannel( targetName, 0xee11 ,&channel );

   if(!channel)
   {
     struct IRadDbgComTargetTable* host;
     radDbgComHostGetTargetTable( &host );
     host->DeleteTargetDefinition(targetName);

     if(isFirewire)
        host->AddTargetDefinition(targetName, "FireWire", 8510);
     else
        host->AddTargetDefinition(targetName, s, 8510);


     radDbgComHostCreateChannel( targetName, 0xee11 ,&channel );
     host->Release();
   }

   if(channel)
   {
      callback = new CommandCallback(channel, this);
      channel->RegisterStatusCallback(callback);
      channel->Attach( );
      radDbgComService();
   }

   return (channel != NULL);

}

bool RadDbgComInterpreter::Disconnect(void)
{
   if(channel)
      channel->Release();

   channel = NULL;

   return true;
}



