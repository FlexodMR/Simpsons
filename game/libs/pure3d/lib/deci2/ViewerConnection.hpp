/*===========================================================================
   File:: ViewerConnection.hpp

   Copyright (c) 2000 Radical Entertainment, Inc.  All rights reserved.

===========================================================================*/

#ifndef _VIEWERCONNECTION_HPP
#define _VIEWERCONNECTION_HPP

#include "Deci2Connection.hpp"

class ViewerConnection : public Deci2Connection
{
public:
   ViewerConnection();
   virtual ~ViewerConnection();

   // Send messages
   virtual void Render(float delta);
   virtual void Activate(bool active);
   virtual void KeyPress(unsigned key);
   virtual void MousePress(int button);
   virtual void MouseDrag(int dx, int dy);
   virtual void MouseRelease(int button);
   virtual void FileDrop(const char* name);
   
private:
};

#endif
