//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


#include <pddi/gamecube/gcskin.hpp>
#include <pddi/gamecube/gcmiskin.hpp>
#include <pddi/gamecube/gccon.hpp>

#include <pddi/pddi.hpp>
#include <pddi/base/baseshader.hpp>

static const int gcMatrixPaletteSize = 64;

#include <stdio.h>

#include <pddi/gamecube/mallocaligned.hpp>

// In gccon.cpp
float VertsToPrims(pddiPrimType type, int vertexcount);
float VertsToPrims(GXPrimitive type, int vertexcount);

extern GXPrimitive primTypeTable[5];
extern unsigned short gcDisplayListPrimTypes[5];


volatile int gcExtHardwareSkinning::mVerticesCompleted = 0;
volatile int gcExtHardwareSkinning::mPreviousSyncToken = 0;
gcExtHardwareSkinning::SkinDestVertex *gcExtHardwareSkinning::mVertexBuffer = NULL;
int gcExtHardwareSkinning::mVerticesSent = 0;
int gcExtHardwareSkinning::mVertexBufferSize = 0;

//--------------------------------------------------------------------------------------
class gcSkinBufferStream : public pddiPrimBufferStream
{
public:
    void Position(float x, float y, float z)
    {
        sv->position.Set(x, y, z);
        Next();
    }

    void Normal(float x, float y, float z)
    {
        sv->normal[0] = (short) (x * 32768.0F);
        sv->normal[1] = (short) (y * 32768.0F);
        sv->normal[2] = (short) (z * 32768.0F);
    }

    void Colour(pddiColour colour, int channel = 0)
    {
        // HBW: Multiple CBVs not yet implemented.  For now just ignore channel.
        
        // you can either have colours or normals, not both
        unsigned char *c = (unsigned char *)&sv->normal;
        c[0] = (unsigned char)colour.Red();
        c[1] = (unsigned char)colour.Green();
        c[2] = (unsigned char)colour.Blue();
        c[3] = (unsigned char)colour.Alpha();
    }

    void TexCoord1(float s, int channel = 0)
    { 
        TexCoord2(s, 0.0F, channel);
    }

    void TexCoord2(float s, float t, int channel = 0)
    {
        int offset = count * (buffer->mVertexFormat & 0x0F);
        buffer->mUVs[channel + offset].Set(s, t);
    }

    void TexCoord3(float s, float t, float u, int channel = 0)
    { 
        TexCoord2(s, t, channel);
    }

    void TexCoord4(float s, float t, float u, float v, int channel = 0)
    { 
        TexCoord2(s, t, channel);
    }

    void Specular(pddiColour colour)
    {
    }

    void SkinIndices(unsigned a, unsigned b, unsigned c, unsigned d)
    {
        sv->indices[0] = (unsigned char) a;
        sv->indices[1] = (unsigned char) b;
        sv->indices[2] = (unsigned char) c;
        sv->indices[3] = (unsigned char) d;
    }

    void SkinWeights(float a, float b, float c)
    {

        buffer->mTotalBoneCount -= sv->weightcount;

        float d = 1.0F - (a + b + c);

        sv->weights[0] = (unsigned short) (0.5F + a * 32768.0F);
        sv->weights[1] = (unsigned short) (0.5F + b * 32768.0F);
        sv->weights[2] = (unsigned short) (0.5F + c * 32768.0F);
        sv->weights[3] = (unsigned short) (0.5F + d * 32768.0F);
        sv->weightcount = 1;
        
        if (sv->weights[1] > 0) sv->weightcount = 2;
        if (sv->weights[2] > 0) sv->weightcount = 3;
        if (sv->weights[3] > 0) sv->weightcount = 4;

        if (sv->weightcount > buffer->mMaxWeights) buffer->mMaxWeights = sv->weightcount;
        buffer->mTotalBoneCount += sv->weightcount;
    }

    void Vertex(pddiVector *v, pddiColour c)    { Colour(c); Coord(v->x, v->y, v->z); }
    void Vertex(pddiVector *v, pddiVector *n)   { Normal(n->x, n->y, n->z); Coord(v->x, v->y, v->z); }
    void Vertex(pddiVector *v, pddiVector2 *uv) { UV(uv->v, uv->v); Coord(v->x, v->y, v->z); }
    void Vertex(pddiVector *v, pddiColour c, pddiVector2 *uv)  { Colour(c); UV(uv->v, uv->v); Coord(v->x, v->y, v->z); }
    void Vertex(pddiVector *v, pddiVector *n, pddiVector2 *uv) { Normal(n->x, n->y, n->z); UV(uv->v, uv->v); Coord(v->x, v->y, v->z); }

    void Next() { ++count; sv = &buffer->mVertices[count];}

    void Reset(gcSkinBuffer* b) { buffer = b; count = 0; sv = &buffer->mVertices[count];}


protected:
    unsigned count;
    gcSkinBuffer* buffer;
    gcSkinBuffer::SkinVertex* sv;
};







//************************************************************************************
//************************************************************************************
//************************************************************************************
//
// gcExtHardwareSkinning
//
//
gcExtHardwareSkinning::gcExtHardwareSkinning(gcContext *c) :
    mContext(c),
    mRootTransX(0.0F),
    mRootTransY(0.0F),
    mRootTransZ(0.0F)
{
    mPalette = (pddiMatrix *)mallocaligned(sizeof(pddiMatrix) * gcMatrixPaletteSize, 32);
    int a;
    for (a = 0; a < gcMatrixPaletteSize; a++)
    {
        mPalette[a].Identity();
    }

    mVertexBuffer = NULL;
    GXSetDrawSyncCallback(&gcExtHardwareSkinning::SyncCallback);

    mPreviousSyncToken = 0;

    SetVertexBufferSize(8192); // room for 8K verts default
    GXSetDrawSync(0);
    GXSetDrawSync(0);
}


//********************************************************
//
// gcExtHardwareSkinning
// Destructor
//
gcExtHardwareSkinning::~gcExtHardwareSkinning()
{
    freealigned(mVertexBuffer);
    freealigned(mPalette);
}


//********************************************************
//
// gcExtHardwareSkinning
// New Prim Buffer
//
pddiPrimBuffer *gcExtHardwareSkinning::NewPrimBuffer(unsigned maxWeights, pddiPrimBufferDesc *desc)
{
    if (desc->GetMemoryImaged()) return new gcMISkinBuffer;
    gcSkinBuffer *sb = new gcSkinBuffer;
    if (sb != NULL) sb->Create(desc);
    return sb;
}

//********************************************************
//
// gcExtHardwareSkinning
//
//
int gcExtHardwareSkinning::MaxMatrixPaletteSize(unsigned weightcount)
{
    return gcMatrixPaletteSize;
}


//********************************************************
//
// gcExtHardwareSkinning
// Set Matrix
//
void gcExtHardwareSkinning::SetMatrix(unsigned index, pddiMatrix *m)
{
    mPalette[index] = *m;
}

//********************************************************
//
// gcExtHardwareSkinning
// Begin
//
void gcExtHardwareSkinning::Begin(void)
{
    register unsigned int val;
    int scale;

    // set gqr5 for output normals, 2.6
    scale = 6;
    val = (unsigned int) (((scale & 0x3F) << 24) | (GQR_S8 << 16) | ((scale & 0x3F) << 8) | (GQR_S8 << 0));
    asm(mtspr gqr5, val);

    // set gqr6 for input normals, 1.15
    scale = 15;
    val = (unsigned int) (((scale & 0x3F) << 24) | (GQR_S16 << 16) | ((scale & 0x3F) << 8) | (GQR_S16 << 0));
    asm(mtspr gqr6, val);

    // Set gqr7 for weights, 1.15
    scale = 15;
    val = (unsigned int) (((scale & 0x3F) << 24) | (GQR_U16 << 16) | ((scale & 0x3F) << 8) | (GQR_U16 << 0));
    asm(mtspr gqr7, val);

    // If the previous skin has finished rendering, reset the pointers
    if (mVerticesCompleted >= mVertexBufferSize)
    {
        mVerticesCompleted -= mVertexBufferSize;
        mVerticesSent      -= mVertexBufferSize;
    }
}

//********************************************************
//
// gcExtHardwareSkinning
// End
//
void gcExtHardwareSkinning::End(void)
{
}

//********************************************************
//
// gcExtHardwareSkinning
// Draw Skin
//
void gcExtHardwareSkinning::DrawSkin(pddiShader *shader, pddiPrimBuffer *skin)
{
    // Put the translation that was in the bones back into the CTM

    mContext->FinalizeHardwareMatrix();
    gcSkinBuffer *b = dynamic_cast<gcSkinBuffer*>(skin);
    if (b != NULL) ((gcSkinBuffer *)skin)->Display(mContext, shader, mPalette, this);
    else           ((gcMISkinBuffer *)skin)->Display(mContext, shader, mPalette, this);

}



//********************************************************
//
// gcExtHardwareSkinning
// Set Vertex Buffer Size
//
void gcExtHardwareSkinning::SetVertexBufferSize(int s)
{
    // Make count even so buffer is 32B aligned
    s = (s + 1) & ~1;

    // The token used for sync in only 16bits
    PDDIASSERT(s < 0xE000);

    mVertexBufferSize = s;

    if (mVertexBuffer != NULL) freealigned((void *)mVertexBuffer);

    mVertexBuffer = (SkinDestVertex *)mallocaligned((size_t) (mVertexBufferSize * sizeof(SkinDestVertex)), 32);
    PDDIASSERT(mVertexBuffer != NULL);

    mVerticesSent      = 0;
    mVerticesCompleted = 0;
    mPreviousSyncToken = 0;
    GXSetDrawSync(0);
}



