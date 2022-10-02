/*===========================================================================
    ee.hpp
    04-May-02 Created by Neall

    Useful EE routines for the PS2
    Also used by Toollib

    Copyright (c)2002 Radical Entertainment Ltd.
    All rights reserved.
===========================================================================*/
#ifndef _EE_HPP
#define _EE_HPP

/*-vif1--------------------------------------------------*/
// Toollib compatible replacements for the sce macros
#define VIF1_SET_CODE(immediate, num, cmd, irq) ((unsigned)(immediate) | ((unsigned)(num) << 16) | ((unsigned)(cmd) << 24) | ((unsigned)(irq) << 31))
#define VIF1_SET_NOP(irq) ((unsigned)(irq) << 31)
#define VIF1_SET_STCYCL(wl, cl, irq) ((unsigned)(cl) | ((unsigned)(wl) << 8)  | ((unsigned)0x01 << 24) | ((unsigned)(irq) << 31))
#define VIF1_SET_OFFSET(offset, irq) ((unsigned)(offset) | ((unsigned)0x02 << 24) | ((unsigned)(irq) << 31))
#define VIF1_SET_BASE(base, irq) ((unsigned)(base) | ((unsigned)0x03 << 24) | ((unsigned)(irq) << 31))
#define VIF1_SET_ITOP(itop, irq) ((unsigned)(itop) | ((unsigned)0x04 << 24) | ((unsigned)(irq) << 31))
#define VIF1_SET_STMOD(stmod, irq) ((unsigned)(stmod) | ((unsigned)0x05 << 24) | ((unsigned)(irq) << 31))
#define VIF1_SET_MSKPATH3(msk, irq) ((unsigned)(msk) | ((unsigned)0x06 << 24) | ((unsigned)(irq) << 31))
#define VIF1_SET_MARK(mark, irq) ((unsigned)(mark) | ((unsigned)0x07 << 24) | ((unsigned)(irq) << 31))
#define VIF1_SET_FLUSHE(irq) (((unsigned)0x10 << 24) | ((unsigned)(irq) << 31))
#define VIF1_SET_FLUSH(irq) (((unsigned)0x11 << 24) | ((unsigned)(irq) << 31))
#define VIF1_SET_FLUSHA(irq) (((unsigned)0x13 << 24) | ((unsigned)(irq) << 31))
#define VIF1_SET_MSCAL(vuaddr, irq) ((unsigned)(vuaddr) | ((unsigned)0x14 << 24) | ((unsigned)(irq) << 31))
#define VIF1_SET_MSCNT(irq) (((unsigned)0x17 << 24) | ((unsigned)(irq) << 31))
#define VIF1_SET_MSCALF(vuaddr, irq) ((unsigned)(vuaddr) | ((unsigned)0x15 << 24) | ((unsigned)(irq) << 31))
#define VIF1_SET_STMASK(irq) (((unsigned)0x20 << 24) | ((unsigned)(irq) << 31))
#define VIF1_SET_STROW(irq) (((unsigned)0x30 << 24) | ((unsigned)(irq) << 31))
#define VIF1_SET_STCOL(irq) (((unsigned)0x31 << 24) | ((unsigned)(irq) << 31))
#define VIF1_SET_MPG(vuaddr, num, irq) ((unsigned)(vuaddr) | ((unsigned)(num) << 16) | ((unsigned)(0x4a) << 24) | ((unsigned)(irq) << 31))
#define VIF1_SET_DIRECT(count, irq) ((unsigned)(count) | ((unsigned)(0x50) << 24) | ((unsigned)(irq) << 31))
#define VIF1_SET_DIRECTHL(count, irq) ((unsigned)(count) | ((unsigned)(0x51) << 24) | ((unsigned)(irq) << 31))
#define VIF1_SET_UNPACK(vuaddr, num, cmd, irq) ((unsigned)(vuaddr) | ((unsigned)(num) << 16) | ((unsigned)(0x60 | (cmd)) << 24) | ((unsigned)(irq) << 31))
#define VIF1_SET_UNPACKR(vuaddr, num, cmd, irq) ((unsigned)((vuaddr) | 0x8000) | ((unsigned)(num) << 16) | ((unsigned)(0x60 | (cmd)) << 24) | ((unsigned)(irq) << 31))

