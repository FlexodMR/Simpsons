/*===========================================================================
   ps2prim.cpp
   15-Nov-00 Created by Neall

   Copyright (c)2000  Radical Entertainment, Inc.
   All rights reserved.
===========================================================================*/

#include <pddi/ps2/ps2prim.hpp>

#include <new>

#ifdef TOOLLIB
    class ps2Context;
    #include <stdio.h>
#else
    #include <pddi/ps2/ps2context.hpp>
    #include <pddi/base/debug.hpp>
    #include <pddi/ps2/ps2types.hpp>
    #include <pddi/ps2/ps2debug.hpp>
    #include <pddi/ps2/ps2buildconfig.hpp>
#endif

#include <pddi/ps2/quad-vu/regmap.h>

//--------------------------------------------------------------------
struct VertexBufferHeader
{
    unsigned flush;
    unsigned base;
    unsigned offset;
    unsigned stcol;
    unsigned c0;
    unsigned c1;
    unsigned c2;
    unsigned c3;
};

struct PacketHeader
{
    unsigned unpack;
    VU1_VertexListHeader header;
    unsigned cycle2;
};

struct PacketTail
{
    unsigned cycle;
    unsigned mscall;
};    

struct ComponentHeader
{
    unsigned stmask;
    unsigned mask;
    unsigned unpack;
};

struct MatrixIndexComponentHeader
{
    unsigned stmode_init;
    unsigned strow;
    unsigned r0;
    unsigned r1;
    unsigned r2;
    unsigned r3;
    unsigned unpack;
    unsigned stmode_restore;
};


inline unsigned ComponentCount(unsigned vertexFormat)
{
    unsigned nComponent = vertexFormat & 0xf;
    unsigned mask = (PDDI_V_POSITION | PDDI_V_COLOUR | PDDI_V_NORMAL | PDDI_V_INDICES | PDDI_V_WEIGHTS);
    vertexFormat &= mask;
    nComponent += UTIL::BitCount(vertexFormat);
    return nComponent;
}


ps2VertexList::ps2VertexList(pddiPrimBufferDesc& desc)
{
    primType = desc.GetPrimType();
    vertexFormat = desc.GetVertexFormat();

    nComponent = 0;
    positionFormat = normalFormat = colourFormat = VIF::V4_32;
    normal = NULL;
    position = NULL;
    
    colour = NULL;
    matrixIndices = NULL;
    skinWeights = NULL;
    programAddress = NULL;

    nIndices = 0;
    indices = NULL;

    PDDIASSERT(!desc.GetMemoryImaged());
    int nVertex = desc.GetVertexCount();
    int i;

    for(i=0; i < MAX_UV_CHANNELS; i++)
    {
        stFormat[i] = VIF::V4_32;
        st[i] = NULL;
    }

    unsigned format = desc.GetVertexFormat();
    nComponent = ComponentCount(format);
    
    if(format & PDDI_V_POSITION)
    {
        positionFormat = VIF::V3_32;
        position = (Position*)EE::malloc_temp(sizeof(Position) * nVertex);
        memset(position, 0, sizeof(Position)*nVertex);
    }

    if(format & PDDI_V_NORMAL)
    {
        normalFormat = VIF::V3_32;
        if(format & PDDI_V_INDICES) normalFormat = VIF::V3_16;

        normal = (pddiVector*)EE::malloc_temp(sizeof(pddiVector) * nVertex);
        memset(normal, 0, sizeof(pddiVector)*nVertex);
    } 
    if(format & PDDI_V_COLOUR)
    {
#ifndef PS2_FORCE_16BIT_VERTEX_COLOURS
        colourFormat = VIF::V4_8;
#else
        colourFormat = VIF::V4_5;
#endif
        colour = (pddiColour*)EE::malloc_temp(sizeof(pddiColour) * nVertex);
        memset(colour, 0x80, sizeof(pddiColour)*nVertex);
    }
    if(format & PDDI_V_INDICES)
    {
        PDDIASSERT(desc.GetMatrixCount() > 0);
        PDDIASSERT(desc.GetMatrixCount() <= 32);
        matrixIndices = (MatrixIndices*)EE::malloc_temp(sizeof(MatrixIndices) * nVertex);
        memset(matrixIndices, 0, sizeof(MatrixIndices)*nVertex);
    }
    if(format & PDDI_V_WEIGHTS)
    {


        skinWeights = (SkinWeights*)EE::malloc_temp(sizeof(SkinWeights) * nVertex);
        memset(skinWeights, 0, sizeof(SkinWeights)*nVertex);
    }
    int nTexCoord = format & 0x0f;
    for(i=0; i < nTexCoord; i++)
    {
        stFormat[i] = VIF::V2_32;
        st[i] = (pddiVector2*)EE::malloc_temp(sizeof(pddiVector2) * nVertex);
        memset(st[i], 0, sizeof(pddiVector2)*nVertex);
    }
}
 
