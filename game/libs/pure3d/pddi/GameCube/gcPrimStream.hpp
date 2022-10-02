//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


#ifndef GCPRIMSTREAM_HPP
#define GCPRIMSTREAM_HPP

//--------------------------------------------------------------------
/**************
    When streaming vertex data to the GX processor you must order
    the data by ascending ID for the hardware to understand it

    Data Type        ID  Description
    GX_VA_PNMTXIDX    0  Position/Normal Matrix Index 
    GX_VA_TEX0MTXIDX  1  GX_TEXCOORD0 matrix index 
    GX_VA_TEX1MTXIDX  2  GX_TEXCOORD1 matrix index 
    GX_VA_TEX2MTXIDX  3  GX_TEXCOORD2 matrix index 
    GX_VA_TEX3MTXIDX  4  GX_TEXCOORD3 matrix index 
    GX_VA_TEX4MTXIDX  5  GX_TEXCOORD4 matrix index 
    GX_VA_TEX5MTXIDX  6  GX_TEXCOORD5 matrix index 
    GX_VA_TEX6MTXIDX  7  GX_TEXCOORD6 matrix index 
    GX_VA_TEX7MTXIDX  8  GX_TEXCOORD7 matrix index 
    GX_VA_POS         9  Position 
    GX_VA_NRM or
    GX_VA_NBT        10  Normal or Normal/Binormal/Tangent 
    GX_VA_CLR0       11  Color 0 
    GX_VA_CLR1       12  Color 1 
    GX_VA_TEX0       13  Texture Coordinate 0 
    GX_VA_TEX1       14  Texture Coordinate 1 
    GX_VA_TEX2       15  Texture Coordinate 2 
    GX_VA_TEX3       16  Texture Coordinate 3 
    GX_VA_TEX4       17  Texture Coordinate 4 
    GX_VA_TEX5       18  Texture Coordinate 5 
    GX_VA_TEX6       19  Texture Coordinate 6 
    GX_VA_TEX7       20  Texture Coordinate 7 
**************/

class gcContext;
class gcExtHardwareSkinning;

class gcPrimStream
{
public:
    void Coord(float x, float y, float z);
    void Normal(float x, float y, float z);
    void Binormal(float x, float y, float z);
    void Tangent(float x, float y, float z);
    void Colour(pddiColour colour, int channel = 0);
    void UV(float u, float v, int channel = 0);
    void Specular(pddiColour colour) { /* */ }

    void SkinIndices(unsigned, unsigned = 0, unsigned = 0, unsigned = 0);
    void SkinWeights(float, float = 0.0F, float = 0.0F);

    void Vertex(pddiVector *v, pddiColour c);
    void Vertex(pddiVector *v, pddiVector *n);
    void Vertex(pddiVector *v, pddiVector2 *uv);
    void Vertex(pddiVector *v, pddiColour c, pddiVector2 *uv);
    void Vertex(pddiVector *v, pddiVector *n, pddiVector2 *uv);
    void Vertex(pddiVector *v, pddiVector *n, pddiVector2 *uv, pddiVector *b, pddiVector *t);

private:
    friend class gcContext;

    GXPrimitive  mPrimType;
    unsigned     mVertexType;

    gcExtHardwareSkinning *mHardwareSkinning;
    
    int mVertexCount;

    pddiVector  mTempPosition;
    pddiColour  mTempColour;
    pddiVector  mTempNormal;
    pddiVector  mTempBinormal;
    pddiVector  mTempTangent;
    pddiVector2 mTempUV[GC_MAX_UV_CHANNELS];
    unsigned    mTempIndices[4]; 
    float       mTempWeights[4]; 

    void Begin(gcContext* context, GXPrimitive, unsigned vertexType, int vertexCount = 0);
    void End(void);
    
    void NextVertex(void);
    void VertexNextVertex(void);

    void BlendPosition(pddiVector *v);
    void BlendNormal(pddiVector *v);
};


#define pddiPrimStream gcPrimStream


inline void gcPrimStream::Coord(float x, float y, float z)
{

    mTempPosition.x = x;
    mTempPosition.y = y;
    mTempPosition.z = z;

    NextVertex();
}

inline void gcPrimStream::Normal(float x, float y, float z)
{
    mTempNormal.x = x;
    mTempNormal.y = y;
    mTempNormal.z = z;
}

inline void gcPrimStream::Binormal(float x, float y, float z)
{
    mTempBinormal.x = x;
    mTempBinormal.y = y;
    mTempBinormal.z = z;
}

inline void gcPrimStream::Tangent(float x, float y, float z)
{
    mTempTangent.x = x;
    mTempTangent.y = y;
    mTempTangent.z = z;
}                              

