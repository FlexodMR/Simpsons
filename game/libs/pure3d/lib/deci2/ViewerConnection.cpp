/*===========================================================================
   File:: ViewerConnection.cpp

   Copyright (c) 2000 Radical Entertainment, Inc.  All rights reserved.

===========================================================================*/

#include "ViewerConnection.hpp"
#include <assert.h>
#include "deci2proto.hpp"
#include "viewerproto.hpp"
#include <string.h>


ViewerConnection::ViewerConnection()
{

}

ViewerConnection::~ViewerConnection()
{

}


void
ViewerConnection::Render(float delta)
{
   viewerproto pkt;
   pkt.code = EventRender;
   pkt.u.r.delta = delta;
   Send(pkt, pkt.length);
}

void
ViewerConnection::Activate(bool active)
{
   viewerproto pkt;
   pkt.code = EventActivate;
   pkt.u.a.active = active;
   Send(pkt, pkt.length);
}

void
ViewerConnection::KeyPress(unsigned key)
{
   viewerproto pkt;
   pkt.code = EventKeyPress;
   pkt.u.k.key = key;
   Send(pkt, pkt.length);
}

void
ViewerConnection::MousePress(int button)
{
   viewerproto pkt;
   pkt.code = EventMousePress;
   pkt.u.mp.button = button;
   Send(pkt, pkt.length);
}

void
ViewerConnection::MouseDrag(int dx, int dy)
{
   viewerproto pkt;
   pkt.code = EventMouseDrag;
   pkt.u.md.dx = dx;
   pkt.u.md.dy = dy;
   Send(pkt, pkt.length);
}

void
ViewerConnection::MouseRelease(int button)
{
   viewerproto pkt;
   pkt.code = EventMouseRelease;
   pkt.u.mr.button = button;
   Send(pkt, pkt.length);
}

void
ViewerConnection::FileDrop(const char* name)
{
   viewerproto pkt;
   pkt.code = EventFileDrop;
   strcpy(pkt.u.fd.name, name);
   Send(pkt, pkt.length);
}