ps2VertexList::~ps2VertexList()
 {
    if(position)      EE::free_temp(position);
    if(normal)        EE::free_temp(normal);
    if(colour)        EE::free_temp(colour);
    if(matrixIndices) EE::free_temp(matrixIndices);
    if(skinWeights)   EE::free_temp(skinWeights);
    for(int i=0; i < MAX_UV_CHANNELS; i++)
    {
        if(st[i]) EE::free_temp(st[i]);
    }
    if(indices) EE::free_temp(indices);
}

void ps2VertexList::SetIndices(unsigned short* ind, int count)
{
    nIndices = count;
    
    if(indices) EE::free_temp(indices);
    indices = (unsigned short*)EE::malloc_temp(sizeof(unsigned short) * nIndices);
    memcpy(indices, ind, sizeof(unsigned short) * count);
}

void ps2VertexList::WriteComponent(VifStream& vif, pddiVector* src, int count, unsigned startAddr, VIF::UnpackFormat format)
{
    switch(format)
    {
        case VIF::V3_32:
        {
            vif.StMask(0xffffff80); // fill W component with VIF1_C0 (1.0)
            vif.Unpack(startAddr, count, format, src, VIF::TopsRelative);
            break;
        }

        case VIF::V3_16:
        {
            vif.StMask(0xffffff80); // fill W component with VIF1_C0 (1.0)
            short *s = (short*)vif.Unpack(startAddr, count, format, NULL, VIF::TopsRelative);
            int a;
            for (a = 0; a < count; a++)
            {
                *s++ = (short) (0.5F + 4096.0F * src[a].x);
                *s++ = (short) (0.5F + 4096.0F * src[a].y);
                *s++ = (short) (0.5F + 4096.0F * src[a].z);
            }
            break;
        }
        
        // nv todo: V4_32, V4_16
        
        default:
            PDDIASSERT(0);
        break;
    }
}

void ps2VertexList::WriteComponent(VifStream& vif, pddiVector2* src, int count, unsigned startAddr, VIF::UnpackFormat format)
{
    switch(format)
    {
        case VIF::V2_32:
        {
            vif.StMask(0xffffffa0); // fill Z component with VIF1_C0 (1.0)
            vif.Unpack(startAddr, count, VIF::mask_V2_32, src, VIF::TopsRelative);
            break;
        }
        
        // nv todo: V3_32, V4_32, V3_16, V4_16

        default:
            PDDIASSERT(0);
        break;
    }
}

void ps2VertexList::WriteComponent(VifStream& vif, pddiColour* src, int count, unsigned startAddr, VIF::UnpackFormat format, bool shift)
{
    switch(format)
    {
        case VIF::V4_8:
        {
            vif.StMask(0xffffffff);
            pddiColour* v = (pddiColour*)vif.Unpack(startAddr, count, VIF::V4_8, NULL, VIF::TopsRelative);
            if (shift)
            {
                for(int i=0; i < count; i++)
                {
                    v[i].Set(src[i].Blue()>>1, src[i].Green()>>1, src[i].Red()>>1, src[i].Alpha()>>1);    // swizzle colours
                }
            }
            else
            {
                for(int i=0; i < count; i++)
                {
                    v[i].Set(src[i].Blue(), src[i].Green(), src[i].Red(), src[i].Alpha()>>1);    // swizzle colours
                }
            }
            break;
        }
        
        case VIF::V4_5:
        {
            vif.StMask(0xffffffff);
            unsigned short* v = (unsigned short*)vif.Unpack(startAddr, count, VIF::V4_5, NULL, VIF::TopsRelative);
            for(int i=0; i < count; i++)
            {
                v[i] = UTIL::PackColour16(src[i]);   // nv todo: swizzle?
            }
            break;
        }

        default:
            PDDIASSERT(0);
        break;
    }
}

