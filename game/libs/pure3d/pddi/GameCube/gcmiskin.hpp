//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================



#ifndef _GCMISKIN_HPP
#define _GCMISKIN_HPP

#include <pddi/pddi.hpp>
#include <pddi/base/baseshader.hpp>
#include <pddi/base/basecontext.hpp>

#include <pddi/gamecube/gcskin.hpp>
#include <pddi/gamecube/gcComponentDescription.hpp>

//************************************************************
//
// Class gc MI Skin Buffer
//
//
class gcMISkinBuffer : public pddiPrimBuffer
{
public:
    gcMISkinBuffer();
   ~gcMISkinBuffer();

    // pddiPrimBuffer overrides

    pddiPrimBufferStream *Lock(void);
    void Unlock(pddiPrimBufferStream* stream);

    unsigned char *LockIndexBuffer(void);
    void UnlockIndexBuffer(int count);

    void SetIndices(unsigned short* indices, int count);

    // local functions
    void Display(gcContext *c, pddiShader *s, pddiMatrix *palette, gcExtHardwareSkinning *ext);

    bool  CheckMemImageVersion(int version);
    void *LockMemImage(unsigned memImageLength);
    void  UnlockMemImage();
    void  SetMemImageParam(unsigned param, unsigned value);

protected:
    void Create(void);

    friend class gcMISkinBufferStream;

    struct SkinWeight
    {
        unsigned char  weightcount;
        unsigned char  matrixindices[3];
        unsigned short weights[2];
    };

    // 12 bytes for pddiObject base class storage
    gcComponentDescription *mComponents;    // 12  0x0C
    unsigned char *mDisplayList;            // 16  0x14
    unsigned char *mMemImageData;           // 20  0x18
    unsigned int   mDisplayListSize;        // 24  0x10
    unsigned short mPositionGQR;            // 28  0x20
    unsigned char  mComponentCount;         // 30  0x1E
    unsigned char  mPositionStride;         // 31  0x1F
    unsigned short mVertexCount;            // 32  0x20
    unsigned short mNormalCount;            // 34  0x22

#ifdef PDDI_TRACK_STATS
    int            mBoneCount;              // 36  0x24
    int            mMemImageSize;           // 40  0x28
#endif

    void TransformVerts(pddiMatrix *palette, void *weights, void *verts);
    void TransformNormals(pddiMatrix *palette, void *weights, void *normals);

};

#endif



