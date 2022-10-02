/*===========================================================================
   multicast.cpp
   14-Feb-00 Created by Neall

   Copyright (c) 2000 Radical Entertainment, Inc.
   All rights reserved.
===========================================================================*/
#include "eventreceiver.hpp"

#include <assert.h>

MulticastReceiver::MulticastReceiver()
{
   for(int i=0; i < MAX_RECEIVER; i++)
   {
      receiver[i] = 0;
   }
   nReceiver = 0;
}

void MulticastReceiver::Add(EventReceiver* r)
{
   assert(nReceiver < MAX_RECEIVER);
   receiver[nReceiver++] = r;
}
void MulticastReceiver::Render(float delta)
{
   for(int i=0; i < nReceiver; i++)
      receiver[i]->Render(delta);
}

void MulticastReceiver::Activate(bool a)
{
   for(int i=0; i < nReceiver; i++)
      receiver[i]->Activate(a);
}

void MulticastReceiver::KeyPress(unsigned key)
{
   for(int i=0; i < nReceiver; i++)
      receiver[i]->KeyPress(key);
}

void MulticastReceiver::MousePress(int button)
{
   for(int i=0; i < nReceiver; i++)
      receiver[i]->MousePress(button);
}

void MulticastReceiver::MouseDrag(int dx, int dy)
{
   for(int i=0; i < nReceiver; i++)
      receiver[i]->MouseDrag(dx, dy);
}

void MulticastReceiver::MouseRelease(int button)
{
   for(int i=0; i < nReceiver; i++)
      receiver[i]->MouseRelease(button);
}

void MulticastReceiver::FileDrop(const char* name)
{
   for(int i=0; i < nReceiver; i++)
      receiver[i]->FileDrop(name);
}

void MulticastReceiver::ScripterCommand(const char* cmd)
{
   for(int i=0; i < nReceiver; i++)
      receiver[i]->ScripterCommand(cmd);
}
