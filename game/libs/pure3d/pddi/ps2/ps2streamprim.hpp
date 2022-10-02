//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


#ifndef _PS2PRIMSTREAM_HPP
#define _PS2PRIMSTREAM_HPP

class VifStream;
class ps2Context;
        
class ps2PrimStream
{
public:
    ps2PrimStream();

    struct StreamVertex
    {
        union { float x; unsigned xi; int r; };
        union { float y; unsigned yi; int g; };
        union { float z; unsigned zi; int b; };
        union { float w; unsigned wi; int a; };
    };

    void Specular(pddiColour colour) { /* */ }

    inline void NextVertex()
    {
        vertexCount++;
        currentVertex += nComponent;
        if(vertexCount >= maxStreamVertexCount)
        {
            NextBuffer();
        }
    }

    inline void Coord(float x, float y, float z)
    {
        currentVertex[positionStride].x = x;
        currentVertex[positionStride].y = y;
        currentVertex[positionStride].z = z;
        NextVertex();
    }

    inline void Normal(float x, float y, float z)
    {
        currentVertex[normalStride].x = x;
        currentVertex[normalStride].y = y;
        currentVertex[normalStride].z = z;
    }

    inline int UnpackColour(pddiColour colour, StreamVertex* v)
    {
        v->r = colour.Red() >> colourShift;
        v->g = colour.Green() >> colourShift;
        v->b = colour.Blue() >> colourShift;
        v->a = (colour.Alpha()+1) / 2;
        return 0;
    }

    inline void Colour(pddiColour colour, int channel = 0)
    {
        // HBW: Multiple CBVs not yet implemented.  For now just ignore channel.
        UnpackColour(colour, &currentVertex[colourStride]);
    }

    inline void UV(float u, float v, int channel = 0)
    {
        currentVertex[uvStride + channel].x = u;
        currentVertex[uvStride + channel].y = v;
    }

    inline void Vertex(pddiVector* v, pddiColour c)
    {
        currentVertex[positionStride].x = v->x;
        currentVertex[positionStride].y = v->y;
        currentVertex[positionStride].z = v->z;
        UnpackColour(c, &currentVertex[colourStride]);
        NextVertex();
    }

    inline void Vertex(pddiVector* v, pddiVector* n)
    {
        currentVertex[positionStride].x = v->x;
        currentVertex[positionStride].y = v->y;
        currentVertex[positionStride].z = v->z;
        currentVertex[normalStride].x = n->x;
        currentVertex[normalStride].y = n->y;
        currentVertex[normalStride].z = n->z;
        NextVertex();
    }

    inline void Vertex(pddiVector* v, pddiVector2* uv)
    {
        currentVertex[positionStride].x = v->x;
        currentVertex[positionStride].y = v->y;
        currentVertex[positionStride].z = v->z;
        currentVertex[uvStride].x = uv->u;
        currentVertex[uvStride].y = uv->v;
        NextVertex();
    }

    inline void Vertex(pddiVector* v, pddiColour c, pddiVector2* uv)
    {
        currentVertex[positionStride].x = v->x;
        currentVertex[positionStride].y = v->y;
        currentVertex[positionStride].z = v->z;
        currentVertex[uvStride].x = uv->u;
        currentVertex[uvStride].y = uv->v;
        UnpackColour(c, &currentVertex[colourStride]);
        NextVertex();
    }

    inline void Vertex(pddiVector* v, pddiVector* n, pddiVector2* uv)
    {
        currentVertex[positionStride].x = v->x;
        currentVertex[positionStride].y = v->y;
        currentVertex[positionStride].z = v->z;
        currentVertex[normalStride].x = n->x;
        currentVertex[normalStride].y = n->y;
        currentVertex[normalStride].z = n->z;
        currentVertex[uvStride].x = uv->u;
        currentVertex[uvStride].y = uv->v;
        NextVertex();
    }

    void SkinIndices(unsigned, unsigned = 0, unsigned = 0, unsigned = 0);
    void SkinWeights (float, float = 0.0f, float = 0.0f);
    
    void* GetNextVertexAddress(void)
    {
        return currentVertex;
    }

    // returns the number of verts left in this buffer
    int GetBufferSizeAvailable(void)
    {
        return maxStreamVertexCount - vertexCount;
    }

    void Advance(int numVert); 

    int GetVertexCount();
    int GetPrimCount();

    // sep18/2001 amb
    void Binormal( float&,float&,float& ){ /* nop */ };
    void Tangent(  float&,float&,float& ){ /* nop */ };

private:
    friend class ps2Context;

    StreamVertex* currentVertex;
    int maxStreamVertexCount;
    int vertexCount;
    int nComponent;
    int positionStride;
    int colourStride;
    int normalStride;
    int uvStride;
    int colourShift;
    
    void NewPacket(VifStream* vif);
    void Begin(ps2Context* context, pddiPrimType, unsigned vertexType, unsigned mpgAddr);
    void End();
    void PrepBuffer(unsigned* dma);
    void NextBuffer();
    void Flush();
};


#endif /* _PS2PRIMSTREAM_HPP */
