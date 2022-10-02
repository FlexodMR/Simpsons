/*===========================================================================
    File:: tlPDDI.hpp

    Copyright (c) 2001 Radical Entertainment, Inc.  All rights reserved.

===========================================================================*/

#ifndef _TLPDDI_HPP
#define _TLPDDI_HPP

#include "../../pddi/pddienum.hpp"

class pddiShader; 

#define scePrintf printf

struct pddiVertexComponentWidth
{
    pddiVertexComponentWidth()
    {
        uv0 = uv1 = uv2 = uv3 = uv4 = uv5 = uv6 = uv7 = 2;
        position = 3;
    }

    unsigned char uv0;
    unsigned char uv1;
    unsigned char uv2;
    unsigned char uv3;
    unsigned char uv4;
    unsigned char uv5;
    unsigned char uv6;
    unsigned char uv7;
    unsigned char position;
    unsigned char pad[3];
};

class pddiPrimBufferDesc
{
public:
    pddiPrimBufferDesc(pddiPrimType type, unsigned format, unsigned vertexCount, unsigned indexCount = 0)
    {
        primType = type;
        vertexFormat = format;
        nVertex = vertexCount;
        nIndex = indexCount;
        memoryImaged = false;
        deformed = false;
        vertexProgram = 0;
        matrixCount = 0;
    }
    
    void SetPrimType(pddiPrimType type)   { primType = type; }
    void SetVertexFormat(unsigned format) { vertexFormat = format; }
    void SetVertexCount(unsigned count)   { nVertex = count; }
    void SetIndexCount(unsigned count)    { nIndex = count; }
    void SetDeformed(bool d)              { deformed = d; }
    void SetMemoryImaged(bool mi)         { memoryImaged = mi; }
    void SetVertexProgram(char* program)  { vertexProgram = program; }
    void SetMatrixCount(unsigned count)   { matrixCount = count; }

    pddiPrimType GetPrimType(void)      { return primType; }
    unsigned GetVertexFormat(void)      { return vertexFormat; }
    unsigned GetVertexCount(void)       { return nVertex; }
    unsigned GetIndexCount(void)        { return nIndex; }
    bool GetDeformed(void)              { return deformed; }
    bool GetMemoryImaged(void)          { return memoryImaged; }
    const char* GetVertexProgram(void)  { return vertexProgram; }
    unsigned GetMatrixCount(void)       { return matrixCount; }

protected:
    pddiPrimType primType;
    unsigned vertexFormat;
    pddiVertexComponentWidth componentWidth;
    unsigned nVertex;
    unsigned nIndex;
    bool memoryImaged;
    bool deformed;
    char* vertexProgram;
    unsigned matrixCount;
};

struct pddiColour
{
    pddiColour() { /**/ }
    pddiColour(int r, int g, int b, int a = 0xff)
    {
        c = (unsigned)b | ((unsigned)g<<8) | ((unsigned)r<<16) | ((unsigned)a<<24);
    }

    void Set(int r, int g, int b, int a = 0xff)
    {
        c = (unsigned)b | ((unsigned)g<<8) | ((unsigned)r<<16) | ((unsigned)a<<24);
    }

    explicit pddiColour(unsigned colour)
    {
        c = colour;
    }

    operator unsigned() { return c; }

    void SetRed(int r)   { c = (c & 0xff00ffff) | ((r << 16) & 0x00ff0000) ; }
    void SetGreen(int g) { c = (c & 0xffff00ff) | ((g << 8) & 0x0000ff00) ; }
    void SetBlue(int b)  { c = (c & 0xffffff00) | ((b) & 0x000000ff) ; }
    void SetAlpha(int a) { c = (c & 0x00ffffff) | ((a << 24) & 0xff000000) ; }
    
    int Red() const   { return (int) ((c & 0x00ff0000) >> 16); }
    int Green() const { return (int) ((c & 0x0000ff00) >> 8); }
    int Blue() const  { return (int) ((c & 0x000000ff)); }
    int Alpha() const { return (int) ((c & 0xff000000) >> 24); }
    int Intensity() const { return (Red() + Green() + Blue()) / 3; }

    unsigned c;
};

// 3D vector
class pddiVector
{
public:
    pddiVector() {}
    pddiVector(float X, float Y, float Z) { x = X; y = Y; z = Z; }
    float x;
    float y;
    float z;

    void Set(float X, float Y, float Z) { x = X; y = Y; z = Z; }
};

class pddiVector4
{
public:
    pddiVector4() {}
    pddiVector4(float X, float Y, float Z, float W = 1.0f) { x = X; y = Y; z = Z; w = W; }
    float x;
    float y;
    float z;
    float w;