#ifdef TOOLLIB

#include <assert.h>
#include <string.h>
#include <malloc.h>


namespace EE
{
    inline void* malloc_dma(int size)
    {
       return malloc(size);
    }

    inline void free_dma(void* ptr)
    {
       free(ptr);
    }

    inline void* malloc_temp(int size)
    {
        return malloc(size);
    }
    
    inline void free_temp(void* ptr)
    {
        free(ptr);
    }
    
    inline void QwordCopy(void* d, void* s, int count)
    {
        assert(!((unsigned)d & 0xf) && !((unsigned)s & 0xf));
        memcpy(d, s, count*16);
    }

    inline unsigned FTOI(float flp)
    {
        return (unsigned)flp;
    }

    inline void Break()
    {
        assert(0);
    }
}

#else  // non-Toollib, compiled on the PS2:

#include <eetypes.h>
#include <eeregs.h>

#include <pddi/ps2/ps2types.hpp>
#include <pddi/ps2/ps2memalign.hpp>
#include <pddi/ps2/ps2debug.hpp>

namespace EE
{
    inline void* malloc_dma(int size)
    {
       return malloc_uncached_accel(size);
    }

    inline void free_dma(void* ptr)
    {
       free_uncached_accel(ptr);
    }

    void* malloc_temp(int size);
    void free_temp(void* ptr);
    
    inline int QwordCopy(void* d, void* s, int count)
    {
        PDDIASSERT(!((unsigned)d & 0xf) && !((unsigned)s & 0xf));
        u_long128* src = (u_long128*)s;
        u_long128* dst = (u_long128*)d;
        do *dst++ = *src++; while(--count);
        return 0;
    }
    
    inline int SPRQwordCopy(void* d, void* s, int count)
    {
        PDDIASSERT(!((unsigned)s & 0xf) && (unsigned)d & 0x70000000);
        while(*D9_CHCR & D_CHCR_STR_M){ /* nop */ }; 
        *D9_MADR = (unsigned)s;
        *D9_SADR = (unsigned)d;
        *D9_QWC = count;
        ((tD_CHCR*)D9_CHCR)->STR = 1;
        asm ("sync.l; sync.p");
        return 0;
    }

