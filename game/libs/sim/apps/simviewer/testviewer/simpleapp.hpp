/*===========================================================================
   simpleapp.hpp
   14-Feb-00 Created by Neall

   Simple framework for a Pure3D application.

   Copyright (c) 2000 Radical Entertainment, Inc.
   All rights reserved.
===========================================================================*/
#ifndef _SIMPLEAPP_HPP
#define _SIMPLEAPP_HPP

class EventReceiver;
class MenuHandler;

class SimpleApp
{
public:
   SimpleApp() : receiver(NULL) { /**/ }
   virtual ~SimpleApp()         { /**/ }

   virtual int Run() = 0;
   virtual void Quit() = 0;
   virtual bool InitPure3D(const char* windowTitle, const char* pddi, int x, int y, int bpp, bool fullScreen) = 0;
   virtual MenuHandler* GetMenuHandler() = 0;
   virtual void GetFileName(char* filename) { filename[0] = 0; }

   void SetEventReceiver(EventReceiver* r) { receiver = r; }
   EventReceiver* GetEventReceiver()       { return receiver; }

private:
   EventReceiver* receiver;
};

#endif