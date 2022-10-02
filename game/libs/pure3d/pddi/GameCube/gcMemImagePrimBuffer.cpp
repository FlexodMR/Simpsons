//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================



#include <pddi/gamecube/gcMemImagePrimBuffer.hpp>
#include <pddi/gamecube/mallocaligned.hpp>
#include <constants/chunkids.hpp>


extern "C" const float gcNormalPorcupine[256][3];
extern "C" const unsigned long gcGreyScale[255];

float VertsToPrims(pddiPrimType type, int vertexcount);
float VertsToPrims(GXPrimitive type, int vertexcount);

//******************************************************************************************
//******************************************************************************************
//
// mem ImagePrim Buffer
//
//
gcMemImagePrimBuffer::gcMemImagePrimBuffer(gcContext *context)
{
    mContext = context;

    mPrimType = PDDI_PRIM_POINTS;

    mDisplayList = NULL;
    mDisplayListSize = 0;

    mMemImageSize = 0;
    mMemImageData = NULL;

    mComponentCount = 0;
    mComponents     = NULL;

    mVertexCount  = 0;
}

//-----------------------------------------------------------------------
gcMemImagePrimBuffer::~gcMemImagePrimBuffer()
{
    if (mComponents != NULL)   delete[] mComponents;
    if (mDisplayList != NULL)  freealigned(mDisplayList);
    if (mMemImageData != NULL) delete[] mMemImageData;


#ifdef PDDI_TRACK_STATS
        int alloc_size = (int) mMemImageSize + mDisplayListSize + (mComponentCount * sizeof(gcComponentDescription));
        mContext->ADD_STAT(PDDI_STAT_BUFFERED_ALLOC, (float) (-alloc_size / 1024.0F));
        mContext->ADD_STAT(PDDI_STAT_BUFFERED_COUNT, -1);
#endif
}

//-----------------------------------------------------------------------
void gcMemImagePrimBuffer::Create(void)
{
    mPrimType   = PDDI_PRIM_TRIANGLES;

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

#ifdef PDDI_TRACK_STATS
    mContext->ADD_STAT(PDDI_STAT_BUFFERED_COUNT, 1);
#endif
}


//-----------------------------------------------------------------------
pddiPrimBufferStream *gcMemImagePrimBuffer::Lock()
{
    return NULL;
}

//-----------------------------------------------------------------------
void gcMemImagePrimBuffer::Unlock(pddiPrimBufferStream *stream)
{
}

//-----------------------------------------------------------------------
void gcMemImagePrimBuffer::SetIndices(unsigned short *i, int count)
{
}


//-----------------------------------------------------------------------
unsigned char *gcMemImagePrimBuffer::LockIndexBuffer(void)
{
    return mDisplayList;
}



//-----------------------------------------------------------------------
void gcMemImagePrimBuffer::UnlockIndexBuffer(int count)
{
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
bool gcMemImagePrimBuffer::CheckMemImageVersion(int version)
{
    if (version == 0x00030003) return true;
    return false;
}


//-----------------------------------------------------------------------
void *gcMemImagePrimBuffer::LockMemImage(unsigned memImageLength)
{
    if (mMemImageData != NULL) return mMemImageData;
    if (mComponents != NULL)   return mComponents;

    return NULL;
}


//-----------------------------------------------------------------------
void gcMemImagePrimBuffer::UnlockMemImage(void)
{
    //if (mMemImageData != NULL) DCFlushRange(mMemImageData, value);
    if (mComponents != NULL)
    {
        DCFlushRange(mComponents, mComponentCount * sizeof(gcComponentDescription));
    }

    // Just unlocked mComponents, init the prim buffer
    if (mMemImageData == NULL) Create();
    else
    {
        DCFlushRange(mMemImageData, mMemImageSize);
    }
        

}


//-----------------------------------------------------------------------
void gcMemImagePrimBuffer::SetMemImageParam(unsigned param, unsigned value)
{

    if (param == Pure3D::Mesh::MEMORYIMAGEVERTEXDESCRIPTIONLIST)
    {
        mComponentCount = value / sizeof(gcComponentDescription);
        mComponents = new gcComponentDescription[mComponentCount];

        return;
    }

    if (param == Pure3D::Mesh::MEMORYIMAGEVERTEXLIST)
    {
        mMemImageSize = (int) value;
        mMemImageData = new unsigned char[mMemImageSize];
        DCFlushRange(mMemImageData, mMemImageSize);

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
        mContext->ADD_STAT(PDDI_STAT_BUFFERED_ALLOC, (float) (alloc_size / 1024.0F));
#endif
        return;
    }

}




//-----------------------------------------------------------------------
void gcMemImagePrimBuffer::Display(void)
{
    mContext->FinalizeHardwareMatrix();

    GXClearVtxDesc();

    int a;
    for (a = 0; a < mComponentCount; a++)
    {
        gcComponentDescription *desc = &mComponents[a];

        GXSetVtxAttrFmt(GX_VTXFMT0, (GXAttr)desc->item, (GXCompCnt)desc->count, (GXCompType)desc->style, (u8) desc->fraction);
        GXSetVtxDesc((GXAttr)desc->item, (GXAttrType)desc->indextype);
        if (desc->indextype != GX_DIRECT) GXSetArray((GXAttr)desc->item, desc->base, (int)desc->stride);
    }

    GXCallDisplayList(mDisplayList, (unsigned long)mDisplayListSize);

#ifdef PDDI_TRACK_STATS
    mContext->ADD_STAT(PDDI_STAT_BUFFERED_PRIM_CALLS, 1);
    mContext->ADD_STAT(PDDI_STAT_BUFFERED_PRIM, VertsToPrims(mPrimType, mVertexCount));
    mContext->ADD_STAT(PDDI_STAT_BUFFERED_PRIM_VERT, mVertexCount);
#endif   

}



