/*===========================================================================
   File:: viewerproto.hpp

   Copyright (c) 2000 Radical Entertainment, Inc.  All rights reserved.

===========================================================================*/

#ifndef _VIEWERPROTO_HPP
#define _VIEWERPROTO_HPP

#include "deci2proto.hpp"

enum ViewerEventCode 
{
   EventRender,
   EventActivate,
   EventKeyPress,
   EventMousePress,
   EventMouseDrag,
   EventMouseRelease,
   EventFileDrop
};

struct RenderEvent
{
   float delta;
};

struct ActivateEvent
{
   bool active;
};

struct KeyPressEvent
{
   unsigned key;
};

struct MousePressEvent
{
   int button;
};

struct MouseDragEvent
{
   int dx;
   int dy;
};

struct MouseReleaseEvent
{
   int button;
};

struct FileDropEvent
{
   char name[256];
};

// Protocol structures
struct viewerproto : public deci2
{
   viewerproto();

   ViewerEventCode code;
   
   union {
      RenderEvent r;
      ActivateEvent a;
      KeyPressEvent k;
      MousePressEvent mp;
      MouseDragEvent md;
      MouseReleaseEvent mr;
      FileDropEvent fd;
   } u;
};

#endif
