/*===========================================================================
   File:: deci2proto.cpp

   Copyright (c) 2000 Radical Entertainment, Inc.  All rights reserved.

===========================================================================*/

#include "deci2proto.hpp"
#include <assert.h>


netmp::netmp()
{
   length = sizeof(netmp);
   reserved = 0;
   protocol = DECI2_PROTOCOL_NETMP;
   source = DECI2_NODE_ID_HOST;
   destination = DECI2_NODE_ID_HOST;

   result = NETMP_ERR_OK;
}

netmpConnect::netmpConnect(int numprotocols)
{
   length += sizeof(netmpConnectData) * numprotocols;
   code = NETMP_CODE_CONNECT;
   for(int i = 0; i < DECI2_MAXPROTOCOLS; i++)
   {
      protocols[i].priority = 0;
      protocols[i].unused = 0;
      protocols[i].protocol = DECI2_PROTOCOL_DCMP;
   }
}

void
netmpConnect::SetProtocol(int p,
                          unsigned char  priority,
                          Deci2Proto     protocol)
{
   protocols[p].priority = priority;
   protocols[p].protocol = protocol;
}


netmpReset::netmpReset()
{
   length = sizeof(netmpReset);
   code = NETMP_CODE_RESET;
   ee_boot_param[0]  = ee_boot_param[1]  = -1;
   iop_boot_param[0] = iop_boot_param[1] = -1;
}
