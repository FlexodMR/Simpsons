//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================



#include <pddi/gamecube/gcPrimBuffer.hpp>

#include <pddi/gamecube/mallocaligned.hpp>


unsigned short gcDisplayListPrimTypes[5] =
{                       
    GX_DRAW_TRIANGLES,      // PDDI_PRIM_TRIANGLES,
    GX_DRAW_TRIANGLE_STRIP, // PDDI_PRIM_TRISTRIP,
    GX_DRAW_LINES,          // PDDI_PRIM_LINES,
    GX_DRAW_LINE_STRIP,     // PDDI_PRIM_LINESTRIP,
    GX_DRAW_POINTS          // PDDI_PRIM_POINTS
};


float VertsToPrims(pddiPrimType type, int vertexcount)
{
    switch (type)
    {
        case PDDI_PRIM_TRIANGLES:
            return (float) (vertexcount / 3);
            break;

        case PDDI_PRIM_TRISTRIP:
            return (float) (vertexcount - 2);
            break;

        case PDDI_PRIM_LINES:
            return (float) (vertexcount / 2);
            break;

        case PDDI_PRIM_LINESTRIP:
            return (float) (vertexcount - 1);
            break;

        case PDDI_PRIM_POINTS:
            return (float) vertexcount;
            break;
    }

    return 0.0F;
}


float VertsToPrims(GXPrimitive type, int vertexcount)
{
    switch (type)
    {
        case GX_TRIANGLES:
            return (float) (vertexcount / 3);
            break;

        case GX_TRIANGLESTRIP:
            return (float) (vertexcount - 2);
            break;

        case GX_LINES:
            return (float) (vertexcount / 2);
            break;

        case GX_LINESTRIP:
            return (float) (vertexcount - 1);
            break;

        case GX_POINTS:
            return (float) vertexcount;
            break;
    }

    return 0.0F;
}



//******************************************************************************************
//******************************************************************************************
//
// Prim Buffer Stream Stuff
//
//
class gcPrimBufferStream : public pddiPrimBufferStream
{

public:
    gcPrimBuffer *mBuffer;

    float *mPosition;
    float *mNormal;
    float *mBinormal;
    float *mTangent;
    float *mUV;
    unsigned char *mColour;
    int            mPrimBufferDLByteCount;

    gcPrimBufferStream(void)
    {
        mBuffer = NULL;
    }

    //------------------------------------------------------------------
    void Next(void)  
    {
        if (mBuffer->mIndexCount != 0)
        {
            if (mPosition) mPosition += 3;
            
            // test to see if we have only normals or if
            // binormals and tangents exist as well
            if((mBuffer->mVertexType) & PDDI_V_BINORMAL)
            {
                if (mNormal)   mNormal   += 9;
                if (mBinormal) mBinormal += 9;
                if (mTangent)  mTangent  += 9;
            }
            else
            {
                if (mNormal)   mNormal   += 3;
                if (mBinormal) mBinormal += 3;
                if (mTangent)  mTangent  += 3;
            }
            
            if (mUV)       mUV       += ((mBuffer->mVertexType & 0xF) * 2);
            if (mColour)   mColour   += 4;
        }
        else
        {
            mPosition += (mPrimBufferDLByteCount / sizeof(float));
            mNormal   += (mPrimBufferDLByteCount / sizeof(float));
            mBinormal += (mPrimBufferDLByteCount / sizeof(float));
            mTangent  += (mPrimBufferDLByteCount / sizeof(float));
            mUV       += (mPrimBufferDLByteCount / sizeof(float));
            mColour   += mPrimBufferDLByteCount;
        }
    }

    //------------------------------------------------------------------
    void Position(float x, float y, float z)  
    { 
        mPosition[0] = x;
        mPosition[1] = y;
        mPosition[2] = z;
        Next();
    }

    //------------------------------------------------------------------
    void Normal(float x, float y, float z) 
    { 
        mNormal[0] = x;
        mNormal[1] = y;
        mNormal[2] = z;
    }

