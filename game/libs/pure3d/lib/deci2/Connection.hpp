/*===========================================================================
   File:: Connection.hpp

   This class is used to create TCP connections to the PS2 tool.

   Copyright (c) 2000 Radical Entertainment, Inc.  All rights reserved.

===========================================================================*/

#ifndef _CONNECTION_HPP
#define _CONNECTION_HPP

class Connection
{
public:
   Connection();
   virtual ~Connection();

   virtual int Connect(const char* host, int port);
   virtual int Disconnect();   

   void Send(char* buf, unsigned short len);
   void Recv(char* buf, unsigned int* len);
   void Recv_with_timeout(char *buf,
                          unsigned int *len,
                          struct timeval *timeout);
   
   const char* const Error();       // returns the last error

private:
   bool connected;
   char* err;
   int fd;

   int  ConnectInternal(const char* host, int port);
   int  DisconnectInternal();
};

#endif
