//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


#include <eetypes.h>

#include <pddi/ps2/ps2vucode.hpp>


// microcode symbols from render.vsm
extern u_int VU_BASE             __attribute__((section(".vudata")));
extern u_int VU_LOAD_CONTEXT     __attribute__((section(".vudata")));
extern u_int VU_UNLIT_TRI        __attribute__((section(".vudata")));
extern u_int VU_LIT_TRI          __attribute__((section(".vudata")));
extern u_int VU_DONOTHING        __attribute__((section(".vudata")));
extern u_int VU_UNLIT_TRI_MT     __attribute__((section(".vudata")));
extern u_int VU_REFLECT          __attribute__((section(".vudata")));
extern u_int VU_REFRACT          __attribute__((section(".vudata")));
//extern u_int VU_REFRACT_LIT      __attribute__((section(".vudata")));
extern u_int VU_TOON             __attribute__((section(".vudata")));
extern u_int VU_LINE             __attribute__((section(".vudata")));
extern u_int VU_SKINBLEND_NT        __attribute__((section(".vudata")));
extern u_int VU_SKINBLEND1B_NT      __attribute__((section(".vudata")));
extern u_int VU_SKINBLEND_CT        __attribute__((section(".vudata")));
extern u_int VU_SKINBLEND1B_CT      __attribute__((section(".vudata")));
extern u_int VU_SHADOW_VOL          __attribute__((section(".vudata")));


u_int VU1_BASE;
u_int VU1_LOAD_CONTEXT;
u_int VU1_UNLIT_TRI;
u_int VU1_LIT_TRI;
u_int VU1_DONOTHING;
u_int VU1_UNLIT_TRI_MT;
u_int VU1_REFLECT;
u_int VU1_REFRACT;
u_int VU1_REFRACT_LIT;
u_int VU1_TOON;
u_int VU1_LINE;
u_int VU1_SKINBLEND_NT;
u_int VU1_SKINBLEND1B_NT;
u_int VU1_SKINBLEND_CT;
u_int VU1_SKINBLEND1B_CT;
u_int VU1_SHADOW_VOL;



int ps2VuCodeInit()
{
    VU1_BASE          = VU::ConvertProgramAddress( &VU_BASE, &VU_BASE );
    VU1_LOAD_CONTEXT  = VU::ConvertProgramAddress( &VU_BASE, &VU_LOAD_CONTEXT );
    VU1_UNLIT_TRI     = VU::ConvertProgramAddress( &VU_BASE, &VU_UNLIT_TRI );
    VU1_LIT_TRI       = VU::ConvertProgramAddress( &VU_BASE, &VU_LIT_TRI );
    VU1_DONOTHING     = VU::ConvertProgramAddress( &VU_BASE, &VU_DONOTHING );
    VU1_UNLIT_TRI_MT  = VU::ConvertProgramAddress( &VU_BASE, &VU_UNLIT_TRI_MT );
    VU1_REFLECT       = VU::ConvertProgramAddress( &VU_BASE, &VU_REFLECT );    
    VU1_REFRACT       = VU::ConvertProgramAddress( &VU_BASE, &VU_REFRACT );
    //VU1_REFRACT_LIT   = VU::ConvertProgramAddress( &VU_BASE, &VU_REFRACT_LIT );  
    VU1_TOON          = VU::ConvertProgramAddress( &VU_BASE, &VU_TOON );  
    VU1_LINE          = VU::ConvertProgramAddress( &VU_BASE, &VU_LINE );
    VU1_SKINBLEND_NT   = VU::ConvertProgramAddress( &VU_BASE, &VU_SKINBLEND_NT );
    VU1_SKINBLEND1B_NT = VU::ConvertProgramAddress( &VU_BASE, &VU_SKINBLEND1B_NT );
    VU1_SKINBLEND_CT   = VU::ConvertProgramAddress( &VU_BASE, &VU_SKINBLEND_CT );
    VU1_SKINBLEND1B_CT = VU::ConvertProgramAddress( &VU_BASE, &VU_SKINBLEND1B_CT );
    VU1_SHADOW_VOL     = VU::ConvertProgramAddress( &VU_BASE, &VU_SHADOW_VOL );

    return 0;
}
