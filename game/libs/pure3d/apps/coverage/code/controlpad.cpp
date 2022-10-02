//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


///////////////////////////////////////////////////////////////////////////////
// File: controlpad.cpp
// Author: Young T. Son
// Creation Date: January 16, 2001
//

#include "controlpad.hpp"
#include <stdio.h>
#include <sifrpc.h>
#include <sifdev.h>
#include <libipu.h>
#include <eekernel.h>
#include <libpad.h>

void ControlPad::Init()
{
    static u_long128 pad_dma_buf[scePadDmaBufferMax]  __attribute__((aligned (64)));

    sceSifInitRpc(0);
    while (sceSifLoadModule("host0:/usr/local/sce/iop/modules/sio2man.irx", 0, NULL) < 0)
    {
        printf("Can't load module sio2man\n");
    }
    while (sceSifLoadModule("host0:/usr/local/sce/iop/modules/padman.irx", 0, NULL) < 0)
    {
        printf("Can't load module padman\n");
    }

    // open pad device
    scePadInit(0);
    int ret = scePadPortOpen(0, 0, pad_dma_buf);
    if( ret == 0 )
    {
        printf("Failed to open pad port\n");
        return;
    }

    sceIpuInit();
}

int ControlPad::GetState()
{
    u_int paddata;
    u_char rdata[32];
    int currState;

    // read pad information
    if(scePadRead(0, 0, rdata) > 0)
    {
        paddata = 0xffff ^ ((rdata[2] << 8) | rdata[3]);
    }
    else
    {
        paddata = 0;
    }

    if(paddata & SCE_PADLdown) currState = LdownButtonDown;
    else if(paddata & SCE_PADLup) currState = LupButtonDown;
    else if(paddata & SCE_PADLleft) currState = LleftButtonDown;
    else if(paddata & SCE_PADLright) currState = LrightButtonDown;
    else if(paddata & SCE_PADL1) currState = L1ButtonDown;
    else if(paddata & SCE_PADL2) currState = L2ButtonDown;
    else if(paddata & SCE_PADR1) currState = R1ButtonDown;
    else if(paddata & SCE_PADR2) currState = R2ButtonDown;
    else if(paddata & SCE_PADRleft) currState = RleftButtonDown;
    else if(paddata & SCE_PADRright) currState = RrightButtonDown;
    else if(paddata & SCE_PADRdown) currState = RdownButtonDown;
    else if(paddata & SCE_PADRup) currState = RupButtonDown;
    else if(paddata & SCE_PADstart) currState = startButtonDown;
    else if(paddata & SCE_PADselect) currState = selectButtonDown;
    else currState = nothing;

    // return "Up" events if something was being pressed before
    if( prevState < BTNNUM && currState == nothing )
    {
        int temp = prevState;
        prevState = nothing;
        printf("%d UP\n", temp + BTNNUM + 1);
        return temp + BTNNUM + 1;  // + 1 to compensate for BTNNUM
    }

    prevState = currState;
    return currState;
}

