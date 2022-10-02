/*===========================================================================
   mouse.hpp
   03-Nov-99 Created by Neall

   Copyright (c) 1999 Radical Entertainment, Inc.
   All rights reserved.
===========================================================================*/
#ifndef _MOUSE_HPP
#define _MOUSE_HPP

#include "radmath/radmath.hpp"

class Mouse
{
public:
   Mouse();

   enum Button { LEFT, MIDDLE, RIGHT };

   void Press(int button);
   void Release(int button);
   void Drag(int x, int y);

   void GetMatrix(rmt::Matrix* m);
   void Reset();

   void SetOrigin(float x, float y, float z)       { origin.x = x; origin.y = y; origin.z = z; }
   void SetOrientation(float y, float p, float r)  { orientation.x = y;  orientation.y = p;  orientation.z = r; }
   void SetMoveRate(float rate) { moveRate = rate; }
   void SetRollRate(float rate) { rollRate = rate; }
   void SetZoomRate(float rate) { zoomRate = rate; }

private:
   float tx;
   float ty;
   float tz;
   float rotx;
   float roty;
   float rotz;
   float yaw;
   float pitch;
   float roll;
   float moveRate;
   float rollRate;
   float zoomRate;
   rmt::Vector origin;
   rmt::Vector orientation;
   bool buttonState[3];

   rmt::Vector translation;
   rmt::Quaternion rotation;
};

#endif /* _MOUSE_HPP */