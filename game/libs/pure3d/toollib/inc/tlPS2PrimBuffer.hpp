/*===========================================================================
    File:: tlPS2PrimBuffer.hpp

    Copyright (c) 2001 Radical Entertainment, Inc.  All rights reserved.

===========================================================================*/

#ifndef _TLPS2PRIMBUFFER_HPP
#define _TLPS2PRIMBUFFER_HPP

#include "tlPrimBuffer.hpp"

class ps2PrimBuffer;
class pddiPrimBufferStream;

class tlPS2PrimBuffer : public tlPrimBuffer
{
public:
    tlPS2PrimBuffer();
    virtual ~tlPS2PrimBuffer();

    virtual void Create(pddiPrimType type, unsigned vertexFormat, int nVertex, int nIndex, int nMatrix);
    virtual void Lock();
    virtual void Unlock();

    virtual void Coord(const tlPoint& p);
    virtual void Normal(const tlPoint& p);
    virtual void SetNumColours(int numColours);
    virtual void Colour(const tlColour& colour, int channel = 0);
    virtual void UV(const tlUV& uv, int channel = 0);
    virtual void SkinIndices (int a, int b, int c, int d);
    virtual void SkinWeights (float a, float b, float c);
    virtual void Next();
    
    virtual void Index(const short& index);

    virtual unsigned int   VertexDescriptionSize();
    virtual char*          VertexDescriptionData();
    virtual unsigned int   VertexSize();
    virtual char*          VertexData();
    virtual unsigned int   IndexSize();
    virtual short*         IndexData();
    virtual unsigned int   VertexDescriptionParameter();
    virtual unsigned int   VertexParameter();
    virtual unsigned int   IndexParameter();
    virtual unsigned       Version();

    virtual void DumpMemoryImage(unsigned int version, 
                                          unsigned int vertexdescriptionparam, 
                                          unsigned int vertexdescriptionsize, 
                                          char*        vertexdescription,
                                          unsigned int vertexparam, 
                                          unsigned int vertexsize, 
                                          char*        vertex,
                                          unsigned int indexparam, 
                                          unsigned int indexsize, 
                                          short*       index);


private:
    bool locked;
    
    ps2PrimBuffer* primbuf;
    pddiPrimBufferStream* primstream;
};

#endif