//********************************************************
//
// gcExtHardwareSkinning
// SkinBuffer
// returns sync toke for the stream
//
unsigned short gcExtHardwareSkinning::StartSkinBuffer(void *&buffer_address, int vertexcount, int allocsize)
{
    // Cheap hack so that MemoryImaged skin buffers don't care how big a SkinDestVertex is
    if (allocsize != 0) vertexcount = (allocsize + sizeof(SkinDestVertex) - 1) / sizeof(SkinDestVertex);

    // Buffer allocs need to be 32 byte aligned
    vertexcount  = (vertexcount + 1) & ~1;

    PDDIASSERT(mVertexBuffer != NULL);
    PDDIASSERT(vertexcount <= mVertexBufferSize);

    int bufferpos = mVerticesSent % mVertexBufferSize;

    // The buffer cannot wrap so if the requested vertex count won't fit
    // before the end of the buffer, start at the beginning
    if (bufferpos + vertexcount >= mVertexBufferSize)
    {
        // compute how many vertices at the end of the buffer will be ignored
        int pad = mVertexBufferSize - bufferpos;
        vertexcount += pad;

        // reset the local buffer pos
        bufferpos = 0;

        // If the buffer wraps I MUST invalidate the vertex cache
        GXInvalidateVtxCache();
    }

#ifdef PDDI_TRACK_STATS
    OSTime begintime = OSGetTime(); 
#endif

    int room_in_buffer = 0;
    unsigned int sanity = 0;
    const unsigned int sanity_max = 100000000;
    do
    {
        ++sanity;
        room_in_buffer = mVertexBufferSize - (mVerticesSent - mVerticesCompleted);
    } while ((room_in_buffer < vertexcount) && (sanity < sanity_max));

#ifdef PDDI_TRACK_STATS
    OSTime time = OSGetTime() - begintime; 
    float ms = ((float)OSTicksToMicroseconds(time) * 0.001F);
    mContext->ADD_STAT(PDDI_STAT_SKINNED_WAIT_MS, ms);
#endif

    if (sanity >= sanity_max)
    {
        printf("StartSkinBuffer Timeout!!!\n");
        printf("  Waiting for %d verts, only %d available.\n", vertexcount, room_in_buffer);
    }

    buffer_address = (void *) &mVertexBuffer[bufferpos];

    mVerticesSent += vertexcount;

    GXRedirectWriteGatherPipe(buffer_address);

    return (unsigned short) bufferpos;
}


//********************************************************
//
// gcExtHardwareSkinning
// End Fifo
// This will flush out any remaining data in the fifo
//
void gcExtHardwareSkinning::EndSkinBuffer(void)
{
    GXRestoreWriteGatherPipe();
}


//********************************************************
//
// gcExtHardwareSkinning
// Sync Callback
//
void gcExtHardwareSkinning::SyncCallback(unsigned short token)
{
    int diff = ((int)token) - mPreviousSyncToken;

    mVerticesCompleted += diff;
    // handle wrap of pointer
    if (diff < 0) mVerticesCompleted += mVertexBufferSize;

    mPreviousSyncToken = (int) token;
}



static gcSkinBufferStream theStream;


//************************************************************************************
//************************************************************************************
//************************************************************************************
//
// gcSkinBuffer
//
//
gcSkinBuffer::gcSkinBuffer() :
    mIndexCount(0),
    mVertexCount(0),
    mUVs(NULL),
    mVertices(NULL),
    mDisplayList(NULL),
    mDisplayListSize(0)
{
}

//------------------------------------------------------------------------------------
gcSkinBuffer::~gcSkinBuffer()
{
    freealigned(mVertices);
    if (mUVs != NULL)         delete[] mUVs;
    if (mDisplayList != NULL) freealigned(mDisplayList);

#ifdef PDDI_TRACK_STATS
    int alloc_size = (sizeof(SkinVertex) * (mVertexCount + 1)) + (sizeof(pddiVector2) * mVertexCount * (mVertexFormat & 0x0F));
    if (mDisplayList != NULL)  alloc_size += mDisplayListSize;
    gcContext::Context()->ADD_STAT(PDDI_STAT_BUFFERED_ALLOC, (float) (-alloc_size / 1024.0F));
    gcContext::Context()->ADD_STAT(PDDI_STAT_BUFFERED_COUNT, -1);
#endif

}

//------------------------------------------------------------------------------------
void gcSkinBuffer::Create(pddiPrimBufferDesc *desc)
{
    mPrimType     = primTypeTable[(int)desc->GetPrimType()];
    mVertexFormat = desc->GetVertexFormat();
    mIndexCount   = desc->GetIndexCount();
    mVertexCount  = desc->GetVertexCount();

    // Allocate the indices
    // I add one to the end of the array as a sentinel
    // The value in the extra index will be a duplicate of the last index
    if (mIndexCount > 0)
    {
        // one for position, one for colour or normal
        int index_per_vertex = 2;
        // If there is a texture, add indices
        index_per_vertex += (mVertexFormat & 0x0f);

        int index_size = 2;
        if (mVertexCount < 255) index_size = 1;
        mDisplayListSize = 3 + 1 + (index_size * index_per_vertex * mIndexCount);
        // round up to 32 byte length
        mDisplayListSize = (mDisplayListSize + 31) & ~31;

        mDisplayList = mallocaligned(mDisplayListSize, 32);
        PDDIASSERT(mDisplayList != NULL);

        // fill the display list with a whole lotta nops
        for (int a = 0; a < mDisplayListSize; a++) ((char *)mDisplayList)[a] = GX_NOP;

        // Setup the table header
        ((char *)mDisplayList)[1] = (char)gcDisplayListPrimTypes[desc->GetPrimType()];
        ((unsigned short *)mDisplayList)[1] = (unsigned short) mIndexCount;

        // Index data in the display list goes 4 bytes in
    }
    
    // Allocate the Verts
    // Put a sentinel here also, value doesn't matter
    mVertices = (SkinVertex *)mallocaligned(sizeof(SkinVertex) * (mVertexCount + 1), 32);
    mUVs      = new pddiVector2[mVertexCount * (mVertexFormat & 0x0F)];


    // initialize weights to default values because the chunk could
    // be missing weight info
    float w[4] = { 1.0F, 0.0F, 0.0F, 0.0F }; 
    for( int a = 0 ; a < mVertexCount ; a++ )
    {
        mVertices[a].weights[0] = (unsigned short) (0.5F + w[0] * 32768.0F);
        mVertices[a].weights[1] = (unsigned short) (0.5F + w[1] * 32768.0F);
        mVertices[a].weights[2] = (unsigned short) (0.5F + w[2] * 32768.0F);
        mVertices[a].weights[3] = (unsigned short) (0.5F + w[3] * 32768.0F);
        mVertices[a].weightcount = 1;      
    }

    mMaxWeights = 1;
    mTotalBoneCount = mMaxWeights * mVertexCount;

    // default if nothing is set later
    mDisplayFunction = &DisplayUntexturedLit;

#ifdef PDDI_TRACK_STATS
    int alloc_size = (sizeof(SkinVertex) * (mVertexCount + 1)) + (sizeof(pddiVector2) * mVertexCount * (mVertexFormat & 0x0F));
    if (mDisplayList != NULL)  alloc_size += mDisplayListSize;
    gcContext::Context()->ADD_STAT(PDDI_STAT_BUFFERED_ALLOC, (float) (alloc_size / 1024.0F));
    gcContext::Context()->ADD_STAT(PDDI_STAT_BUFFERED_COUNT, 1);
#endif

}


//------------------------------------------------------------------------------------
pddiPrimBufferStream *gcSkinBuffer::Lock()
{
    theStream.Reset(this);
    return &theStream;
}

//------------------------------------------------------------------------------------
void gcSkinBuffer::Unlock(pddiPrimBufferStream *stream)
{

    bool islit = false;
    if (mVertexFormat & PDDI_V_NORMAL)
    {
        islit = true;
    }

    bool istextured = false;
    if (mVertexFormat & 0xf)
    {
        istextured = true;
    }

    // decide which display function to use
    if (mIndexCount == 0) 
    {
        if (istextured)
        {
            if (islit) mDisplayFunction = &DisplayTexturedLit;
            else       mDisplayFunction = &DisplayTexturedUnlit;
        }
        else
        {
            if (islit) mDisplayFunction = &DisplayUntexturedLit;
            else       mDisplayFunction = &DisplayUntexturedUnlit;
        }
    }

    // Indexed prims
    else
    {
        if (islit)
        {
            //mDisplayFunction = &DisplayIndexedLit;
            if (mMaxWeights < 2) mDisplayFunction = &DisplayIndexedLitOneBone;
            else                 mDisplayFunction = &DisplayIndexedLit;
        }
        else 
        {
            //mDisplayFunction = &DisplayIndexedUnlit;
            if (mMaxWeights < 2) mDisplayFunction = &DisplayIndexedUnlitOneBone;
            else                 mDisplayFunction = &DisplayIndexedUnlit;
        }
    }

    DCFlushRange(mVertices, (unsigned long)mVertexCount * sizeof(SkinVertex));
    DCFlushRange(mUVs, (unsigned long)mVertexCount * sizeof(pddiVector2) * (mVertexFormat & 0x0F));
}