inline void gcPrimStream::Colour(pddiColour colour, int channel)
{
    // HBW: Multiple CBVs not yet implemented.  For now just ignore channel.
    unsigned c = ((unsigned)colour.Red() << 24) | ((unsigned)colour.Green() << 16) | ((unsigned)colour.Blue() << 8) | (unsigned)colour.Alpha();
    mTempColour.c = c;
}

inline void gcPrimStream::UV(float u, float v, int channel)
{
    mTempUV[channel].u = u;
    mTempUV[channel].v = v;
}


inline void gcPrimStream::SkinIndices(unsigned a, unsigned b, unsigned c, unsigned d)
{
    mTempIndices[0] = a;
    mTempIndices[1] = b;
    mTempIndices[2] = c;
    mTempIndices[3] = d;
}

inline void gcPrimStream::SkinWeights(float a, float b, float c)
{
    float d = 1.0F - (a + b + c);
    mTempWeights[0] = a;
    mTempWeights[1] = b;
    mTempWeights[2] = c;
    mTempWeights[3] = d;
}


inline void gcPrimStream::Vertex(pddiVector* v, pddiColour c)
{
    GXPosition3f32(v->x, v->y, v->z);
    GXColor4u8(c.Red(), c.Green(), c.Blue(), c.Alpha());
    VertexNextVertex();
}

inline void gcPrimStream::Vertex(pddiVector* v, pddiVector* n)
{
    GXPosition3f32(v->x, v->y, v->z);
    GXNormal3f32(n->x, n->y, n->z);
    VertexNextVertex();
}

inline void gcPrimStream::Vertex(pddiVector* v, pddiVector2* uv)
{
    GXPosition3f32(v->x, v->y, v->z);
    GXTexCoord2f32(uv->u, uv->v);
    VertexNextVertex();
}

inline void gcPrimStream::Vertex(pddiVector* v, pddiColour c, pddiVector2* uv)
{
    GXPosition3f32(v->x, v->y, v->z);
    GXColor4u8(c.Red(), c.Green(), c.Blue(), c.Alpha());
    GXTexCoord2f32(uv->u, uv->v);
    VertexNextVertex();
}

inline void gcPrimStream::Vertex(pddiVector* v, pddiVector* n, pddiVector2* uv)
{
    GXPosition3f32(v->x, v->y, v->z);
    GXNormal3f32(n->x, n->y, n->z);
    GXTexCoord2f32(uv->u, uv->v);
    VertexNextVertex();
}

inline void gcPrimStream::Vertex(pddiVector *v, pddiVector *n, pddiVector2 *uv, pddiVector *b, pddiVector *t)
{
    GXPosition3f32(v->x, v->y, v->z);
    GXNormal3f32(n->x, n->y, n->z);
    GXNormal3f32(b->x, b->y, b->z);
    GXNormal3f32(t->x, t->y, t->z);
    GXTexCoord2f32(uv->u, uv->v);
    VertexNextVertex();
}

// Called by the individual component (ie. Posiiton()) functions
inline void gcPrimStream::NextVertex(void)
{
    PDDIASSERT(mVertexCount > 0);

    bool isskin = 0 != (mVertexType & PDDI_V_WEIGHTS);

    if (isskin)
    {
        BlendPosition(&mTempPosition);
    
        if (mVertexType & PDDI_V_NORMAL)    BlendNormal(&mTempNormal);
        if (mVertexType & PDDI_V_BINORMAL)  BlendNormal(&mTempBinormal);
        if (mVertexType & PDDI_V_TANGENT)   BlendNormal(&mTempTangent);
    }
    else
    {
        GXPosition3f32(mTempPosition.x, mTempPosition.y, mTempPosition.z);
    
        if (mVertexType & PDDI_V_NORMAL)    GXNormal3f32(mTempNormal.x,   mTempNormal.y,   mTempNormal.z);
        if (mVertexType & PDDI_V_BINORMAL)  GXNormal3f32(mTempBinormal.x, mTempBinormal.y, mTempBinormal.z);
        if (mVertexType & PDDI_V_TANGENT)   GXNormal3f32(mTempTangent.x,   mTempTangent.y,   mTempTangent.z);
    }

    if (mVertexType & PDDI_V_COLOUR)
    {
        GXColor1u32(mTempColour.c);
    }

    int numuv = mVertexType & 0xf;
    int a;
    for (a = 0; a < numuv; a++)
    {
        GXTexCoord2f32(mTempUV[a].u, mTempUV[a].v);
    }

    mVertexCount--;
}


// Called by the complete vertex functions
inline void gcPrimStream::VertexNextVertex(void)
{
    PDDIASSERT(mVertexCount > 0);
    mVertexCount--;
}

// Called by gcContext
inline void gcPrimStream::End(void)
{
    // Verify the amount of vertices sent
    PDDIASSERT(mVertexCount == 0);
    GXEnd();
}



#endif GCPRIMSTREAM_HPP