    //------------------------------------------------------------------
    void Binormal(float x, float y, float z)
    {
        mBinormal[0] = x;
        mBinormal[1] = y;
        mBinormal[2] = z;
    }

    //------------------------------------------------------------------
    void Tangent(float x, float y, float z)
    {
        mTangent[0] = x;
        mTangent[1] = y;
        mTangent[2] = z;
    }

    //------------------------------------------------------------------
    void Colour(pddiColour colour, int channel = 0)         
    {         
        // HBW: Multiple CBVs not yet implemented.  For now just ignore channel.
        mColour[0] = (unsigned char)colour.Red();
        mColour[1] = (unsigned char)colour.Green();
        mColour[2] = (unsigned char)colour.Blue();
        mColour[3] = (unsigned char)colour.Alpha();
    }

    //------------------------------------------------------------------
    void TexCoord1(float s, int channel = 0)
    {
        TexCoord2(s, 0.0F, channel);
    }

    void TexCoord2(float s, float t, int channel = 0)
    { 
        int offset = channel * 2;
        mUV[offset + 0] = s;
        mUV[offset + 1] = t;
    }

    void TexCoord3(float s, float t, float u, int channel = 0)
    {
        TexCoord2(s, t, channel);
    }

    void TexCoord4(float s, float t, float u, float v, int channel = 0)
    {
        TexCoord2(s, t, channel);
    }

    //------------------------------------------------------------------
    void Specular(pddiColour colour) 
    {
        //
    }


    //------------------------------------------------------------------
    void SkinIndices(unsigned i0, unsigned i1, unsigned i2, unsigned i3)
    {
    }

    //------------------------------------------------------------------
    void SkinWeights(float w0, float w1, float w2)
    {
    }

    //------------------------------------------------------------------
    void Vertex(pddiVector *v, pddiColour c) 
    {
        mColour[0]   = (unsigned char)c.Red();
        mColour[1]   = (unsigned char)c.Green();
        mColour[2]   = (unsigned char)c.Blue();
        mColour[3]   = (unsigned char)c.Alpha();
        mPosition[0] = v->x;
        mPosition[1] = v->y;
        mPosition[2] = v->z;
        Next();
    }

    //------------------------------------------------------------------
    void Vertex(pddiVector *v, pddiVector *n)
    {
        mNormal[0]   = n->x;
        mNormal[1]   = n->y;
        mNormal[2]   = n->z;
        mPosition[0] = v->x;
        mPosition[1] = v->y;
        mPosition[2] = v->z;
        Next();
    }

    //------------------------------------------------------------------
    void Vertex(pddiVector *v, pddiVector2 *uv)
    {
        mUV[0]       = uv->u;
        mUV[1]       = uv->v;
        mPosition[0] = v->x;
        mPosition[1] = v->y;
        mPosition[2] = v->z;
        Next();
    }

    //------------------------------------------------------------------
    void Vertex(pddiVector *v, pddiColour c, pddiVector2 *uv)
    {
        mColour[0]   = (unsigned char)c.Red();
        mColour[1]   = (unsigned char)c.Green();
        mColour[2]   = (unsigned char)c.Blue();
        mColour[3]   = (unsigned char)c.Alpha();
        mUV[0]       = uv->u;
        mUV[1]       = uv->v;
        mPosition[0] = v->x;
        mPosition[1] = v->y;
        mPosition[2] = v->z;
        Next();
    }

    //------------------------------------------------------------------
    void Vertex(pddiVector *v, pddiVector *n, pddiVector2 *uv)
    {
        mNormal[0]   = n->x;
        mNormal[1]   = n->y;
        mNormal[2]   = n->z;
        mUV[0]       = uv->u;
        mUV[1]       = uv->v;
        mPosition[0] = v->x;
        mPosition[1] = v->y;
        mPosition[2] = v->z;
        Next();
    }

