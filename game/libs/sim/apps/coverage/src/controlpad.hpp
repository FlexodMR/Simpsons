///////////////////////////////////////////////////////////////////////////////
// File: controlpad.hpp
// Author: Young T. Son
// Creation Date: January 16, 2001
//

#ifndef CONTROLLERPAD_HPP
#define CONTROLLERPAD_HPP

class ControlPad
{
public:
   enum padState
   {
      LupButtonDown,
      LdownButtonDown,
      LleftButtonDown,
      LrightButtonDown,
      L1ButtonDown,
      L2ButtonDown,
      R1ButtonDown,
      R2ButtonDown,
      RupButtonDown,
      RdownButtonDown,
      RleftButtonDown,
      RrightButtonDown,
      startButtonDown,
      selectButtonDown,

      BTNNUM,

      LupButtonUp,
      LdownButtonUp,
      LleftButtonUp,
      LrightButtonUp,
      L1ButtonUp,
      L2ButtonUp,
      R1ButtonUp,
      R2ButtonUp,
      RupButtonUp,
      RdownButtonUp,
      RleftButtonUp,
      RrightButtonUp,
      startButtonUp,
      selectButtonUp,

      nothing
   };

   ControlPad() : prevState(nothing) {};
   ~ControlPad() {};

   void Init();
   int GetState();

private:
   int prevState;
};

#endif