//-----------------------------------------------------------------------
void gcSkinBuffer::SetIndexBufferSize(int bufferSize)
{
    // No memory imaged skins yet
    PDDIASSERT(0);
}

//-----------------------------------------------------------------------
unsigned char *gcSkinBuffer::LockIndexBuffer(void)
{
    PDDIASSERT(0);
    return NULL;
}



//-----------------------------------------------------------------------
void gcSkinBuffer::UnlockIndexBuffer(int count)
{
    PDDIASSERT(0);
}



//------------------------------------------------------------------------------------
void gcSkinBuffer::SetIndices(unsigned short *indices, int count)
{

    // one for position, one for colour or normal
    int index_per_vertex = 2;
    // If there is a texture add the indices
    index_per_vertex += (mVertexFormat & 0x0F);

    int index_size = 2;
    if (mVertexCount < 255) index_size = 1;

    if (index_size == 2)
    {
        unsigned short *dlindices = (unsigned short *)mDisplayList;

        int pos = 2;
        int i;
        for (i = 0; i < count; i++)
        {
            int a;
            for (a = 0; a < index_per_vertex; a++) 
            {
                dlindices[pos] = indices[i];
                ++pos;
            }
        }
    }
    else
    {
        unsigned char *dlindices = (unsigned char *)mDisplayList;

        int pos = 4;
        int i;
        for (i = 0; i < count; i++)
        {
            int a;
            for (a = 0; a < index_per_vertex; a++) 
            {
                dlindices[pos] = (unsigned char)indices[i];
                ++pos;
            }
        }
    }

    DCFlushRange(mDisplayList, (unsigned long)mDisplayListSize);

    mIndexCount = count;

}

//------------------------------------------------------------------------------------
void gcSkinBuffer::Display(gcContext *context, pddiShader *shader, pddiMatrix *palette, gcExtHardwareSkinning *ext)
{

#ifdef PDDI_TRACK_STATS
        context->ADD_STAT(PDDI_STAT_BUFFERED_PRIM_CALLS, 1);
#endif

    // Set the material
    pddiBaseShader *material = (pddiBaseShader *)shader;

#ifdef PDDI_TRACK_STATS
    context->ADD_STAT(PDDI_STAT_MATERIAL_OPS, !material->IsCurrent());
    context->ADD_STAT(PDDI_STAT_SKINNED_BONES, mTotalBoneCount);
#endif

    material->SetMaterial();

    // Set the Vertex descriptions
    GXClearVtxDesc();

    // Setup direct rendering of deindexed skins
    if (mIndexCount == 0)
    {
        GXSetVtxAttrFmt(GX_VTXFMT0, GX_VA_POS, GX_POS_XYZ, GX_F32, 0);
        GXSetVtxDesc(GX_VA_POS, GX_DIRECT);

        if (mVertexFormat & PDDI_V_NORMAL)
        {
            GXSetVtxAttrFmt(GX_VTXFMT0, GX_VA_NRM, GX_NRM_XYZ, GX_F32, 0);
            GXSetVtxDesc(GX_VA_NRM, GX_DIRECT);
        }
        else if (mVertexFormat & PDDI_V_COLOUR)
        {
            GXSetVtxAttrFmt(GX_VTXFMT0, GX_VA_CLR0, GX_CLR_RGBA, GX_RGBA8, 0);
            GXSetVtxDesc(GX_VA_CLR0, GX_DIRECT);
        }

        // UVs are ALWAYS indexed
        int uvcount = (mVertexFormat & 0x0F);
        int a;
        for (a = 0; a < uvcount; a++)
        {
            GXSetVtxAttrFmt(GX_VTXFMT0, (GXAttr) (((int)GX_VA_TEX0) + a), GX_TEX_ST, GX_F32, 0);
            GXSetVtxDesc((GXAttr) (((int)GX_VA_TEX0) + a), GX_INDEX16);
            GXSetArray((GXAttr) (((int)GX_VA_TEX0) + a), (void *) &mUVs[a], sizeof(pddiVector2) * uvcount);
        }


        GXBegin(mPrimType, GX_VTXFMT0, (unsigned short)mVertexCount);

#ifdef PDDI_TRACK_STATS
        context->ADD_STAT(PDDI_STAT_BUFFERED_PRIM, VertsToPrims(mPrimType, mVertexCount));
        context->ADD_STAT(PDDI_STAT_BUFFERED_PRIM_VERT, mVertexCount);
        context->ADD_STAT(PDDI_STAT_SKINNED_XFORM_VERT, mVertexCount);

        OSTime begintime = OSGetTime(); 
#endif

        (this->*mDisplayFunction)(palette);

#ifdef PDDI_TRACK_STATS
        OSTime time = OSGetTime() - begintime; 
        float ms = ((float)OSTicksToMicroseconds(time) * 0.001F);
        context->ADD_STAT(PDDI_STAT_SKINNED_WAIT_MS, ms);
#endif

        GXEnd();
    }
    // Setup indirect rendering of INDEXED prims
    else
    {

        void *vbuffer;

        unsigned short sync = ext->StartSkinBuffer(vbuffer, mVertexCount);
        char *buffer = (char *)vbuffer;

#ifdef PDDI_TRACK_STATS
        OSTime begintime = OSGetTime(); 
#endif

        (this->*mDisplayFunction)(palette);

#ifdef PDDI_TRACK_STATS
        OSTime time = OSGetTime() - begintime; 
        float ms = ((float)OSTicksToMicroseconds(time) * 0.001F);
        context->ADD_STAT(PDDI_STAT_SKINNED_XFORM_MS, ms);
#endif

        ext->EndSkinBuffer();

        GXAttrType index_size = GX_INDEX16;
        if (mVertexCount < 255) index_size = GX_INDEX8;

        int comp_count = 1;

        GXSetVtxAttrFmt(GX_VTXFMT0, GX_VA_POS, GX_POS_XYZ, GX_F32, 0);
        GXSetVtxDesc(GX_VA_POS, index_size);
        GXSetArray(GX_VA_POS, (void *)buffer, 16);

        if (mVertexFormat & PDDI_V_NORMAL)
        {
            GXSetVtxAttrFmt(GX_VTXFMT0, GX_VA_NRM, GX_NRM_XYZ, GX_S8, 6);
            GXSetVtxDesc(GX_VA_NRM, index_size);
            GXSetArray(GX_VA_NRM, (void *) &buffer[12], 16);
            ++comp_count;
        }
        else if (mVertexFormat & PDDI_V_COLOUR)
        {
            GXSetVtxAttrFmt(GX_VTXFMT0, GX_VA_CLR0, GX_CLR_RGBA, GX_RGBA8, 0);
            GXSetVtxDesc(GX_VA_CLR0, index_size);
            GXSetArray(GX_VA_CLR0, (void *) &mVertices[0].normal[0], 32);
            ++comp_count;
        }

        int uvcount = (mVertexFormat & 0x0F);
        int a;
        for (a = 0; a < uvcount; a++)
        {
            GXSetVtxAttrFmt(GX_VTXFMT0, (GXAttr) (((int)GX_VA_TEX0) + a), GX_TEX_ST, GX_F32, 0);
            GXSetVtxDesc((GXAttr) (((int)GX_VA_TEX0) + a), index_size);
            GXSetArray((GXAttr) (((int)GX_VA_TEX0) + a), (void *) &mUVs[a], sizeof(pddiVector2) * uvcount);
            ++comp_count;
        }

#ifdef PDDI_TRACK_STATS
        context->ADD_STAT(PDDI_STAT_BUFFERED_INDEXED_PRIM, VertsToPrims(mPrimType, mIndexCount));
        context->ADD_STAT(PDDI_STAT_BUFFERED_INDEXED_PRIM_VERT, mIndexCount);
        context->ADD_STAT(PDDI_STAT_SKINNED_XFORM_VERT, mVertexCount);
#endif

        GXCallDisplayList(mDisplayList, (unsigned long) mDisplayListSize);

        GXSetDrawSync(sync);
    }
}



//--------------------------------------------------------------------------------------
//
// Register parameters
// r3 this (init code only), vertex pointer precompute in loop       
// r4 palette     
//    
// r5  fifo        
// r6  vertex count remaining
// r9  current vertex pointer
// r10 current matrix pointer  
// r11 bone count     
// r12 weight offset in current vertex 
//
// gqr0 is always NO translation (floats)
// gqr6 for normals              (1.15)
// gqr7 for weights              (0.16)
//
// fp0 xy pos
// fp1 zw pos
// fp2 xy norm
// fp3 zw norm
// fp4 current bone weight in ps0 & ps1
// fp5 temp matrix vals
// fp6 temp matrix vals