    void Set(float X, float Y, float Z, float W = 1.0f) { x = X; y = Y; z = Z; w = W; }
};

// 2D vector
class pddiVector2
{
public:
    pddiVector2() {}
    pddiVector2(float U, float V) { u = U; v = V; }
    float u;
    float v;

    void Set(float U, float V) { u = U; v = V; }
};

// 4x4 transformation matrix
class pddiMatrix
{
public:
    float m[4][4];

    void Identity()
    {
        m[0][0] = 1.0f;  m[0][1] = 0.0f; m[0][2] = 0.0f; m[0][3] = 0.0f;
        m[1][0] = 0.0f;  m[1][1] = 1.0f; m[1][2] = 0.0f; m[1][3] = 0.0f;
        m[2][0] = 0.0f;  m[2][1] = 0.0f; m[2][2] = 1.0f; m[2][3] = 0.0f;
        m[3][0] = 0.0f;  m[3][1] = 0.0f; m[3][2] = 0.0f; m[3][3] = 1.0f;
    }

    pddiVector* GetRow(int row)         { return (pddiVector*)(&m[0][0]+(row*4)); }
    void SetRow(int row, pddiVector* v) { *GetRow(row) = *v; }
    void SetRow(int row, float x, float y, float z, float w = 1.0f)
    {
        m[row][0] = x;  m[row][1] = y; m[row][2] = z; m[row][3] = w;
    }
};

class pddiPrimBufferStream
{
public:
    void Coord(float x, float y, float z) { Position(x, y, z); }
    virtual void Position(float x, float y, float z) = 0;
    virtual void Normal(float x, float y, float z) = 0;
    virtual void Binormal(float x, float y, float z) { };
    virtual void Tangent(float x, float y, float z) { };
    virtual void Colour(pddiColour colour, int channel = 0) = 0;
    void UV(float u, float v, int channel = 0) { TexCoord2(u, v, channel); }
    virtual void TexCoord1(float s, int channel = 0) = 0;
    virtual void TexCoord2(float s, float t, int channel = 0) = 0;
    virtual void TexCoord3(float s, float t, float u, int channel = 0) = 0;
    virtual void TexCoord4(float s, float t, float u, float v, int channel = 0) = 0;

    virtual void Specular(pddiColour colour) = 0;
    virtual void SkinIndices(unsigned, unsigned = 0, unsigned = 0, unsigned = 0) = 0;
    virtual void SkinWeights(float, float = 0.0f, float = 0.0f) = 0;

    virtual void Vertex(pddiVector* v, pddiColour c) = 0;
    virtual void Vertex(pddiVector* v, pddiVector* n) = 0;
    virtual void Vertex(pddiVector* v, pddiVector2* uv) = 0;
    virtual void Vertex(pddiVector* v, pddiColour c, pddiVector2* uv) = 0;
    virtual void Vertex(pddiVector* v, pddiVector* n, pddiVector2* uv) = 0;

    virtual void Next() = 0;
};

class pddiPrimBuffer
{
public:
    virtual pddiPrimBufferStream* Lock() = 0;
    virtual void Unlock(pddiPrimBufferStream* stream) = 0;

    virtual unsigned char* LockIndexBuffer() = 0;
    virtual void UnlockIndexBuffer(int count) = 0;

    virtual void SetIndices(unsigned short* indices, int count) = 0;

    virtual bool CheckMemImageVersion(int version) = 0;
    virtual void* LockMemImage(unsigned memImageLength) = 0;
    virtual void UnlockMemImage() = 0;
    virtual void SetMemImageParam(unsigned param, unsigned value) { /**/ }
                                          
    virtual void SetUsedSize(int size) {};

protected:
    virtual ~pddiPrimBuffer() {};
};


namespace UTIL
{   
    inline int BitCount(unsigned a)
    {
        int count = 0;
        while(a)
        {
            count += a&1;
            a>>=1;
        }
        return count;
    }

    template <class T> inline T Max(const T a, const T b)
    {
        return a < b ? b : a;
    }

    template <class T> inline T Min(const T a, const T b)
    {
        return a < b ? a : b;
    }

    inline unsigned short PackColour16(pddiColour c)
    {
        int red =   ((c.Red()   >> 3) & 0x1f);
        int green = ((c.Green() >> 3) & 0x1f) << 5;
        int blue =  ((c.Blue()  >> 3) & 0x1f) << 10;
        int alpha = ((c.Alpha() >> 7) & 0x01) << 15;
        return (unsigned short)(red|green|blue|alpha);
    }
}

#endif

