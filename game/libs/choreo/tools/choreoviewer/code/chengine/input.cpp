/*
 * choreoview/chengine/input.cpp
 */

#include <chengine/input.hpp>

#include <string.h>
#include <radcontroller.hpp>
#include <p3d/camera.hpp>


Input::Input():
    m_ControllerInitialized(false)
{
}

Input::~Input()
{
    if (m_ControllerInitialized)
    {
        radControllerTerminate();
    }
}

void Input::Query(tCamera* camera,
                  rmt::Vector& dir0,
                  rmt::Vector& dir1,
                  float* buttons,
                  int buttonCount)
{
   if (!m_ControllerInitialized)
   {
       m_ControllerInitialized = true;
       radControllerInitialize();
   }

   float x0, y0, x1, y1;
   Poll(x0, y0, x1, y1, buttons, buttonCount);

   CameraLocalize(camera, x0, y0, dir0);
   CameraLocalize(camera, x1, y1, dir1);

   static const float slush = 0.1f;

   float mag = dir0.Magnitude();
   if (mag < slush)
   {
      dir0 = rmt::Vector(0,0,0);
   }
   else
   {
      dir0.Scale((mag - slush) / (1.0f - slush));
   }

   mag = dir1.Magnitude();
   if (mag < slush)
   {
      dir1 = rmt::Vector(0,0,0);
   }
   else
   {
      dir1.Scale((mag - slush) / (1.0f - slush));
   }
}

void Input::Poll(float& x0, float& y0, float& x1, float& y1, float* buttons, int buttonCount)
{
   IRadControllerSystem* rCtlSys = radControllerSystemGet();
   if (rCtlSys == 0)
      return;
   unsigned ctlCount = rCtlSys->GetNumberOfControllers();
   unsigned i;
   for (i = 0; i < ctlCount; ++i)
   {
      IRadController* rCtlr = rCtlSys->GetControllerByIndex(i);
      if (rCtlr == 0)
         continue;

      const char* typeStr = rCtlr->GetType();
      if ((strcmp(typeStr, "Mouse") == 0) ||
          (strcmp(typeStr, "Keyboard") == 0))
      {
          continue;
      }

      rCtlr->AddRef();
   }

   // poll controllers
   radControllerSystemService();

   // initialize return values
   x0 = 0.0f;
   y0 = 0.0f;
   x1 = 0.0f;
   y1 = 0.0f;

   memset(buttons, 0, buttonCount * sizeof(float));

   for (i = 0; i < ctlCount; ++i)
   {
      IRadController* rCtlr = rCtlSys->GetControllerByIndex(i);
      if (rCtlr == 0)
         continue;

      const char* typeStr = rCtlr->GetType();
      if ((strcmp(typeStr, "Mouse") == 0) ||
          (strcmp(typeStr, "Keyboard") == 0))
      {
         continue;
      }

      unsigned inputCount = rCtlr->GetNumberOfInputPointsOfType("XAxis");
      unsigned j;
      for (j = 0; j < inputCount; ++j)
      {
         IRadControllerInputPoint* input = rCtlr->GetInputPointByTypeAndIndex("XAxis", j);
         if (input == 0)
            continue;
         input->SetRange(-1.0f, 1.0f);
         x0 += input->GetCurrentValue();
      }

      inputCount = rCtlr->GetNumberOfInputPointsOfType("YAxis");
      for (j = 0; j < inputCount; ++j)
      {
         IRadControllerInputPoint* input = rCtlr->GetInputPointByTypeAndIndex("YAxis", j);
         if (input == 0)
            continue;
         input->SetRange(-1.0f, 1.0f);
         y0 += input->GetCurrentValue();
      }

      inputCount = rCtlr->GetNumberOfInputPointsOfType("ZAxis");
      for (j = 0; j < inputCount; ++j)
      {
         IRadControllerInputPoint* input = rCtlr->GetInputPointByTypeAndIndex("ZAxis", j);
         if (input == 0)
            continue;
         input->SetRange(-1.0f, 1.0f);
         x1 += input->GetCurrentValue();
      }

      inputCount = rCtlr->GetNumberOfInputPointsOfType("RzAxis");
      for (j = 0; j < inputCount; ++j)
      {
         IRadControllerInputPoint* input = rCtlr->GetInputPointByTypeAndIndex("RzAxis", j);
         if (input == 0)
            continue;
         input->SetRange(-1.0f, 1.0f);
         y1 -= input->GetCurrentValue();
      }

      inputCount = rCtlr->GetNumberOfInputPointsOfType("POV");
      for (j = 0; j < inputCount; ++j)
      {
         IRadControllerInputPoint* input = rCtlr->GetInputPointByTypeAndIndex("POV", j);
         if (input == 0)
            continue;

         float pov = input->GetCurrentValue();
         if (pov == 0.0f)
         {
            y0 += 1.0f;
         }
         else if (pov == 0.125f)
         {
            y0 += 1.0f;
            x0 += 1.0f;
         }
         else if (pov == 0.25f)
         {
            x0 += 1.0f;
         }
         else if (pov == 0.375f)
         {
            x0 += 1.0f;
            y0 -= 1.0f;
         }
         else if (pov == 0.5f)
         {
            y0 -= 1.0f;
         }
         else if (pov == 0.625f)
         {
            y0 -= 1.0f;
            x0 -= 1.0f;
         }
         else if (pov == 0.75f)
         {
            x0 -= 1.0f;
         }
         else if (pov == 0.875f)
         {
            x0 -= 1.0f;
            y0 += 1.0f;
         }
      }

      inputCount = rCtlr->GetNumberOfInputPointsOfType("Button");
      unsigned maxButton = ((inputCount > (unsigned)buttonCount) ? (unsigned)buttonCount : inputCount);
      for (j = 0; j < maxButton; ++j)
      {
          IRadControllerInputPoint* input = rCtlr->GetInputPointByTypeAndIndex("Button", j);
          if (input == 0)
              continue;

          buttons[j] = input->GetCurrentValue();
      }

      rCtlr->Release();
   }

   if (x0 > 1.0f) x0 = 1.0f;
   if (x0 < -1.0f) x0 = -1.0f;
   if (y0 > 1.0f) y0 = 1.0f;
   if (y0 < -1.0f) y0 = -1.0f;
   if (x1 > 1.0f) x1 = 1.0f;
   if (x1 < -1.0f) x1 = -1.0f;
   if (y1 > 1.0f) y1 = 1.0f;
   if (y1 < -1.0f) y1 = -1.0f;
}

void Input::CameraLocalize(tCamera* camera, float x, float y, rmt::Vector& dir)
{
   rmt::Vector tmp1, tmp2;
   camera->ViewToWorld(rmt::Vector(0,0,0), &tmp1, &tmp2);
   rmt::Vector centre = tmp1;

   camera->ViewToWorld(rmt::Vector(x * 0.5f, y * 0.5f, 0.0f), &tmp1, &tmp2);
   rmt::Vector input = tmp1;

   input.Sub(centre);
   dir = input;
   dir.y = 0.0f;
   dir.NormalizeSafe();

   float ax = rmt::Fabs(x);
   float ay = rmt::Fabs(y);

   if (ax > ay)
   {
      dir.Scale(ax);
   }
   else
   {
      dir.Scale(ay);
   }
}

// End of file.
