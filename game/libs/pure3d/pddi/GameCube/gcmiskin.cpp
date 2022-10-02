//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================



#include <pddi/gamecube/gcmiskin.hpp>
#include <constants/chunkids.hpp>

#include <pddi/gamecube/gccon.hpp>

#include <stdio.h>
#include <string.h>

#include <pddi/gamecube/mallocaligned.hpp>

// In gccon.cpp
float VertsToPrims(pddiPrimType type, int vertexcount);
float VertsToPrims(GXPrimitive type, int vertexcount);

extern GXPrimitive primTypeTable[5];
extern unsigned short gcDisplayListPrimTypes[5];

#define GC_MEMIMAGE_VERSION 0x00030003

extern "C" const float gcNormalPorcupine[256][3];
extern "C" const unsigned long gcGreyScale[255];


//--------------------------------------------------------------------------------------
class gcMISkinBufferStream : public pddiPrimBufferStream
{
public:
    void Position(float x, float y, float z)                   { PDDIASSERT(0); }
    void Coord(float x, float y, float z)                      { PDDIASSERT(0); }
    void Normal(float x, float y, float z)                     { PDDIASSERT(0); }
    void Colour(pddiColour colour, int channel = 0)            { PDDIASSERT(0); }
    void UV(float u, float v, int channel = 0)                 { PDDIASSERT(0); }
    void TexCoord1(float s, int channel = 0)                   { PDDIASSERT(0); }
    void TexCoord2(float s, float t,int channel = 0)           { PDDIASSERT(0); }
    void TexCoord3(float s, float t, float u, int channel = 0) { PDDIASSERT(0); }
    void TexCoord4(float s, float t, float u, float v, int channel = 0) { PDDIASSERT(0); }
    void Specular(pddiColour colour)                                    { PDDIASSERT(0); }
    void SkinIndices(unsigned a, unsigned b, unsigned c, unsigned d)    { PDDIASSERT(0); }
    void SkinWeights(float a, float b, float c)                { PDDIASSERT(0); }
    void Vertex(pddiVector *v, pddiColour c)                   { PDDIASSERT(0); }
    void Vertex(pddiVector *v, pddiVector *n)                  { PDDIASSERT(0); }
    void Vertex(pddiVector *v, pddiVector2 *uv)                { PDDIASSERT(0); }
    void Vertex(pddiVector *v, pddiColour c, pddiVector2 *uv)  { PDDIASSERT(0); }
    void Vertex(pddiVector *v, pddiVector *n, pddiVector2 *uv) { PDDIASSERT(0); }

    void Next() { PDDIASSERT(0); }

    void Reset(gcMISkinBuffer* b) { mBuffer = b; }

protected:
    gcMISkinBuffer *mBuffer;
};


static gcMISkinBufferStream theStream;


//************************************************************************************
//************************************************************************************
//************************************************************************************
//
// gcMISkinBuffer
//
//
gcMISkinBuffer::gcMISkinBuffer() :
    mComponents(NULL),
    mDisplayList(NULL),
    mMemImageData(NULL),
    mPositionGQR(0),
    mDisplayListSize(0),
    mComponentCount(0)
{
#ifdef PDDI_TRACK_STATS
    mBoneCount = 0;
#endif

}

//------------------------------------------------------------------------------------
gcMISkinBuffer::~gcMISkinBuffer()
{
    delete[] mMemImageData;
    delete[] mComponents;
    freealigned(mDisplayList);

#ifdef PDDI_TRACK_STATS
        int alloc_size = (int) mMemImageSize + mDisplayListSize + (mComponentCount * sizeof(gcComponentDescription));
        gcContext::Context()->ADD_STAT(PDDI_STAT_BUFFERED_ALLOC, (float) (-alloc_size / 1024.0F));
        gcContext::Context()->ADD_STAT(PDDI_STAT_BUFFERED_COUNT, -1);
#endif
}

