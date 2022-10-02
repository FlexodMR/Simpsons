/*===========================================================================
   File:: ViewerReceiver.hpp

   Copyright (c) 2000 Radical Entertainment, Inc.  All rights reserved.

===========================================================================*/

#ifndef _VIEWERRECIEVER_HPP
#define _VIEWERRECIEVER_HPP

#include "eventreceiver.hpp"

class ViewerConnection;

class ViewerReceiver : public EventReceiver
{
public:
   ViewerReceiver(ViewerConnection* connection);

   virtual void Render(float delta);
   virtual void Activate(bool a);
   virtual void KeyPress(unsigned key);
   virtual void MousePress(int button);
   virtual void MouseDrag(int dx, int dy);
   virtual void MouseRelease(int button);
   virtual void FileDrop(const char* name);
   virtual void ScripterCommand(const char* cmd);

private:
   ViewerConnection* ps2;
};

#endif