void ps2VertexList::WritePositions(VifStream& vif, Position* src, int count, unsigned startAddr)
{
    vif.StMask(0xffffff80); // fill W component with VIF1_C0 (1.0)
    vif.Unpack(startAddr, count, VIF::mask_V3_32, src, VIF::TopsRelative);
}

void ps2VertexList::WriteMatrixIndices(VifStream& vif, MatrixIndices* src, int count, unsigned startAddr, unsigned matrixCount)
{

    // this offset is the same as the code in ps2MatrixPalette!
    unsigned offset = 1024 - ((matrixCount * 4) + 1);
    // If this in a one bone primgroup don't offset the RLE length!
    unsigned rleoffset = (skinWeights == NULL) ? 0 : offset; 

    vif.StMod(VIF::Offset); // enable addition decompression write
    vif.StRow(offset, rleoffset, rleoffset, rleoffset);
    vif.Unpack(startAddr, count, VIF::V4_8, src, VIF::TopsRelative);
    vif.StMod(VIF::NoDecomp);  // disable addition decompression write
}

void ps2VertexList::WriteSkinWeights(VifStream& vif, SkinWeights* src, int count, unsigned startAddr)
{
    vif.StMask(0xffffffff);
    vif.Unpack(startAddr, count, VIF::V4_16, src, VIF::TopsRelative);
}

void ps2VertexList::QuadPartitionVU(ps2VertexList::VUMemDescription* desc, ps2VertexList::VUMemLayout* layout)
{
    PDDIASSERT(desc->availableMem > 0);

    unsigned bufferSize = (desc->availableMem - (1 + desc->nMatrices*4)) / 2;
    layout->inputAddress[0] = 0;
    layout->inputVertexAddress[0] = layout->inputAddress[0] + desc->inputHeaderSize;
    layout->inputAddress[1] = bufferSize;
    layout->inputVertexAddress[1] = layout->inputAddress[1] + desc->inputHeaderSize;
    layout->scratchAreaAddress = layout->inputAddress[1] + bufferSize;
    layout->base = layout->inputAddress[0];
    layout->offset = layout->inputAddress[1];
    layout->matrixAreaAddress = 1024; // Never used MATRIX_PALETTE_VU1_ADDRESS;

    unsigned vertexSize = desc->inputVertexSize+desc->outputVertexSize;
    unsigned headerSize = desc->inputHeaderSize + desc->outputHeaderSize;
    layout->nVerticesPerBuffer = (bufferSize - headerSize) / vertexSize;
    if(!desc->tristrip)
    {
        layout->nVerticesPerBuffer -= (layout->nVerticesPerBuffer % 3);
    }
    PDDIASSERT(layout->nVerticesPerBuffer >= 3);

    layout->outputAddress[0] = layout->inputAddress[0] + desc->inputHeaderSize + (layout->nVerticesPerBuffer * desc->inputVertexSize);
    layout->outputAddress[1] = layout->inputAddress[1] + desc->inputHeaderSize + (layout->nVerticesPerBuffer * desc->inputVertexSize);
}


static void Dump_VUMemLayout(ps2VertexList::VUMemLayout* layout)
{
    scePrintf(  "base               = 0x%x (%d)\n"
                "offset             = 0x%x (%d)\n"
                "nVerticesPerBuffer = %d\n"
                "scratchAreaAddress = 0x%x (%d)\n"
                "matrixAreaAddress  = 0x%x (%d)\n"
                "inputAddress[0]    = 0x%x (%d)\n"
                "inputVertex[0]     = 0x%x (%d)\n"
                "outputAddress[0]   = 0x%x (%d)\n"
                "inputAddress[1]    = 0x%x (%d)\n"
                "inputVertex[1]     = 0x%x (%d)\n"
                "outputAddress[1]   = 0x%x (%d)\n",
                layout->base, layout->base, layout->offset, layout->offset,
                layout->nVerticesPerBuffer,
                layout->scratchAreaAddress, layout->scratchAreaAddress, layout->matrixAreaAddress, layout->matrixAreaAddress,
                layout->inputAddress[0], layout->inputAddress[0], layout->inputVertexAddress[0], layout->inputVertexAddress[0],
                layout->outputAddress[0], layout->outputAddress[0],
                layout->inputAddress[1], layout->inputAddress[1], layout->inputVertexAddress[1], layout->inputVertexAddress[1],
                layout->outputAddress[1], layout->outputAddress[1] );
}

