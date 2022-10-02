/*===========================================================================
    packet.hpp
    15-Nov-00 Created by Neall

    PS2 DMA packet code
    Note that this is compiled into ToolLib and PDDI

    Copyright (c)2000, 2001, 2002 Radical Entertainment Ltd.
    All rights reserved.
===========================================================================*/
#ifndef _PACKET_HPP
#define _PACKET_HPP

#include <pddi/ps2/ee.hpp>


#ifdef TOOLLIB
    #define u_long64  __int64
#else
    #define u_long64 unsigned long
#endif

#include <string.h>


struct GsDummyContext
{
    void Init()
    {
        SCE_GIF_CLEAR_TAG((u_long128*)&contextTag);
        contextTag.NLOOP = (sizeof(GsDummyContext)-16) / 16; // size in qwords
        contextTag.EOP = 1;
        contextTag.PRE = 0;
        contextTag.PRIM = 0;
        contextTag.FLG = SCE_GIF_PACKED;
        contextTag.NREG = 1;
        contextTag.REGS0 = 0x0e; // A+D

        data = 0;
        addr = SCE_GS_NOP;
    }

    sceGifTag contextTag;
    unsigned long   data;
    unsigned long   addr; // SCE_GS_NOP
}  __attribute__((aligned(16)));

extern GsDummyContext dummyContext;


class VifStream
{
public:
    VifStream(void* b) : base((unsigned*)b), buf((unsigned*)b), intr(false), tagBase(0) { /**/ }
    VifStream() : base(0), buf(0), intr(false), tagBase(0)                              { /**/ }

    inline int SetBase(void* b)                { base = (unsigned*)b;  buf = base; return 0; }
    inline void* GetBase()                     { return base; }
    inline int EnableInterrupts(bool enable)   { intr = enable;  return 0; }
    inline unsigned GetOffset()                { return (unsigned)buf - (unsigned)base; }
    inline unsigned GetQWC()                   { return ((unsigned)buf - (unsigned)base) / 16; }
    inline unsigned* GetAddress()              { return buf; }

    inline int Nop()                   { *buf++ = VIF1_SET_NOP(intr); return 0; }
    inline int StCycl(int wl, int cl)  { *buf++ = VIF1_SET_STCYCL(wl, cl, intr); return 0; }
    inline int Offset(int offset)      { *buf++ = VIF1_SET_OFFSET(offset, intr); return 0; }
    inline int Base(int base)          { *buf++ = VIF1_SET_BASE(base, intr); return 0; }
    inline int ITop(int addr)          { *buf++ = VIF1_SET_ITOP(addr, intr); return 0; }
    inline int StMod(int m)            { *buf++ = VIF1_SET_STMOD(m, intr); return 0; }
    inline int MskPath3(bool mask)     { *buf++ = VIF1_SET_MSKPATH3(mask, intr); return 0; }
    inline int Mark(int val)           { *buf++ = VIF1_SET_MARK(val, intr); return 0; }
    inline int FlushE()                { *buf++ = VIF1_SET_FLUSHE(intr); return 0; }
    inline int Flush()                 { *buf++ = VIF1_SET_FLUSH(intr); return 0; }
    inline int FlushA()                { *buf++ = VIF1_SET_FLUSHA(intr); return 0; }
    //inline int FlushA_Safe()           { *buf++ = VIF1_SET_FLUSHA(intr); return 0; }
    inline int MsCal(int addr)         { *buf++ = VIF1_SET_MSCAL(addr, intr); return 0; }
    inline int MsCnt()                 { *buf++ = VIF1_SET_MSCNT(intr); return 0; }
    inline int MsCalF(int addr)        { *buf++ = VIF1_SET_MSCALF(addr, intr); return 0; }
    inline int StMask(unsigned mask)   { *buf++ = VIF1_SET_STMASK(intr);  *buf++ = mask; return 0; }
    inline int Mpg(int addr, int size) { *buf++ = VIF1_SET_MPG(addr, size, intr); return 0; }