    //------------------------------------------------------------------
    void Vertex(pddiVector *v, pddiVector *n, pddiVector2 *uv, pddiVector *b, pddiVector *t)
    {
        mNormal[0]   = n->x;
        mNormal[1]   = n->y;
        mNormal[2]   = n->z;
        mBinormal[0] = b->x;
        mBinormal[1] = b->y;
        mBinormal[2] = b->z;
        mTangent[0]  = t->x;
        mTangent[1]  = t->y;
        mTangent[2]  = t->z;
        mUV[0]       = uv->u;
        mUV[1]       = uv->v;
        mPosition[0] = v->x;
        mPosition[1] = v->y;
        mPosition[2] = v->z;
        Next();
    }

    //------------------------------------------------------------------
    void *GetMemImagePtr(void)
    {
        PDDIASSERT(0);
        return NULL;
    }

};









//******************************************************************************************
//******************************************************************************************
//
// Prim Buffer Stream Lock Group Stuff
//
//

#define GC_MAX_PRIMBUFFER_LOCKS 3

class gcPrimBufferStreamLockGroup
{

 public:

    //------------------------------------
    gcPrimBufferStreamLockGroup(void)
    {
        lock[0].mBuffer = NULL;
        lock[1].mBuffer = NULL;
        lock[2].mBuffer = NULL;
    }

    //------------------------------------
    gcPrimBufferStream *Lock(gcPrimBuffer *b)
    {
        int a;
        for (a = 0; a < GC_MAX_PRIMBUFFER_LOCKS; a++)
        {
            if (lock[a].mBuffer == NULL)
            {
                lock[a].mBuffer = b;
                return &lock[a];
            }
        }
        return NULL;
    }

    //------------------------------------
    void Unlock(gcPrimBuffer *b)
    {
        int a;
        for (a = 0; a < GC_MAX_PRIMBUFFER_LOCKS; a++)
        {
            if (lock[a].mBuffer == b)
            {
                lock[a].mBuffer = NULL;
                return;
            }
        }
        PDDIASSERT(0 && "Can't unlock primbuffer that hasn't been locked!");
    }

 private:
    gcPrimBufferStream lock[GC_MAX_PRIMBUFFER_LOCKS];
};

static gcPrimBufferStreamLockGroup gPrimBufferStreamLockGroup;









//******************************************************************************************
//******************************************************************************************
//
// Prim Buffer
//
//
gcPrimBuffer::gcPrimBuffer(gcContext *context)
{
    mContext = context;

    mPrimType = PDDI_PRIM_POINTS;
    mVertexType = 0;

    mDisplayListSize = 0;
    mDisplayList     = NULL;

    mVertexDataSize = 0;
    mVertexData     = NULL;

    mVertexCount = 0;
    mIndexCount  = 0;
}

//-----------------------------------------------------------------------
gcPrimBuffer::~gcPrimBuffer()
{
    if (mDisplayList != NULL) freealigned(mDisplayList);
    if (mVertexData != NULL) delete[] mVertexData;

#ifdef PDDI_TRACK_STATS
    int alloc_size = (int) (mDisplayListSize + mVertexDataSize);
    mContext->ADD_STAT(PDDI_STAT_BUFFERED_COUNT, -1);
    mContext->ADD_STAT(PDDI_STAT_BUFFERED_ALLOC, (float) (-alloc_size / 1024.0F));
#endif
}

