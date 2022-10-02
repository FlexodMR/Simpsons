/*===========================================================================
   File:: Deci2Connection.hpp

   Copyright (c) 2000 Radical Entertainment, Inc.  All rights reserved.

===========================================================================*/

#ifndef _DECI2CONNECTION_HPP
#define _DECI2CONNECTION_HPP

#include "Connection.hpp"

const int DECI2_DEFAULT_DSNETM_PORT = 8510;

class Deci2Connection : public Connection
{
public:
   Deci2Connection();
   virtual ~Deci2Connection();

   virtual int Connect(const char* host, int port = DECI2_DEFAULT_DSNETM_PORT);

   int Reset();
};

#endif
