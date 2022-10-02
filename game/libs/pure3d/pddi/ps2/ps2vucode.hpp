/*===========================================================================
    p3dvucodemanager.hpp
    23-Mar-02 Created by Neall


    Copyright (c)2002 Radical Entertainment Ltd.
    All rights reserved.
===========================================================================*/
#ifndef _PS2VUCODE_HPP
#define _PS2VUCODE_HPP

#include <pddi/ps2/ps2types.hpp>
#include <pddi/ps2/ps2debug.hpp>

extern u_int VU1_BASE;
extern u_int VU1_UNLIT_TRI;
extern u_int VU1_LIT_TRI;
extern u_int VU1_DONOTHING;
extern u_int VU1_UNLIT_TRI_MT;
extern u_int VU1_LOAD_CONTEXT;
extern u_int VU1_REFRACT;
extern u_int VU1_TOON;
extern u_int VU1_LINE;
extern u_int VU1_SKINBLEND_NT;
extern u_int VU1_SKINBLEND1B_NT;
extern u_int VU1_SKINBLEND_CT;
extern u_int VU1_SKINBLEND1B_CT;
extern u_int VU1_SHADOW_VOL;
extern u_int VU1_REFLECT;


namespace VU
{
    inline unsigned ConvertProgramAddress(void* base, void* addr)
    {
        return ((unsigned)addr - (unsigned)base) >> 3;
    }
};

int ps2VuCodeInit();

#endif // _PS2VUCODE_HPP