//------------------------------------------------------------------------------------
void gcMISkinBuffer::Create(void)
{
    int a;
    for (a = 0; a < mComponentCount; a++)
    {
        if (mComponents[a].fraction == 255)
        {
            if (mComponents[a].item == GX_VA_NRM)  mComponents[a].base = (void *)gcNormalPorcupine;
            if (mComponents[a].item == GX_VA_CLR0) mComponents[a].base = (void *)gcGreyScale;
            mComponents[a].fraction = 0;
        }
    }

    // create setup for GQR register at render time
    int fraction = mComponents[1].fraction << 8;
    int type = GQR_F32;

    if (mComponents[1].style == GX_S16) type = GQR_S16;
    if (mComponents[1].style == GX_U16) type = GQR_U16;
    if (mComponents[1].style == GX_S8)  type = GQR_S8;
    if (mComponents[1].style == GX_U8)  type = GQR_U8;
    mPositionGQR = fraction | type;

    // Save the stride for the size calculation a render time
    mPositionStride = mComponents[1].stride;

    // Save the vertex & normal counts
    mVertexCount = (int) mComponents[1].itemcount;
    mNormalCount = (mComponents[2].item == GX_VA_NRM) ? (int)mComponents[2].itemcount : 0;

    // make sure that rendering doesn't die
    PDDIASSERT(mVertexCount > 0);

    // Set render of coords to be floats
    mComponents[1].fraction = 0;
    mComponents[1].style    = GX_F32;
    mComponents[1].stride   = 12;

    // Setup the vertex type for normals
    if (mComponents[2].item == GX_VA_NRM)
    {
        mComponents[2].fraction = 6;
        mComponents[2].style    = GX_S8;
        mComponents[2].stride   = 3;
    }
#ifdef PDDI_TRACK_STATS
    mMemImageSize = 0;
    gcContext::Context()->ADD_STAT(PDDI_STAT_BUFFERED_COUNT, 1);
#endif

}


//------------------------------------------------------------------------------------
pddiPrimBufferStream *gcMISkinBuffer::Lock()
{
    theStream.Reset(this);
    return &theStream;
}

//------------------------------------------------------------------------------------
void gcMISkinBuffer::Unlock(pddiPrimBufferStream *stream)
{
#ifdef PDDI_TRACK_STATS
    if (mMemImageData != NULL)
    {
        int pos_weight_size    = sizeof(SkinWeight) * mVertexCount;
        int normal_weight_size = sizeof(SkinWeight) * mNormalCount;
        int pos_size           = mPositionStride * mVertexCount;

        SkinWeight *pos_weights    = (SkinWeight *) mMemImageData;
        SkinWeight *normal_weights = (SkinWeight *) &mMemImageData[pos_weight_size];
    
        mBoneCount = 0;

        int a;
        for (a = 0; a < mVertexCount; a++) mBoneCount += (int) pos_weights[a].weightcount;
        for (a = 0; a < mNormalCount; a++) mBoneCount += (int) normal_weights[a].weightcount;
    }
#endif

}


//-----------------------------------------------------------------------
unsigned char *gcMISkinBuffer::LockIndexBuffer(void)
{
    return mDisplayList;
}


//-----------------------------------------------------------------------
void gcMISkinBuffer::UnlockIndexBuffer(int count)
{
//   *mDisplayList = GX_LINESTRIP; // Cheesy wireframe
    DCFlushRange(mDisplayList, (unsigned long) mDisplayListSize);
}


//------------------------------------------------------------------------------------
void gcMISkinBuffer::SetIndices(unsigned short *indices, int count)
{
    PDDIASSERT(0);
}


//------------------------------------------------------------------------------------
bool gcMISkinBuffer::CheckMemImageVersion(int version)
{
    if (version == GC_MEMIMAGE_VERSION) return true;
    return false;
}

//------------------------------------------------------------------------------------
void *gcMISkinBuffer::LockMemImage(unsigned memImageLength)
{
    if (mMemImageData != NULL) return mMemImageData;
    if (mComponents != NULL)   return mComponents;

    return NULL;
}

//------------------------------------------------------------------------------------
void gcMISkinBuffer::UnlockMemImage(void)
{
    //if (mMemImageData != NULL) DCFlushRange(mMemImageData, value);
    if (mComponents != NULL)
    {
        DCFlushRange(mComponents, mComponentCount * sizeof(gcComponentDescription));
    }

    // Just unlocked mComponents, init the prim buffer
    if (mMemImageData == NULL) Create();
}

