//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


#ifndef _PRIMSTREAM_HPP_
#define _PRIMSTREAM_HPP_

#include "direct3d.hpp"

class d3dContext;
class d3dVertexProgram;

class d3dPrimStream
{
public:
    d3dPrimStream(d3dContext*);
    ~d3dPrimStream();

    inline void Coord(float x, float y, float z);
    inline void Normal(float x, float y, float z);
    inline void Colour(pddiColour colour, int channel = 0);
    inline void UV(float u, float v, int channel = 0);
    inline void Specular(pddiColour colour);

    inline void Binormal(float x, float y, float z) { };
    inline void Tangent(float x, float y, float z) { };

    inline void SkinIndices(unsigned, unsigned = 0, unsigned = 0, unsigned = 0);
    inline void SkinWeights(float, float = 0.0f, float = 0.0f);

    inline void Vertex(pddiVector* v, pddiColour c);
    inline void Vertex(pddiVector* v, pddiVector* n);
    inline void Vertex(pddiVector* v, pddiVector2* uv);
    inline void Vertex(pddiVector* v, pddiColour c, pddiVector2* uv);
    inline void Vertex(pddiVector* v, pddiVector* n, pddiVector2* uv);

    inline void W(float w);
    inline void Size(float s);

    inline void Vertex(pddiVector* v, pddiColour c, float s);
    inline void Vertex(pddiVector* v, pddiColour c, float s, float w);

protected:
    friend class d3dContext;
    friend class d3dExtVertexProgram;
    void Begin(pddiPrimType primType, unsigned vertexType, pddiBaseShader* shader, unsigned expected, unsigned pass = 0);
    void End();

    void SetVertexProgram(d3dVertexProgram* d) {setVertexProgram = d;}

    d3dContext* context; 
    LPDIRECT3DDEVICE8 d3d;

    pddiPrimType primType;
    unsigned count;
    unsigned expected;

    d3dVertexProgram* setVertexProgram;
    d3dVertexProgram* vertexProgram;
};

inline void d3dPrimStream::Coord(float x, float y, float z)
{
    d3d->SetVertexData4f( D3DVSDE_VERTEX, x, y, z, 1.0f );
    count++;
}

inline void d3dPrimStream::Normal(float x, float y, float z)
{
    d3d->SetVertexData4f( D3DVSDE_NORMAL, x, y, z, 1.0f );
}

inline void d3dPrimStream::Colour(pddiColour c, int channel)
{
    // HBW: Multiple CBVs not yet implemented.  For now just ignore channel.
    d3d->SetVertexData4ub( D3DVSDE_DIFFUSE, c.Red(), c.Green(), c.Blue(), c.Alpha() );
}

inline void d3dPrimStream::UV(float u, float v, int channel)
{
    d3d->SetVertexData2f( D3DVSDE_TEXCOORD0 + channel, u, v);
}

inline void d3dPrimStream::Specular(pddiColour colour)
{
//   assert(0);  // oh, oh, better get Neall to fix this...
}

inline void d3dPrimStream::SkinIndices(unsigned a, unsigned b, unsigned c, unsigned d)
{
    d3d->SetVertexData4ub( 15, a, b, c, d );
}

inline void d3dPrimStream::SkinWeights(float a, float b, float c)
{
    d3d->SetVertexData4f( D3DVSDE_BLENDWEIGHT, a, b, c, 0.0f);
}

inline void d3dPrimStream::W(float w)
{
    d3d->SetVertexData2f( 13, w, 0.0f);
}

inline void d3dPrimStream::Size(float s)
{
    d3d->SetVertexData2f( 14, s, 0.0f);
}

inline void d3dPrimStream::Vertex(pddiVector* v, pddiColour c, float s)
{
    d3d->SetVertexData2f( 14, s, 0.0f);
    d3d->SetVertexData4ub( D3DVSDE_DIFFUSE, c.Red(), c.Green(), c.Blue(), c.Alpha() );
    d3d->SetVertexData4f( D3DVSDE_VERTEX, v->x, v->y, v->z, 1.0f );
    count++;
}

inline void d3dPrimStream::Vertex(pddiVector* v, pddiColour c, float s, float w)
{
    d3d->SetVertexData2f( 13, w, 0.0f);
    d3d->SetVertexData2f( 14, s, 0.0f);
    d3d->SetVertexData4ub( D3DVSDE_DIFFUSE, c.Red(), c.Green(), c.Blue(), c.Alpha() );
    d3d->SetVertexData4f( D3DVSDE_VERTEX, v->x, v->y, v->z, 1.0f );
    count++;
}

inline void d3dPrimStream::Vertex(pddiVector* v, pddiColour c)
{
    d3d->SetVertexData4ub( D3DVSDE_DIFFUSE, c.Red(), c.Green(), c.Blue(), c.Alpha() );
    d3d->SetVertexData4f( D3DVSDE_VERTEX, v->x, v->y, v->z, 1.0f );
    count++;
}

inline void d3dPrimStream::Vertex(pddiVector* v, pddiVector* n)
{
    d3d->SetVertexData4f( D3DVSDE_NORMAL, n->x, n->y, n->z, 1.0f );
    d3d->SetVertexData4f( D3DVSDE_VERTEX, v->x, v->y, v->z, 1.0f );
    count++;
}

inline void d3dPrimStream::Vertex(pddiVector* v, pddiVector2* t)
{
    d3d->SetVertexData2f( D3DVSDE_TEXCOORD0, t->u, t->v);
    d3d->SetVertexData4f( D3DVSDE_VERTEX, v->x, v->y, v->z, 1.0f );
    count++;
}

inline void d3dPrimStream::Vertex(pddiVector* v, pddiColour c, pddiVector2* t)
{
    d3d->SetVertexData4ub( D3DVSDE_DIFFUSE, c.Red(), c.Green(), c.Blue(), c.Alpha() );
    d3d->SetVertexData2f( D3DVSDE_TEXCOORD0, t->u, t->v);
    d3d->SetVertexData4f( D3DVSDE_VERTEX, v->x, v->y, v->z, 1.0f );
    count++;
}

inline void d3dPrimStream::Vertex(pddiVector* v, pddiVector* n, pddiVector2* t)
{
    d3d->SetVertexData2f( D3DVSDE_TEXCOORD0, t->u, t->v);
    d3d->SetVertexData4f( D3DVSDE_NORMAL, n->x, n->y, n->z, 1.0f );
    d3d->SetVertexData4f( D3DVSDE_VERTEX, v->x, v->y, v->z, 1.0f );
    count++;
}

#endif
