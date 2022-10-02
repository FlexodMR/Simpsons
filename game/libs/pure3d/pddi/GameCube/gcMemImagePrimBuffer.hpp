//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


#ifndef GCMEMIMAGEPRIMBUFFER_HPP
#define GCMEMIMAGEPRIMBUFFER_HPP

#include <pddi/gamecube/gccon.hpp>
#include <pddi/gamecube/gcComponentDescription.hpp>
#include <pddi/gamecube/gcBasePrimBuffer.hpp>

//*************************************************
//
// gc Mem Image Prim Buffer
//
class gcMemImagePrimBuffer : public gcBasePrimBuffer
{
public:
    gcMemImagePrimBuffer(gcContext *context);
   ~gcMemImagePrimBuffer();

    pddiPrimBufferStream *Lock(void);
    void Unlock(pddiPrimBufferStream *stream);

    unsigned char *LockIndexBuffer(void);
    void UnlockIndexBuffer(int count);

    void SetIndices(unsigned short *indices, int count);

    void Display(void);

    bool  CheckMemImageVersion(int version);
    void *LockMemImage(unsigned memImageLength);
    void  UnlockMemImage(void);
    void  SetMemImageParam(unsigned param, unsigned value);

protected:
    void Create(void);

    gcContext *mContext;

    unsigned char *mDisplayList;
    int            mDisplayListSize;
    
    unsigned char *mMemImageData; // Used for Memory imaged data & indexed primitive rendering
    int            mMemImageSize;

    int mComponentCount;
    gcComponentDescription *mComponents;

    pddiPrimType mPrimType;
    int          mVertexCount; // Number of verts displayed

};

#endif // GCMEMIMAGEPRIMBUFFER_HPP