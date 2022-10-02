/*===========================================================================
   eventreceiver.hpp
   14-Feb-00 Created by Neall

   Defines a platform independent way for an application to receive simple
   input and rendering events.

   Copyright (c) 2000 Radical Entertainment, Inc.
   All rights reserved.
===========================================================================*/
#ifndef _EVENTRECEIVER_HPP
#define _EVENTRECEIVER_HPP

//-------------------------------------------------------------------
// application key codes
const unsigned K_BACK       = 0x08 + 0x1000;
const unsigned K_TAB        = 0x09 + 0x1000;
const unsigned K_ESCAPE     = 0x1B + 0x1000;
const unsigned K_SPACE      = 0x20 + 0x1000;
const unsigned K_PAGEUP     = 0x21 + 0x1000;
const unsigned K_PAGEDOWN   = 0x22 + 0x1000;
const unsigned K_END        = 0x23 + 0x1000;
const unsigned K_HOME       = 0x24 + 0x1000;
const unsigned K_LEFT       = 0x25 + 0x1000;
const unsigned K_UP         = 0x26 + 0x1000;
const unsigned K_RIGHT      = 0x27 + 0x1000;
const unsigned K_DOWN       = 0x28 + 0x1000;
const unsigned K_INSERT     = 0x2D + 0x1000;
const unsigned K_DELETE     = 0x2E + 0x1000;
const unsigned K_F1         = 0x70 + 0x1000;
const unsigned K_F2         = 0x71 + 0x1000;
const unsigned K_F3         = 0x72 + 0x1000;
const unsigned K_F4         = 0x73 + 0x1000;
const unsigned K_F5         = 0x74 + 0x1000;
const unsigned K_F6         = 0x75 + 0x1000;
const unsigned K_F7         = 0x76 + 0x1000;
const unsigned K_F8         = 0x77 + 0x1000;
const unsigned K_F9         = 0x78 + 0x1000;
const unsigned K_F10        = 0x79 + 0x1000;
const unsigned K_F11        = 0x7A + 0x1000;
const unsigned K_F12        = 0x7B + 0x1000;
const unsigned K_NUMLOCK    = 0x90 + 0x1000;
const unsigned K_SCROLL     = 0x91 + 0x1000;

inline unsigned TranslateKeyCode(int code)
{
   return (unsigned)(code + 0x1000);
}

class EventReceiver
{
public:
   enum MouseButton { LEFT, MIDDLE, RIGHT };

   virtual void Render(float delta) = 0;
   virtual void Activate(bool a) = 0;
   virtual void KeyPress(unsigned key) = 0;
   virtual void MousePress(int button) = 0;
   virtual void MouseDrag(int dx, int dy) = 0;
   virtual void MouseRelease(int button) = 0;
   virtual void FileDrop(const char* name) = 0;
   virtual void ScripterCommand(const char* cmd) = 0;
};

const int MAX_RECEIVER = 5;

class MulticastReceiver : public EventReceiver
{
public:
   MulticastReceiver();
   void Add(EventReceiver* er);

   virtual void Render(float delta);
   virtual void Activate(bool a);
   virtual void KeyPress(unsigned key);
   virtual void MousePress(int button);
   virtual void MouseDrag(int dx, int dy);
   virtual void MouseRelease(int button);
   virtual void FileDrop(const char* name);
   virtual void ScripterCommand(const char* cmd);

private:
   EventReceiver* receiver[MAX_RECEIVER];
   int nReceiver;
};


#endif