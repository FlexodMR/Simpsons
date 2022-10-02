/*===========================================================================
    File:: tlXBOXPrimBuffer.cpp

    Copyright (c) 2001 Radical Entertainment, Inc.  All rights reserved.

===========================================================================*/

#include "tlXBOXPrimBuffer.hpp"
#include "tlPoint.hpp"
#include "tlColour.hpp"
#include "tlUV.hpp"
#include <assert.h>
#include <stdlib.h>

tlXBOXPrimBuffer::tlXBOXPrimBuffer() : 
    locked(false),
    vertexList(NULL),
    vertexSize(0),
    indexList(NULL),
    indexSize(0),
    stride(0),
    currVertex(0),
    nVertex(0),
    nIndex(0),
    nUV(0),
    coord(NULL),
    normal(NULL),
    colour(NULL),
    specular(NULL),
    uv(NULL),
    index(NULL),
    skinWeights(NULL),
    skinIndices(NULL)
{
}

tlXBOXPrimBuffer::~tlXBOXPrimBuffer()
{
    delete vertexList;
    delete indexList;
}

void
tlXBOXPrimBuffer::Create(pddiPrimType type, unsigned vertexFormat, int nV, int nI, int nMatrix)
{
    stride = 12;  //position has 3 floats = 12 bytes
    nUV = vertexFormat & 0xf;
    nVertex = nV;
    nIndex = nI;
    nColourSets = PddiNumColourSets( vertexFormat );

/*
    //skins not supported yet
    if(vertexFormat & PDDI_V_WEIGHTS)
    {
        stride += 4;
    }
    if(vertexFormat & PDDI_V_INDICES)
    {
        stride += 4;
    }
*/

    if(vertexFormat & PDDI_V_NORMAL)
    {
        stride += 4;
    }

    if(vertexFormat & PDDI_V_COLOUR)
    {
        stride += 4;
    }
    else if( ( vertexFormat & PDDI_V_COLOUR2 ) && nColourSets > 0 ){
        stride += 8;
    }

    if(vertexFormat & PDDI_V_SPECULAR)
    {
        stride += 4;
    }

    for(int i = 0; i < nUV; i++)
    {
        stride += 8;
    }


	if( vertexFormat & PDDI_V_BINORMAL )
		stride += 12;			//3 float for binormal

	if( vertexFormat & PDDI_V_TANGENT )
		stride += 12;

  
    vertexSize = nVertex*stride;
    indexSize = nIndex*2;
    vertexList = new char[vertexSize];
    if (nIndex)
    {
        indexList = new short[nIndex];
        index = indexList;
    }

    char* bufferPtr = vertexList;

    normal = NULL;
    colour = NULL;
    specular = NULL;
    uv = NULL;
    skinWeights = NULL;
    skinIndices = NULL;
	binormal = tangent = NULL;
    coord = (tlPoint*)bufferPtr;
    bufferPtr += sizeof(tlPoint);

/*
    //skins not supported yet
    if(vertexFormat & PDDI_V_WEIGHTS)
    {
        skinWeights = (unsigned*)bufferPtr;
        bufferPtr += sizeof(unsigned);
    } 

    if(vertexFormat & PDDI_V_INDICES)
    {
        skinIndices = (unsigned char*)bufferPtr;
        bufferPtr += sizeof(unsigned);
    }
*/

    if(vertexFormat & PDDI_V_NORMAL)
    {
        normal = (unsigned*)bufferPtr;
        bufferPtr += sizeof(unsigned);
    }

    if(vertexFormat & PDDI_V_COLOUR)
    {
        colour = (unsigned*)bufferPtr;
        bufferPtr += sizeof(unsigned);
    }
    else if ( ( vertexFormat & PDDI_V_COLOUR2 ) && nColourSets > 0 ){ 
        colour = (unsigned*)bufferPtr;
        bufferPtr += nColourSets*sizeof(unsigned);
    }

    if(vertexFormat & PDDI_V_SPECULAR)
    {
        specular = (unsigned*)bufferPtr;
        bufferPtr += sizeof(unsigned);
    }

    if(nUV)
    {
        uv = (tlUV*)bufferPtr;
		bufferPtr += nUV*sizeof(tlUV);
    }

	//Add binormal and tangent to memory image for bumpmap shader
	if( vertexFormat & PDDI_V_BINORMAL ){
		binormal = (tlPoint*)bufferPtr;
		bufferPtr += sizeof(tlPoint);
	}

	if( vertexFormat & PDDI_V_TANGENT ){
		tangent = (tlPoint*)bufferPtr;
		bufferPtr += sizeof(tlPoint);
	}
}