//------------------------------------------------------------------------------------
void gcMISkinBuffer::SetMemImageParam(unsigned param, unsigned value)
{

    if (param == Pure3D::Mesh::MEMORYIMAGEVERTEXDESCRIPTIONLIST)
    {
        mComponentCount = value / sizeof(gcComponentDescription);
        mComponents = new gcComponentDescription[mComponentCount];

        return;
    }

    if (param == Pure3D::Mesh::MEMORYIMAGEVERTEXLIST)
    {
        mMemImageData = new unsigned char[value];
        DCFlushRange(mMemImageData, value);

#ifdef PDDI_TRACK_STATS
        mMemImageSize = (int) value;
#endif

        unsigned char *buf = mMemImageData;
        // Setup memory imaged pointers
        int a;
        for (a = 0; a < mComponentCount; a++)
        {
            if (mComponents[a].indextype != GX_DIRECT)
            {
                int offset = (int) mComponents[a].base;
                if ((mComponents[a].base != (void *)gcNormalPorcupine) &&
                    (mComponents[a].base != (void *)gcGreyScale))
                {
                    mComponents[a].base = (void *)(&buf[offset]);
                }
            }
        }

        return;
    }

    if (param == Pure3D::Mesh::MEMORYIMAGEINDEXLIST)
    {
        mDisplayListSize = value;
        mDisplayList = (unsigned char *)mallocaligned(mDisplayListSize, 32);
        DCFlushRange(mDisplayList, (unsigned long) mDisplayListSize);

#ifdef PDDI_TRACK_STATS
        int alloc_size = (int) mMemImageSize + mDisplayListSize + (mComponentCount * sizeof(gcComponentDescription));
        gcContext::Context()->ADD_STAT(PDDI_STAT_BUFFERED_ALLOC, (float) (alloc_size / 1024.0F));
        gcContext::Context()->ADD_STAT(PDDI_STAT_BUFFERED_COUNT, -1);
#endif
        return;
    }
}



//------------------------------------------------------------------------------------
void gcMISkinBuffer::Display(gcContext *context, pddiShader *shader, pddiMatrix *palette, gcExtHardwareSkinning *ext)
{

    int outputsize = (mVertexCount * sizeof(pddiVector)) + (mNormalCount * 3);

    void *vbuffer;
    unsigned short sync = ext->StartSkinBuffer(vbuffer, 0, outputsize);
    char *buffer = (char *)vbuffer;
    char *bufferN = buffer + (mVertexCount * sizeof(pddiVector));

    // set gqr4 for input skin vertices,
    register int val = (unsigned int) (mPositionGQR | ((unsigned int) mPositionGQR) << 16);
    asm(mtspr gqr4, val);

    int pos_weight_size    = sizeof(SkinWeight) * mVertexCount;
    int normal_weight_size = sizeof(SkinWeight) * mNormalCount;
    int pos_size           = mPositionStride * mVertexCount;

    unsigned char *pos_weights    = mMemImageData;
    unsigned char *normal_weights = pos_weights + pos_weight_size;
    unsigned char *pos_verts      = normal_weights + normal_weight_size;
    unsigned char *normal_verts   = pos_verts + pos_size;

#ifdef PDDI_TRACK_STATS
    context->ADD_STAT(PDDI_STAT_BUFFERED_PRIM_CALLS, 1);
    context->ADD_STAT(PDDI_STAT_SKINNED_BONES, mBoneCount);
    OSTime begintime = OSGetTime(); 
#endif

    TransformVerts(palette, pos_weights, pos_verts);
    if (mNormalCount > 0) TransformNormals(palette, normal_weights, normal_verts);

#ifdef PDDI_TRACK_STATS
    OSTime time = OSGetTime() - begintime; 
    float ms = ((float)OSTicksToMicroseconds(time) * 0.001F);
    context->ADD_STAT(PDDI_STAT_SKINNED_XFORM_MS, ms);
    context->ADD_STAT(PDDI_STAT_BUFFERED_PRIM_VERT, mVertexCount);
    context->ADD_STAT(PDDI_STAT_SKINNED_XFORM_VERT, mVertexCount + mNormalCount);

    pddiPrimType type = PDDI_PRIM_TRIANGLES;
    if (mDisplayList[0] == GX_TRIANGLESTRIP) type = PDDI_PRIM_TRISTRIP;
    
    int count = ((int)mDisplayList[1] * 256) + (int)mDisplayList[2];
    context->ADD_STAT(PDDI_STAT_BUFFERED_PRIM, VertsToPrims(type, count));
#endif

    ext->EndSkinBuffer();

    // Set the Vertex descriptions
    GXClearVtxDesc();

    int a;
    for (a = 1; a < mComponentCount; a++)
    {
        gcComponentDescription *desc = &mComponents[a];

        GXSetVtxAttrFmt(GX_VTXFMT0, (GXAttr)desc->item, (GXCompCnt)desc->count, (GXCompType)desc->style, (u8) desc->fraction);
        GXSetVtxDesc((GXAttr)desc->item, (GXAttrType)desc->indextype);
        if (desc->indextype != GX_DIRECT) 
        {
            if      (desc->item == GX_VA_POS) GXSetArray((GXAttr)desc->item, buffer, 12);
            else if (desc->item == GX_VA_NRM) GXSetArray((GXAttr)desc->item, bufferN, 3);
            else                              GXSetArray((GXAttr)desc->item, desc->base, (int)desc->stride);
        }
    }

    // Set the material
    pddiBaseShader *material = (pddiBaseShader *)shader;
    material->SetMaterial();

#ifdef PDDI_TRACK_STATS
    context->ADD_STAT(PDDI_STAT_MATERIAL_OPS, !material->IsCurrent());
#endif
    // Draw the skin
    //GXInvalidateVtxCache();
    GXCallDisplayList(mDisplayList, (unsigned long) mDisplayListSize);
    GXSetDrawSync(sync);
}