//-----------------------------------------------------------------------
void gcPrimBuffer::Create(pddiPrimBufferDesc *desc)
{

    int dlpos      = 0;
    int indexcount = 0;
    int primbufferbytecount = 0;

    mPrimType   = desc->GetPrimType();
    mVertexType = desc->GetVertexFormat();

    mVertexCount = desc->GetVertexCount();
    mIndexCount  = desc->GetIndexCount();

    mVertexDataSize = 0;

    if (mIndexCount > 0) mVertexDataSize += (sizeof(pddiVector) * mVertexCount);
    indexcount = 1;
    primbufferbytecount = sizeof(pddiVector);

    if (mVertexType & PDDI_V_NORMAL) 
    {
        if (mIndexCount > 0) mVertexDataSize += (sizeof(pddiVector) * mVertexCount);
        ++indexcount;
        primbufferbytecount += sizeof(pddiVector);
    }

    if (mVertexType & PDDI_V_BINORMAL)
    {
        if (mIndexCount > 0) mVertexDataSize += (sizeof(pddiVector) * mVertexCount);
        ++indexcount;
        primbufferbytecount += sizeof(pddiVector);
    }

    if (mVertexType & PDDI_V_TANGENT)
    {
        if (mIndexCount > 0) mVertexDataSize += (sizeof(pddiVector) * mVertexCount);
        ++indexcount;
        primbufferbytecount += sizeof(pddiVector);
    }

    if (mVertexType & PDDI_V_COLOUR) 
    {
        if (mIndexCount > 0) mVertexDataSize += (sizeof(pddiColour) * mVertexCount);
        ++indexcount;
        primbufferbytecount += sizeof(pddiColour);
    }

    int numuv = mVertexType & 0xf;
    if (numuv > 0) 
    {
        if (mIndexCount > 0) mVertexDataSize += (sizeof(pddiVector2) * mVertexCount * numuv);
        indexcount += numuv;
        primbufferbytecount  += (numuv * sizeof(pddiVector2));
    }

    mVertexData = new char[mVertexDataSize];

    // If there are no indices put the data straight into the Display List
    if (mIndexCount == 0)
    {
        mDisplayListSize = ((3 + 1 + primbufferbytecount * mVertexCount) + 31) & ~31;
        mDisplayList = (unsigned char *)mallocaligned(mDisplayListSize, 32);
        // Setup the table header
        mDisplayList[dlpos] = GX_NOP;
        dlpos++;

        mDisplayList[dlpos] = (unsigned char)gcDisplayListPrimTypes[mPrimType];
        dlpos++;
        *((unsigned short *)&mDisplayList[dlpos]) = (unsigned short) mVertexCount;
        dlpos += sizeof(unsigned short);

        // Set all unfilled data to GX_NOP
        int a;
        for (a = dlpos; a < mDisplayListSize; a++) mDisplayList[a] = GX_NOP;
        // All of the pointer work happens in lock
    }
    // Else build the display index list 
    else
    {
        if (mVertexCount < 255)
        {
            // use 8 bit indices
            mDisplayListSize = ((3 + 1 + mIndexCount * indexcount) + 31) & ~31;
            mDisplayList = (unsigned char *)mallocaligned(mDisplayListSize, 32);
        }
        else
        {
            // use 16 bit indices
            mDisplayListSize = ((3 + 1 + (mIndexCount * indexcount * 2)) + 31) & ~31;
            mDisplayList = (unsigned char *)mallocaligned(mDisplayListSize, 32);
        }

        // Setup the table header
        mDisplayList[dlpos] = GX_NOP; // For alignment
        dlpos++;

        mDisplayList[dlpos] = (unsigned char)gcDisplayListPrimTypes[mPrimType];
        dlpos++;

        unsigned short *us = (unsigned short *)&mDisplayList[dlpos];
        *us = (unsigned short) mIndexCount;
        dlpos += sizeof(unsigned short);
    }

#ifdef PDDI_TRACK_STATS
    int alloc_size = (int) mDisplayListSize + mVertexDataSize;
    mContext->ADD_STAT(PDDI_STAT_BUFFERED_COUNT, 1);
    mContext->ADD_STAT(PDDI_STAT_BUFFERED_ALLOC, (float) (alloc_size / 1024.0F));
#endif
}




//-----------------------------------------------------------------------
void gcPrimBuffer::SetIndexBufferSize(int bufferSize)
{
    PDDIASSERT(0);

    mDisplayListSize = bufferSize;
    mDisplayList = (unsigned char *)mallocaligned(mDisplayListSize, 32);
}

