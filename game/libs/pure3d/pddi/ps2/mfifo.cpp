/*===========================================================================
   mfifo.cpp
   21-Mar-01 Created by Neall
   Implementation of a memory FIFO display list system
   
   Copyright (c)2001, 2001  Radical Entertainment Ltd.
   All rights reserved.
===========================================================================*/

#include <pddi/ps2/mfifo.hpp>
#include <pddi/ps2/ps2memalign.hpp>
#include <pddi/ps2/ps2debug.hpp>
#include <pddi/ps2/ps2buildconfig.hpp>

#include <eekernel.h>
#include <eeregs.h>
#include <string.h>

// SPR double buffer addresses
const unsigned SPR_BUFFER_0_ADDR = 0x70000000;
const unsigned SPR_BUFFER_1_ADDR = 0x70001000;  // 256 QW (4k)
const unsigned SPR_BUFFER_2_ADDR = 0x70002000;  // free SPR address

// size of an SPR buffer in qwords
const unsigned SPR_BUFFER_SIZE = (SPR_BUFFER_1_ADDR - SPR_BUFFER_0_ADDR) / 16;


const unsigned MFIFO_SANITY = 30000000;

#ifdef PS2_MFIFO_SANITY_CHECKS

static inline int SanityCheck(unsigned& sanity, const char* failmsg)
{
    if(sanity++ >= MFIFO_SANITY)
    {
        scePrintf("\nPDDI: MFIFO sanity check failed - %s.\n", failmsg);
        scePrintf("\tD1_CHCR = 0x%08x\n", *D1_CHCR);
        scePrintf("\tD8_CHCR = 0x%08x\n", *D8_CHCR);
        scePrintf("\tD1_TADR = 0x%08x\n", *D1_TADR);
        scePrintf("\tD8_MADR = 0x%08x\n", *D8_MADR);
        scePrintf("\tD8_SADR = 0x%08x\n", *D8_SADR);
        scePrintf("\tD8_QWC  = 0x%x (%d bytes)\n", *D8_QWC, (*D8_QWC)*16);
        scePrintf("Dropping to debugger...\n\n");
        EE::Break();
    }
    return 0;
}

#else

#define SanityCheck(A,B)

#endif


//--------------------------------------------------------------------
ps2MFIFO::ps2MFIFO(const int size)
{
    // SPR double-buffers
    sprBuffer[0] = SPR_BUFFER_0_ADDR;
    sprBuffer[1] = SPR_BUFFER_1_ADDR;
    sprBuffer[2] = SPR_BUFFER_2_ADDR;

    // allocate ring buffer memory
    // must be aligned to size of buffer (eg. 64K buffer needs 64K alignment)
    rb_size = size;
    rb_addr = (unsigned*)radMemoryAllocAligned(0, rb_size, rb_size);//this is rerouted due to the huge gap that would be left were this to be alloc'd to peristent//MallocAligned(rb_size, rb_size);
    memset(rb_addr, 0, rb_size);
    FlushCache(0);

    // shove 16 nops into the vif to prevent start up mfifo hang
    *D1_MADR = (unsigned)rb_addr;
    *D1_QWC = 16;
    *D1_CHCR = 1 | (1<<8); // from mem
    asm __volatile__ ("sync.l; sync.p");
    while (*D1_CHCR & 0x100);

    // set DMAC ring buffer registers
    *D_RBOR = (unsigned)rb_addr;
    *D_RBSR = rb_size-0x10;


    enabled = false;
    currentSPRBuffer = 0;
    currentBuffer = (unsigned*)sprBuffer[0];
    bytesTransferred = 0;
    highWater = 0;
    forceWait = false;
}

ps2MFIFO::~ps2MFIFO()
{
    Enable(false);
    Free(rb_addr);
}

void ps2MFIFO::Enable(const bool e)
{
    if(e == enabled)
    {
        return;
    }

    if(enabled)
    {
        Flush();
    }
   
    if(e)
    {  
        enabled = true;

        ((tD_CTRL*)D_CTRL)->MFD = 0x2; // MFIFO drain channel = VIF1
        *D8_MADR = (unsigned)rb_addr;  // set SPR transfer address
        *D1_TADR = (unsigned)rb_addr;  // set VIF1 transfer address
        *D1_CHCR = 1 | (1<<2) | (1<<6) | (1<<8); // from memory | chain mode | tag transfer | start
    }
    else
    {   
        enabled = false;
        *D1_CHCR = 0; // disable DMA      
        ((tD_CTRL*)D_CTRL)->MFD = 0x0; // MFIFO drain channel = disabled
        *D8_MADR = 0;
        *D1_TADR = 0;
    }

    asm ("sync.l ; sync.p");
}

