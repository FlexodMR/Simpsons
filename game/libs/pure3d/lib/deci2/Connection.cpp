/*===========================================================================
   File:: Connection.cpp

   Copyright (c) 2000 Radical Entertainment, Inc.  All rights reserved.

===========================================================================*/

#include "Connection.hpp"
#include <assert.h>
#include <stdlib.h>
#include <stdio.h>

#include <errno.h>
#include <stdlib.h>
#include <string.h>

#ifdef WIN32
#include <winsock2.h>
#else

#include <unistd.h>
#include <arpa/inet.h>
#include <sys/types.h>
#include <netinet/in.h>
#include <sys/socket.h>
#include <netdb.h>
#include <sys/time.h>
#include <sys/param.h>
#include <elf.h>

#endif


Connection::Connection(): connected(false), err(NULL), fd(-1)
{
}

Connection::~Connection()
{
   if(connected)
   {
      Disconnect();
   }
}

int
Connection::Connect(const char* host, int port)
{
   if(connected)
   {
      err = "Already connected";
      return -1;
   }

   printf("Connecting to %s port %d\n",
          host,
          port);
   
   if(ConnectInternal(host, port))
   {
      return -1;
   }

   connected = true;
   return 0;
}

int
Connection::Disconnect()
{
   if(!connected)
   {
      err = "Not connected";
      return -1;
   }
   
   printf("Disconnect\n");
   
   DisconnectInternal();
   
   connected = false;
   return 0;
}


const char* const
Connection::Error()
{
   if(err)
   {
      return err;
   } else {
      return "No Error";
   }
}

// ----------------------------------------------------------------------
// Internal platform specific methods
// ----------------------------------------------------------------------

#ifdef WIN32
Connection::ConnectInternal(const char* host, int port)
{
   u_long addr;
   struct hostent *hp;
   struct sockaddr_in server;

   static bool winsockinit = false;

   if(!winsockinit)
   {
      WORD wVersionRequested;
      WSADATA wsaData;
      int errval; 
      wVersionRequested = MAKEWORD( 2, 0 ); 
      errval = WSAStartup( wVersionRequested, &wsaData );
      if ( errval != 0 ) 
      {
         /* Tell the user that we could not find a usable */
         /* WinSock DLL.                                  */    
         err = "can't initialize windows sockets\n";
         return -1;
      }
      winsockinit = true;
   }

   memset((char *)&server, 0, sizeof(server));
   if ((addr = inet_addr(host)) == -1)
   {
      if ((hp = gethostbyname(host)) == NULL)
      {
         err = "gethostbyname() fail";
         return -1;
      }
      addr = *(u_long *)hp->h_addr;
      server.sin_family = hp->h_addrtype;
   } else {
      server.sin_family = AF_INET;
   }

   if ((fd = socket(AF_INET, SOCK_STREAM, 0)) == INVALID_SOCKET)   // create socket
   {
      err = "socket() fail";
      return -1;
   }

   server.sin_addr.s_addr = addr;
   server.sin_port = htons(port);
   // connect to host
   if (connect(fd, (struct sockaddr *)&server, sizeof(server)) < 0)
   {
      err = "connect() fail";
      return -1;
   }
   return 0;
}

int
Connection::DisconnectInternal()
{
   closesocket(fd);
   return 0;
}

void 
Connection::Send(char* buf, unsigned short len)
{
   if (send(fd, buf, len, 0) < 0)
   {
      err = "Connection::Send - write";
   }
}

#else

int
Connection::ConnectInternal(const char* host, int port)
{
   struct in_addr addr;
   struct hostent *hp;
   struct sockaddr_in server;

   if (inet_aton(host, &addr) == 0) 
   {
      if ((hp = gethostbyname(host)) == NULL)
      {
         err = "Invalid hostname.";
         return -1;
      }
      addr.s_addr =  *(unsigned long *)hp->h_addr;
      server.sin_family = hp->h_addrtype;
   } else {
      if ((hp = gethostbyaddr((char *)&addr, sizeof(addr), AF_INET)) == NULL)
      {
         err = "Invalid address.";
         return -1;
      }
      server.sin_family = AF_INET;
   }

   if ((fd = socket(AF_INET, SOCK_STREAM, 0)) < 0)
   {
      err = "socket() fail";
      return -1;
   }

   server.sin_addr.s_addr = addr.s_addr;
   server.sin_port = htons(port);
   
   // connect to host
   if (connect(fd, (struct sockaddr *)&server, sizeof(server)) < 0)
   {
      perror("connect");
      err = "connect() fail";
      return -1;
   }

   return 0;
}

int
Connection::DisconnectInternal()
{
   close(fd);
   return 0;
}

void 
Connection::Send(char* buf, unsigned short len)
{
   if (write(fd, buf, len) < 0)
   {
      perror("Connection::Send - write");
      err = "Connection::Send - write";
   }
}

#endif
