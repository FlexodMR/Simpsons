//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


#include <radmath/radmath.hpp>
#include <assert.h>

//#define P3D_NOASM

#ifdef P3D_NOASM
#define ASM
#else
#define ASM asm
#endif

namespace RadicalMathLibrary
{

//**********************************************************************
//
//  Matrix Multiply in paired singles
//
//  Parmaters:
//  r3  this
//  r4  matrix A
//  r5  matrix B
//  r6  0x20
//
//  fr0    Axx
//  fr1    Axx
//  fr2    Axx
//  fr3    Bxx
//  fr4    Bxx
//  fr5    Bxx
//  fr6    Bxx
//  fr7    Bxx
//  fr8    Bxx
//  fr9    Bxx
//
//  fr11   Zero
//  fr12   DXX DXX
//  fr13   DXX DXX
//
//
ASM void Matrix::Mult(register const Matrix &a, register const Matrix &b)
{

#ifdef P3D_NOASM
    // Mult
    m[0][0] = (a.m[0][0] * b.m[0][0]) + (a.m[0][1] * b.m[1][0]) + (a.m[0][2] * b.m[2][0]);
    m[0][1] = (a.m[0][0] * b.m[0][1]) + (a.m[0][1] * b.m[1][1]) + (a.m[0][2] * b.m[2][1]);
    m[0][2] = (a.m[0][0] * b.m[0][2]) + (a.m[0][1] * b.m[1][2]) + (a.m[0][2] * b.m[2][2]);
    m[0][3] = 0.0f;

    m[1][0] = (a.m[1][0] * b.m[0][0]) + (a.m[1][1] * b.m[1][0]) + (a.m[1][2] * b.m[2][0]);
    m[1][1] = (a.m[1][0] * b.m[0][1]) + (a.m[1][1] * b.m[1][1]) + (a.m[1][2] * b.m[2][1]);
    m[1][2] = (a.m[1][0] * b.m[0][2]) + (a.m[1][1] * b.m[1][2]) + (a.m[1][2] * b.m[2][2]);
    m[1][3] = 0.0f;

    m[2][0] = (a.m[2][0] * b.m[0][0]) + (a.m[2][1] * b.m[1][0]) + (a.m[2][2] * b.m[2][0]);
    m[2][1] = (a.m[2][0] * b.m[0][1]) + (a.m[2][1] * b.m[1][1]) + (a.m[2][2] * b.m[2][1]);
    m[2][2] = (a.m[2][0] * b.m[0][2]) + (a.m[2][1] * b.m[1][2]) + (a.m[2][2] * b.m[2][2]);
    m[2][3] = 0.0f;

    m[3][0] = (a.m[3][0] * b.m[0][0]) + (a.m[3][1] * b.m[1][0]) + (a.m[3][2] * b.m[2][0]) + b.m[3][0];
    m[3][1] = (a.m[3][0] * b.m[0][1]) + (a.m[3][1] * b.m[1][1]) + (a.m[3][2] * b.m[2][1]) + b.m[3][1];
    m[3][2] = (a.m[3][0] * b.m[0][2]) + (a.m[3][1] * b.m[1][2]) + (a.m[3][2] * b.m[2][2]) + b.m[3][2];
    m[3][3] = 1.0f;

#else

    nofralloc

    dcbt     0, r5
    fsub     fp11, fp11, fp11        // Make a zero register

    dcbtst   0, r3
    li       r6,  0x20

    psq_l    fp0, 0x00(r4), 0, 0     // fp0 A00 A01
    lfs      fp1, 0x08(r4)           // fp1 A02 A02

    psq_l    fp2, 0x00(r5), 0, 0     // fp3 B00 B01
    lfs      fp3, 0x08(r5)           // fp4 B02 B02

    psq_l    fp4, 0x10(r5), 0, 0     // fp5 B10 B11
    lfs      fp5, 0x18(r5)           // fp5 B12 B12

    dcbt     r6, r5

    // D00 - D03                     
    ps_muls0    fp12, fp2, fp0        // D00  = A00 * B00,  D01  = A00 * B01
    psq_l       fp6,  0x20(r5), 0, 0  // fp5 B20 B21
    ps_muls0    fp13, fp3, fp0        // D02  = A00 * B02,  D03  = A00 * B02

    lfs         fp7,  0x28(r5)        // fp5 B22 B22
    dcbt        r6, r4

    ps_madds1   fp12, fp4, fp0, fp12  // D00 += A01 * B10,  D01 += A01 * B11
    psq_l       fp8,  0x30(r5), 0, 0  // fp5 B30 B31
    ps_madds1   fp13, fp5, fp0, fp13  // D02 += A01 * B12,  D03 += A01 * B12

    psq_l       fp9,  0x38(r5), 1, 0  // fp5 B32 1.0F

    ps_madds0   fp12, fp6, fp1, fp12  // D00 += A02 * B20,  D01 += A02 * B21
    psq_l       fp0,  0x10(r4), 0, 0  // Done with A00 A01, load the next pair: fp0 A10 A11
    ps_madds0   fp13, fp7, fp1, fp13  // D02 += A02 * B22,  D03 += A02 * B22

    lfs         fp1,  0x18(r4)        // Done with A02 A03, load the next pair: fp1 A12 A12

    psq_st      fp12, 0x00(r3), 0, 0  // Write D00 D01
    ps_muls0    fp12, fp2, fp0        // D10  = A10 * B00,  D11  = A10 * B01
    psq_st      fp13, 0x08(r3), 1, 0  // Write D02
    ps_muls0    fp13, fp3, fp0        // D12  = A10 * B02,  D13  = A10 * B02
    stfs        fp11, 0x0C(r3)        // Write D03

    // D10 - D13

    ps_madds1   fp12, fp4, fp0, fp12  // D10 += A11 * B10,  D11 += A11 * B11
    dcbtst      r6, r3

    ps_madds1   fp13, fp5, fp0, fp13  // D12 += A11 * B12,  D13 += A11 * B12
    psq_l       fp0, 0x20(r4), 0, 0   // fp0 A20 A21
    
    ps_madds0   fp12, fp6, fp1, fp12  // D10 += A12 * B20,  D11 += A12 * B21
    ps_madds0   fp13, fp7, fp1, fp13  // D12 += A12 * B22,  D13 += A12 * B22

    lfs         fp1, 0x28(r4)         // fp1 A22 A22

    psq_st      fp12, 0x10(r3), 0, 0  // Write D10 D11
    ps_muls0    fp12, fp2, fp0        // D20  = A20 * B00,  D21  = A20 * B01
    psq_st      fp13, 0x18(r3), 1, 0  // Write D12
    ps_muls0    fp13, fp3, fp0        // D22  = A20 * B02,  D23  = A20 * B02
    stfs        fp11, 0x1C(r3)        // Write D13

    // D20 - D23

    ps_madds1   fp12, fp4, fp0, fp12  // D20 += A21 * B10,  D21 += A21 * B11
    ps_madds1   fp13, fp5, fp0, fp13  // D22 += A21 * B12,  D23 += A21 * B12

    psq_l       fp0, 0x30(r4), 0, 0   // fp0 A30 A31
    
    ps_madds0   fp12, fp6, fp1, fp12  // D20 += A22 * B20,  D21 += A22 * B21
    ps_madds0   fp13, fp7, fp1, fp13  // D22 += A22 * B22,  D23 += A22 * B22

    lfs         fp1, 0x38(r4)         // fp1 A32 A32

    // D30 - D33
    psq_st      fp12, 0x20(r3), 0, 0  // Write D20 D21
    ps_muls0    fp12, fp2, fp0        // D30  = A30 * B00,  D31  = A30 * B01
    psq_st      fp13, 0x28(r3), 1, 0  // Write D22
    ps_muls0    fp13, fp3, fp0        // D32  = A30 * B02,  D33  = A30 * B02


    ps_madds1   fp12, fp4, fp0, fp12  // D30 += A31 * B10,  D31 += A31 * B11
    ps_madds1   fp13, fp5, fp0, fp13  // D32 += A31 * B12,  D33 += A31 * B12

    stfs        fp11, 0x2C(r3)        // Write D23
    
    ps_madds0   fp12, fp6, fp1, fp12  // D30 += A32 * B20,  D31 += A32 * B21
    ps_madds0   fp13, fp7, fp1, fp13  // D32 += A32 * B22,  D33 += A32 * B22

    ps_add      fp12, fp12, fp8       // D30 += B30, D31 += B31
    ps_add      fp13, fp13, fp9       // D32 += B32, D33 += 1.0F

    ps_merge01  fp13, fp13, fp9       // D32 = D32, D33 = 1.0F

    psq_st      fp12, 0x30(r3), 0, 0  // Write D30 D11
    psq_st      fp13, 0x38(r3), 0, 0  // Write D32 D33

    blr
#endif
}




//************************************************************
//
//  Mult Full
//
//
void Matrix::MultFull(const Matrix& a, const Matrix& b)
{
/***
    // Mult Full
    m[0][0] = (a.m[0][0] * b.m[0][0]) + (a.m[0][1] * b.m[1][0]) + (a.m[0][2] * b.m[2][0]) + (a.m[0][3] * b.m[3][0]);
    m[0][1] = (a.m[0][0] * b.m[0][1]) + (a.m[0][1] * b.m[1][1]) + (a.m[0][2] * b.m[2][1]) + (a.m[0][3] * b.m[3][1]);
    m[0][2] = (a.m[0][0] * b.m[0][2]) + (a.m[0][1] * b.m[1][2]) + (a.m[0][2] * b.m[2][2]) + (a.m[0][3] * b.m[3][2]);
    m[0][3] = (a.m[0][0] * b.m[0][3]) + (a.m[0][1] * b.m[1][3]) + (a.m[0][2] * b.m[2][3]) + (a.m[0][3] * b.m[3][3]);
                                                                                                                                                        
    m[1][0] = (a.m[1][0] * b.m[0][0]) + (a.m[1][1] * b.m[1][0]) + (a.m[1][2] * b.m[2][0]) + (a.m[1][3] * b.m[3][0]);
    m[1][1] = (a.m[1][0] * b.m[0][1]) + (a.m[1][1] * b.m[1][1]) + (a.m[1][2] * b.m[2][1]) + (a.m[1][3] * b.m[3][1]);
    m[1][2] = (a.m[1][0] * b.m[0][2]) + (a.m[1][1] * b.m[1][2]) + (a.m[1][2] * b.m[2][2]) + (a.m[1][3] * b.m[3][2]);
    m[1][3] = (a.m[1][0] * b.m[0][3]) + (a.m[1][1] * b.m[1][3]) + (a.m[1][2] * b.m[2][3]) + (a.m[1][3] * b.m[3][3]);
                                                                                                                                                        
    m[2][0] = (a.m[2][0] * b.m[0][0]) + (a.m[2][1] * b.m[1][0]) + (a.m[2][2] * b.m[2][0]) + (a.m[2][3] * b.m[3][0]);
    m[2][1] = (a.m[2][0] * b.m[0][1]) + (a.m[2][1] * b.m[1][1]) + (a.m[2][2] * b.m[2][1]) + (a.m[2][3] * b.m[3][1]);
    m[2][2] = (a.m[2][0] * b.m[0][2]) + (a.m[2][1] * b.m[1][2]) + (a.m[2][2] * b.m[2][2]) + (a.m[2][3] * b.m[3][2]);
    m[2][3] = (a.m[2][0] * b.m[0][3]) + (a.m[2][1] * b.m[1][3]) + (a.m[2][2] * b.m[2][3]) + (a.m[2][3] * b.m[3][3]);

    m[3][0] = (a.m[3][0] * b.m[0][0]) + (a.m[3][1] * b.m[1][0]) + (a.m[3][2] * b.m[2][0]) + (a.m[3][3] * b.m[3][0]);
    m[3][1] = (a.m[3][0] * b.m[0][1]) + (a.m[3][1] * b.m[1][1]) + (a.m[3][2] * b.m[2][1]) + (a.m[3][3] * b.m[3][1]);
    m[3][2] = (a.m[3][0] * b.m[0][2]) + (a.m[3][1] * b.m[1][2]) + (a.m[3][2] * b.m[2][2]) + (a.m[3][3] * b.m[3][2]);
    m[3][3] = (a.m[3][0] * b.m[0][3]) + (a.m[3][1] * b.m[1][3]) + (a.m[3][2] * b.m[2][3]) + (a.m[3][3] * b.m[3][3]);
***/


    for(int i = 0; i < 4; i++)
    {
        for(int j = 0; j < 4; j++)
        {
            m[i][j] = 0;
            for(int k = 0; k < 4; k++)
            {
                m[i][j] += a.m[i][k] * b.m[k][j];
            }
        }
    }
}


/***
    // Original uninterleaved MatrixMult 4x3
    nofralloc

    psq_l    fp0, 0x00(r4), 0, 0     // fp0 A00 A01
    lfs      fp1, 0x08(r4)           // fp1 A02 A02

    fsub     fp11, fp11, fp11        // Make a zero register

    psq_l    fp2, 0x00(r5), 0, 0     // fp3 B00 B01
    lfs      fp3, 0x08(r5)           // fp4 B02 B02

    psq_l    fp4, 0x10(r5), 0, 0     // fp5 B10 B11
    lfs      fp5, 0x18(r5)           // fp5 B12 B12

    psq_l    fp6, 0x20(r5), 0, 0     // fp5 B20 B21
    lfs      fp7, 0x28(r5)           // fp5 B22 B22

    psq_l    fp8, 0x30(r5), 0, 0     // fp5 B30 B31
    psq_l    fp9, 0x38(r5), 1, 0     // fp5 B32 1.0F


    // D00 - D03                     
    ps_muls0    fp12, fp2, fp0        // D00  = A00 * B00,  D01  = A00 * B01
    ps_muls0    fp13, fp3, fp0        // D02  = A00 * B02,  D03  = A00 * B02

    ps_madds1   fp12, fp4, fp0, fp12  // D00 += A01 * B10,  D01 += A01 * B11
    ps_madds1   fp13, fp5, fp0, fp13  // D02 += A01 * B12,  D03 += A01 * B12

    
    ps_madds0   fp12, fp6, fp1, fp12  // D00 += A02 * B20,  D01 += A02 * B21
    ps_madds0   fp13, fp7, fp1, fp13  // D02 += A02 * B22,  D03 += A02 * B22

    psq_st      fp12, 0x00(r3), 0, 0  // Write D00 D01
    psq_st      fp13, 0x08(r3), 1, 0  // Write D02
    stfs        fp11, 0x0C(r3)        // Write D03

    // D10 - D13

    psq_l       fp0, 0x10(r4), 0, 0   // Done with A00 A01, load the next pair: fp0 A10 A11
    lfs         fp1, 0x18(r4)         // // Done with A02 A03, load the next pair: fp1 A12 A12

    ps_muls0    fp12, fp2, fp0        // D10  = A10 * B00,  D11  = A10 * B01
    ps_muls0    fp13, fp3, fp0        // D12  = A10 * B02,  D13  = A10 * B02

    ps_madds1   fp12, fp4, fp0, fp12  // D10 += A11 * B10,  D11 += A11 * B11
    ps_madds1   fp13, fp5, fp0, fp13  // D12 += A11 * B12,  D13 += A11 * B12
    
    ps_madds0   fp12, fp6, fp1, fp12  // D10 += A12 * B20,  D11 += A12 * B21
    ps_madds0   fp13, fp7, fp1, fp13  // D12 += A12 * B22,  D13 += A12 * B22

    psq_st      fp12, 0x10(r3), 0, 0  // Write D10 D11
    psq_st      fp13, 0x18(r3), 1, 0  // Write D12
    stfs        fp11, 0x1C(r3)        // Write D13


    // D20 - D23
    psq_l    fp0, 0x20(r4), 0, 0      // fp0 A20 A21
    lfs      fp1, 0x28(r4)            // fp1 A22 A22
                                                                
    ps_muls0    fp12, fp2, fp0        // D20  = A20 * B00,  D21  = A20 * B01
    ps_muls0    fp13, fp3, fp0        // D22  = A20 * B02,  D23  = A20 * B02

    ps_madds1   fp12, fp4, fp0, fp12  // D20 += A21 * B10,  D21 += A21 * B11
    ps_madds1   fp13, fp5, fp0, fp13  // D22 += A21 * B12,  D23 += A21 * B12
    
    ps_madds0   fp12, fp6, fp1, fp12  // D20 += A22 * B20,  D21 += A22 * B21
    ps_madds0   fp13, fp7, fp1, fp13  // D22 += A22 * B22,  D23 += A22 * B22

    psq_st      fp12, 0x20(r3), 0, 0  // Write D20 D21
    psq_st      fp13, 0x28(r3), 1, 0  // Write D22
    stfs        fp11, 0x2C(r3)        // Write D23


    // D30 - D33
    psq_l    fp0, 0x30(r4), 0, 0      // fp0 A30 A31
    lfs      fp1, 0x38(r4)            // fp1 A32 A32
                                                                
    ps_muls0    fp12, fp2, fp0        // D30  = A30 * B00,  D31  = A30 * B01
    ps_muls0    fp13, fp3, fp0        // D32  = A30 * B02,  D33  = A30 * B02

    ps_madds1   fp12, fp4, fp0, fp12  // D30 += A31 * B10,  D31 += A31 * B11
    ps_madds1   fp13, fp5, fp0, fp13  // D32 += A31 * B12,  D33 += A31 * B12
    
    ps_madds0   fp12, fp6, fp1, fp12  // D30 += A32 * B20,  D31 += A32 * B21
    ps_madds0   fp13, fp7, fp1, fp13  // D32 += A32 * B22,  D33 += A32 * B22

    ps_add      fp12, fp12, fp8       // D30 += B30, D31 += B31
    ps_add      fp13, fp13, fp9       // D32 += B32, D33 += 1.0F

    ps_merge01  fp13, fp13, fp9       // D32 = D32, D33 = 1.0F

    psq_st      fp12, 0x30(r3), 0, 0  // Write D30 D11
    psq_st      fp13, 0x38(r3), 0, 0  // Write D32 D33

    blr

    ***/

} // End namespace
