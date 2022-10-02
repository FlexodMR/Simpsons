/*===========================================================================
   ps2streamprim.cpp
   26-Jun-01 Created by Neall

   Copyright (c)2001, 2002  Radical Entertainment Ltd.
   All rights reserved.
===========================================================================*/

#include <pddi/pdditype.hpp>
#include <pddi/ps2/ps2streamprim.hpp>

#include <pddi/ps2/ps2context.hpp>
#include <pddi/ps2/ps2prim.hpp>
#include <pddi/ps2/mfifo.hpp>
#include <pddi/ps2/ps2shader.hpp>
#include <pddi/base/debug.hpp>

#include <eestruct.h>

enum MemLayout
{
    LAYOUT_1_IN_1_OUT, // position-only
    LAYOUT_3_IN_3_OUT, // single texture
    LAYOUT_4_IN_3_OUT, // two texture
    LAYOUT_1_IN_2_OUT, // shadows. vertex in, colour + vertex out
    LAYOUT_ENUM_COUNT,
    LAYOUT_UNKNOWN     // who knows
};

static ps2VertexList::VUMemLayout vuLayout[LAYOUT_ENUM_COUNT];

static bool initialized = false;    

static ps2MFIFO* mfifo = NULL;

static ps2VertexList::VUMemLayout* vu_layout = NULL;

// pointer to vertex list header for current SPR packet (need to patch when buffer is flushed)
static VU1_VertexListHeader* vertexListHeader = NULL;

static pddiPrimType primType = PDDI_PRIM_TRIANGLES;

// pointer to vertex unpack instruction (need to patch when buffer is flushed)
static unsigned* vertexUnpack = NULL;

// number of buffers sent so far
static int bufferCount = 0;

// number of vertices to restart a strip:  0 for triangles/lines, 1 for line strip, 2 for tri strip
static int nRestartVertices = 0;

// number of total vertices sent through this stream
static int totalVertexCount = 0;

// microprogram to call when the first buffer is sent
static unsigned mpgAddr = 0;

// must be divisible by three, and even
static const int MAX_STREAM_VERTEX_COUNT_4 = 48;   // four component vertices
static const int MAX_STREAM_VERTEX_COUNT_3 = 66;   // three component vertices
static const int MAX_STREAM_VERTEX_COUNT_1 = 108;  // one component vertices
static const int MAX_STREAM_VERTEX_COUNT_1_2 = 144;

static union
{
    sceGifTag tag;
    u_long128 tagQ;
} gifTag __attribute__((aligned(16)));


static void Initialize()
{
    gifTag.tagQ = 0;
    gifTag.tag.EOP = 1;
    gifTag.tag.PRE = 1;
    gifTag.tag.FLG = SCE_GIF_PACKED;
    gifTag.tag.NREG = 3;
    gifTag.tag.REGS0 = 0x02; // ST
    gifTag.tag.REGS1 = 0x01; // RGBA
    gifTag.tag.REGS2 = 0x05; // XYZF2

    ps2VertexList::VUMemDescription vuDesc;
    vuDesc.availableMem = 1024 - 128;  // 128 quadwords of scratch for clipping and such
    vuDesc.inputHeaderSize = sizeof(VU1_VertexListHeader) / 16;
    vuDesc.inputVertexSize = 3;
    vuDesc.outputHeaderSize = 1; // gif tag
    vuDesc.outputVertexSize = 3;

    ps2VertexList::QuadPartitionVU(&vuDesc, &vuLayout[LAYOUT_3_IN_3_OUT]);
    PDDIASSERT((int)vuLayout[LAYOUT_3_IN_3_OUT].nVerticesPerBuffer >= MAX_STREAM_VERTEX_COUNT_3);
    
    vuDesc.inputVertexSize = 1;
    vuDesc.outputVertexSize = 2;
    ps2VertexList::QuadPartitionVU(&vuDesc, &vuLayout[LAYOUT_1_IN_2_OUT]);
    PDDIASSERT((int)vuLayout[LAYOUT_1_IN_2_OUT].nVerticesPerBuffer >= MAX_STREAM_VERTEX_COUNT_1_2);
    
    vuDesc.inputVertexSize = 4;
    vuDesc.outputVertexSize = 3;
    ps2VertexList::QuadPartitionVU(&vuDesc, &vuLayout[LAYOUT_4_IN_3_OUT]);
    PDDIASSERT((int)vuLayout[LAYOUT_4_IN_3_OUT].nVerticesPerBuffer >= MAX_STREAM_VERTEX_COUNT_4);
}