//-----------------------------------------------------------------------
pddiPrimBufferStream *gcPrimBuffer::Lock()
{
    gcPrimBufferStream *lock = gPrimBufferStreamLockGroup.Lock(this);
    PDDIASSERT(lock && "Unable to lock primbuffer!");

    if (mIndexCount == 0)
    {
        // Setup the list pointers into the display list
        int pos = 4;
        lock->mPosition = (float *) &mDisplayList[pos];
        pos += sizeof(pddiVector);

        if (mVertexType & PDDI_V_NORMAL) 
        {
            lock->mNormal = (float *) &mDisplayList[pos];
            pos += sizeof(pddiVector);
        }

        if (mVertexType & PDDI_V_BINORMAL)
        {
            lock->mBinormal = (float *) &mDisplayList[pos];
            pos += sizeof(pddiVector);
        }

        if (mVertexType & PDDI_V_TANGENT)
        {
            lock->mTangent = (float *) &mDisplayList[pos];  
            pos += sizeof(pddiVector);
        }

        if (mVertexType & PDDI_V_COLOUR) 
        {
            lock->mColour = (unsigned char *) &mDisplayList[pos];
            pos += sizeof(pddiColour);
        }

        int numuv = mVertexType & 0xf;
        if (numuv > 0)
        {
            lock->mUV = (float *) &mDisplayList[pos];
            pos += (numuv * sizeof(pddiVector2));
        }

        lock->mPrimBufferDLByteCount = pos - 4;
    }
    else
    {
        // Setup pointers to the mem image data
        unsigned int offset = 0;

        lock->mPrimBufferDLByteCount = 0;

        lock->mPosition = (float *)&mVertexData[offset];

        offset += (sizeof(pddiVector) * mVertexCount);

        if (mVertexType & PDDI_V_BINORMAL)
        {
            lock->mNormal   = (float *)&mVertexData[offset];
            lock->mBinormal = (float *)&mVertexData[offset + sizeof(pddiVector)];
            lock->mTangent  = (float *)&mVertexData[offset + (sizeof(pddiVector) * 2)];
            offset += (sizeof(pddiVector) * 3 * mVertexCount);
        }
        else if (mVertexType & PDDI_V_NORMAL) 
        {
            lock->mNormal = (float *)&mVertexData[offset];
            offset += (sizeof(pddiVector) * mVertexCount);
        }

        if (mVertexType & PDDI_V_COLOUR) 
        {
            lock->mColour = (unsigned char *)&mVertexData[offset];
            offset += (sizeof(pddiColour) * mVertexCount);
        }

        int numuv = mVertexType & 0xf;
        if (numuv > 0) 
        {
            lock->mUV = (float *)&mVertexData[offset];
            offset += (sizeof(pddiVector2) * mVertexCount * numuv);
        }
    }

    return lock;
}

//-----------------------------------------------------------------------
void gcPrimBuffer::Unlock(pddiPrimBufferStream *stream)
{

    if (mIndexCount > 0)
    {
         DCFlushRange(mVertexData, (unsigned long)mVertexDataSize);
    }
    else
    {
        DCFlushRange(mDisplayList, (unsigned long)mDisplayListSize);
        if (mVertexData != NULL) 
        {
            DCFlushRange(mVertexData, (unsigned long)mVertexDataSize);
        }
    }

    GXInvalidateVtxCache();

    gPrimBufferStreamLockGroup.Unlock(this);
}

//-----------------------------------------------------------------------
void gcPrimBuffer::SetIndices(unsigned short *i, int count)
{
    PDDIASSERT(count <= mIndexCount);

    // If the buffer is indexed the indices ALWAYS start at offset 4 in the list (nop, command, countHi, countLo)
    int dlpos = 4;
    int indexcount = 1 + (mVertexType & 0x0F);
    if (mVertexType & PDDI_V_NORMAL)   ++indexcount;
    if (mVertexType & PDDI_V_BINORMAL) ++indexcount;
    if (mVertexType & PDDI_V_TANGENT)  ++indexcount;
    if (mVertexType & PDDI_V_COLOUR)   ++indexcount;

    int a;
    for (a = 0; a < count; a++)
    {
        int b;
        for (b = 0; b < indexcount; b++)
        {
            if (mVertexCount < 255)
            {
                mDisplayList[dlpos] = (unsigned char) (i[a] & 0xFF);
                ++dlpos;
            }
            else
            {
                *((unsigned short *)(&mDisplayList[dlpos])) = i[a];
                dlpos += 2;
            }
        }
    }

    while (dlpos < mDisplayListSize) 
    {
        mDisplayList[dlpos] = GX_NOP;
        ++dlpos;
    }

    DCFlushRange(mDisplayList, (unsigned long)mDisplayListSize);

}


