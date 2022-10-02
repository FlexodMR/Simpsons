/*===========================================================================
   ps2prim.hpp
   15-Nov-00 Created by Neall

   PS2 primitive rendering code

   Copyright (c)2000  Radical Entertainment, Inc.
   All rights reserved.
===========================================================================*/

#ifndef _PS2PRIM_HPP
#define _PS2PRIM_HPP

#ifndef TOOLLIB
    #include <pddi/ps2/ps2context.hpp>
    #include <pddi/ps2/mfifo.hpp>
#else
    #include "tlPDDI.hpp"
    class ps2Context;
#endif

#include <pddi/ps2/packet.hpp>
#include <pddi/pddienum.hpp>
#include <pddi/ps2/ps2debug.hpp>


// change this every time the format of the memory image changes
const int PS2_MEM_IMAGE_VERSION = 0x00100002;

// how many matrices are reserved for skinning
const int NUM_SKINNING_MATRICES = 32;

//--------------------------------------------------------------------
// This is uploaded to the begining of each vertex list
// must be a multiple of 16 bytes
class VU1_VertexListHeader
{
public:
    VU1_VertexListHeader()
    {
        nVer = 0;
        flags.tristrip = 0;
        flags.skin = 0;
        flags.unused = 0;
        outputOffset = 0;
        scratchAddr = 0;
        gifTag.PRE = 1;
    }

    void SetVertexCount(const int count)
    {
        gifTag.NLOOP = count;
        nVer = count;
    }

    void SetPrimEnable(const bool enable)
    {
        gifTag.PRE = enable;
    }

    void Dump();

    unsigned nVer;               // vertex count
    struct
    {
        unsigned tristrip:1;     // 0: not tristripped  1: tristripped
        unsigned skin:1;         // 0: not skinned      1: skinned
        unsigned unused:30;
    } flags;
    unsigned outputOffset;       // offset of output buffer relative to input buffer
    unsigned scratchAddr;        // address of scratch buffer

    GIF::Tag gifTag;
    // nVer input vertices go here
};   

//-------------------------------------------------------------------------
// helper class used to build ps2PrimBuffer DMA packets
class ps2VertexList
{
public:
    ps2VertexList(pddiPrimBufferDesc& desc);
    ~ps2VertexList();

    static int VertsToPrims(const pddiPrimType type, const int verts)
    {
        switch(type)
        {
            case PDDI_PRIM_TRIANGLES: return verts / 3;
            case PDDI_PRIM_TRISTRIP:  return verts - 2;
            case PDDI_PRIM_LINES:     return verts / 2;
            case PDDI_PRIM_LINESTRIP: return verts - 1;
            case PDDI_PRIM_POINTS:    return verts;
            default:                  return 0;
       }
       return 0;
    }

    // Returns pointer to dmaBuffer.  If input buffer is NULL, it will allocate a new buffer.
    void* CreateDMABuffer(pddiPrimBufferDesc& desc, void* dmaBuffer, unsigned& size);
    unsigned* GetProgramAddress() { return programAddress; }
    unsigned GetScratchAddress()  { return vuLayout.scratchAreaAddress; }

    void SetIndices(unsigned short* indices, int count);

    struct Position
    {
        void Set(float X, float Y, float Z)
        {
            x = X;
            y = Y;
            z = Z;
        }
            
        void operator=(pddiVector& v)
        {
            Set(v.x, v.y, v.z);
        }
        
        float x;
        float y;
        float z;
    };

    struct VUMemDescription
    {
        VUMemDescription()
        {
            availableMem = 0;
            inputVertexSize = 3;
            inputHeaderSize = 3;
            outputVertexSize = 3;
            outputHeaderSize = 1;
            nMatrices = 0;
            tristrip = false;
        }
        unsigned availableMem;      // quadwords (max: 1024 on VU1, 256 on VU0)
        unsigned inputVertexSize;   // quadwords to describe an input vertex
        unsigned inputHeaderSize;   // quadwords in the input header (vertex count, etc)
        unsigned outputVertexSize;  // quadwords to describe an output vertex
        unsigned outputHeaderSize;  // quadwords in the output header (giftag, etc)
        unsigned nMatrices;         // number of skinning matrices to reserve
        bool tristrip;              // true if buffer is used for tristrips
    };

    struct VUMemLayout
    {
        unsigned base;                   // base register (same as inputAddress[0])
        unsigned offset;                 // buffer size (same as inputAddress[1])
        unsigned nVerticesPerBuffer;     // um, the number of vertices per buffer
        unsigned scratchAreaAddress;     // first address after the last output vertex of buffer 1
        unsigned matrixAreaAddress;      // address of the first matrix
        unsigned inputAddress[2];        // buffer 0, 1 input addresses
        unsigned inputVertexAddress[2];  // buffer 0, 1, first vertex addresses  
        unsigned outputAddress[2];       // buffer 0, 1 output addresses
    };

