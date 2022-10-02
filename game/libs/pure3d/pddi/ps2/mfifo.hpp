/*===========================================================================
   mfifo.hpp
   21-Mar-01 Created by Neall
   Implementation of a memory FIFO display list system
   
   Copyright (c)2001, 2002 Radical Entertainment Ltd.
   All rights reserved.
===========================================================================*/

#ifndef _MFIFO_HPP
#define _MFIFO_HPP

#include <pddi/ps2/packet.hpp>

class ps2MFIFO
{
public:
    ps2MFIFO(const int size);
    ~ps2MFIFO();

    void Enable(const bool);
    unsigned* GetBuffer() { return currentBuffer; }
    unsigned* GetScratchpadArea() { return (unsigned*)sprBuffer[2]; };

    void OpenVifStream(VifStream& stream)
    {
        stream.SetBase(GetBuffer());
        stream.Nop();  //  reserve space for dma tag
        stream.Nop();
    }
   
    // fill in dma tag, send to mfifo
    void CloseVifStreamAdd(VifStream& stream)
    {
        stream.Align();
        unsigned qwords = stream.GetOffset() / 16;
        unsigned* tag = (unsigned*)stream.GetBase();
        *tag = DMA::SetSourceChainTag(qwords-1, 0, DMA::cnt, 0);
        Add(tag, qwords);
    }
   
    // same as above but prints a disassembly of the packet
    void CloseVifStreamDump(VifStream& stream);

    unsigned GetBytesFromTop(void* ptr)  { return (unsigned)ptr - (unsigned)currentBuffer; }
    unsigned GetQwordsFromTop(void* ptr) { return ((unsigned)ptr - (unsigned)currentBuffer) / 16; }
    void FlushSPR();
    void Flush();

    void Add(void* addr, unsigned qwc);
    // same as Add(), but sends the packet to the DMA disassembler   
    void Dump(void* addr, unsigned qwc);

    void AddRef(void* addr, unsigned qwc)
    {
        unsigned* buffer = GetBuffer();
        buffer[0] = DMA::SetSourceChainTag(qwc, 0, DMA::ref, 0);
        buffer[1] = DMA::SetSourceChainAddr((unsigned)addr & ~0x30000000, 0);
        buffer[2] = 0;
        buffer[3] = 0;
        Add(buffer, 1);
    }

    unsigned GetBytesTransferred()   { return bytesTransferred; }
    unsigned GetHighWater()          { return highWater; }
    void ResetTransferCounter()      { bytesTransferred = highWater = 0; }
    void ForceSync( bool force );

private:
    unsigned sprBuffer[3];
    int rb_size;         // ring buffer size
    unsigned* rb_addr;   // ring buffer address
    bool enabled;
    bool forceWait;
    int currentSPRBuffer;
    unsigned* currentBuffer;
    unsigned bytesTransferred;
    unsigned highWater;
};

#endif