// fp9  working pos  xy
// fp10 working pos  zw
// fp11 working norm xy
// fp12 working norm zw
// fp13 out pos  xy
// fp14 out pos  zw
// fp15 out norm xy
// fp16 out norm zw
//
asm void gcSkinBuffer::DisplayIndexedLit(register pddiMatrix *palette)
{
    nofralloc

    // spill the extra registers
    stwu    r1, -32(r1)
    stfd    fp14, 8(r1)
    stfd    fp15, 16(r1)
    stfd    fp16, 24(r1)

    // preload the use registers
    lis   r5, 0xCC00     // upper 16 bits of GXFifo
    ori   r5, r5, 0x8000 // lower 16 bits of GXFifo
    lwz   r6, 0x14(r3)   // Vertex count
    addi  r7, 0, 0x08    // used for cache loading
    lwz   r9, 0x18(r3)   // base vertices pointer
    mtctr r6             // move the vertex count into the count register

    // NOTE: r3 (this) will be reused for precomputing the next matrix pointer
vertlooptop:

    lhz         r12, 0x16(r9)        // Load weight count
    addi        r11, r12, 0x0B       // add (0x0C - 1) so counter is offset into vertex matrix index array

    psq_l       fp0, 0x00(r9), 0, 0  // load position XY
    psq_l       fp1, 0x08(r9), 1, 0  // load position Z

    mulli       r12, r12, 2          // turn into offset for weight pointer

    psq_l       fp2, 0x10(r9), 0, 6  // load normal XY
    psq_l       fp3, 0x14(r9), 1, 6  // load normal Z

    lbzx        r10, r11, r9         // put matrix palette index into r10
    addi        r12, r12, 0x16       // r12 is now offset into vertex for current weight

    // zero the output vert
    ps_sub      fp13, fp13, fp13
    ps_sub      fp14, fp14, fp14
    mulli       r10, r10, 64          // cont building matrix pointer, mult by size of pddiMatrix
    ps_sub      fp15, fp15, fp15
    ps_sub      fp16, fp16, fp16

bonelooptop:

    // Load Matrix
    psq_lux     fp5,  r10, r4, 0, 0   // fp5  is m00 m01, r10 now has pointer to matrix
    psq_l       fp6,  0x08(r10), 0, 0 // fp6  is m02 m03

    addi        r11, r11, -1          // dec bone counter      
    psq_lx      fp4, r9, r12, 1, 7    // load weight in ps0 of fp4
    addi        r12, r12, -2          // subtract two to move to the next weight

    cmplwi      cr1, r11, 0x0B        // check for last bone

    ps_merge00  fp4, fp4, fp4         // copy weight into ps1 & ps0 of fp4

    lbzx        r3, r11, r9           // start building matrix pointer, put palette index into r3

    mulli       r3, r3, 64            // cont building matrix pointer, mult by size of pddiMatrix

    // Pos & Norm * matrix
    // out XY X
    ps_muls0    fp9,  fp5, fp0        // m00 m01 * px in fp9
    ps_muls0    fp11, fp5, fp2        // m00 m01 * nx in fp11
    psq_l       fp5,  0x10(r10), 0, 0 // fp5 is now m10 m11

    // out ZW X
    ps_muls0    fp10, fp6, fp0        // add m02 m03 * px to fp10
    ps_muls0    fp12, fp6, fp2        // add m02 m03 * nx to fp12
    psq_l       fp6,  0x18(r10), 0, 0 // fp6 is now m12 m13

    // out XY Y
    ps_madds1   fp9,  fp5, fp0, fp9   // add m10 m11 * pz to fp9
    ps_madds1   fp11, fp5, fp2, fp11  // add m10 m11 * nz to fp11
    psq_l       fp5,  0x20(r10), 0, 0 // fp5 is now m20 m21

    // out ZW Y
    ps_madds1   fp10, fp6, fp0, fp10  // add m12 m13 * pz to fp10
    ps_madds1   fp12, fp6, fp2, fp12  // add m12 m13 * nz to fp12
    psq_l       fp6,  0x28(r10), 0, 0 // fp6 is now m22 m23

    // out XY Z
    ps_madds0   fp9,  fp5, fp1, fp9   // add m20 m21 * pz to fp9
    ps_madds0   fp11, fp5, fp3, fp11  // add m20 m21 * nz to fp11
    psq_l       fp5,  0x30(r10), 0, 0 // fp5 is now m30 m31

    // out ZW Z
    ps_madds0   fp10, fp6, fp1, fp10  // add m22 m23 * pz to fp10
    ps_madds0   fp12, fp6, fp3, fp12  // add m22 m23 * nz to fp12
    psq_l       fp6,  0x38(r10), 0, 0 // fp6 is now m32 m33

    // out XY trans
    ps_add      fp9, fp5, fp9         // add m30 m31 to fp9

    // out ZW trans
    ps_add      fp10, fp6, fp10       // add m32 m33 to fp10

    addi        r10, r3, 0            // put matrix pointer into correct register

    // scale vertex & normal by bone weight and sum
    ps_madd     fp13, fp9,  fp4, fp13
    ps_madd     fp14, fp10, fp4, fp14
    ps_madd     fp15, fp11, fp4, fp15
    ps_madd     fp16, fp12, fp4, fp16

boneloopbottom:
    bne         cr1, bonelooptop      // branch if more bones to go

    addi        r9, r9, 0x20          // Increment the vertex pointer
    dcbt        r7, r9                // prefetch next vertex, r7 has 0x08 in it

    // output vertex to fifo
    psq_st      fp13, 0x00(r5), 0, 0  // pos xy
    psq_st      fp14, 0x00(r5), 1, 0  // pos z
    psq_st      fp15, 0x00(r5), 0, 5  // normal xy
    psq_st      fp16, 0x00(r5), 0, 5  // normal z

    bdnz+       vertlooptop           // branch if not there yet

    lfd         fp14, 8(r1)
    lfd         fp15, 16(r1)
    lfd         fp16, 24(r1)
    addi        r1, r1, 32

    blr      // return
}




//--------------------------------------------------------------------------------------
//
// Register parameters
// r3 this (init code only), vertex pointer precompute in loop       
// r4 palette     
//    
// r5  fifo        
// r6  vertex count remaining
// r9  current vertex pointer
// r10 current matrix pointer  
//
// gqr0 is always NO translation (floats)
// gqr5 for output normals       (2.6)
// gqr6 for normals              (1.15)
// gqr7 for weights              (0.16)
//
// fp0 xy pos
// fp1 zw pos
// fp2 xy norm
// fp3 zw norm
// fp5 temp matrix vals
// fp6 temp matrix vals

// fp9  working pos  xy
// fp10 working pos  zw
// fp11 working norm xy
// fp12 working norm zw
//
asm void gcSkinBuffer::DisplayIndexedLitOneBone(register pddiMatrix *palette)
{
    nofralloc

    // preload the use registers
    lis   r5, 0xCC00     // upper 16 bits of GXFifo
    ori   r5, r5, 0x8000 // lower 16 bits of GXFifo
    lwz   r6, 0x14(r3)   // Vertex count
    addi  r7, 0, 0x08    // used for cache loading
    lwz   r9, 0x18(r3)   // base vertices pointer
    mtctr r6             // move the vertex count into the count register

    // NOTE: r3 (this) will be reused for precomputing the next matrix pointer
vertlooptop:

    psq_l       fp0, 0x00(r9), 0, 0  // load position XY
    psq_l       fp1, 0x08(r9), 1, 0  // load position Z
    lbz         r10, 0x0C(r9)        // put matrix palette index into r10

    psq_l       fp2, 0x10(r9), 0, 6  // load normal XY
    psq_l       fp3, 0x14(r9), 1, 6  // load normal Z

    // zero the output vert
    mulli       r10, r10, 64          // cont building matrix pointer, mult by size of pddiMatrix

    // Load Matrix
    psq_lux     fp5,  r10, r4, 0, 0   // fp5  is m00 m01, r10 now has pointer to matrix
    psq_l       fp6,  0x08(r10), 0, 0 // fp6  is m02 m03

    // Pos & Norm * matrix
    // out XY X
    ps_muls0    fp9,  fp5, fp0        // m00 m01 * px in fp9
    ps_muls0    fp11, fp5, fp2        // m00 m01 * nx in fp11
    psq_l       fp5,  0x10(r10), 0, 0 // fp5 is now m10 m11

    // out ZW X
    ps_muls0    fp10, fp6, fp0        // add m02 m03 * px to fp10
    ps_muls0    fp12, fp6, fp2        // add m02 m03 * nx to fp12
    psq_l       fp6,  0x18(r10), 0, 0 // fp6 is now m12 m13

    // out XY Y
    ps_madds1   fp9,  fp5, fp0, fp9   // add m10 m11 * pz to fp9
    ps_madds1   fp11, fp5, fp2, fp11  // add m10 m11 * nz to fp11
    psq_l       fp5,  0x20(r10), 0, 0 // fp5 is now m20 m21

    // out ZW Y
    ps_madds1   fp10, fp6, fp0, fp10  // add m12 m13 * pz to fp10
    ps_madds1   fp12, fp6, fp2, fp12  // add m12 m13 * nz to fp12
    psq_l       fp6,  0x28(r10), 0, 0 // fp6 is now m22 m23

    // out XY Z
    ps_madds0   fp9,  fp5, fp1, fp9   // add m20 m21 * pz to fp9
    ps_madds0   fp11, fp5, fp3, fp11  // add m20 m21 * nz to fp11
    psq_l       fp5,  0x30(r10), 0, 0 // fp5 is now m30 m31

    // out ZW Z
    ps_madds0   fp10, fp6, fp1, fp10  // add m22 m23 * pz to fp10
    ps_madds0   fp12, fp6, fp3, fp12  // add m22 m23 * nz to fp12
    psq_l       fp6,  0x38(r10), 0, 0 // fp6 is now m32 m33

    // out XY trans
    ps_add      fp9, fp5, fp9         // add m30 m31 to fp9

    // out ZW trans
    ps_add      fp10, fp6, fp10       // add m32 m33 to fp10

    addi        r9, r9, 0x20          // Increment the vertex pointer
    dcbt        r7, r9                // prefetch next vertex, r7 has 0x08 in it

    // output vertex to fifo
    psq_st      fp9,  0x00(r5), 0, 0  // pos xy
    psq_st      fp10, 0x00(r5), 1, 0  // pos z
    psq_st      fp11, 0x00(r5), 0, 5  // normal xy
    psq_st      fp12, 0x00(r5), 0, 5  // normal z

    bdnz+       vertlooptop           // branch if not there yet

    blr      // return
}









