//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


#include <radmath/radmath.hpp>
#include <assert.h>

namespace RadicalMathLibrary
{

#ifdef PS2MW


void Matrix::Mult(const Matrix& a, const Matrix& b)
{

    register float *pma = (register float *)a.m;
    register float *pmb = (register float *)b.m;

    register unsigned temp1, temp2, temp3, temp4, temp5;

    asm
    {
        // Load Matrix A into VF24-VF27
        .set noreorder
        andi    temp5, pmb, 15
        lq      temp1, 0x00(pmb)
        mtsab   temp5, 0        // Unaligned shift amount

        lq      temp2, 0x10(pmb)
        lq      temp3, 0x20(pmb)
        beq     temp5, 0, load_a_cop2
        lq      temp4, 0x30(pmb)    // Delay slot

        // Do the alignment if necessary
        lq      temp5, 0x40(pmb)
        qfsrv   temp1, temp2, temp1
        qfsrv   temp2, temp3, temp2
        qfsrv   temp3, temp4, temp3
        qfsrv   temp4, temp5, temp4

    load_a_cop2:
        qmtc2   temp1, vf24
        qmtc2   temp2, vf25
        qmtc2   temp3, vf26
        qmtc2   temp4, vf27

    load_b:
        andi    temp5, pma, 15
        lq      temp1, 0x00(pma)
        mtsab   temp5, 0        // Unaligned shift amount
        
        lq      temp2, 0x10(pma)
        lq      temp3, 0x20(pma)
        beq     temp5, 0, load_b_cop2
        lq      temp4, 0x30(pma)    // Delay slot

        lq      temp5, 0x40(pma)
        qfsrv   temp1, temp2, temp1
        qfsrv   temp2, temp3, temp2
        qfsrv   temp3, temp4, temp3
        qfsrv   temp4, temp5, temp4

    load_b_cop2:
        qmtc2   temp1, vf28
        qmtc2   temp2, vf29
        qmtc2   temp3, vf30
        qmtc2   temp4, vf31

    mult_matrix:
        vcallms vu0_mulmatrix
        .set reorder

        // Write into local memory
        andi    temp1, this, 15
        nop
        bnez    temp1, save_unaligned
        nop

        // aligned save
        qmfc2.i temp1, vf28
        qmfc2   temp2, vf29
        qmfc2   temp3, vf30
        qmfc2   temp4, vf31
        sq      temp1,  0(this)
        sq      temp2, 16(this)
        sq      temp3, 32(this)
        sq      temp4, 48(this)
        b       done
        nop

    save_unaligned:
        // Write into local memory
        qmfc2.i temp1, vf28
        qmfc2   temp2, vf29
        qmfc2   temp3, vf30
        qmfc2   temp4, vf31                    

        sdl   temp1, 0x07(this)
        sdr   temp1, 0x00(this)
        sdl   temp2, 0x17(this)
        sdr   temp2, 0x10(this)
        sdl   temp3, 0x27(this)
        sdr   temp3, 0x20(this)
        sdl   temp4, 0x37(this)
        sdr   temp4, 0x30(this)

        pcpyud  temp1, temp1, $0
        pcpyud  temp2, temp2, $0
        pcpyud  temp3, temp3, $0
        pcpyud  temp4, temp4, $0

        sdl   temp1, 0x0f(this)
        sdr   temp1, 0x08(this)
        sdl   temp2, 0x1f(this)
        sdr   temp2, 0x18(this)
        sdl   temp3, 0x2f(this)
        sdr   temp3, 0x28(this)
        sdl   temp4, 0x3f(this)
        sdr   temp4, 0x38(this)

    done:

    }
}


#else
void Matrix::Mult(const Matrix& a, const Matrix& b)
{
    asm __volatile__ ("
        .set noreorder

        # Load Matrix A into VF24-VF27
        andi    $12, %0, 15
        lq       $8, 0x00(%0)
        mtsab   $12, 0        # Unaligned shift amount
        lq       $9, 0x10(%0)
        lq      $10, 0x20(%0)
        beq     $12, 0, load_a_cop2
        lq      $11, 0x30(%0)

        # Do the alignment if necessary
        lq     $12, 0x40(%0)
        qfsrv   $8,  $9,  $8
        qfsrv   $9, $10,  $9
        qfsrv  $10, $11, $10
        qfsrv  $11, $12, $11

    load_a_cop2:
        qmtc2    $8, vf24
        qmtc2    $9, vf25
        qmtc2   $10, vf26
        qmtc2   $11, vf27

    load_b:
        andi    $12, %1, 15
        lq       $8, 0x00(%1)
        mtsab   $12, 0        # Unaligned shift amount
        
        lq       $9, 0x10(%1)
        lq      $10, 0x20(%1)
        beq     $12, 0, load_b_cop2
        lq      $11, 0x30(%1)

        lq     $12, 0x40(%1)
        qfsrv   $8,  $9,  $8
        qfsrv   $9, $10,  $9
        qfsrv  $10, $11, $10
        qfsrv  $11, $12, $11

    load_b_cop2:
        qmtc2    $8, vf28
        qmtc2    $9, vf29
        qmtc2   $10, vf30
        qmtc2   $11, vf31

    mult_matrix:
        vcallms vu0_mulmatrix
        .set reorder

        # Write into local memory
        andi     $8, %2, 15
        nop
        bnez     $8, save_unaligned
        nop

        # aligned save
        qmfc2.i  $8, vf28
        qmfc2    $9, vf29
        qmfc2    $10, vf30
        qmfc2    $11, vf31
        sq       $8, 0(%2)
        sq       $9, 16(%2)
        sq       $10, 32(%2)
        sq       $11, 48(%2)
        b        done
        nop

    save_unaligned:
        # Write into local memory
        qmfc2.i $8, vf28
        qmfc2  $9, vf29
        qmfc2 $10, vf30
        qmfc2 $11, vf31                    

        sdl    $8, 0x07(%2)
        sdr    $8, 0x00(%2)
        sdl    $9, 0x17(%2)
        sdr    $9, 0x10(%2)
        sdl   $10, 0x27(%2)
        sdr   $10, 0x20(%2)
        sdl   $11, 0x37(%2)
        sdr   $11, 0x30(%2)

        pcpyud  $8,  $8, $0
        pcpyud  $9,  $9, $0
        pcpyud $10, $10, $0
        pcpyud $11, $11, $0

        sdl    $8, 0x0f(%2)
        sdr    $8, 0x08(%2)
        sdl    $9, 0x1f(%2)
        sdr    $9, 0x18(%2)
        sdl   $10, 0x2f(%2)
        sdr   $10, 0x28(%2)
        sdl   $11, 0x3f(%2)
        sdr   $11, 0x38(%2)

    done:
    ": // Outputs
     : "r" (&b), "r" (&a), "r" (&m)  // Inputs
     : "$8", "$9", "$10", "$11", "$12", "memory" ); // Clobber list}
}
#endif
} // namespace