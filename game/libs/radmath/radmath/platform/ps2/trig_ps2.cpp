//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


#if 0
// PS2 optimised trig routines
// uses polynomial approximations
// about 2-3x faster than libm routines
// 16-May-2001 (NV)

#include <radmath/radmath.hpp>


namespace RadicalMathLibrary
{

union float_word
{
    float f;
    unsigned w;
};

// sep7/2002 amb - todo : optimize this in assembly
void SinCos(float a, float* sa, float* ca)
{
    float_word fw, signs;
    fw.f = a;

    signs.w = 0x3f800000 | (fw.w & 0x80000000);
    fw.w &= 0x7fffffff;
    a = fw.f;

    if(a > PI_2)
    {
        // a = fmodf(a, PI_2);
        int fti = FtoL(fw.f * (16777216.0f / PI_2)) & 16777215;
        a = (float)(fti * (1.0f / (16777216.0f/PI_2)));
    }

    float signc = 1.0f;
    if(a > PI_BY2)
    {
        a = PI - a;
        signc = -signc;
    }
    else
    if(a > PI)
    {
        a -= PI;
        signs.f = -signs.f;
    }

    float a2 = a*a;   

    // compute sin
    float r = -2.39e-08f;
    r *= a2;
    r += 2.7526e-06f;
    r *= a2;
    r += -1.98409e-04f;
    r *= a2;
    r += 8.3333315e-03f;
    r *= a2;
    r += -1.666666664e-01f;
    r *= a2;
    r += 1.0f;
    *sa = r * a * signs.f;
    
    // compute cos
    r = -2.605e-07f;
    r *= a2;
    r += 2.47609e-05f;
    r *= a2;
    r += -1.3888397e-03f;
    r *= a2;
    r += 4.16666418e-02f;
    r *= a2;
    r += -4.999999963e-01f;
    r *= a2;
    r += 1.0f;
    *ca = r * signc;
}

}

#endif