//----------------------------------------------------------------------------------------------------------
//
// Register parameters
// r3  this        
// r4  palette
// r5  weights
// r6  verts
// r7  unused
// r8  bone count / current matrix pointer  
// r9  matrix index
// r11 pointer to current matrix index
// r12 fifo 
//
// gqr0 is always NO translation (floats)
// gqr4 for input positions      (?.?)
// gqr5 for output normals       (2.6)
// gqr7 for weights              (1.15)
//
// fp0 xy pos
// fp1 z1 pos
// fp2 out pos  xy
// fp3 out pos  zw
// fp4 weight pair
// fp5 temp matrix vals
// fp6 temp matrix vals
// fp7 working pos  xy
// fp8 working pos  zw
// fp9 weights for current bone in ps0 & ps1
//
asm void gcMISkinBuffer::TransformVerts(pddiMatrix *palette, void *weights, void *verts)
{
    nofralloc

    lhz         r8, 0x20(r3)          // Vertex count

    lis         r12, 0xCC00           // upper 16 bits of GXFifo
    ori         r12, r12, 0x8000      // lower 16 bits of GXFifo

    mtctr       r8                    // move the vertex count into the count register

    lbz         r8,  0x00(r5)         // Load weight count

vertlooptop:
    ps_sub      fp2, fp2, fp2         // zero the output vert XY
    psq_l       fp4, 0x04(r5), 0, 7   // Load weight pair

    ps_sub      fp3, fp3, fp3         // zero the output vert ZW
    psq_l       fp0, 0x00(r6), 0, 4   // load position XY

    cmplwi      cr1, r8, 0x01         // check for one bone case
    lbzx        r9, r5, r8            // put matrix palette index into r9

    cmplwi      cr2, r8, 0x02         // check for two bone case
    slwi        r9, r9, 6             // scale to offest in matrix array

    psq_l       fp1, 0x04(r6), 1, 4   // load position Z1
    add         r8, r4, r9            // matrix pointer to r8

    psq_l       fp5, 0x00(r8), 0, 0   // fp5  is m00 m01
    addi        r6, r6, 0x06          // Increment the vertex pointer

    psq_l       fp6, 0x08(r8), 0, 0   // fp6  is m02 m03

    beq         cr1, onebonetop
    beq         cr2, twobonetop

threebonetop:

    ps_sum1     fp9, fp4, fp4, fp4    // put fp4(ps0) + fp4(ps1) into fp9(ps1)
    lbz         r9, 0x02(r5)          // start building weight #2 matrix pointer

    ps_sub      fp9, fp1, fp9         // put 1.0 - (weight 0 + weight1) in ps9(fp1)
    slwi        r9, r9, 6             // cont building matrix pointer #2, mult by size of pddiMatrix

    // Pos * matrix
    // out XY X
    ps_muls0    fp7, fp5, fp0         // m00 m01 * px in fp7
    psq_l       fp5, 0x10(r8), 0, 0   // fp5 is now m10 m11

    // out ZW X
    ps_muls0    fp8, fp6, fp0         // add m02 m03 * px to fp8
    psq_l       fp6, 0x18(r8), 0, 0   // fp6 is now m12 m13

    // out XY Y
    ps_madds1   fp7, fp5, fp0, fp7    // add m10 m11 * py to fp7
    psq_l       fp5, 0x20(r8), 0, 0   // fp5 is now m20 m21

    // out ZW Y
    ps_madds1   fp8, fp6, fp0, fp8    // add m12 m13 * py to fp8
    psq_l       fp6, 0x28(r8), 0, 0   // fp6 is now m22 m23

    // out XY Z
    ps_madds0   fp7, fp5, fp1, fp7    // add m20 m21 * pz to fp7
    psq_l       fp5, 0x30(r8), 0, 0   // fp5 is now m30 m31

    // out ZW Z
    ps_madds0   fp8, fp6, fp1, fp8    // add m22 m23 * pz to fp8
    psq_l       fp6, 0x38(r8), 0, 0   // fp6 is now m32 m33

    // out XY trans
    ps_add      fp7, fp5, fp7         // add m30 m31 to fp7
    add         r8,  r4, r9           // next matrix pointer to r8

    // out ZW trans
    ps_add      fp8, fp6, fp8         // add m32 m33 to fp8

    ps_madds1   fp3, fp8, fp9, fp3
    psq_l       fp5, 0x00(r8), 0, 0   // fp5  is m00 m01

    // scale vertex by bone weight and sum
    ps_madds1   fp2, fp7, fp9, fp2
    psq_l       fp6, 0x08(r8), 0, 0  // fp6  is m02 m03

twobonetop:

    lbz         r9, 0x01(r5)          // start building weight #1 matrix pointer

    // Pos * matrix
    // out XY X
    ps_muls0    fp7, fp5, fp0         // m00 m01 * px in fp7
    psq_l       fp5, 0x10(r8), 0, 0   // fp5 is now m10 m11

    // out ZW X
    ps_muls0    fp8, fp6, fp0         // add m02 m03 * px to fp8
    psq_l       fp6, 0x18(r8), 0, 0   // fp6 is now m12 m13

    // out XY Y
    ps_madds1   fp7, fp5, fp0, fp7    // add m10 m11 * py to fp7
    psq_l       fp5, 0x20(r8), 0, 0   // fp5 is now m20 m21

    // out ZW Y
    ps_madds1   fp8, fp6, fp0, fp8    // add m12 m13 * py to fp8
    psq_l       fp6, 0x28(r8), 0, 0   // fp6 is now m22 m23

    // out XY Z
    ps_madds0   fp7, fp5, fp1, fp7    // add m20 m21 * pz to fp7
    psq_l       fp5, 0x30(r8), 0, 0   // fp5 is now m30 m31

    // out ZW Z
    ps_madds0   fp8, fp6, fp1, fp8    // add m22 m23 * pz to fp8
    psq_l       fp6, 0x38(r8), 0, 0   // fp6 is now m32 m33

    // out XY trans
    ps_add      fp7, fp5, fp7         // add m30 m31 to fp7
    slwi        r9, r9, 6             // cont building matrix pointer #1, mult by size of pddiMatrix

    // out ZW trans
    ps_add      fp8, fp6, fp8         // add m32 m32 to fp8
    add         r8,  r4, r9           // next matrix pointer to r8

    // scale vertex by bone weight and sum
    ps_madds1   fp2, fp7, fp4, fp2
    psq_l       fp5, 0x00(r8), 0, 0   // fp5  is m00 m01
    ps_madds1   fp3, fp8, fp4, fp3
    psq_l       fp6, 0x08(r8), 0, 0   // fp6  is m02 m03

onebonetop:

    addi        r5, r5, 0x08          // Increment the weight pointer

    // Pos * matrix
    // out XY X
    ps_muls0    fp7, fp5, fp0         // m00 m01 * px in fp7
    psq_l       fp5, 0x10(r8), 0, 0   // fp5 is now m10 m11
    
    // out ZW X
    ps_muls0    fp8, fp6, fp0         // add m02 m03 * px to fp8
    psq_l       fp6, 0x18(r8), 0, 0   // fp6 is now m12 m13

    // out XY Y
    ps_madds1   fp7, fp5, fp0, fp7    // add m10 m11 * py to fp7
    psq_l       fp5, 0x20(r8), 0, 0   // fp5 is now m20 m21

    // out ZW Y
    ps_madds1   fp8, fp6, fp0, fp8    // add m12 m13 * py to fp8
    psq_l       fp6, 0x28(r8), 0, 0   // fp6 is now m22 m23

    // out XY Z
    ps_madds0   fp7, fp5, fp1, fp7    // add m20 m21 * pz to fp7
    psq_l       fp5, 0x30(r8), 0, 0   // fp5 is now m30 m31

    // out ZW Z
    ps_madds0   fp8, fp6, fp1, fp8    // add m22 m23 * pz to fp8
    psq_l       fp6, 0x38(r8), 0, 0   // fp6 is now m32 m33

    // out XY trans
    ps_add      fp7, fp5, fp7         // add m30 m31 to fp7
    dcbt        0, r5                 // cache touch the next weight

    // out ZW trans
    ps_add      fp8, fp6, fp8         // add m32 m33 to fp8

    // scale vertex by bone weight and sum
    ps_madds0   fp2, fp7, fp4, fp2
    lbz         r8,  0x00(r5)         // Load next weight count
    ps_madds0   fp3, fp8, fp4, fp3

    // output vertex to fifo
    psq_st      fp2, 0x00(r12), 0, 0  // pos xy
    stfs        fp3, 0x00(r12)        // pos z

    bdnz        vertlooptop           // branch if not there yet

    blr      // return
}