void ps2VertexList::DeIndex()
{
    if(position)
    {
        Position* di_position = (Position*)EE::malloc_temp(sizeof(Position) * nIndices);
        for(int i=0; i < nIndices; i++)
        {
            di_position[i] = position[indices[i]];
        }
        EE::free_temp(position);
        position = di_position;
    }
    
    if(normal)
    {
        pddiVector* di_normal = (pddiVector*)EE::malloc_temp(sizeof(pddiVector) * nIndices);
        for(int i=0; i < nIndices; i++)
        {
            di_normal[i] = normal[indices[i]];
        }
        EE::free_temp(normal);
        normal = di_normal;
    }
    
    if(colour)
    {
        pddiColour* di_colour = (pddiColour*)EE::malloc_temp(sizeof(pddiColour) * nIndices);
        for(int i=0; i < nIndices; i++)
        {
            di_colour[i] = colour[indices[i]];
        }
        EE::free_temp(colour);
        colour = di_colour;
    }

    for(int uvChannel=0; uvChannel < MAX_UV_CHANNELS; uvChannel++)
    {
        if(st[uvChannel])
        {
            pddiVector2* di_uv = (pddiVector2*)EE::malloc_temp(sizeof(pddiVector2) * nIndices);
            for(int i=0; i < nIndices; i++)
            {
                di_uv[i] = st[uvChannel][indices[i]];
            }
            EE::free_temp(st[uvChannel]);
            st[uvChannel] = di_uv;
        }
    }
    
    if(matrixIndices)
    {
        MatrixIndices* di_indices = (MatrixIndices*)EE::malloc_temp(sizeof(MatrixIndices) * nIndices);
        for(int i=0; i < nIndices; i++)
        {
            di_indices[i] = matrixIndices[indices[i]];
        }
        EE::free_temp(matrixIndices);
        matrixIndices = di_indices;
    }
    
    if(skinWeights)
    {
        SkinWeights* di_weights = (SkinWeights*)EE::malloc_temp(sizeof(SkinWeights) * nIndices);
        for(int i=0; i < nIndices; i++)
        {
            di_weights[i] = skinWeights[indices[i]];
        }
        EE::free_temp(skinWeights);
        skinWeights = di_weights;
    }

    EE::free_temp(indices);
    indices = NULL;
    nIndices = 0;
}

