//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


#include <radmath/radmath.hpp>
#include <math.h>
#include <assert.h>


//#define P3D_NOASM

#ifdef P3D_NOASM
#define ASM
#else
#define ASM asm
#endif

namespace RadicalMathLibrary
{

// cross products
ASM void Vector::CrossProduct(register const Vector& vect)
{
#ifdef P3D_NOASM
    float tmpx = (y * vect.z) - (z * vect.y);
    float tmpy = (z * vect.x) - (x * vect.z);
    float tmpz = (x * vect.y) - (y * vect.x);
    x = tmpx; y = tmpy; z = tmpz;
#else
    nofralloc
     
    psq_l       fp1, 0(vect), 0, 0   // BX | BY
    lfs         fp2, 8(r3)           // AZ | AZ
    
    psq_l       fp0, 0(r3), 0, 0     // AX | AY
    ps_merge10  fp6, fp1, fp1        // BY | BX
    lfs         fp3, 8(vect)         // BZ | BZ

    
    ps_mul      fp4, fp1, fp2        // BX*AZ | BY*AZ
    ps_muls0    fp7, fp1, fp0        // BX*AX | BY*AX
    ps_msub     fp5, fp0, fp3, fp4   // AX*BZ-BX*AZ | AY*BZ-BY*AZ
    ps_msub     fp8, fp0, fp6, fp7   // AX*BY-BX*AX | AY*BX-BY*AX

    ps_merge11  fp9, fp5, fp5        // AY*BZ-AZ*BY | AY*BZ-AZ*BY
    ps_merge01  fp10, fp5, fp8       // AX*BZ-AZ*BX | AY*BX-AX*BY
    psq_st      fp9, 0(r3), 1, 0
    
    ps_neg      fp10, fp10           // AZ*BX-AX*BZ | AX*BY-AY*BX
    psq_st      fp10, 4(r3), 0, 0

    blr
#endif
}


ASM void Vector::CrossProduct(register const Vector& vect1, register const Vector& vect2)
{
#ifdef P3D_NOASM
    x = (vect1.y * vect2.z) - (vect1.z * vect2.y);
    y = (vect1.z * vect2.x) - (vect1.x * vect2.z);
    z = (vect1.x * vect2.y) - (vect1.y * vect2.x);
#else
    nofralloc
     
    psq_l       fp1, 0x00(vect2), 0, 0  // BX | BY
    lfs         fp2, 0x08(vect1)        // AZ | AZ
    
    psq_l       fp0, 0x00(vect1), 0, 0  // AX | AY
    ps_merge10  fp6, fp1, fp1           // BY | BX
    lfs         fp3, 0x08(vect2)        // BZ | BZ
    
    ps_mul      fp4, fp1, fp2           // BX*AZ | BY*AZ
    ps_muls0    fp7, fp1, fp0           // BX*AX | BY*AX
    ps_msub     fp5, fp0, fp3, fp4      // AX*BZ-BX*AZ | AY*BZ-BY*AZ
    ps_msub     fp8, fp0, fp6, fp7      // AX*BY-BX*AX | AY*BX-BY*AX

    ps_merge11  fp9,  fp5, fp5          // AY*BZ-AZ*BY | AY*BZ-AZ*BY
    ps_merge01  fp10, fp5, fp8          // AX*BZ-AZ*BX | AY*BX-AX*BY
    psq_st      fp9,  0x00(r3), 1, 0
    
    ps_neg      fp10, fp10              // AZ*BX-AX*BZ | AX*BY-AY*BX
    psq_st      fp10, 0x04(r3), 0, 0

    blr
#endif
}

// create a unit vector
ASM void Vector::Normalize(void)
{
#ifdef P3D_NOASM
    float mag = 1.0f / Magnitude();
    x = (x * mag);
    y = (y * mag);
    z = (z * mag);
#else
    nofralloc
    psq_l    fp2, 0x00(r3), 0, 0
    lfs      fp3, 0x08(r3)

    ps_mul   fp4, fp2, fp2  // X*X Y*Y
    fmuls    fp5, fp3, fp3  // Z*Z

    ps_sum1  fp4, fp4, fp5, fp4   // Z*Z, X*X + XY*Y
    ps_sum0  fp5, fp4, fp4, fp4   // X*X + Y*Y + Z*Z

    ps_rsqrte fp4, fp5            // 1/sqrt(X*X + Y*Y + Z*Z)

    ps_muls0  fp2, fp2, fp4
    fmuls     fp3, fp3, fp4

    psq_st    fp2, 0x00(r3), 0, 0
    stfs      fp3, 0x08(r3)

    blr
#endif
}

ASM void Vector::Normalize(register const Vector& vect)
{
#ifdef P3D_NOASM
    float mag = 1.0f / vect.Magnitude();
    x = (vect.x * mag);
    y = (vect.y * mag);
    z = (vect.z * mag);
#else
    nofralloc
    psq_l    fp2, 0x00(r4), 0, 0
    lfs      fp3, 0x08(r4)

    ps_mul   fp4, fp2, fp2  // X*X Y*Y
    fmuls    fp5, fp3, fp3  // Z*Z

    ps_sum1  fp4, fp4, fp5, fp4   // Z*Z, X*X + XY*Y
    ps_sum0  fp5, fp4, fp4, fp4   // X*X + Y*Y + Z*Z

    ps_rsqrte fp4, fp5            // 1/sqrt(X*X + Y*Y + Z*Z)

    ps_muls0  fp2, fp2, fp4
    fmuls     fp3, fp3, fp4

    psq_st    fp2, 0x00(r3), 0, 0
    stfs      fp3, 0x08(r3)

    blr
#endif

}

}   // end namespace RadicalMathLibrary