void ps2MFIFO::FlushSPR()
{
    unsigned sanity = 0;
    while(*D8_CHCR & D_CHCR_STR_M)   // wait for fromSPR channel to become available
    {
        SanityCheck(sanity, "FlushSPR() waiting for fromSPR DMA idle");
    }
}

void ps2MFIFO::Flush()
{
    if(!enabled)
    {
        return;
    }
   
    // shove some nops into the VIF1 to flush its fifo
    unsigned* dma = GetBuffer();
    u_long128* qw = (u_long128*)dma;
    for(int i=0; i < 17; i++) qw[i] = 0;

    dma[0] = DMA::SetSourceChainTag(16, 0, DMA::cnt, 0);

    bool forceSave = forceWait;
    forceWait = false;    // because Add() calls Flush()
    Add(dma, 17);
    forceWait = forceSave;

    FlushSPR();
    unsigned sanity = 0;
    while(*D1_TADR != *D8_MADR)  // when D1_TADR == D8_MADR, the MFIFO is empty
    {
        SanityCheck(sanity, "Flush() Waiting for MFIFO to empty");
    }
}

void ps2MFIFO::Add(void* spr_addr, unsigned qwc)
{
    PDDIASSERT(enabled);
    PDDIASSERT(qwc <= SPR_BUFFER_SIZE);

    bytesTransferred += (qwc*16);

    // switch to the next buffer
    currentSPRBuffer = !currentSPRBuffer;
    currentBuffer = (unsigned*)sprBuffer[currentSPRBuffer];

    // wait for any fromSPR DMA to finish
    // while(*D8_CHCR & D_CHCR_STR_M);  // easy way

    asm ("d8_wait:");
    asm ("nop");
    asm ("bc0f d8_wait");
    asm ("nop");

    // setup normal mode transfer from spr to MFIFO
    *D8_SADR = (unsigned)spr_addr;
    *D8_QWC = qwc;
    qwc *= 16;

    // wait until some space is free in the MFIFO
    volatile unsigned tadr, madr, remain;
    unsigned sanity = 0;
    do
    {
        SanityCheck(sanity, "Add() Waiting for space");

        tadr = *D1_TADR;
        madr = *D8_MADR;
        remain = (tadr==madr) ? rb_size : (tadr+rb_size-madr)&(rb_size-0x10);
#ifndef RAD_RELEASE
        if(rb_size - remain < highWater)
        {
            highWater = rb_size - remain;
        }
#endif
    } while (remain <= qwc);

    *D_STAT = D_STAT_CIS8_M; // clear SIS, CIS bit on channel 8
    *D_PCR = D_PCR_CPC8_M;   // enable CPCOND[0] status on channel 8
    ((tD_CHCR*)D8_CHCR)->STR = 1; // kick off DMA from spr to MFIFO
    asm ("sync.l ; sync.p ");  // paranoia - ensure dma has been kicked

#ifdef PS2_MFIFO_SANITY_CHECKS
    if(forceWait)
    {
        Flush();
    }
#endif
}

void ps2MFIFO::ForceSync( bool force )
{
    forceWait = force;
#ifdef PS2_MFIFO_SANITY_CHECKS
    if(force)
    {
        scePrintf("PDDI WARNING : Forcing synchronization in MFIFO\n");
    }
#endif
}

#ifdef PS2_DMA_DEBUGGING

#include <stdlib.h>
#include <libdma.h>
#include <pddi/ps2/external/Debug.h>
#include <pddi/ps2/external/DMAdebug.h>

void ps2MFIFO::CloseVifStreamDump(VifStream& stream)
{
    stream.Align();
    unsigned qwords = stream.GetOffset() / 16;
    unsigned* tag = (unsigned*)stream.GetBase();
    *tag = DMA::SetSourceChainTag(qwords-1, 0, DMA::end, 0);

    sceDmaChan* channel = sceDmaGetChan(1);
    int result = DIS_sceDmaSend(channel, tag, "-S");
    scePrintf("%s\n", gOutputBuffer);
    exit(0);
}

void ps2MFIFO::Dump(void* data, unsigned qwc)
{
    unsigned* tag = (unsigned*)data;
    *tag = DMA::SetSourceChainTag(qwc-1, 0, DMA::end, 0);
    
    sceDmaChan* channel = sceDmaGetChan(1);
    int result = DIS_sceDmaSend(channel, tag, "-S");
    scePrintf("%s\n", gOutputBuffer);
    exit(0);
}

#endif