void ps2VertexList::ComputeDMASize(pddiPrimBufferDesc& desc, VUMemLayout& vuLayout, unsigned& sizeInBytes, unsigned& verticesPerPacket)
{
    unsigned format = desc.GetVertexFormat();
    unsigned nComponent = ComponentCount(format);
    
    int nTexCoord = format & 0xf;

    bool skinning = ((format & PDDI_V_INDICES) == PDDI_V_INDICES);

    unsigned skinningScratch = SKINNING_SCRATCH;
    unsigned clippingScratch = 1024 - TOP_OF_CLIPPER;  // from quad-vu/regmap.h
    unsigned multitextureScratch = (1024 - TOP_OF_GS_STATE) - clippingScratch;  

    // skins aren't clipped    
    unsigned scratch = skinning ? skinningScratch : clippingScratch;

    // assume multitexture shader if there are multiple uv's
    if(nTexCoord > 1)
    {
        scratch += multitextureScratch;
    }

    VUMemDescription vuDesc;
    vuDesc.availableMem = 1024 - scratch;
    vuDesc.inputVertexSize = nComponent;
    vuDesc.inputHeaderSize = sizeof(VU1_VertexListHeader) / 16;
    vuDesc.outputVertexSize = 3;    // nv todo:  add support for more than 3 component output
    vuDesc.outputHeaderSize = 1;    // gif tag
    vuDesc.nMatrices = skinning ? desc.GetMatrixCount() : 0;
    vuDesc.tristrip = (desc.GetPrimType() == PDDI_PRIM_TRISTRIP);

    QuadPartitionVU(&vuDesc, &vuLayout);
//    Dump_VUMemLayout(&vuLayout);

    unsigned nVertices = desc.GetVertexCount();
    verticesPerPacket = UTIL::Min(nVertices, vuLayout.nVerticesPerBuffer);

    unsigned nPacket = 0;
    if(nVertices <= verticesPerPacket)
    {
        nPacket = 1;
    }
    else
    if(desc.GetPrimType() == PDDI_PRIM_TRISTRIP)
    {
        // pad strips for duplicate vertices to restart tri-strips across buffers
        // needed for the clipper
        nPacket = (nVertices - verticesPerPacket) / (verticesPerPacket - 2) + 2;
        int duplicateVertices = (nPacket-1)*2;
        nVertices += duplicateVertices;
    }
    else
    {
        nPacket = (nVertices / verticesPerPacket) + 1;
    }
    
    unsigned dmaBufferSize = 0;
    dmaBufferSize = sizeof(VertexBufferHeader);
    dmaBufferSize += sizeof(PacketHeader)*nPacket;
    dmaBufferSize += sizeof(PacketTail)*nPacket;
    dmaBufferSize += sizeof(pddiVector2)*nVertices*nTexCoord;
    dmaBufferSize += sizeof(ComponentHeader)*nPacket*nTexCoord;
    if(format & PDDI_V_POSITION)
    {
        dmaBufferSize += sizeof(Position)*nVertices + sizeof(ComponentHeader)*nPacket;
    }
    if(format & PDDI_V_COLOUR)
    {
#ifndef PS2_FORCE_16BIT_VERTEX_COLOURS
        dmaBufferSize += sizeof(pddiColour)*nVertices + sizeof(ComponentHeader)*nPacket;
#else
        int packetPad = 0;
        int endPad = 0;
        if (nPacket > 1)
        {
            if (verticesPerPacket & 1) packetPad = 2;
            if ((nVertices % verticesPerPacket) & 1) endPad = 2;
        }
        else
        {
            if (nVertices & 1) endPad = 2;
        }
                            
        dmaBufferSize += sizeof(short)*nVertices + sizeof(ComponentHeader)*nPacket;
        dmaBufferSize += nPacket*packetPad + endPad;
#endif
    }
    if(format & PDDI_V_NORMAL)
    {
        if(format & PDDI_V_INDICES)
        {
            int packetPad = 0;
            int endPad = 0;
            if (nPacket > 1)
            {
                if (verticesPerPacket & 1) packetPad = 2;
                if ((nVertices % verticesPerPacket) & 1) endPad = 2;
            }
            else
            {
                if (nVertices & 1) endPad = 2;
            }
                                
            dmaBufferSize += sizeof(short)*nVertices*3 + sizeof(ComponentHeader)*nPacket;
            dmaBufferSize += nPacket*packetPad + endPad;
        }
        else
        {
            dmaBufferSize += sizeof(pddiVector)*nVertices + sizeof(ComponentHeader)*nPacket;
        }
    }
    if(format & PDDI_V_INDICES)
    {
        dmaBufferSize += sizeof(MatrixIndices)*nVertices + sizeof(MatrixIndexComponentHeader)*nPacket;
    }
    if(format & PDDI_V_WEIGHTS)
    {
        dmaBufferSize += sizeof(SkinWeights)*nVertices + sizeof(ComponentHeader)*nPacket;
    }

    dmaBufferSize = ((dmaBufferSize+15) & ~15); // pad to 128 bits
    sizeInBytes = dmaBufferSize;
    
    desc.SetVertexCount(nVertices);
    //scePrintf("ComputeDMASize:\n\tsizeInBytes=%d\n\tnPacket=%d\n\tverticesPerPacket=%d\n\tnVertices=%d\n", sizeInBytes, nPacket, verticesPerPacket, nVertices);
}


// use this one instead of SHADER::primTypeTable[] so Toollib can compile this
static const unsigned primTypeConvert[] =
{
    0x03, // PDDI_PRIM_TRIANGLES
    0x04, // PDDI_PRIM_TRISTRIP
    0x01, // PDDI_PRIM_LINES
    0x02, // PDDI_PRIM_LINESTRIP
    0x00  // PDDI_PRIM_POINT
};

void ps2VertexList::WritePacketHeader(VifStream& vif, int nVer)
{
    VU1_VertexListHeader vlHeader;

    memset(&vlHeader.gifTag, 0, 16);
    vlHeader.gifTag.EOP = 1;
    vlHeader.gifTag.PRE = 1;
    vlHeader.gifTag.FLG = GIF::Packed;

    vlHeader.gifTag.NREG = 3;
    vlHeader.gifTag.REGS0 = 0x02; // ST (NOP = 0x0f)
    vlHeader.gifTag.REGS1 = 0x01; // RGBA
    vlHeader.gifTag.REGS2 = 0x05; // XYZF2

    // Only the prim type is specified here because the rest of the PRIM register
    // is ignored because GS_PRMODECONT=0 (see ps2SimpleShader::MergeGSContext()).
    vlHeader.gifTag.PRIM = primTypeConvert[primType];

    vlHeader.flags.tristrip = (primType == PDDI_PRIM_TRISTRIP);
    vlHeader.flags.skin = ((vertexFormat & PDDI_V_INDICES) == PDDI_V_INDICES);
    vlHeader.SetVertexCount(nVer);
    vlHeader.outputOffset = vuLayout.outputAddress[0];
    vlHeader.scratchAddr = vuLayout.scratchAreaAddress;
    vif.Unpack(0, sizeof(VU1_VertexListHeader)/16, VIF::V4_32, &vlHeader, VIF::TopsRelative);
    vif.StCycl(1, nComponent);
}