//----------------------------------------------------------------------------------------------------------
//
// Register parameters
// r3  this        
// r4  palette
// r5  weights
// r6  normals
// r7  unused
// r8  bone count / current matrix pointer  
// r9  matrix index
// r11 pointer to current matrix index
// r12 fifo 
//
// gqr0 is always NO translation (floats)
// gqr5 for in & out normals     (2.6)
// gqr7 for weights              (1.15)
//
// fp0 xy pos
// fp1 z1 pos
// fp2 out pos  xy
// fp3 out pos  zw
// fp4 weight pair
// fp5 temp matrix vals
// fp6 temp matrix vals
// fp7 working pos  xy
// fp8 working pos  zw
// fp9 weights for current bone in ps0 & ps1
//
asm void gcMISkinBuffer::TransformNormals(pddiMatrix *palette, void *weights, void *normals)
{
    nofralloc

    lhz         r8, 0x22(r3)          // Normal count

    lis         r12, 0xCC00           // upper 16 bits of GXFifo
    ori         r12, r12, 0x8000      // lower 16 bits of GXFifo

    mtctr       r8                    // move the normal count into the count register

    lbz         r8,  0x00(r5)         // Load weight count

normallooptop:
    ps_sub      fp2, fp2, fp2         // zero the output vert XY
    psq_l       fp4, 0x04(r5), 0, 7   // Load weight pair

    ps_sub      fp3, fp3, fp3         // zero the output vert ZW
    psq_l       fp0, 0x00(r6), 0, 5   // load normal XY

    cmplwi      cr1, r8, 0x01         // check for one bone case
    lbzx        r9, r5, r8            // put matrix palette index into r9

    cmplwi      cr2, r8, 0x02         // check for two bone case
    slwi        r9, r9, 6             // scale to offest in matrix array

    psq_l       fp1, 0x02(r6), 1, 5   // load normal Z1
    add         r8, r4, r9            // matrix pointer to r8

    psq_l       fp5, 0x00(r8), 0, 0   // fp5  is m00 m01
    addi        r6, r6, 0x03          // Increment the normal pointer

    psq_l       fp6, 0x08(r8), 0, 0   // fp6  is m02 m03

    beq         cr1, nonebonetop
    beq         cr2, ntwobonetop

nthreebonetop:

    ps_sum1     fp9, fp4, fp4, fp4    // put fp4(ps0) + fp4(ps1) into fp9(ps1)
    lbz         r9, 0x02(r5)          // start building weight #2 matrix pointer

    ps_sub      fp9, fp1, fp9         // put 1.0 - (weight 0 + weight1) in ps9(fp1)
    slwi        r9, r9, 6             // cont building matrix pointer #2, mult by size of pddiMatrix

    // Pos * matrix
    // out XY X
    ps_muls0    fp7, fp5, fp0         // m00 m01 * nx in fp7
    psq_l       fp5, 0x10(r8), 0, 0   // fp5 is now m10 m11

    // out ZW X
    ps_muls0    fp8, fp6, fp0         // add m02 m03 * nx to fp8
    psq_l       fp6, 0x18(r8), 0, 0   // fp6 is now m12 m13

    // out XY Y
    ps_madds1   fp7, fp5, fp0, fp7    // add m10 m11 * ny to fp7
    psq_l       fp5, 0x20(r8), 0, 0   // fp5 is now m20 m21

    // out ZW Y
    ps_madds1   fp8, fp6, fp0, fp8    // add m12 m13 * ny to fp8
    psq_l       fp6, 0x28(r8), 0, 0   // fp6 is now m22 m23

    // out XY Z
    ps_madds0   fp7, fp5, fp1, fp7    // add m20 m21 * nz to fp7

    // out ZW Z
    ps_madds0   fp8, fp6, fp1, fp8    // add m22 m23 * nz to fp8
    add         r8,  r4, r9           // next matrix pointer to r8

    // scale vertex by bone weight and sum XY
    ps_madds1   fp3, fp8, fp9, fp3
    psq_l       fp5, 0x00(r8), 0, 0   // fp5  is m00 m01

    // scale vertex by bone weight and sum ZW
    ps_madds1   fp2, fp7, fp9, fp2
    psq_l       fp6, 0x08(r8), 0, 0  // fp6  is m02 m03

ntwobonetop:

    lbz         r9, 0x01(r5)          // start building weight #1 matrix pointer

    // Pos * matrix
    // out XY X
    ps_muls0    fp7, fp5, fp0         // m00 m01 * nx in fp7
    psq_l       fp5, 0x10(r8), 0, 0   // fp5 is now m10 m11

    // out ZW X
    ps_muls0    fp8, fp6, fp0         // add m02 m03 * nx to fp8
    psq_l       fp6, 0x18(r8), 0, 0   // fp6 is now m12 m13

    // out XY Y
    ps_madds1   fp7, fp5, fp0, fp7    // add m10 m11 * ny to fp7
    psq_l       fp5, 0x20(r8), 0, 0   // fp5 is now m20 m21

    // out ZW Y
    ps_madds1   fp8, fp6, fp0, fp8    // add m12 m13 * ny to fp8
    psq_l       fp6, 0x28(r8), 0, 0   // fp6 is now m22 m23

    // out XY Z
    ps_madds0   fp7, fp5, fp1, fp7    // add m20 m21 * nz to fp7

    // out ZW Z
    ps_madds0   fp8, fp6, fp1, fp8    // add m22 m23 * nz to fp8

    slwi        r9, r9, 6             // cont building matrix pointer #1, mult by size of pddiMatrix

    add         r8,  r4, r9           // next matrix pointer to r8

    // scale vertex by bone weight and sum
    ps_madds1   fp2, fp7, fp4, fp2
    psq_l       fp5, 0x00(r8), 0, 0   // fp5  is m00 m01
    ps_madds1   fp3, fp8, fp4, fp3
    psq_l       fp6, 0x08(r8), 0, 0   // fp6  is m02 m03

nonebonetop:

    addi        r5, r5, 0x08          // Increment the weight pointer

    // Pos * matrix
    // out XY X
    ps_muls0    fp7, fp5, fp0         // m00 m01 * nx in fp7
    psq_l       fp5, 0x10(r8), 0, 0   // fp5 is now m10 m11
    
    // out ZW X
    ps_muls0    fp8, fp6, fp0         // add m02 m03 * nx to fp8
    psq_l       fp6, 0x18(r8), 0, 0   // fp6 is now m12 m13

    // out XY Y
    ps_madds1   fp7, fp5, fp0, fp7    // add m10 m11 * ny to fp7
    psq_l       fp5, 0x20(r8), 0, 0   // fp5 is now m20 m21

    // out ZW Y
    ps_madds1   fp8, fp6, fp0, fp8    // add m12 m13 * ny to fp8
    psq_l       fp6, 0x28(r8), 0, 0   // fp6 is now m22 m23

    // out XY Z
    ps_madds0   fp7, fp5, fp1, fp7    // add m20 m21 * nz to fp7

    // out ZW Z
    ps_madds0   fp8, fp6, fp1, fp8    // add m22 m23 * nz to fp8

    dcbt        0, r5                 // cache touch the next weight

    // scale vertex by bone weight and sum
    ps_madds0   fp2, fp7, fp4, fp2
    lbz         r8,  0x00(r5)         // Load next weight count
    ps_madds0   fp3, fp8, fp4, fp3

    // output vertex to fifo
    psq_st      fp2, 0x00(r12), 0, 5  // normal xy
    psq_st      fp3, 0x00(r12), 1, 5  // normal z

    bdnz        normallooptop         // branch if not there yet

    blr      // return
}


















