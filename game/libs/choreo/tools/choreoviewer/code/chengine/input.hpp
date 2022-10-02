/*
 * choreoview/chengine/input.hpp
 */

#ifndef CHOREOVIEWER_CHENGINE_INPUT_HPP
#define CHOREOVIEWER_CHENGINE_INPUT_HPP


#include <radmath/radmath.hpp>


class tCamera;


class Input
{
public:

   Input();
   virtual ~Input();

   void Query(tCamera* camera,
              rmt::Vector& dir0,
              rmt::Vector& dir1,
              float* buttons,
              int buttonCount);

private:

   void Poll(float& x0, float& y0, float& x1, float& y1, float* buttons, int buttonCount);
   void CameraLocalize(tCamera* camera, float x, float y, rmt::Vector& dir);

   bool m_ControllerInitialized;
};


#endif