    // static so we can do this work for memory images, or the streamed renderer
    static void QuadPartitionVU(VUMemDescription* desc, VUMemLayout* layout);
    // may modify desc.vertexCount to account for tri-strip restarts
    static void ComputeDMASize(pddiPrimBufferDesc& desc, VUMemLayout& vuLayout, unsigned& sizeInBytes, unsigned& verticesPerPacket);

private:
    friend class ps2PrimBuffer;

    enum uvConst { MAX_UV_CHANNELS = 4 };

    struct MatrixIndices
    {
        unsigned char i0;
        unsigned char i1;
        unsigned char i2;
        unsigned char i3;
    };
    
    struct SkinWeights
    {
        void Set(float a, float b, float c)
        {
            float d = 1.0f - (a + b + c);
            
            // This code allows the vertex blending to sum before scaling to increase speed
            float b1 = 0.0F, b2 = 0.F, b3 = 0.0F, b4 = 0.0F;
            if (c >= 0.00001F) b4 = d / c;
            if (b >= 0.00001F) b3 = c / b;
            if (a >= 0.00001F) b2 = b / a;
            b1 = a;    

            // convert weights to fixed point
            w0 = (short)(0.5F + b1 * 32767.0F);
            w1 = (short)(0.5F + b2 * 32767.0F);
            w2 = (short)(0.5F + b3 * 32767.0F);
            w3 = (short)(0.5F + b4 * 32767.0F);
        }
        short w0;
        short w1;
        short w2;
        short w3;
    };

    pddiPrimType primType;
    unsigned vertexFormat;
        
    int nComponent;
    VIF::UnpackFormat positionFormat;
    Position* position;
    VIF::UnpackFormat normalFormat;
    pddiVector* normal;
    VIF::UnpackFormat colourFormat;
    pddiColour* colour;
    VIF::UnpackFormat stFormat[MAX_UV_CHANNELS];
    pddiVector2* st[MAX_UV_CHANNELS];
    MatrixIndices* matrixIndices;
    SkinWeights* skinWeights;

    int nIndices;
    unsigned short* indices;

    VUMemLayout vuLayout;

    unsigned* programAddress;
        
    void DeIndex();

    void WritePacketHeader(VifStream& vif, int nVer);

    void WriteComponent(VifStream& vif, pddiVector* src, int count, unsigned startAddr, VIF::UnpackFormat format);
    void WriteComponent(VifStream& vif, pddiVector2* src, int count, unsigned startAddr, VIF::UnpackFormat format);
    void WriteComponent(VifStream& vif, pddiColour* src, int count, unsigned startAddr, VIF::UnpackFormat format, bool shift);

    void WritePositions(VifStream& vif, Position* src, int count, unsigned startAddr);
    void WriteMatrixIndices(VifStream& vif, MatrixIndices* src, int count, unsigned startAddr, unsigned matrixCount);
    void WriteSkinWeights(VifStream& vif, SkinWeights* src, int count, unsigned startAddr);
    void ComputeOneBoneRLE(MatrixIndices *indices, unsigned packetLen);
};

//-------------------------------------------------------------------------
class ps2PrimBuffer : public pddiPrimBuffer, public pddiPrimBufferStream
{
private:
    void NextVertex()
    {
        PDDIASSERT(inputVertices);
        PDDIASSERT(currentVertex < desc.GetVertexCount());
        currentVertex++;
    }

public:
    ps2PrimBuffer(ps2Context* context, pddiPrimBufferDesc* desc);
    ps2PrimBuffer::~ps2PrimBuffer();

    // ps2PrimBuffer Interface
    int GetPrimCount()         { return ps2VertexList::VertsToPrims(desc.GetPrimType(), desc.GetVertexCount()); }
    int GetVertexCount()       { return desc.GetVertexCount(); }
    unsigned GetVertexFormat() { return desc.GetVertexFormat(); }

    // pddiPrimBuffer Interface
    virtual pddiPrimBufferStream* Lock();
    virtual void Unlock(pddiPrimBufferStream* stream);
    virtual void Finalize();
        
    virtual unsigned char* LockIndexBuffer()        { PDDIASSERT(0 && "PDDI ERROR::LockIndexBuffer() not supported on PS2!"); return 0; }
    virtual void UnlockIndexBuffer(int count)       { PDDIASSERT(0 && "PDDI ERROR::UnlockIndexBuffer() not supported on PS2!"); }
    virtual void SetIndices(unsigned short* indices, int count);

    virtual bool CheckMemImageVersion(int version)      { return version == PS2_MEM_IMAGE_VERSION; }
    virtual void* LockMemImage(unsigned memImageLength);
    virtual void UnlockMemImage();
    virtual void SetMemImageParam(unsigned param, unsigned value);
    virtual void SetUsedSize(int size)                  { /* nop */ }

