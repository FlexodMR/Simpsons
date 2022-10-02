#ifndef _MANUALFLEXDRAWABLE_HPP_
#define _MANUALFLEXDRAWABLE_HPP_

#include "p3d/drawable.hpp"
#include "simflexible/particlesyst.hpp"

class ManualFlexDrawable : public tDrawable
{
public:
   ManualFlexDrawable( sim::ParticleSystem *in_psyst )
   {
      psyst = in_psyst;
   }
   void Display(){psyst->Display();};

   sim::ParticleSystem *psyst;
};


#endif // _MANUALFLEXDRAWABLE_HPP_
