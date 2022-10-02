/*===========================================================================
    File:: tlPrimBuffer.hpp

    Copyright (c) 2001 Radical Entertainment, Inc.  All rights reserved.

===========================================================================*/

#ifndef _TLPRIMBUFFER_HPP
#define _TLPRIMBUFFER_HPP

#include "../../pddi/pddienum.hpp"

class tlPrimBufferStream;
class tlPoint;
class tlColour;
class tlUV;

class tlPrimBuffer
{
public:
    tlPrimBuffer() {};
    virtual ~tlPrimBuffer() {};

    virtual void Create(pddiPrimType type, unsigned vertexFormat, int nVertex, int nIndex, int nMatrix) = 0;
    virtual void Lock() = 0;
    virtual void Unlock() = 0;

    virtual void Coord(const tlPoint& p) = 0;
    virtual void Normal(const tlPoint& p) = 0;
    virtual void SetNumColours(int numColours) = 0;
    virtual void Colour(const tlColour& colour, int channel = 0) = 0;
    virtual void Binormal(const tlPoint &p){ };
    virtual void Tangent( const tlPoint &p){ };
    virtual void UV(const tlUV& uv, int channel = 0) = 0;
    virtual void SkinIndices (int a, int b, int c, int d) = 0;
    virtual void SkinWeights (float a, float b, float c) = 0;
    virtual void Next() = 0;

    virtual void Index(const short& index) = 0;
    
    virtual unsigned int   VertexDescriptionSize() = 0;
    virtual char*          VertexDescriptionData() = 0;
    virtual unsigned int   VertexSize() = 0;
    virtual char*          VertexData() = 0;
    virtual unsigned int   IndexSize()  = 0;
    virtual short*         IndexData()  = 0;
    virtual unsigned int   VertexDescriptionParameter()  = 0;
    virtual unsigned int   VertexParameter() = 0;
    virtual unsigned int   IndexParameter()  = 0;
    virtual unsigned int   Version() = 0;

    virtual void DumpMemoryImage(unsigned int version, 
                                          unsigned int vertexdescriptionparam, 
                                          unsigned int vertexdescriptionsize, 
                                          char*        vertexdescription,
                                          unsigned int vertexparam, 
                                          unsigned int vertexsize, 
                                          char*        vertex,
                                          unsigned int indexparam, 
                                          unsigned int indexsize, 
                                          short*       index) = 0;

private:

};

#endif