    inline unsigned FTOI(const float v)
    {
#ifndef PS2MW
        register int _val;

        asm __volatile__ ("
            cvt.w.s $f1, %1
            mfc1 %0, $f1
            " : "=r"(_val) : "f"(v) : "$f1");

        return _val;
#else
        return (int)v;
#endif
    }

    inline float ISqrt(const float a)
    {
        register float res;
        register float one = 1.0f;

        asm __volatile__("
            rsqrt.s %0,%1,%2
        "
        : "=f"(res)
        : "f"(one), "f"(a));

        return res;
    }

    inline void ClampColourVector(pddiColourVector* v)
    {
#ifndef PS2MW
       asm __volatile__ (
            "li $8, 0x437f0000;" // 255.0
            "ctc2 $8, $vi21;"    // load 255.0 into i register
            "lqc2 vf01, 0(%0);"
            "vminii vf01, vf01, I;"
            "sqc2 vf01, 0(%0);"
            : "+r"(v) :  : "$8" );
#else
        if(v->r > 255.0f) v->r = 255.0f;
        if(v->g > 255.0f) v->g = 255.0f;
        if(v->b > 255.0f) v->b = 255.0f;
        if(v->a > 128.0f) v->a = 128.0f;
#endif
    }

    // divide by 294912.0 to get ms (294.912 MHz clock)
    const unsigned int ClocksToMs = 294912;

    inline unsigned int GetCycleCounter(void)
    {
        unsigned int ret;
        asm __volatile__ ("mfc0 %0,$9" : "=r" (ret) );
        return ret;
    }

    // amb nov6/2001 - caution : do not call in middle of the code,
    // it'll mess up PDDI stats
    inline void ResetCycleCounter(void)
    {
        asm __volatile__ ("mtc0 $0,$9 ");
    };
    
    inline void Break()
    {
#ifndef PS2MW

        asm("break");
#else
        asm( ".word 0x0000004d");
#endif
    }

    // performance counter
    inline void HaltPerfCounters()
    {
        asm ("
            mtps    $0,0
            sync.p
        ");
    };

    inline void ZeroStartPerfCounters()
    {
        asm __volatile__("
            mtps    $0,0        # halt performance counters
            sync.p              #
            mtpc    $0,0        # set perfcounter 0 to zero
            mtpc    $0,1        # set perfcounter 1 to zero
            sync.p              #
            lui     v0,0x8000   # master enable
            mtps    v0,0
        "    
        :   // no output
        :   // no input
        :   "v0");
    };

    inline unsigned ReadPerfCounter0()
    {
        u_int   ret;
        asm __volatile__("
            mfpc    %0,0
            sync.p
        "
        : "=r" (ret) );    
        return ret;    
    }

    inline unsigned ReadPerfCounter1()
    {
        u_int ret;
        asm    __volatile__("
            mfpc %0,1
            sync.p
        " : "=r" (ret) );
        return ret;
    }
}  // namespace EE

#endif // TOOLLIB


namespace DMA
{
    enum PacketTypeID
    {
        refe = 0x0,
        cnt  = 0x1,
        next = 0x2,
        ref  = 0x3,
        refs = 0x4,
        call = 0x5,
        ret  = 0x6,
        end  = 0x7
    };

    inline unsigned SetSourceChainTag(unsigned QWC, unsigned PCE, PacketTypeID ID, unsigned IRQ)
    {
        return ( QWC | ( PCE << 26 ) | ( ID << 28 ) | ( IRQ << 31 ) );
    };
   
    inline unsigned SetSourceChainAddr(unsigned ADDR, unsigned SPR)
    {
        return ( ADDR | ( SPR << 31 ) );
    };
}


namespace VIF
{
    enum WriteDataMaskMode
    {
        NoMask = 0,
        WriteRow = 1,
        WriteCol = 2,
        WriteMasked = 3
    };
        
    enum AddDecompMode
    {
        NoDecomp = 0,
        Offset = 1,
        Difference = 2
    };

    enum UnpackFormat
    {
        S_32 =  0x60,
        S_16 =  0x61,
        S_8 =   0x62,
        V2_32 = 0x64,
        V2_16 = 0x65,
        V2_8 =  0x66,
        V3_32 = 0x68,
        V3_16 = 0x69,
        V3_8 =  0x6a,
        V4_32 = 0x6c,
        V4_16 = 0x6d,
        V4_8 =  0x6e,                
        V4_5 =  0x6f,

        mask_S_32 =  0x70,
        mask_S_16 =  0x71,
        mask_S_8 =   0x72,
        mask_V2_32 = 0x74,
        mask_V2_16 = 0x75,
        mask_V2_8 =  0x76,
        mask_V3_32 = 0x78,
        mask_V3_16 = 0x79,
        mask_V3_8 =  0x7a,
        mask_V4_32 = 0x7c,
        mask_V4_16 = 0x7d,
        mask_V4_8 =  0x7e,                
        mask_V4_5 =  0x7f
    };
    
    enum UnpackAddressMode
    {
        Absolute = 0x0,
        TopsRelative = 0x8000
    };    
}


namespace GIF
{
    // This is just like a sceGifTag (from eekernel.h) except 
    // it isn't 16 byte aligned.  That makes it easier to embed
    // it into a non-aligned address within a DMA buffer.
    struct Tag
    {
        unsigned NLOOP:15;
        unsigned EOP:1;
        unsigned pad16:16;
        unsigned id:14;
        unsigned PRE:1;
        unsigned PRIM:11;
        unsigned FLG:2;
        unsigned NREG:4;
        unsigned REGS0:4;
        unsigned REGS1:4;
        unsigned REGS2:4;
        unsigned REGS3:4;
        unsigned REGS4:4;
        unsigned REGS5:4;
        unsigned REGS6:4;
        unsigned REGS7:4;
        unsigned REGS8:4;
        unsigned REGS9:4;
        unsigned REGS10:4;
        unsigned REGS11:4;
        unsigned REGS12:4;
        unsigned REGS13:4;
        unsigned REGS14:4;
        unsigned REGS15:4;
    };
    
    enum RegisterMode
    {
        Packed = 0,
        RegList = 1,
        Image = 2
    };
}

#endif /* _EE_HPP */