    // pad with nops until the current address + word offset is on a qword boundary
    inline int Align(int offset = 0)
    {
        while (((unsigned)(buf + offset)) & 0x0F) Nop();
        return 0;
    }

    inline int StRow(int r0, int r1, int r2, int r3)
    {
       *buf++ = VIF1_SET_STROW(intr);
       *buf++ = r0;
       *buf++ = r1;
       *buf++ = r2;
       *buf++ = r3;
       return 0;
    }
    
    inline int StCol(unsigned c0, unsigned c1, unsigned c2, unsigned c3)
    {
       *buf++ = VIF1_SET_STCOL(intr);
       *buf++ = c0;
       *buf++ = c1;
       *buf++ = c2;
       *buf++ = c3;
       return 0;
    }

    inline int Direct(int qword, void* data = NULL)
    {
        Align(1);  // ensure pointer after the direct tag is aligned
        *buf++ = VIF1_SET_DIRECT(qword, intr);
        if(data)
        {
            EE::QwordCopy(buf, data, qword);
            buf += (qword*4);
        }
        return 0;
    }
    
    inline int DirectHl(int qword, void* data = NULL)
    {
        Align(1);  // ensure pointer after the direct tag is aligned
        *buf++ = VIF1_SET_DIRECTHL(qword, intr);
        if(data)
        {
            EE::QwordCopy(buf, data, qword);
            buf += (qword*4);
        }
        return 0;
    }

    // returns pointer to start of unpack data
    // uese memcpy, can be slow
    void* Unpack(unsigned vuDest, unsigned qword, unsigned format, void* data = 0, VIF::UnpackAddressMode addrMode = VIF::Absolute);

    // must faster quadword-only version of above
    // absolute addressing only
    int UnpackQW(unsigned vuDest, unsigned qword, void* data)
    {
        Align(1);
        *buf++ = VIF1_SET_UNPACK(vuDest, qword, VIF::V4_32, 0);
        EE::QwordCopy(buf, data, qword);
        buf += (qword*4);
        return 0;
    }

    // add a DIRECT code, GIFtag, list of A+D GS register settings
    int BeginGifAD()
    {
        Align(1);
        tagBase = buf;
        *buf++ = VIF1_SET_DIRECT(0, 0);
        GIF::Tag* tag = (GIF::Tag*)buf;
        buf[0] = buf[1] = buf[2] = buf[3] = 0;  // clear tag
        tag->EOP = 1;
        tag->PRE = 1;
        tag->NREG = 1;
        tag->REGS0 = 0xe;  //A+D
        buf += 4;
        return 0;
    }

    int A_D(u_long64 address, u_long64 data)
    {
        u_long64* buf_long = (u_long64*)buf;
        *buf_long++ = data;
        *buf_long++ = address;
        buf = (unsigned*)buf_long;
        return 0;
    }

    int EndGifAD()
    {
        GIF::Tag* tag = (GIF::Tag*)(tagBase+1); // skip over the DIRECT vif code
        tag->NLOOP = ((unsigned)buf - (unsigned)(tag+1)) / 16;
        *tagBase = VIF1_SET_DIRECT(tag->NLOOP + 1, intr);
        tagBase = NULL;
        return 0;
    }

    // add a raw value to the stream
    int AddInt(unsigned i)
    {
        *buf++ = i;
        return 0;
    }
    
    int AddLong(u_long64 l)
    {
        u_long64* buf_long = (u_long64*)buf;
        *buf_long = l;
        buf += 2;
        return 0;
    }

    inline int FlushA_Safe()
    {
        bool oldIntr = intr;
        intr = false;
        Nop();// from technotes - Erroneous VIF1 interrupts
        Flush();
        Direct(sizeof(GsDummyContext)/16,&dummyContext);
        FlushA();
        Nop();
        intr = oldIntr;
        return 0;
    }
    

private:
    unsigned* base;
    unsigned* buf;
    bool intr;
    unsigned* tagBase;
};

#endif /* _PACKET_HPP */
