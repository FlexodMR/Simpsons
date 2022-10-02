//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


#include <pddi/gamecube/gccon.hpp>
#include <pddi/gamecube/gcPrimStream.hpp>
#include <pddi/gamecube/gcskin.hpp>

float VertsToPrims(pddiPrimType type, int vertexcount);
float VertsToPrims(GXPrimitive type, int vertexcount);


//**************************************************************************
//
//  gcPrimStream  
//  Begin
//
void gcPrimStream::Begin(gcContext *context, GXPrimitive type, unsigned vType, int vertexcount)
{

    // Can't send more than 65534 vertices through a single call
    PDDIASSERT(vertexcount < 65535);

    // Can't send zero any more
    PDDIASSERT(vertexcount != 0);

    mPrimType    = type;
    mVertexType  = vType;   
    mVertexCount = vertexcount;

    context->FinalizeHardwareMatrix();

    // Setup the GX to take mVertexCount worth of verts
    GXClearVtxDesc();

    GXSetVtxAttrFmt(GX_VTXFMT0, GX_VA_POS, GX_POS_XYZ, GX_F32, 0);
    GXSetVtxDesc(GX_VA_POS, GX_DIRECT);

    // there can be binormal, tangents and normals or just normals
    if (mVertexType & PDDI_V_BINORMAL)
    {
        GXSetVtxAttrFmt(GX_VTXFMT0, GX_VA_NBT, GX_NRM_NBT3, GX_F32, 0);
        GXSetVtxDesc(GX_VA_NBT, GX_DIRECT);
    }
    else if (mVertexType & PDDI_V_NORMAL)
    {
        GXSetVtxAttrFmt(GX_VTXFMT0, GX_VA_NRM, GX_NRM_XYZ, GX_F32, 0);
        GXSetVtxDesc(GX_VA_NRM, GX_DIRECT);
    }

    if (mVertexType & PDDI_V_COLOUR)
    {
        GXSetVtxAttrFmt(GX_VTXFMT0, GX_VA_CLR0, GX_CLR_RGBA, GX_RGBA8, 0);
        GXSetVtxDesc(GX_VA_CLR0, GX_DIRECT);
    }

    int numuv = mVertexType & 0xf;
    int a;
    for (a = 0; a < numuv; a++)
    {
        GXAttr attr = (GXAttr) (((int)GX_VA_TEX0) + a);
        GXSetVtxAttrFmt(GX_VTXFMT0, attr, GX_TEX_ST, GX_F32, 0);
        GXSetVtxDesc(attr, GX_DIRECT);
    }

    GXBegin(mPrimType, GX_VTXFMT0, mVertexCount);

#ifdef PDDI_TRACK_STATS
    context->ADD_STAT(PDDI_STAT_STREAMED_PRIM_CALLS, 1);
    context->ADD_STAT(PDDI_STAT_STREAMED_PRIM, VertsToPrims(mPrimType, mVertexCount));
    context->ADD_STAT(PDDI_STAT_STREAMED_PRIM_VERT, mVertexCount);
#endif

}



//**************************************************************************
//
//  gcPrimStream  
//  Blend Position
//
void gcPrimStream::BlendPosition(pddiVector *v)
{
    pddiVector position(0.0F, 0.0F, 0.0F);

    int a;
    for (a = 0; a < 4; a++)
    {
        float weight = mTempWeights[a];
        if (weight < 0.01F) break;

        // fetch bone matrix
        pddiMatrix *m = &mHardwareSkinning->mPalette[mTempIndices[a]];

        // compute position
        position.x += ((m->m[0][0]*mTempPosition.x + m->m[1][0]*mTempPosition.y + m->m[2][0]*mTempPosition.z + m->m[3][0]) * weight);
        position.y += ((m->m[0][1]*mTempPosition.x + m->m[1][1]*mTempPosition.y + m->m[2][1]*mTempPosition.z + m->m[3][1]) * weight);
        position.z += ((m->m[0][2]*mTempPosition.x + m->m[1][2]*mTempPosition.y + m->m[2][2]*mTempPosition.z + m->m[3][2]) * weight);
    }

    GXPosition3f32(position.x, position.y, position.z);
}




//**************************************************************************
//
//  gcPrimStream  
//  Blend Position
//
void gcPrimStream::BlendNormal(pddiVector *v)
{
    pddiVector normal(0.0F, 0.0F, 0.0F);

    int a;
    for (a = 0; a < 4; a++)
    {
        float weight = mTempWeights[a];
        if (weight < 0.01F) break;

        // fetch bone matrix
        pddiMatrix *m = &mHardwareSkinning->mPalette[mTempIndices[a]];

        // compute normal
        normal.x += ((m->m[0][0]*mTempNormal.x + m->m[1][0]*mTempNormal.y + m->m[2][0]*mTempNormal.z) * weight);
        normal.y += ((m->m[0][1]*mTempNormal.x + m->m[1][1]*mTempNormal.y + m->m[2][1]*mTempNormal.z) * weight);
        normal.z += ((m->m[0][2]*mTempNormal.x + m->m[1][2]*mTempNormal.y + m->m[2][2]*mTempNormal.z) * weight);
    }

    GXNormal3f32(normal.x, normal.y, normal.z);
}