//--------------------------------------------------------------------------------------
//
// Register parameters
// r3 this (init code only), vertex pointer precompute in loop       
// r4 palette     
//    
// r5  fifo        
// r6  vertex count remaining
// r9  current vertex pointer
// r10 current matrix pointer  
// r11 bone count     
// r12 weight offset in current vertex 
//
// gqr0 is always NO translation (floats)
// gqr6 for normals              (1.15)
// gqr7 for weights              (0.16)
//
// fp0 xy pos
// fp1 zw pos
// fp4 current bone weight in ps0 & ps1
// fp5 temp matrix vals
// fp6 temp matrix vals

// fp9  working pos  xy
// fp10 working pos  zw
// fp13 out pos  xy
// fp14 out pos  zw
//
asm void gcSkinBuffer::DisplayIndexedUnlit(register pddiMatrix *palette)
{
    nofralloc

    // spill the extra registers
    stwu    r1, -16(r1)
    stfd    fp14, 8(r1)

    // preload the use registers
    lis   r5, 0xCC00     // upper 16 bits of GXFifo
    ori   r5, r5, 0x8000 // lower 16 bits of GXFifo
    lwz   r6, 0x14(r3)   // Vertex count
    addi  r7, 0, 0x08    // used for cache loading
    lwz   r9, 0x18(r3)   // base vertices pointer
    mtctr r6             // move the vertex count into the count register

    // NOTE: r3 (this) will be reused for precomputing the next matrix pointer
vertlooptop:

    lhz         r12, 0x16(r9)        // Load weight count
    addi        r11, r12, 0x0B       // add (0x0C - 1) so counter is offset into vertex matrix index array

    psq_l       fp0, 0x00(r9), 0, 0  // load position XY
    psq_l       fp1, 0x08(r9), 1, 0  // load position Z

    mulli       r12, r12, 2          // turn into offset for weight pointer

    lbzx        r10, r11, r9         // put matrix palette index into r10
    addi        r12, r12, 0x16       // r12 is now offset into vertex for current weight

    // zero the output vert
    ps_sub      fp13, fp13, fp13
    ps_sub      fp14, fp14, fp14
    mulli       r10, r10, 64          // cont building matrix pointer, mult by size of pddiMatrix
    ps_sub      fp15, fp15, fp15
    ps_sub      fp16, fp16, fp16

bonelooptop:

    // Load Matrix
    psq_lux     fp5,  r10, r4, 0, 0   // fp5  is m00 m01, r10 now has pointer to matrix
    psq_l       fp6,  0x08(r10), 0, 0 // fp6  is m02 m03

    addi        r11, r11, -1          // dec bone counter      
    psq_lx      fp4, r9, r12, 1, 7    // load weight in ps0 of fp4
    addi        r12, r12, -2          // subtract two to move to the next weight

    cmplwi      cr1, r11, 0x0B        // check for last bone

    ps_merge00  fp4, fp4, fp4         // copy weight into ps1 & ps0 of fp4

    lbzx        r3, r11, r9           // start building matrix pointer, put palette index into r3

    mulli       r3, r3, 64            // cont building matrix pointer, mult by size of pddiMatrix

    // Pos & Norm * matrix
    // out XY X
    ps_muls0    fp9,  fp5, fp0        // m00 m01 * px in fp9
    psq_l       fp5,  0x10(r10), 0, 0 // fp5 is now m10 m11

    // out ZW X
    ps_muls0    fp10, fp6, fp0        // add m02 m03 * px to fp10
    psq_l       fp6,  0x18(r10), 0, 0 // fp6 is now m12 m13

    // out XY Y
    ps_madds1   fp9,  fp5, fp0, fp9   // add m10 m11 * pz to fp9
    psq_l       fp5,  0x20(r10), 0, 0 // fp5 is now m20 m21

    // out ZW Y
    ps_madds1   fp10, fp6, fp0, fp10  // add m12 m13 * pz to fp10
    psq_l       fp6,  0x28(r10), 0, 0 // fp6 is now m22 m23

    // out XY Z
    ps_madds0   fp9,  fp5, fp1, fp9   // add m20 m21 * pz to fp9
    psq_l       fp5,  0x30(r10), 0, 0 // fp5 is now m30 m31

    // out ZW Z
    ps_madds0   fp10, fp6, fp1, fp10  // add m22 m23 * pz to fp10
    psq_l       fp6,  0x38(r10), 0, 0 // fp6 is now m32 m33

    // out XY trans
    ps_add      fp9, fp5, fp9         // add m30 m31 to fp9

    // out ZW trans
    ps_add      fp10, fp6, fp10       // add m32 m33 to fp10

    addi        r10, r3, 0            // put matrix pointer into correct register

    // scale vertex & normal by bone weight and sum
    ps_madd     fp13, fp9,  fp4, fp13
    ps_madd     fp14, fp10, fp4, fp14

boneloopbottom:
    bne         cr1, bonelooptop      // branch if more bones to go

    addi        r9, r9, 0x20          // Increment the vertex pointer
    dcbt        r7, r9                // prefetch next vertex, r7 has 0x08 in it

    // output vertex to fifo
    psq_st      fp13, 0x00(r5), 0, 0  // pos xy
    psq_st      fp14, 0x00(r5), 0, 0  // pos z with 4 bytes pad a end of write

    bdnz+       vertlooptop           // branch if not there yet

    lfd         fp14, 8(r1)
    addi        r1, r1, 16

    blr      // return
}




//--------------------------------------------------------------------------------------
//
// Register parameters
// r3 this (init code only), vertex pointer precompute in loop       
// r4 palette     
//    
// r5  fifo        
// r6  vertex count remaining
// r9  current vertex pointer
// r10 current matrix pointer  
//
// gqr0 is always NO translation (floats)
// gqr5 for output normals       (2.6)
// gqr6 for normals              (1.15)
// gqr7 for weights              (0.16)
//
// fp0 xy pos
// fp1 zw pos
// fp5 temp matrix vals
// fp6 temp matrix vals

// fp9  working pos  xy
// fp10 working pos  zw
//
asm void gcSkinBuffer::DisplayIndexedUnlitOneBone(register pddiMatrix *palette)
{
    nofralloc

    // preload the use registers
    lis   r5, 0xCC00     // upper 16 bits of GXFifo
    ori   r5, r5, 0x8000 // lower 16 bits of GXFifo
    lwz   r6, 0x14(r3)   // Vertex count
    addi  r7, 0, 0x08    // used for cache loading
    lwz   r9, 0x18(r3)   // base vertices pointer
    mtctr r6             // move the vertex count into the count register

    // NOTE: r3 (this) will be reused for precomputing the next matrix pointer
vertlooptop:

    psq_l       fp0, 0x00(r9), 0, 0  // load position XY
    psq_l       fp1, 0x08(r9), 1, 0  // load position Z
    lbz         r10, 0x0C(r9)        // put matrix palette index into r10

    // zero the output vert
    mulli       r10, r10, 64          // cont building matrix pointer, mult by size of pddiMatrix

    // Load Matrix
    psq_lux     fp5,  r10, r4, 0, 0   // fp5  is m00 m01, r10 now has pointer to matrix
    psq_l       fp6,  0x08(r10), 0, 0 // fp6  is m02 m03

    // Pos & Norm * matrix
    // out XY X
    ps_muls0    fp9,  fp5, fp0        // m00 m01 * px in fp9
    psq_l       fp5,  0x10(r10), 0, 0 // fp5 is now m10 m11

    // out ZW X
    ps_muls0    fp10, fp6, fp0        // add m02 m03 * px to fp10
    psq_l       fp6,  0x18(r10), 0, 0 // fp6 is now m12 m13

    // out XY Y
    ps_madds1   fp9,  fp5, fp0, fp9   // add m10 m11 * pz to fp9
    psq_l       fp5,  0x20(r10), 0, 0 // fp5 is now m20 m21

    // out ZW Y
    ps_madds1   fp10, fp6, fp0, fp10  // add m12 m13 * pz to fp10
    psq_l       fp6,  0x28(r10), 0, 0 // fp6 is now m22 m23

    // out XY Z
    ps_madds0   fp9,  fp5, fp1, fp9   // add m20 m21 * pz to fp9
    psq_l       fp5,  0x30(r10), 0, 0 // fp5 is now m30 m31

    // out ZW Z
    ps_madds0   fp10, fp6, fp1, fp10  // add m22 m23 * pz to fp10
    psq_l       fp6,  0x38(r10), 0, 0 // fp6 is now m32 m33

    // out XY trans
    ps_add      fp9, fp5, fp9         // add m30 m31 to fp9

    // out ZW trans
    ps_add      fp10, fp6, fp10       // add m32 m33 to fp10

    addi        r9, r9, 0x20          // Increment the vertex pointer
    dcbt        r7, r9                // prefetch next vertex, r7 has 0x08 in it

    // output vertex to fifo
    psq_st      fp9,  0x00(r5), 0, 0  // pos xy
    psq_st      fp10, 0x00(r5), 0, 0  // pos z with 4 bytes of pad

    bdnz+       vertlooptop           // branch if not there yet

    blr      // return
}