    // for toolib memory imaging code
    inline unsigned GetDMABufferSize() const        { return dmaBufferSize; }
    inline void* GetDMABuffer() const               { return dmaBuffer; }
    inline unsigned GetProgramAddressOffset() const { return (unsigned)programAddress - (unsigned)dmaBuffer; }

    // pddiPrimBufferStream Interface
    virtual void Position(float x, float y, float z)
    {
        PDDIASSERT(desc.GetVertexFormat() & PDDI_V_POSITION);
        inputVertices->position[currentVertex].Set(x, y, z); 
        NextVertex();
    }

    virtual void Normal(float x, float y, float z)
    {
        PDDIASSERT(desc.GetVertexFormat() & PDDI_V_NORMAL);
        inputVertices->normal[currentVertex].Set(x, y, z);
    }
    
    virtual void Colour(pddiColour colour, int channel = 0)
    {
        PDDIASSERT(desc.GetVertexFormat() & PDDI_V_COLOUR);
        inputVertices->colour[currentVertex] = colour;
    }

    virtual void TexCoord4(float s, float t, float u, float v, int channel = 0)
    {
        PDDIASSERT(inputVertices->st[channel]);
        inputVertices->st[channel][currentVertex].Set(s, t);
    }
    virtual void TexCoord1(float s, int channel = 0)
    {
        ps2PrimBuffer::TexCoord4(s, 0.0f, 0.0f, 0.0f, channel);
    }
    virtual void TexCoord2(float s, float t, int channel = 0)
    {
        ps2PrimBuffer::TexCoord4(s, t, 0.0f, 0.0f, channel);
    }
    virtual void TexCoord3(float s, float t, float u, int channel = 0)
    {
        ps2PrimBuffer::TexCoord4(s, t, u, 0.0f, channel);
    }

    virtual void Specular(pddiColour colour) { /* nop */ } // not implemented on PS2

    virtual void SkinIndices(unsigned a, unsigned b = 0, unsigned c = 0, unsigned d = 0)
    {
        // The offset to the matricies is added with the vif1_row register at upload time
        PDDIASSERT(inputVertices->matrixIndices);
        inputVertices->matrixIndices[currentVertex].i0 = a*4;
        inputVertices->matrixIndices[currentVertex].i1 = b*4;
        inputVertices->matrixIndices[currentVertex].i2 = c*4;
        inputVertices->matrixIndices[currentVertex].i3 = d*4;
    }

    virtual void SkinWeights(float a, float b = 0.0f, float c = 0.0f)
    {
        PDDIASSERT(inputVertices->skinWeights);
        inputVertices->skinWeights[currentVertex].Set(a, b, c);
    }

    virtual void Vertex(pddiVector* v, pddiColour c)
    {
        PDDIASSERT(desc.GetVertexFormat() & PDDI_V_C);
        inputVertices->position[currentVertex] = *v;
        inputVertices->colour[currentVertex] = c;
        NextVertex();
    }
    
    virtual void Vertex(pddiVector* v, pddiVector* n)
    {
        PDDIASSERT(desc.GetVertexFormat() & PDDI_V_N);
        inputVertices->position[currentVertex] = *v;
        inputVertices->normal[currentVertex] = *n;
        NextVertex();
    }
    
    virtual void Vertex(pddiVector* v, pddiVector2* uv)
    {
        inputVertices->position[currentVertex] = *v;
        inputVertices->st[0][currentVertex].Set(uv->u, uv->v);
        NextVertex();
    }
    
    virtual void Vertex(pddiVector* v, pddiColour c, pddiVector2* uv)
    {
        inputVertices->position[currentVertex] = *v;
        inputVertices->colour[currentVertex] = c;
        inputVertices->st[0][currentVertex].Set(uv->u, uv->v);
        NextVertex();
    }

    virtual void Vertex(pddiVector* v, pddiVector* n, pddiVector2* uv)
    {
        inputVertices->position[currentVertex] = *v;
        inputVertices->normal[currentVertex] = *n;
        inputVertices->st[0][currentVertex].Set(uv->u, uv->v);
        NextVertex();
    }

    virtual void Next()
    {
        NextVertex();
    }
    
    inline void SetProgramAddress(unsigned addr)
    {
        PDDIASSERT(programAddress);
        *programAddress = VIF1_SET_MSCAL(addr, 0);
    }

    inline unsigned GetScratchAddress() const           { return scratchAreaAddress; }
    inline unsigned GetSkinningCodeAddress(void) const  { return skinningCodeAddress; }

private:
    pddiPrimBufferDesc desc;
    ps2Context* context;
    bool locked;
    ps2VertexList* inputVertices;
    unsigned currentVertex;

    unsigned dmaBufferSize;
    void* dmaBuffer;
    unsigned* programAddress;
    unsigned scratchAreaAddress;
    unsigned skinningCodeAddress;

    void ChooseSkinningAddress();
};

#endif