void* ps2VertexList::CreateDMABuffer(pddiPrimBufferDesc& desc, void* dmaBuffer, unsigned& dmaBufferSize)
{
    if(indices)
    {
        unsigned nVertices = desc.GetIndexCount();
        DeIndex();
        desc.SetVertexCount(nVertices);
        desc.SetIndexCount(0);
    }

    unsigned verticesPerPacket = 0;

    if(!dmaBuffer)
    {
        ComputeDMASize(desc, vuLayout, dmaBufferSize, verticesPerPacket);
//        scePrintf("dmaBufferSize=%d bytes\n", dmaBufferSize);
        PDDIASSERT((dmaBufferSize/16 < 65536) && "PDDI ERROR: PS2 Prim DMA buffer to large (too many vertices) Sorry!\n");
        dmaBuffer = EE::malloc_dma(dmaBufferSize);
    }

    unsigned nVertices = desc.GetVertexCount();

    memset(dmaBuffer, 0, dmaBufferSize);

    VifStream vif(dmaBuffer);

    //vif.FlushA_Safe();  
    vif.FlushA();  

    vif.Base(vuLayout.base);
    vif.Offset(vuLayout.offset);
    vif.StCol(0x3f800000, 0x00000000, 0x0000000, 0x00000000);  // (1.0, 0, 0.0, 0.0)

    unsigned verticesRemaining = nVertices;
    unsigned currentVertex = 0;
    bool firstPacket = true;
    
    unsigned startAddr = sizeof(VU1_VertexListHeader) / 16;

    // halve colours on textured objects due to stupid PS2 texture modulation equation
    bool shiftColours = (0 != (desc.GetVertexFormat() & 0xf));

    currentVertex = 0;
    while(verticesRemaining)
    {
        unsigned verticesThisPacket = UTIL::Min(verticesRemaining, verticesPerPacket);
        // write packet header
        WritePacketHeader(vif, verticesThisPacket);
        // write vertices into packet
        unsigned offset = 0;
        for(int i=0; i < MAX_UV_CHANNELS; i++)
        {
            if(st[i])
            {
                WriteComponent(vif, &st[i][currentVertex], verticesThisPacket, startAddr + offset, stFormat[i]);
                offset++;
            }
        }

        if(colour)
        {
            WriteComponent(vif, &colour[currentVertex], verticesThisPacket, startAddr + offset, colourFormat, shiftColours);
            offset++;
        }

        if(normal)
        {
            WriteComponent(vif, &normal[currentVertex], verticesThisPacket, startAddr + offset, normalFormat);
            offset++;
        }

        if(position)
        {
            WritePositions(vif, &position[currentVertex], verticesThisPacket, startAddr + offset);
            offset++;
        }

        if(matrixIndices)
        {
            if (skinWeights == NULL)
            {
                ComputeOneBoneRLE(&matrixIndices[currentVertex], verticesThisPacket);
            }

            WriteMatrixIndices(vif, &matrixIndices[currentVertex], verticesThisPacket, startAddr + offset, desc.GetMatrixCount());
            offset++;
        }

        if(skinWeights)
        {
            WriteSkinWeights(vif, &skinWeights[currentVertex], verticesThisPacket, startAddr + offset);
            offset++;
        }
        
        // write packet tail
        vif.StCycl(1,1);
        if(firstPacket)
        {
            firstPacket = false;
            programAddress = vif.GetAddress();
            vif.MsCal(0);
        }
        else
        {
            vif.MsCnt();
        }

        //vif.Nop(); - amb todo < add this back in!

        currentVertex += verticesThisPacket;

        int windBack = 0;
        if(desc.GetPrimType() == PDDI_PRIM_TRISTRIP) windBack = 2;
        else if(desc.GetPrimType() == PDDI_PRIM_LINESTRIP) windBack = 1;
        currentVertex -= windBack;  // wind back the input buffer to re-start the strip in the packet

        verticesRemaining -= verticesThisPacket;
    }

//    scePrintf("done! (bytesWritten=%d)\n", vif.GetOffset());
    return dmaBuffer;
}