//--------------------------------------------------------------------------------------
//
// Register parameters
// r3 this (init code only), vertex pointer precompute in loop       
// r4 palette     
//    
// r5  fifo        
// r6  vertex count remaining
// r7  offset to next vertex for prefetching
// r9  current vertex pointer
// r10 current matrix pointer  
// r11 bone count     
// r12 weight offset in current vertex
// r14 vertex count
//
// gqr0 is always NO translation (floats)
// gqr6 for normals              (1.15)
// gqr7 for weights              (0.16)
//
// fp0 xy pos
// fp1 zw pos
// fp2 xy norm
// fp3 zw norm
// fp4 current bone weight in ps0 & ps1
// fp5 temp matrix vals
// fp6 temp matrix vals

// fp9  working pos  xy
// fp10 working pos  zw
// fp11 working norm xy
// fp12 working norm zw
// fp13 out pos  xy
// fp14 out pos  zw
// fp15 out norm xy
// fp16 out norm zw
// fp17 out UV
//
asm void gcSkinBuffer::DisplayTexturedLit(register pddiMatrix *palette)
{
    nofralloc

    // spill the extra registers
    stwu    r1, -56(r1)
    stfd    fp14,  8(r1)
    stfd    fp15, 16(r1)
    stfd    fp16, 24(r1)
    stfd    fp17, 32(r1)
    stw     r14,  40(r1)
    stw     r16,  44(r1)

    mfspr   r16, 8      // save LR

    // create brach dest for UV index count
    bcl     20, 31, lraddr        // load lr with address of lraddr
lraddr:
    mfspr   r11, 8                // grab lr
    addi    r11, r11, uvindices - lraddr 
    lwz     r14, 0x20(r3)         // load vertex format
    andi.   r14, r14, 0x0F        // mask off the UV count
    li      r12, 8                // max 8 UVs
    sub     r12, r12, r14         // instructions to skip = 8-numuvs
    slwi    r12, r12, 2           // multiply by 4 for instruction size
    add     r11, r11, r12         // add to the address of the first UV index instruction
    mtspr   8, r11                // store the branch address in LR

    // preload the use registers
    lis   r5, 0xCC00     // upper 16 bits of GXFifo
    ori   r5, r5, 0x8000 // lower 16 bits of GXFifo
    lwz   r6, 0x14(r3)   // Vertex count
    addi  r7, 0, 0x08    // used for cache loading
    lwz   r9, 0x18(r3)   // base vertices pointer
    mtctr r6             // move the vertex count into the count register

    sub   r14, r14, r14  // zero the vertex count register

    // NOTE: r3 (this) will be reused for precomputing the next matrix pointer
vertlooptop:

    lhz         r12, 0x16(r9)        // Load weight count
    addi        r11, r12, 0x0B       // add (0x0C - 1) so counter is offset into vertex matrix index array

    psq_l       fp0, 0x00(r9), 0, 0  // load position XY
    psq_l       fp1, 0x08(r9), 1, 0  // load position Z

    mulli       r12, r12, 2          // turn into offset for weight pointer

    psq_l       fp2, 0x10(r9), 0, 6  // load normal XY
    psq_l       fp3, 0x14(r9), 1, 6  // load normal Z

    lbzx        r10, r11, r9         // put matrix palette index into r10
    addi        r12, r12, 0x16       // r12 is now offset into vertex for current weight

    // zero the output vert
    ps_sub      fp13, fp13, fp13
    ps_sub      fp14, fp14, fp14
    mulli       r10, r10, 64          // cont building matrix pointer, mult by size of pddiMatrix
    ps_sub      fp15, fp15, fp15
    ps_sub      fp16, fp16, fp16

bonelooptop:

    // Load Matrix
    psq_lux     fp5,  r10, r4, 0, 0   // fp5  is m00 m01, r10 now has pointer to matrix
    psq_l       fp6,  0x08(r10), 0, 0 // fp6  is m02 m03

    addi        r11, r11, -1          // dec bone counter      
    psq_lx      fp4, r9, r12, 1, 7    // load weight in ps0 of fp4
    addi        r12, r12, -2          // subtract two to move to the next weight

    cmplwi      cr1, r11, 0x0B        // check for last bone

    ps_merge00  fp4, fp4, fp4         // copy weight into ps1 & ps0 of fp4

    lbzx        r3, r11, r9           // start building matrix pointer, put palette index into r3

    mulli       r3, r3, 64            // cont building matrix pointer, mult by size of pddiMatrix

    // Pos & Norm * matrix
    // out XY X
    ps_muls0    fp9,  fp5, fp0        // m00 m01 * px in fp9
    ps_muls0    fp11, fp5, fp2        // m00 m01 * nx in fp11
    psq_l       fp5,  0x10(r10), 0, 0 // fp5 is now m10 m11

    // out ZW X
    ps_muls0    fp10, fp6, fp0        // add m02 m03 * px to fp10
    ps_muls0    fp12, fp6, fp2        // add m02 m03 * nx to fp12
    psq_l       fp6,  0x18(r10), 0, 0 // fp6 is now m12 m13

    // out XY Y
    ps_madds1   fp9,  fp5, fp0, fp9   // add m10 m11 * pz to fp9
    ps_madds1   fp11, fp5, fp2, fp11  // add m10 m11 * nz to fp11
    psq_l       fp5,  0x20(r10), 0, 0 // fp5 is now m20 m21

    // out ZW Y
    ps_madds1   fp10, fp6, fp0, fp10  // add m12 m13 * pz to fp10
    ps_madds1   fp12, fp6, fp2, fp12  // add m12 m13 * nz to fp12
    psq_l       fp6,  0x28(r10), 0, 0 // fp6 is now m22 m23

    // out XY Z
    ps_madds0   fp9,  fp5, fp1, fp9   // add m20 m21 * pz to fp9
    ps_madds0   fp11, fp5, fp3, fp11  // add m20 m21 * nz to fp11
    psq_l       fp5,  0x30(r10), 0, 0 // fp5 is now m30 m31

    // out ZW Z
    ps_madds0   fp10, fp6, fp1, fp10  // add m22 m23 * pz to fp10
    ps_madds0   fp12, fp6, fp3, fp12  // add m22 m23 * nz to fp12
    psq_l       fp6,  0x38(r10), 0, 0 // fp6 is now m32 m33

    // out XY trans
    ps_add      fp9, fp5, fp9         // add m30 m31 to fp9

    // out ZW trans
    ps_add      fp10, fp6, fp10       // add m32 m33 to fp10

    addi        r10, r3, 0            // put matrix pointer into correct register

    // scale vertex & normal by bone weight and sum
    ps_madd     fp13, fp9,  fp4, fp13
    ps_madd     fp14, fp10, fp4, fp14
    ps_madd     fp15, fp11, fp4, fp15
    ps_madd     fp16, fp12, fp4, fp16

boneloopbottom:
    bne         cr1, bonelooptop      // branch if more bones to go

    addi        r9, r9, 0x20          // Increment the vertex pointer
    dcbt        r7, r9                // prefetch next vertex, r7 has 0x08 in it

    // output vertex to fifo
    psq_st      fp13, 0x00(r5), 0, 0  // pos xy

    psq_st      fp14, 0x00(r5), 1, 0  // pos z
    psq_st      fp15, 0x00(r5), 0, 0  // normal xy
    psq_st      fp16, 0x00(r5), 1, 0  // normal z

    blr                               // skip the correct number of UV indices  
uvindices:
    sth         r14, 0x00(r5)         // send UV index 
    sth         r14, 0x00(r5)         // send UV index 
    sth         r14, 0x00(r5)         // send UV index 
    sth         r14, 0x00(r5)         // send UV index 
    sth         r14, 0x00(r5)         // send UV index 
    sth         r14, 0x00(r5)         // send UV index 
    sth         r14, 0x00(r5)         // send UV index 
    sth         r14, 0x00(r5)         // send UV index 

    addi        r14, r14, 1           // increment vertex count
    bdnz+       vertlooptop           // branch if not there yet

    mtspr       8, r16                // restore LR

    lfd         fp14,  8(r1)
    lfd         fp15, 16(r1)
    lfd         fp16, 24(r1)
    lfd         fp17, 32(r1)
    lwz         r14,  40(r1)
    lwz         r16,  44(r1)
    addi        r1, r1, 56

    blr      // return
}




//--------------------------------------------------------------------------------------
//
// Register parameters
// r3 this (init code only), vertex pointer precompute in loop       
// r4 palette     
//    
// r5  fifo        
// r6  vertex count remaining
// r7  offset to next vertex for prefetching
// r8  output colour
// r9  current vertex pointer
// r10 current matrix pointer  
// r11 bone count     
// r12 weight offset in current vertex 
//
// gqr0 is always NO translation (floats)
// gqr6 for normals              (1.15)
// gqr7 for weights              (0.16)
//
// fp0 xy pos
// fp1 zw pos
// fp4 current bone weight in ps0 & ps1
// fp5 temp matrix vals
// fp6 temp matrix vals

