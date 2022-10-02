/*===========================================================================
    File:: tlPS2PrimBuffer.cpp

    Copyright (c) 2001 Radical Entertainment, Inc.  All rights reserved.

===========================================================================*/

#include "tlPS2PrimBuffer.hpp"
#include "pddi/ps2/ps2prim.hpp"
#include "tlPoint.hpp"
#include "tlColour.hpp"
#include "tlUV.hpp"
#include <assert.h>
#include <stdlib.h>

tlPS2PrimBuffer::tlPS2PrimBuffer() : locked(false),
                                                 primbuf(NULL),
                                                 primstream(NULL)
{
}

tlPS2PrimBuffer::~tlPS2PrimBuffer()
{
    delete primbuf;
}

void
tlPS2PrimBuffer::Create(pddiPrimType type, unsigned vertexFormat, int nVertex, int nIndex, int nMatrix)
{
    pddiPrimBufferDesc desc(type, vertexFormat, nVertex, nIndex);
    desc.SetMatrixCount(nMatrix);
    primbuf = new ps2PrimBuffer(NULL, &desc);
}

void
tlPS2PrimBuffer::Lock()
{
    assert(!locked);
    locked = true;

    primstream = primbuf->Lock();
}

void
tlPS2PrimBuffer::Unlock()
{
    assert(locked);
    locked = false;
    primbuf->Unlock(primstream);
    primbuf->Finalize();
}

void
tlPS2PrimBuffer::Coord(const tlPoint& p)
{
    primstream->Coord(p.x, p.y, p.z);
}

void
tlPS2PrimBuffer::Normal(const tlPoint& p)
{
    primstream->Normal(p.x, p.y, p.z);
}

void
tlPS2PrimBuffer::SetNumColours(int numColours)
{
    assert(0 && "PS2 primbuffer code not updated with 2 cbv changes");
}    

void
tlPS2PrimBuffer::Colour(const tlColour& colour, int channel)
{
    assert(0 && "PS2 primbuffer code not updated with 2 cbv changes");
    primstream->Colour(pddiColour((int)colour.ULong()));
}

void
tlPS2PrimBuffer::UV(const tlUV& uv, int channel)
{
    primstream->UV(uv.u, uv.v, channel);
}

void
tlPS2PrimBuffer::SkinIndices(int a, int b, int c, int d)
{
    primstream->SkinIndices(a, b, c, d);
}

void
tlPS2PrimBuffer::SkinWeights(float a, float b, float c)
{
    primstream->SkinWeights(a, b, c);
}

void
tlPS2PrimBuffer::Next()
{
    primstream->Next();
}

void 
tlPS2PrimBuffer::Index(const short& index)
{
    assert(0);
}

unsigned int
tlPS2PrimBuffer::VertexDescriptionSize()
{
    return 0;
}

char*
tlPS2PrimBuffer::VertexDescriptionData()
{
    assert(0);
    return NULL;
}

unsigned int
tlPS2PrimBuffer::VertexSize()
{
    assert(primbuf);
    return primbuf->GetDMABufferSize();
}

char*
tlPS2PrimBuffer::VertexData()
{
    assert(primbuf);
    return (char*)primbuf->GetDMABuffer();
}

unsigned int
tlPS2PrimBuffer::IndexSize()
{
    return 0;
}

short*
tlPS2PrimBuffer::IndexData()
{
    assert(0);
    return NULL;
}

unsigned int
tlPS2PrimBuffer::Version()
{
    return PS2_MEM_IMAGE_VERSION;
}

unsigned int
tlPS2PrimBuffer::VertexDescriptionParameter()
{
    assert(primbuf);
    return primbuf->GetProgramAddressOffset();
}

unsigned int
tlPS2PrimBuffer::VertexParameter()
{
    assert(primbuf);
    return primbuf->GetProgramAddressOffset();
}

unsigned int
tlPS2PrimBuffer::IndexParameter()
{
    assert(primbuf);
    return primbuf->GetProgramAddressOffset();
}

void 
tlPS2PrimBuffer::DumpMemoryImage(unsigned int version, 
                                              unsigned int vertexdescriptionparam, 
                                              unsigned int vertexdescriptionsize, 
                                              char*        vertexdescription,
                                              unsigned int vertexparam, 
                                              unsigned int vertexsize, 
                                              char*        vertex,
                                              unsigned int indexparam, 
                                              unsigned int indexsize, 
                                              short*       index)
{

}