ps2PrimStream::ps2PrimStream()
{
    PDDIASSERT(!initialized);
    initialized = true;
    Initialize();
    
    nComponent = 3;
    positionStride = 2;
    colourStride = normalStride = 1;
    uvStride = 0;
    maxStreamVertexCount = MAX_STREAM_VERTEX_COUNT_3;
    vu_layout = &vuLayout[LAYOUT_3_IN_3_OUT];
}

// handy little chart for figuring out VIF masking
// |   cycle 4   |   cycle 3   |   cycle 2   |   cycle 1   | 00 - no mask
// | w  z  y  x  | w  z  y  x  | w  z  y  x  | w  z  y  x  | 01 - mask + vif Row
// | 01 00 00 00 | 00 00 00 00 | 01 01 00 00 | 01 01 00 00 | 02 - mask + vif Col
// |    40    00 |    00    00 |    50    50 |    50    50 | 03 - mask

void ps2PrimStream::Begin(ps2Context* context, pddiPrimType prmType, unsigned verType, unsigned addr)
{
    primType = prmType;
    mpgAddr = addr;

    vertexCount = 0;
    bufferCount = 0;
    totalVertexCount = 0;

    colourShift = (verType & PDDI_V_UVCOUNT7) ? 1 : 0;
 
    gifTag.tag.PRIM = SHADER::primTable[primType];
    gifTag.tag.NREG = 3;
    gifTag.tag.REGS0 = 0x02; // ST
    gifTag.tag.REGS1 = 0x01; // RGBA
    gifTag.tag.REGS2 = 0x05; // XYZF2

    unsigned mask;
    unsigned cycles;

    switch(verType)
    {
        case PDDI_V_POSITION:
            maxStreamVertexCount = MAX_STREAM_VERTEX_COUNT_1_2;
            vu_layout = &vuLayout[LAYOUT_1_IN_2_OUT];
            nComponent = 1;
            positionStride = 0;
            colourStride = normalStride = 0; // What should these be if they are both invalid?
            gifTag.tag.NREG = 2;
            gifTag.tag.REGS0 = 0x01; // RGBAQ
            gifTag.tag.REGS1 = 0x05; // XYZF2
            mask = 0;
            cycles = 1;
            break;
       
        case PDDI_V_C:
        case PDDI_V_N:
        case PDDI_V_T:
        case PDDI_V_CT:
        case PDDI_V_NT:
            maxStreamVertexCount = MAX_STREAM_VERTEX_COUNT_3;
            nComponent = 3;
            positionStride = 2;
            colourStride = normalStride = 1;
            vu_layout = &vuLayout[LAYOUT_3_IN_3_OUT];
            mask = (verType & PDDI_V_NORMAL) ? 0x404050 : 0x400050;
            cycles = 3;
        break;

        case PDDI_V_CT2:
            maxStreamVertexCount = MAX_STREAM_VERTEX_COUNT_4;
            nComponent = 4;
            positionStride = 3;
            colourStride = 2;
            vu_layout = &vuLayout[LAYOUT_4_IN_3_OUT];
            mask = 0x40005050;
            cycles = 4;
        break;
        
        default:
            mask = ~0;
            cycles = 0;
            PDDIASSERT(0 && "PDDI ERROR:  ps2PrimStream::Begin() - Illegal stream vertex type.\n" );
        break;
    }

    // nRestartVertices:  a strip's vertices cannot span across scratchpad buffers, so we
    // have to restart tri and line strips.
    nRestartVertices = 0;
    switch(primType)
    {
        case PDDI_PRIM_TRISTRIP:
            nRestartVertices = 2;
        break;
        case PDDI_PRIM_LINES:
            mpgAddr = VU1_LINE;
        break;
        case PDDI_PRIM_LINESTRIP:
            mpgAddr = VU1_LINE;
            nRestartVertices = 1;
        break;
        // this is to get rid of the stupid GCC warning
        default:
        break;
    }

    mfifo = context->GetMFIFO();
    VifStream vif(mfifo->GetBuffer() + 2); // reserve space for dma tag

    vif.FlushA_Safe();

    vif.Base(vu_layout->base);
    vif.Offset(vu_layout->offset);
    vif.StRow(0x00000000, 0x00000000, 0x3f800000, 0x3f800000);  // (0, 0, 1.0, 1.0)
    vif.StMask(mask);

    vif.StCycl(cycles, cycles);

    NewPacket(&vif);
}