// fp9  working pos  xy
// fp10 working pos  zw
// fp13 out pos  xy
// fp14 out pos  zw
// fp17 out UV
//
asm void gcSkinBuffer::DisplayTexturedUnlit(register pddiMatrix *palette)
{
    nofralloc

    // spill the extra registers
    stwu    r1, -32(r1)
    stfd    fp14, 8(r1)
    stfd    fp17, 16(r1)
    stw     r14,  24(r1)
    stw     r16,  28(r1)

    mfspr   r16, 8      // save LR

    // create brach dest for UV index count
    bcl     20, 31, lraddr        // load lr with address of lraddr
lraddr:
    mfspr   r11, 8                // grab lr
    addi    r11, r11, uvindices - lraddr 
    lwz     r14, 0x20(r3)         // load vertex format
    andi.   r14, r14, 0x0F        // mask off the UV count
    li      r12, 8                // max 8 UVs
    sub     r12, r12, r14         // instructions to skip = 8-numuvs
    slwi    r12, r12, 2           // multiply by 4 for instruction size
    add     r11, r11, r12         // add to the address of the first UV index instruction
    mtspr   8, r11                // store the branch address in LR


    // preload the use registers
    lis   r5, 0xCC00     // upper 16 bits of GXFifo
    ori   r5, r5, 0x8000 // lower 16 bits of GXFifo
    lwz   r6, 0x14(r3)   // Vertex count
    addi  r7, 0, 0x08    // used for cache loading
    lwz   r9, 0x18(r3)   // base vertices pointer
    mtctr r6             // move the vertex count into the count register

    sub   r14, r14, r14  // zero the vertex count register

    // NOTE: r3 (this) will be reused for precomputing the next matrix pointer
vertlooptop:

    lhz         r12, 0x16(r9)        // Load weight count
    addi        r11, r12, 0x0B       // add (0x0C - 1) so counter is offset into vertex matrix index array

    psq_l       fp0, 0x00(r9), 0, 0  // load position XY
    psq_l       fp1, 0x08(r9), 1, 0  // load position Z

    mulli       r12, r12, 2          // turn into offset for weight pointer

    lwz         r8,   0x10(r9)       // Load colour directly into output

    lbzx        r10, r11, r9         // put matrix palette index into r10
    addi        r12, r12, 0x16       // r12 is now offset into vertex for current weight

    // zero the output vert
    ps_sub      fp13, fp13, fp13
    ps_sub      fp14, fp14, fp14
    mulli       r10, r10, 64          // cont building matrix pointer, mult by size of pddiMatrix

bonelooptop:

    // Load Matrix
    psq_lux     fp5,  r10, r4, 0, 0   // fp5  is m00 m01, r10 now has pointer to matrix
    psq_l       fp6,  0x08(r10), 0, 0 // fp6  is m02 m03

    addi        r11, r11, -1          // dec bone counter      
    psq_lx      fp4, r9, r12, 1, 7    // load weight in ps0 of fp4
    addi        r12, r12, -2          // subtract two to move to the next weight

    cmplwi      cr1, r11, 0x0B        // check for last bone

    ps_merge00  fp4, fp4, fp4         // copy weight into ps1 & ps0 of fp4

    lbzx        r3, r11, r9           // start building matrix pointer, put palette index into r3

    mulli       r3, r3, 64            // cont building matrix pointer, mult by size of pddiMatrix

    // Pos * matrix
    // out XY X
    ps_muls0    fp9,  fp5, fp0        // m00 m01 * px in fp9
    psq_l       fp5,  0x10(r10), 0, 0 // fp5 is now m10 m11

    // out ZW X
    ps_muls0    fp10, fp6, fp0        // add m02 m03 * px to fp10
    psq_l       fp6,  0x18(r10), 0, 0 // fp6 is now m12 m13

    // out XY Y
    ps_madds1   fp9,  fp5, fp0, fp9   // add m10 m11 * pz to fp9
    psq_l       fp5,  0x20(r10), 0, 0 // fp5 is now m20 m21

    // out ZW Y
    ps_madds1   fp10, fp6, fp0, fp10  // add m12 m13 * pz to fp10
    psq_l       fp6,  0x28(r10), 0, 0 // fp6 is now m22 m23

    // out XY Z
    ps_madds0   fp9,  fp5, fp1, fp9   // add m20 m21 * pz to fp9
    psq_l       fp5,  0x30(r10), 0, 0 // fp5 is now m30 m31

    // out ZW Z
    ps_madds0   fp10, fp6, fp1, fp10  // add m22 m23 * pz to fp10
    psq_l       fp6,  0x38(r10), 0, 0 // fp6 is now m32 m33

    // out XY trans
    ps_add      fp9, fp5, fp9         // add m30 m31 to fp9

    // out ZW trans
    ps_add      fp10, fp6, fp10       // add m32 m33 to fp10

    addi        r10, r3, 0            // put matrix pointer into correct register

    // scale vertex & normal by bone weight and sum
    ps_madd     fp13, fp9,  fp4, fp13
    ps_madd     fp14, fp10, fp4, fp14

boneloopbottom:
    bne         cr1, bonelooptop      // branch if more bones to go

    addi        r9, r9, 0x20          // Increment the vertex pointer
    dcbt        r7, r9                // prefetch next vertex, r7 has 0x08 in it

    // output vertex to fifo
    psq_st      fp13, 0x00(r5), 0, 0  // pos xy
    psq_st      fp14, 0x00(r5), 1, 0  // pos z
    stw         r8,   0x00(r5)        // colour

    blr                               // skip the correct number of UV indices  
uvindices:
    sth         r14, 0x00(r5)         // send UV index 
    sth         r14, 0x00(r5)         // send UV index 
    sth         r14, 0x00(r5)         // send UV index 
    sth         r14, 0x00(r5)         // send UV index 
    sth         r14, 0x00(r5)         // send UV index 
    sth         r14, 0x00(r5)         // send UV index 
    sth         r14, 0x00(r5)         // send UV index 
    sth         r14, 0x00(r5)         // send UV index 

    addi        r14, r14, 1           // increment vertex count
    bdnz+       vertlooptop           // branch if not there yet

    mtspr       8, r16                // restore LR

    lfd         fp14, 8(r1)
    lfd         fp17, 16(r1)
    lwz         r14,  24(r1)
    lwz         r16,  28(r1)

    addi        r1, r1, 32

    blr      // return
}





//--------------------------------------------------------------------------------------
//
// Register parameters
// r3 this (init code only), vertex pointer precompute in loop       
// r4 palette     
//    
// r5  fifo        
// r6  vertex count remaining
// r7  offset to next vertex for prefetching
// r9  current vertex pointer
// r10 current matrix pointer  
// r11 bone count     
// r12 weight offset in current vertex 
//
// gqr0 is always NO translation (floats)
// gqr6 for normals              (1.15)
// gqr7 for weights              (0.16)
//
// fp0 xy pos
// fp1 zw pos
// fp2 xy norm
// fp3 zw norm
// fp4 current bone weight in ps0 & ps1
// fp5 temp matrix vals
// fp6 temp matrix vals

