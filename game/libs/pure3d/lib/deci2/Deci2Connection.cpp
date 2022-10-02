/*===========================================================================
   File:: Deci2Connection.cpp

   Copyright (c) 2000 Radical Entertainment, Inc.  All rights reserved.

===========================================================================*/

#include "Deci2Connection.hpp"
#include <assert.h>
#include "deci2proto.hpp"

Deci2Connection::Deci2Connection()
{

}

Deci2Connection::~Deci2Connection()
{

}

int
Deci2Connection::Connect(const char* host, int port)
{
   int result = Connection::Connect(host,port);

   if(result == 0)
   {
      netmpConnect pkt(1);
      pkt.SetProtocol(0, DECI2_DEFAULT_PRIORITY, DECI2_PROTOCOL_EVIEWER);
      
      Send(pkt, pkt.length);
   }
   
   return result;
}

int
Deci2Connection::Reset()
{
   netmpReset pkt;
   Send(pkt, pkt.length);
   return 0;
}
