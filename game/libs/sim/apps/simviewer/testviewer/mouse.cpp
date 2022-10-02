/*===========================================================================
   mouse.cpp
   03-Nov-99 completely rewritten, spiffier version

   Copyright (c) 1999 Radical Entertainment, Inc.
   All rights reserved.
===========================================================================*/

#include "mouse.hpp"

using namespace RadicalMathLibrary;

Mouse::Mouse()
{
   tx = ty = 0.0f;
   tz = 10.f;
   rotx = -0.75f;
   roty = 0.f;
   rotz = 0.f;
   yaw = pitch = roll = 0.0f;
   moveRate = 0.2f;
   zoomRate = 0.5f;
   rollRate = rmt::DegToRadian(0.75);

   origin.Set(0, 0, 100.0f);
   orientation.Set(0, 0, 0);
   Reset();

   for(int i=0; i < 3; i++)
   {
      buttonState[i] = false;
   }
}

void Mouse::Press(int button)
{
   buttonState[button] = true;
}

void Mouse::Release(int button)
{
   buttonState[button] = false;
}

void Mouse::Drag(int dx, int dy)
{
   if(buttonState[LEFT] && !buttonState[MIDDLE])
   {
      roty += (float)dx * rollRate;
      rotx += (float)dy * rollRate;
      yaw += (float)dx * rollRate;
      pitch -= (float)dy * rollRate;
   }
   else if(!buttonState[LEFT] && buttonState[MIDDLE])
   {
      tx -= (float)dx * moveRate;
      ty += (float)dy * moveRate;
   }
   else if(buttonState[LEFT] && buttonState[MIDDLE])
   {
      tz += (float)dx * zoomRate;
   }
   else if(!buttonState[LEFT] && !buttonState[MIDDLE] && buttonState[RIGHT])
   {
      roll += (float)dx * rollRate * 0.5f;
      rotz += (float)dx * rollRate;
   }

}

void Mouse::Reset()
{
   translation = origin;
   rotation.BuildFromAngleXYZ(orientation.x, orientation.y, orientation.z);
}

void Mouse::GetMatrix(Matrix* m)
{
   // build translation vector
   translation.x += tx;
   translation.y += ty;
   translation.z += tz;
   tx = ty = tz = 0.0f;

   // Build rotation matrix

   m->Identity();
   m->FillRotateY( roty );

   Matrix tmp;
   tmp.Identity();

   tmp.FillRotateX( rotx );
   m->Mult( tmp );

   tmp.FillRotateZ( rotz );
   m->Mult( tmp );

   m->Row(3) = translation;


}