//------------------------------------------------------------------------------
void ps2VertexList::ComputeOneBoneRLE(MatrixIndices *mi, unsigned packetLen)
{
    //static float total = 0.0F;
    //static float runs = 0.0F;

    unsigned vcount = 0;
    unsigned rlestart;
    while (vcount < packetLen)
    {
        //++runs;
        rlestart = vcount;
        do
        {
            mi[vcount].i1 = 0;
            mi[vcount].i2 = 0;
            mi[vcount].i3 = 0;
            ++vcount;
        } while ((mi[vcount].i0 == mi[rlestart].i0) && (vcount < packetLen));
        mi[rlestart].i1 = (unsigned char) ((vcount - rlestart) - 1);
        mi[rlestart].i2 = 0;
        mi[rlestart].i3 = 0;

        //total += (float)mi[rlestart].i1;
    }
//    printf("RLE Average Count: %.3f\n", total/runs);
}


//------------------------------------------------------------------------------
ps2PrimBuffer::ps2PrimBuffer(ps2Context* c, pddiPrimBufferDesc* d) : desc(*d), context(c)
{
    // No support yet for lines and line strips in prim buffers.
    // If you want this, talk to Neall.
    PDDIASSERT( (desc.GetPrimType() == PDDI_PRIM_TRIANGLES) || (desc.GetPrimType() == PDDI_PRIM_TRISTRIP) );

#ifndef TOOLLIB
    context->ADD_STAT(PDDI_STAT_BUFFERED_COUNT, 1);
#endif

    unsigned format = desc.GetVertexFormat();

    format |= PDDI_V_POSITION;  // hack to support older art that doesn't set the position bit

    if((format & 0xf) == 0) // hack to force at least one set of uvs
    {
        format |= 1;
    }
    
    if(!(format & PDDI_V_COLOUR) && !(format & PDDI_V_NORMAL))  // hack to force one of colours or normals
    {
        format |= PDDI_V_COLOUR;
    }
    
    desc.SetVertexFormat(format);

    locked = false;
    inputVertices = NULL;
    dmaBufferSize = 0;
    dmaBuffer = NULL;
    programAddress = 0;
    currentVertex = 0;
    scratchAreaAddress = 0;
    skinningCodeAddress = 0;
}

ps2PrimBuffer::~ps2PrimBuffer()
{
    PDDIASSERT(!inputVertices);

    if(dmaBuffer)
    {
        EE::free_dma(dmaBuffer);
        dmaBuffer = NULL;
    }

#ifndef TOOLLIB
    context->ADD_STAT(PDDI_STAT_BUFFERED_COUNT, -1);
    context->ADD_STAT(PDDI_STAT_BUFFERED_ALLOC, -(float)dmaBufferSize / 1024.0f);
#endif
}


void* ps2PrimBuffer::LockMemImage(unsigned memImageLength)
{
    PDDIASSERT(desc.GetMemoryImaged() == true);

    ps2VertexList::VUMemLayout layout;
    unsigned verticesPerPacket;
    ps2VertexList::ComputeDMASize(desc, layout, dmaBufferSize, verticesPerPacket);

    scratchAreaAddress = layout.scratchAreaAddress;

    if(desc.GetVertexFormat() & PDDI_V_INDICES)
    {
        ChooseSkinningAddress();
    }

    PDDIASSERT(dmaBufferSize == memImageLength && "PDDI ERROR:  Memory image size != Memory image file size.");
    PDDIASSERT((dmaBufferSize/16 < 65536) && "PDDI ERROR: PS2 Prim DMA buffer to large (too many vertices) Sorry!\n");

    if(dmaBuffer)
    {
        EE::free_dma(dmaBuffer);
    }

    dmaBuffer = EE::malloc_dma(dmaBufferSize);

    #ifndef TOOLLIB
    context->ADD_STAT(PDDI_STAT_BUFFERED_ALLOC, (float)dmaBufferSize / 1024.0f);
    #endif

    return dmaBuffer;
}

void ps2PrimBuffer::UnlockMemImage()
{
    programAddress += ((unsigned)dmaBuffer / 4);
}