// fp9  working pos  xy
// fp10 working pos  zw
// fp11 working norm xy
// fp12 working norm zw
// fp13 out pos  xy
// fp14 out pos  zw
// fp15 out norm xy
// fp16 out norm zw
//
asm void gcSkinBuffer::DisplayUntexturedLit(register pddiMatrix *palette)
{
    nofralloc

    // spill the extra registers
    stwu    r1, -32(r1)
    stfd    fp14, 8(r1)
    stfd    fp15, 16(r1)
    stfd    fp16, 24(r1)

    // preload the use registers
    lis   r5, 0xCC00     // upper 16 bits of GXFifo
    ori   r5, r5, 0x8000 // lower 16 bits of GXFifo
    lwz   r6, 0x14(r3)   // Vertex count
    addi  r7, 0, 0x08    // used for cache loading
    lwz   r9, 0x18(r3)   // base vertices pointer
    mtctr r6             // move the vertex count into the count register

    // NOTE: r3 (this) will be reused for precomputing the next matrix pointer
vertlooptop:

    lhz         r12, 0x16(r9)        // Load weight count
    addi        r11, r12, 0x0B       // add (0x0C - 1) so counter is offset into vertex matrix index array

    psq_l       fp0, 0x00(r9), 0, 0  // load position XY
    psq_l       fp1, 0x08(r9), 1, 0  // load position Z

    mulli       r12, r12, 2          // turn into offset for weight pointer

    psq_l       fp2, 0x10(r9), 0, 6  // load normal XY
    psq_l       fp3, 0x14(r9), 1, 6  // load normal Z

    lbzx        r10, r11, r9         // put matrix palette index into r10
    addi        r12, r12, 0x16       // r12 is now offset into vertex for current weight

    // zero the output vert
    ps_sub      fp13, fp13, fp13
    ps_sub      fp14, fp14, fp14
    mulli       r10, r10, 64          // cont building matrix pointer, mult by size of pddiMatrix
    ps_sub      fp15, fp15, fp15
    ps_sub      fp16, fp16, fp16

bonelooptop:

    // Load Matrix
    psq_lux     fp5,  r10, r4, 0, 0   // fp5  is m00 m01, r10 now has pointer to matrix
    psq_l       fp6,  0x08(r10), 0, 0 // fp6  is m02 m03

    addi        r11, r11, -1          // dec bone counter      
    psq_lx      fp4, r9, r12, 1, 7    // load weight in ps0 of fp4
    addi        r12, r12, -2          // subtract two to move to the next weight

    cmplwi      cr1, r11, 0x0B        // check for last bone

    ps_merge00  fp4, fp4, fp4         // copy weight into ps1 & ps0 of fp4

    lbzx        r3, r11, r9           // start building matrix pointer, put palette index into r3

    mulli       r3, r3, 64            // cont building matrix pointer, mult by size of pddiMatrix

    // Pos & Norm * matrix
    // out XY X
    ps_muls0    fp9,  fp5, fp0        // m00 m01 * px in fp9
    ps_muls0    fp11, fp5, fp2        // m00 m01 * nx in fp11
    psq_l       fp5,  0x10(r10), 0, 0 // fp5 is now m10 m11

    // out ZW X
    ps_muls0    fp10, fp6, fp0        // add m02 m03 * px to fp10
    ps_muls0    fp12, fp6, fp2        // add m02 m03 * nx to fp12
    psq_l       fp6,  0x18(r10), 0, 0 // fp6 is now m12 m13

    // out XY Y
    ps_madds1   fp9,  fp5, fp0, fp9   // add m10 m11 * pz to fp9
    ps_madds1   fp11, fp5, fp2, fp11  // add m10 m11 * nz to fp11
    psq_l       fp5,  0x20(r10), 0, 0 // fp5 is now m20 m21

    // out ZW Y
    ps_madds1   fp10, fp6, fp0, fp10  // add m12 m13 * pz to fp10
    ps_madds1   fp12, fp6, fp2, fp12  // add m12 m13 * nz to fp12
    psq_l       fp6,  0x28(r10), 0, 0 // fp6 is now m22 m23

    // out XY Z
    ps_madds0   fp9,  fp5, fp1, fp9   // add m20 m21 * pz to fp9
    ps_madds0   fp11, fp5, fp3, fp11  // add m20 m21 * nz to fp11
    psq_l       fp5,  0x30(r10), 0, 0 // fp5 is now m30 m31

    // out ZW Z
    ps_madds0   fp10, fp6, fp1, fp10  // add m22 m23 * pz to fp10
    ps_madds0   fp12, fp6, fp3, fp12  // add m22 m23 * nz to fp12
    psq_l       fp6,  0x38(r10), 0, 0 // fp6 is now m32 m33

    // out XY trans
    ps_add      fp9, fp5, fp9         // add m30 m31 to fp9

    // out ZW trans
    ps_add      fp10, fp6, fp10       // add m32 m33 to fp10

    addi        r10, r3, 0            // put matrix pointer into correct register

    // scale vertex & normal by bone weight and sum
    ps_madd     fp13, fp9,  fp4, fp13
    ps_madd     fp14, fp10, fp4, fp14
    ps_madd     fp15, fp11, fp4, fp15
    ps_madd     fp16, fp12, fp4, fp16

boneloopbottom:
    bne         cr1, bonelooptop      // branch if more bones to go

    addi        r9, r9, 0x20          // Increment the vertex pointer
    dcbt        r7, r9                // prefetch next vertex, r7 has 0x08 in it

    // output vertex to fifo
    psq_st      fp13, 0x00(r5), 0, 0  // pos xy

    psq_st      fp14, 0x00(r5), 1, 0  // pos z
    psq_st      fp15, 0x00(r5), 0, 0  // normal xy
    psq_st      fp16, 0x00(r5), 1, 0  // normal z

    bdnz+       vertlooptop           // branch if not there yet

    lfd         fp14, 8(r1)
    lfd         fp15, 16(r1)
    lfd         fp16, 24(r1)
    addi        r1, r1, 32

    blr      // return
}




//--------------------------------------------------------------------------------------
//
// Register parameters
// r3 this (init code only), vertex pointer precompute in loop       
// r4 palette     
//    
// r5  fifo        
// r6  vertex count remaining
// r7  offset to next vertex for prefetching
// r8  colour output
// r9  current vertex pointer
// r10 current matrix pointer  
// r11 bone count     
// r12 weight offset in current vertex 
//
// gqr0 is always NO translation (floats)
// gqr6 for normals              (1.15)
// gqr7 for weights              (0.16)
//
// fp0 xy pos
// fp1 zw pos
// fp4 current bone weight in ps0 & ps1
// fp5 temp matrix vals
// fp6 temp matrix vals

// fp9  working pos  xy
// fp10 working pos  zw
// fp13 out pos  xy
// fp14 out pos  zw
//
asm void gcSkinBuffer::DisplayUntexturedUnlit(register pddiMatrix *palette)
{
    nofralloc

    // spill the extra registers
    stwu    r1, -16(r1)
    stfd    fp14, 8(r1)

    // preload the use registers
    lis   r5, 0xCC00     // upper 16 bits of GXFifo
    ori   r5, r5, 0x8000 // lower 16 bits of GXFifo
    lwz   r6, 0x14(r3)   // Vertex count
    addi  r7, 0, 0x08    // used for cache loading
    lwz   r9, 0x18(r3)   // base vertices pointer
    mtctr r6             // move the vertex count into the count register

    // NOTE: r3 (this) will be reused for precomputing the next matrix pointer
vertlooptop:

    lhz         r12, 0x16(r9)        // Load weight count
    addi        r11, r12, 0x0B       // add (0x0C - 1) so counter is offset into vertex matrix index array

    psq_l       fp0, 0x00(r9), 0, 0  // load position XY
    psq_l       fp1, 0x08(r9), 1, 0  // load position Z
    lwz         r8,  0x10(r9)        // Load colour

    mulli       r12, r12, 2          // turn into offset for weight pointer

    lbzx        r10, r11, r9         // put matrix palette index into r10
    addi        r12, r12, 0x16       // r12 is now offset into vertex for current weight

    // zero the output vert
    ps_sub      fp13, fp13, fp13
    ps_sub      fp14, fp14, fp14
    mulli       r10, r10, 64          // cont building matrix pointer, mult by size of pddiMatrix

bonelooptop:

    // Load Matrix
    psq_lux     fp5,  r10, r4, 0, 0   // fp5  is m00 m01, r10 now has pointer to matrix
    psq_l       fp6,  0x08(r10), 0, 0 // fp6  is m02 m03

    addi        r11, r11, -1          // dec bone counter      
    psq_lx      fp4, r9, r12, 1, 7    // load weight in ps0 of fp4
    addi        r12, r12, -2          // subtract two to move to the next weight

    cmplwi      cr1, r11, 0x0B        // check for last bone

    ps_merge00  fp4, fp4, fp4         // copy weight into ps1 & ps0 of fp4

    lbzx        r3, r11, r9           // start building matrix pointer, put palette index into r3

    mulli       r3, r3, 64            // cont building matrix pointer, mult by size of pddiMatrix

    // Pos & Norm * matrix
    // out XY X
    ps_muls0    fp9,  fp5, fp0        // m00 m01 * px in fp9
    psq_l       fp5,  0x10(r10), 0, 0 // fp5 is now m10 m11

    // out ZW X
    ps_muls0    fp10, fp6, fp0        // add m02 m03 * px to fp10
    psq_l       fp6,  0x18(r10), 0, 0 // fp6 is now m12 m13

    // out XY Y
    ps_madds1   fp9,  fp5, fp0, fp9   // add m10 m11 * pz to fp9
    psq_l       fp5,  0x20(r10), 0, 0 // fp5 is now m20 m21

    // out ZW Y
    ps_madds1   fp10, fp6, fp0, fp10  // add m12 m13 * pz to fp10
    psq_l       fp6,  0x28(r10), 0, 0 // fp6 is now m22 m23

    // out XY Z
    ps_madds0   fp9,  fp5, fp1, fp9   // add m20 m21 * pz to fp9
    psq_l       fp5,  0x30(r10), 0, 0 // fp5 is now m30 m31

    // out ZW Z
    ps_madds0   fp10, fp6, fp1, fp10  // add m22 m23 * pz to fp10
    psq_l       fp6,  0x38(r10), 0, 0 // fp6 is now m32 m33

    // out XY trans
    ps_add      fp9, fp5, fp9         // add m30 m31 to fp9

    // out ZW trans
    ps_add      fp10, fp6, fp10       // add m32 m33 to fp10

    addi        r10, r3, 0            // put matrix pointer into correct register

    // scale vertex & normal by bone weight and sum
    ps_madd     fp13, fp9,  fp4, fp13
    ps_madd     fp14, fp10, fp4, fp14

boneloopbottom:
    bne         cr1, bonelooptop      // branch if more bones to go

    addi        r9, r9, 0x20          // Increment the vertex pointer
    dcbt        r7, r9                // prefetch next vertex, r7 has 0x08 in it

    // output vertex to fifo
    psq_st      fp13, 0x00(r5), 0, 0  // pos xy
    psq_st      fp14, 0x00(r5), 1, 0  // pos z
    stw         r8,   0x00(r5)        // colour

    bdnz+       vertlooptop           // branch if not there yet

    lfd         fp14, 8(r1)
    addi        r1, r1, 16

    blr      // return
}








