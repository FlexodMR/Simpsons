/*===========================================================================
   File:: ViewerReceiver.cpp

   Copyright (c) 2000 Radical Entertainment, Inc.  All rights reserved.

===========================================================================*/

#include "ViewerReceiver.hpp"
#include <assert.h>

#include "C:\p3dcurrent\Releases\v14\lib\deci2/ViewerConnection.hpp"

ViewerReceiver::ViewerReceiver(ViewerConnection* connection) : ps2(connection)
{
}

void
ViewerReceiver::Render(float delta)
{
   //ps2->Render(delta);
}

void
ViewerReceiver::Activate(bool a)
{
   //ps2->Activate(a);
}

void
ViewerReceiver::KeyPress(unsigned key)
{
   ps2->KeyPress(key);
}

void
ViewerReceiver::MousePress(int button)
{
   ps2->MousePress(button);
}

void
ViewerReceiver::MouseDrag(int dx, int dy)
{
   ps2->MouseDrag(dx, dy);
}

void
ViewerReceiver::MouseRelease(int button)
{
   ps2->MouseRelease(button);
}

void
ViewerReceiver::FileDrop(const char* name)
{
   ps2->FileDrop(name);
}

void
ViewerReceiver::ScripterCommand(const char* cmd)
{
   //
}