//-----------------------------------------------------------------------
unsigned char *gcPrimBuffer::LockIndexBuffer(void)
{
    PDDIASSERT(0);
    return mDisplayList;
}



//-----------------------------------------------------------------------
void gcPrimBuffer::UnlockIndexBuffer(int count)
{
    mIndexCount = count;
    DCFlushRange(mDisplayList, (unsigned long)mDisplayListSize);

    // Get the prim type
    mPrimType = PDDI_PRIM_TRIANGLES;
    switch (mDisplayList[0])
    {
        case (unsigned char) GX_DRAW_TRIANGLES:
            mPrimType = PDDI_PRIM_TRIANGLES;
            break;

        case (unsigned char) GX_DRAW_TRIANGLE_STRIP:
            mPrimType = PDDI_PRIM_TRISTRIP;
            break;

        case (unsigned char) GX_DRAW_LINES:
            mPrimType = PDDI_PRIM_LINES;
            break;

        case (unsigned char) GX_DRAW_LINE_STRIP:
            mPrimType = PDDI_PRIM_LINESTRIP;
            break;

        case (unsigned char) GX_DRAW_POINTS:
            mPrimType = PDDI_PRIM_POINTS;
            break;
    }


    //extract the vertex count from the display list
    mVertexCount = 0;
    unsigned char *vc = (unsigned char *)&mVertexCount;
    vc[2] = mDisplayList[1];
    vc[3] = mDisplayList[2];

}



//-----------------------------------------------------------------------
bool gcPrimBuffer::CheckMemImageVersion(int version)
{
    return false;
}


//-----------------------------------------------------------------------
void *gcPrimBuffer::LockMemImage(unsigned memImageLength)
{
    PDDIASSERT(0);
    return NULL;
}


//-----------------------------------------------------------------------
void gcPrimBuffer::UnlockMemImage(void)
{
    PDDIASSERT(0);
}


//-----------------------------------------------------------------------
void gcPrimBuffer::SetMemImageParam(unsigned param, unsigned value)
{
    PDDIASSERT(0);
}