void
tlXBOXPrimBuffer::Lock()
{
    assert(!locked);
    locked = true;
}

void
tlXBOXPrimBuffer::Unlock()
{
    assert(locked);
    locked = false;
}

void
tlXBOXPrimBuffer::Coord(const tlPoint& p)
{
    coord->x = p.x;
    coord->y = p.y;
    coord->z = p.z;
    Next();
}


void
tlXBOXPrimBuffer::Binormal(const tlPoint& p)
{
    binormal->x = p.x;
    binormal->y = p.y;
    binormal->z = p.z;
}


void
tlXBOXPrimBuffer::Tangent(const tlPoint& p)
{
    tangent->x = p.x;
    tangent->y = p.y;
    tangent->z = p.z;
}

void
tlXBOXPrimBuffer::Normal(const tlPoint& p)
{
    unsigned tmpx, tmpy, tmpz;

    float len = (float)sqrt(p.x*p.x + p.y*p.y + p.z*p.z) * 1.001f;
    float x = p.x/len;
    float y = p.y/len;
    float z = p.z/len;

    tmpx = (int(x * 0x7fffffff) >> 21) & (0xffffffff >> 21);
    tmpy = (int(y * 0x7fffffff) >> 21) & (0xffffffff >> 21);
    tmpy <<= 11;
    tmpz = (int(z * 0x7fffffff) >> 22) & (0xffffffff >> 22);
    tmpz <<= 22;

    *normal = tmpz | tmpy | tmpx;
}

void
tlXBOXPrimBuffer::SetNumColours(int numColours)
{
    nColourSets = numColours;
}

void
tlXBOXPrimBuffer::Colour(const tlColour& c, int channel)
{
    colour[ channel ] = c.ULong();
}

void
tlXBOXPrimBuffer::UV(const tlUV& tex, int channel)
{
    uv[channel].u = tex.u;
    uv[channel].v = tex.v;
}

void
tlXBOXPrimBuffer::SkinIndices(int a, int b, int c, int d)
{
    assert(0);
}

void
tlXBOXPrimBuffer::SkinWeights(float a, float b, float c)
{
    assert(0);
}

void
tlXBOXPrimBuffer::Next()
{
    assert(currVertex < nVertex);
    currVertex++;

    coord = (tlPoint*)((char*)coord + stride);

    if(normal)
        normal = (unsigned*)((char*)normal + stride);

    if(colour)
        colour = (unsigned*)((char*)colour + stride);

    if(specular)
        specular = (unsigned*)((char*)specular + stride);

    if(uv)
        uv = (tlUV*)((char*)uv + stride);

	if(binormal)
		binormal = (tlPoint*)((char*)binormal + stride );

	if(tangent)
		tangent = (tlPoint*)((char*)tangent + stride );
/*
    //skins not supported yet
    if(skinWeights)
        skinWeights = (unsigned*)((char*)skinWeights + stride);

    if(skinIndices)
        skinIndices = (unsigned char*)((char*)skinIndices + stride);
*/
}

void
tlXBOXPrimBuffer::Index(const short& idx)
{
    assert(indexList);
    *index = idx;
    index++;
}

unsigned int
tlXBOXPrimBuffer::VertexDescriptionSize()
{
    return 0;
}

char*
tlXBOXPrimBuffer::VertexDescriptionData()
{
    assert(0);
    return NULL;
}

unsigned int
tlXBOXPrimBuffer::VertexSize()
{
    assert(vertexList);
    return vertexSize;
}

unsigned int
tlXBOXPrimBuffer::IndexSize()
{
    return indexSize;
}

char*
tlXBOXPrimBuffer::VertexData()
{   
    assert(vertexList);  
    return vertexList;
}

short*
tlXBOXPrimBuffer::IndexData()
{   
    return indexList;
}

unsigned int
tlXBOXPrimBuffer::Version()
{
    return 0x00020001;
}

unsigned int
tlXBOXPrimBuffer::VertexDescriptionParameter()
{
    return 0;
}

unsigned int
tlXBOXPrimBuffer::VertexParameter()
{
    return 0;
}
unsigned int
tlXBOXPrimBuffer::IndexParameter()
{
    return 0;
}


void 
tlXBOXPrimBuffer::DumpMemoryImage(unsigned int version, 
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


