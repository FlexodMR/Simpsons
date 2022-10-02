//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


#ifndef _GCSKIN_HPP
#define _GCSKIN_HPP

#include <pddi/pddiext.hpp>
                                 
#include <dolphin/gx.h>

#define GQR_F32   0 
#define GQR_U16   5 
#define GQR_S16   7 
#define GQR_U8    4 
#define GQR_S8    6
 
class gcPrimStream;

class gcExtHardwareSkinning : public pddiExtHardwareSkinning
{
public:
    gcExtHardwareSkinning(gcContext *c);
   ~gcExtHardwareSkinning();

    pddiPrimBuffer *NewPrimBuffer(unsigned maxWeights, pddiPrimBufferDesc *desc);
    int MaxMatrixPaletteSize(unsigned weightcount);

    void Begin(void);
    void End(void);

    void SetMatrixCount(unsigned count) { ; }
    void SetMatrix(unsigned index, pddiMatrix *m);
    void DrawSkin(pddiShader *shader, pddiPrimBuffer *skin);

    int  VertexBufferSize(void)  { return mVertexBufferSize; }
    void SetVertexBufferSize(int s);

    // returns sync ID
    unsigned short StartSkinBuffer(void *&buffer_address, int vertexcount, int size = 0);
    void EndSkinBuffer(void);

protected:
    gcContext *mContext;
    float mRootTransX; 
    float mRootTransY;
    float mRootTransZ;

    pddiMatrix *mPalette;

    // for indexed skin rendering
    struct SkinDestVertex
    {
        pddiVector position;
        char       normal[3]; // in 2.6
        char       pad;
    };

    static int          mVertexBufferSize;   // in verts
    static int          mVerticesSent;
    static volatile int mVerticesCompleted;
    static volatile int mPreviousSyncToken;

    static SkinDestVertex *mVertexBuffer;

    static void SyncCallback(unsigned short token);

    friend class gcPrimStream;
};



//************************************************************
//
// Class gcSkin Buffer
//
//
class gcSkinBuffer : public pddiPrimBuffer
{
public:
    gcSkinBuffer();
   ~gcSkinBuffer();

    // pddiPrimBuffer overrides
    void Create(pddiPrimBufferDesc *desc);

    pddiPrimBufferStream *Lock();
    void Unlock(pddiPrimBufferStream* stream);

    void SetIndexBufferSize(int bufferSize);
    unsigned char *LockIndexBuffer(void);
    void UnlockIndexBuffer(int count);

    void SetIndices(unsigned short* indices, int count);

    bool  CheckMemImageVersion(int version)                 { return false; }
    void *LockMemImage(unsigned memImageLength)             { PDDIASSERT(0); return NULL; }
    void  UnlockMemImage(void)                              { PDDIASSERT(0); }
    void  SetMemImageParam(unsigned param, unsigned value)  { PDDIASSERT(0); }

    // local functions
    void Display(gcContext *c, pddiShader *s, pddiMatrix *palette, gcExtHardwareSkinning *ext);

protected:
    friend class gcSkinBufferStream;

    struct SkinVertex
    {
        pddiVector     position;    // 0x00
        unsigned char  indices[4];  // 0x0C
        short          normal[3];   // 0x10 Or colour, packed 8888
        unsigned short weightcount; // 0x16
        unsigned short weights[4];  // 0x18  next at 0x20
    };

    // 12 bytes for pddiObject base class storage
    int             mIndexCount;   // 12 0x0C
    void           *mDisplayList;  // 16 0x10
    int             mVertexCount;  // 20 0x14
    SkinVertex     *mVertices;     // 24 0x18
    GXPrimitive     mPrimType;     // 28 0x1C
    unsigned int    mVertexFormat; // 32 0x20
    unsigned int    mMaxWeights;   // 36 0x24
    pddiVector2    *mUVs;          // 40 0x28
    int             mDisplayListSize; 
    unsigned int    mTotalBoneCount;

    typedef void(gcSkinBuffer::*DisplayFunction)(pddiMatrix *palette);

    DisplayFunction mDisplayFunction;

    void DisplayIndexedLit(pddiMatrix *palette);
    void DisplayIndexedLitOneBone(pddiMatrix *palette);
    void DisplayIndexedUnlit(pddiMatrix *palette);
    void DisplayIndexedUnlitOneBone(pddiMatrix *palette);

    void DisplayTexturedLit(pddiMatrix *palette);
    void DisplayTexturedUnlit(pddiMatrix *palette);
    void DisplayUntexturedLit(pddiMatrix *palette);
    void DisplayUntexturedUnlit(pddiMatrix *palette);
};




#endif 