//-----------------------------------------------------------------------
void gcPrimBuffer::Display(void)
{

    mContext->FinalizeHardwareMatrix();
    GXClearVtxDesc();

    GXAttrType at = GX_DIRECT;
    if (mIndexCount > 0)
    {
        if (mVertexCount < 255) at = GX_INDEX8;
        else                    at = GX_INDEX16;
    }

    GXSetVtxAttrFmt(GX_VTXFMT0, GX_VA_POS, GX_POS_XYZ, GX_F32, 0);
    GXSetVtxDesc(GX_VA_POS, at);

    // there can be binormal, tangent and normals or just normals
    if (mVertexType & PDDI_V_BINORMAL)
    {
        GXSetVtxAttrFmt(GX_VTXFMT0, GX_VA_NBT, GX_NRM_NBT3, GX_F32, 0);
        GXSetVtxDesc(GX_VA_NBT, at);
    }
    else if (mVertexType & PDDI_V_NORMAL)
    {
        GXSetVtxAttrFmt(GX_VTXFMT0, GX_VA_NRM, GX_NRM_XYZ, GX_F32, 0);
        GXSetVtxDesc(GX_VA_NRM, at);
    }

    if (mVertexType & PDDI_V_COLOUR)
    {
        GXSetVtxAttrFmt(GX_VTXFMT0, GX_VA_CLR0, GX_CLR_RGBA, GX_RGBA8, 0);
        GXSetVtxDesc(GX_VA_CLR0, at);
    }

    int numuv = mVertexType & 0xf;
    if (numuv > 0)
    {
        int a;
        for (a = 0; a < numuv; a++)
        {
            GXAttr attr = (GXAttr) (((int)GX_VA_TEX0) + a);
            GXSetVtxAttrFmt(GX_VTXFMT0, attr, GX_TEX_ST, GX_F32, 0);
            GXSetVtxDesc(attr, at);
        }
    }

    // Setup pointers to the mem image data
    if (mIndexCount > 0)
    {
        unsigned int offset = 0;

        GXSetArray(GX_VA_POS, &mVertexData[offset], sizeof(float) * 3);
        offset += (sizeof(pddiVector) * mVertexCount);

        if (mVertexType & PDDI_V_BINORMAL) 
        {
            GXSetArray(GX_VA_NBT, &mVertexData[offset], sizeof(float) * 9);
            offset += (sizeof(pddiVector) * mVertexCount * 3);
        }
        else if (mVertexType & PDDI_V_NORMAL) 
        {
            GXSetArray(GX_VA_NRM, &mVertexData[offset], sizeof(float) * 3);
            offset += (sizeof(pddiVector) * mVertexCount);
        }

        if (mVertexType & PDDI_V_COLOUR) 
        {
            GXSetArray(GX_VA_CLR0, &mVertexData[offset], 4);
            offset += (sizeof(pddiColour) * mVertexCount);
        }

        int numuv = mVertexType & 0xf;
        if (numuv > 0) 
        {
            int a;
            for (a = 0; a < numuv; a++)
            {
                GXAttr attr = (GXAttr) (((int)GX_VA_TEX0) + a);
                GXSetArray(attr, &mVertexData[offset + (a * sizeof(float) * 2)], sizeof(float) * 2 * numuv);
            }
            offset += (sizeof(pddiVector2) * mVertexCount * numuv);
        }
    }

    GXCallDisplayList(mDisplayList, (unsigned long)mDisplayListSize);

#ifdef PDDI_TRACK_STATS
    mContext->ADD_STAT(PDDI_STAT_BUFFERED_PRIM_CALLS, 1);
    if (mIndexCount > 0) 
    {
        mContext->ADD_STAT(PDDI_STAT_BUFFERED_INDEXED_PRIM, VertsToPrims(mPrimType, mIndexCount));
        mContext->ADD_STAT(PDDI_STAT_BUFFERED_INDEXED_PRIM_VERT, mIndexCount);
    }
    else                 
    {
        mContext->ADD_STAT(PDDI_STAT_BUFFERED_PRIM, mVertexCount);
        mContext->ADD_STAT(PDDI_STAT_BUFFERED_PRIM_VERT, mVertexCount);
    }
#endif

// Senta   DisplayNormals();

}


//-----------------------------------------------------------------------
void gcPrimBuffer::DisplayNormals(void)
{

    GXClearVtxDesc();

    GXSetVtxAttrFmt(GX_VTXFMT0, GX_VA_POS, GX_POS_XYZ, GX_F32, 0);
    GXSetVtxDesc(GX_VA_POS, GX_DIRECT);
    
    GXSetVtxAttrFmt(GX_VTXFMT0, GX_VA_CLR0, GX_CLR_RGBA, GX_RGBA8, 0);
    GXSetVtxDesc(GX_VA_CLR0, GX_DIRECT);
    
    int mult = 1;
    if (mVertexType & PDDI_V_BINORMAL) mult = 3;
    
    pddiVector *verts   = (pddiVector *)&mVertexData[0];
    pddiVector *normals = (pddiVector *)&mVertexData[sizeof(pddiVector) * mVertexCount];
    
  
    GXBegin(GX_LINES, GX_VTXFMT0, mVertexCount * 2);
    
    int a;
    for (a = 0; a < mVertexCount; a++)
    {
        pddiVector v = verts[a];
        pddiVector n = normals[1 + a * mult];
        
        GXPosition3f32(v.x, v.y, v.z);
        GXColor4u8(2, 2, 2, 255);
        
        GXPosition3f32(v.x + n.x, v.y + n.y, v.z + n.z);
        GXColor4u8(2, 2, 2, 255);
    }
    
    GXEnd();
}


