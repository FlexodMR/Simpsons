/*===========================================================================
   File:: viewerproto.cpp

   Copyright (c) 2000 Radical Entertainment, Inc.  All rights reserved.

===========================================================================*/

#include "viewerproto.hpp"
#include <assert.h>

viewerproto::viewerproto()
{
   length = sizeof(viewerproto);
   reserved = 0;
   protocol = DECI2_PROTOCOL_EVIEWER;
   source = DECI2_NODE_ID_HOST;
   destination = DECI2_NODE_ID_EE;
}
   