void ps2PrimStream::End()
{
    if(vertexCount > 0)
    {
        Flush();
    }
}

void ps2PrimStream::NewPacket(VifStream* vif)
{
    vif->Align(1);
    vertexListHeader = (VU1_VertexListHeader*)vif->Unpack(0, sizeof(VU1_VertexListHeader)/16, VIF::V4_32, NULL, VIF::TopsRelative);

    // prep gifTag
    u_long128* tag = reinterpret_cast<u_long128*>(&vertexListHeader->gifTag);
    *tag = gifTag.tagQ;

    vertexListHeader->flags.skin = 0;
    vertexListHeader->flags.tristrip = (primType == PDDI_PRIM_TRISTRIP);

    vertexListHeader->outputOffset = vu_layout->outputAddress[0];
    vertexListHeader->scratchAddr = vu_layout->scratchAreaAddress;
    
    vif->Align(1);
    // cache away this address so we can patch the vertex count later
    vertexUnpack = (unsigned*)vif->GetAddress();
    // unpack instr for vertex upload
    currentVertex = (StreamVertex*)vif->Unpack(sizeof(VU1_VertexListHeader)/16, 0, VIF::mask_V4_32, NULL, VIF::TopsRelative);
}

void ps2PrimStream::Flush()
{
    // patch vertex count
    vertexListHeader->SetVertexCount(vertexCount);
    *vertexUnpack &= 0xff00ffff; // clear out QWC (bits 16-23)
    *vertexUnpack |= ((vertexCount*nComponent)<<16);  // write in new count

    VifStream vif(currentVertex);
    if(bufferCount == 0)
        vif.MsCal(mpgAddr);
    else
        vif.MsCnt();
    vif.Nop();
 
    vif.Align(); // pad out to 128 bits

    // kick off dma
    unsigned* dma = mfifo->GetBuffer();
    unsigned sizeQW = ((unsigned)vif.GetAddress() - (unsigned)dma) / 16;
    dma[0] = DMA::SetSourceChainTag(sizeQW - 1, 0, DMA::cnt, 0);
    dma[1] = 0;

    mfifo->Add(dma, sizeQW);
     //mfifo->Dump(dma, sizeQW);

    bufferCount++;
    totalVertexCount += vertexCount;
    vertexCount = 0;
}

void ps2PrimStream::NextBuffer()
{
    StreamVertex* copyVerts = currentVertex - nComponent*2;
    Flush();
    VifStream vif(mfifo->GetBuffer() + 2); // reserve space for dma tag
    NewPacket(&vif);
    // restart strip
    if(nRestartVertices)
    {
        EE::QwordCopy(currentVertex, copyVerts, nComponent*nRestartVertices);
        vertexCount += nRestartVertices;
        currentVertex += nComponent*nRestartVertices;
    }
}

void ps2PrimStream::Advance(int numVert)
{
    vertexCount += numVert;
    currentVertex += (numVert * nComponent);
    if(vertexCount >= maxStreamVertexCount)
    {
        NextBuffer();
    }
}

int ps2PrimStream::GetPrimCount()
{
    return ps2VertexList::VertsToPrims(primType, totalVertexCount);
}

int ps2PrimStream::GetVertexCount()
{
    return totalVertexCount;
}
