//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


#if 0
#include <radmath/radmath.hpp>

#include <stdio.h>

namespace RadicalMathLibrary
{

static Vector4 alignedData0 __attribute__((aligned(16)));
static Vector4 alignedData1 __attribute__((aligned(16)));
static Vector4 alignedData2 __attribute__((aligned(16)));
static Vector4 alignedData3 __attribute__((aligned(16)));

void Vector::CrossProduct(const Vector& vect)
{
    alignedData0.x = x;
    alignedData0.y = y;
    alignedData0.z = z;
    alignedData1.x = vect.x;
    alignedData1.y = vect.y;
    alignedData1.z = vect.z;

    asm __volatile__("
        lqc2        vf4, 0(%0)     # load v0
        lqc2        vf5, 0(%1)     # load v1
        vopmula.xyz ACC, vf4,  vf5 # outer product stage 1
        vopmsub.xyz vf6, vf5,  vf4 # outer product stage 2
        sqc2        vf6, 0(%0)     # store result
    ": // no outputs
     : "r" (&alignedData0), "r" (&alignedData1)
     : "memory" );

    x = alignedData0.x;
    y = alignedData0.y;
    z = alignedData0.z;
}

void Vector::CrossProduct(const Vector& vect1, const Vector& vect2)
{
    alignedData0.x = vect1.x;
    alignedData0.y = vect1.y;
    alignedData0.z = vect1.z;
    alignedData0.w = 0.0F;
    alignedData1.x = vect2.x;
    alignedData1.y = vect2.y;
    alignedData1.z = vect2.z;
    alignedData1.w = 0.0F;

    asm __volatile__("
        lqc2        vf4, 0(%0)     # load v0
        lqc2        vf5, 0(%1)     # load v1
        vopmula.xyz ACC, vf4, vf5  # outer product stage 1
        vopmsub.xyz vf6, vf5, vf4  # outer product stage 2
        sqc2        vf6, 0(%0)     # store result
    ":  
     :  "r" (&alignedData0), "r" (&alignedData1)
     : "memory" );

    x = alignedData0.x;
    y = alignedData0.y;
    z = alignedData0.z;
}

void Vector::Normalize()
{
    alignedData0.x = x;
    alignedData0.y = y;
    alignedData0.z = z;

    asm __volatile__("
        lqc2      vf10, 0(%0)         # load vector
        vmul.xyz  vf04, vf10,  vf10   # square vector
        vmr32.xy  vf05, vf04          # vf05.x = vf04.y
        vmr32.x   vf06, vf05          # vf06.x = vf05.y (vf04.z)
        vadd.x    vf07, vf04,  vf05
        vadd.x    vf05, vf06,  vf07
        vrsqrt    Q,    vf00w, vf05x  # 1 / sqrt(len^2)
        vwaitq                        # zzzzz...
        vmulq.xyz vf10, vf10,  Q      #
        sqc2      vf10, 0(%0)         # store result
    " : // no outputs
      : "r" (&alignedData0) 
      : "memory" );

    x = alignedData0.x;
    y = alignedData0.y;
    z = alignedData0.z;
}

void Vector::Normalize(const Vector& vect)
{
    alignedData0.x = vect.x;
    alignedData0.y = vect.y;
    alignedData0.z = vect.z;

    asm __volatile__("
        lqc2      vf10, 0(%0)         # load vector
        vmul.xyz  vf04, vf10,  vf10   # square vector
        vmr32.xy  vf05, vf04          # vf05.x = vf04.y
        vmr32.x   vf06, vf05          # vf06.x = vf05.y (vf04.z)
        vadd.x    vf07, vf04,  vf05
        vadd.x    vf05, vf06,  vf07
        vrsqrt    Q,    vf00w, vf05x  # 1 / sqrt(len^2)
        vwaitq                        # zzzzz...
        vmulq.xyz vf10, vf10,  Q      #
        sqc2      vf10, 0(%0)         # store result
    " : // no outputs
      : "r" (&alignedData0) 
      : "memory" );

    x = alignedData0.x;
    y = alignedData0.y;
    z = alignedData0.z;
}

}

#endif