void ps2PrimBuffer::SetMemImageParam(unsigned param, unsigned value)
{
    programAddress = (unsigned*)value;
}
    
void ps2PrimBuffer::SetIndices(unsigned short* indices, int count)
{
    PDDIASSERT(!desc.GetMemoryImaged());
    PDDIASSERT(inputVertices);
    inputVertices->SetIndices(indices, count);
}

pddiPrimBufferStream* ps2PrimBuffer::Lock()
{
    PDDIASSERT(!desc.GetMemoryImaged());
    PDDIASSERT(!locked && "PDDI_ERROR: Unbalanced pddiPrimBuffer::Lock()/Unlock()!");
    if(!inputVertices)
    {
        void* inputVerticesMem = EE::malloc_temp(sizeof(ps2VertexList));
        inputVertices = new(inputVerticesMem) ps2VertexList(desc);

        #ifdef PS2_NON_MEMORY_IMAGE_WARNING
            scePrintf("PDDI WARNING: Loading speed penalty - Loading non-memory imaged meshes.\n");
        #endif
    }
    
    currentVertex = 0;
    locked = true;
    return this;
}

void ps2PrimBuffer::Unlock(pddiPrimBufferStream* stream)
{
    PDDIASSERT(stream == this && "PDDI ERROR: pddiPrimBuffer::Unlock() - illegal stream!");
    PDDIASSERT(locked && "PDDI ERROR: Unbalanced pddiPrimBuffer::UnLock()/Lock()!");
    currentVertex = 0;
    locked = false;
};

void ps2PrimBuffer::ChooseSkinningAddress()
{    
#ifndef TOOLLIB
    // Pick VU skinning code
    unsigned format = desc.GetVertexFormat();
    if (format & PDDI_V_NORMAL)
    {
        if (format & PDDI_V_WEIGHTS) skinningCodeAddress = VU1_SKINBLEND_NT;
        else                         skinningCodeAddress = VU1_SKINBLEND1B_NT;
    }
    else
    {
        if (format & PDDI_V_WEIGHTS) skinningCodeAddress = VU1_SKINBLEND_CT;
        else                         skinningCodeAddress = VU1_SKINBLEND1B_CT;
    }
#endif
}

void ps2PrimBuffer::Finalize()
{
    if(!inputVertices)
    {
        return;
    }
    
    PDDIASSERT(!locked && "PDDI ERROR:  pddiPrimBuffer::Finalize() - Unlock before finalizing.");

    unsigned a;
    if (inputVertices->skinWeights != NULL)
    {
        for (a = 0; a < desc.GetVertexCount(); a++)
        {
            // Compute the weight count for this vertex
            unsigned weightcount = 0;
            if      (inputVertices->skinWeights[a].w3 > 0) weightcount = 3;
            else if (inputVertices->skinWeights[a].w2 > 0) weightcount = 2;
            else if (inputVertices->skinWeights[a].w1 > 0) weightcount = 1;

            // Sneak the bone count into the lower two bits of the position Z
            unsigned *p = (unsigned *) (&inputVertices->position[a]);
            unsigned pz = p[2];
            pz &= ~0x03;
            pz |= weightcount;
            p[2] = pz;

            // Skinning happens from Bone4->Bone1.  
            // Put the first active bone's matrix index into Bone4's index slot.
            // This might not change the index in bone4
            if      (weightcount == 2) inputVertices->matrixIndices[a].i3 = inputVertices->matrixIndices[a].i2;
            else if (weightcount == 1) inputVertices->matrixIndices[a].i3 = inputVertices->matrixIndices[a].i1;
            else if (weightcount == 0) inputVertices->matrixIndices[a].i3 = inputVertices->matrixIndices[a].i0;
        }

    }

    if (inputVertices->matrixIndices != NULL)
    {
        ChooseSkinningAddress();
    }

    unsigned nVertices = 0;
    dmaBuffer = inputVertices->CreateDMABuffer(desc, dmaBuffer, dmaBufferSize);
    
    #ifndef TOOLLIB
    context->ADD_STAT(PDDI_STAT_BUFFERED_ALLOC, (float)dmaBufferSize / 1024.0f);
    #endif

    programAddress = inputVertices->GetProgramAddress();    
    
    scratchAreaAddress = inputVertices->GetScratchAddress();
    currentVertex = 0;
    
    inputVertices->~ps2VertexList();  // since it was allocated with placement new
    EE::free_temp(inputVertices);
    
    inputVertices = NULL;
}

