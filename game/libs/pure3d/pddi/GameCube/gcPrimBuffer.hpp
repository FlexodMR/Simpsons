//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


#ifndef GCPRIMBUFFER_HPP
#define GCPRIMBUFFER_HPP

class gcPrimBufferStream;

#include <pddi/gamecube/gccon.hpp>
#include <pddi/gamecube/gcBasePrimBuffer.hpp>

//*************************************************
//
// gc Prim Buffer
//
class gcPrimBuffer : public gcBasePrimBuffer
{
public:
    gcPrimBuffer(gcContext *context);
   ~gcPrimBuffer();

    void Create(pddiPrimBufferDesc *desc);

    pddiPrimBufferStream *Lock();
    void Unlock(pddiPrimBufferStream *stream);

    unsigned char *LockIndexBuffer(void);
    void UnlockIndexBuffer(int count);

    void SetIndices(unsigned short *indices, int count);

    void Display(void);
    void DisplayNormals(void);

    void SetIndexBufferSize(int bufferSize);

    bool  CheckMemImageVersion(int version);
    void *LockMemImage(unsigned memImageLength);
    void  UnlockMemImage(void);
    void  SetMemImageParam(unsigned param, unsigned value);

protected:
    friend class gcPrimBufferStream;
    gcContext *mContext;

    pddiPrimType mPrimType;
    unsigned     mVertexType;

    int mVertexCount;
    int mIndexCount;

    unsigned char *mDisplayList;
    int            mDisplayListSize;
    
    char *mVertexData; // Used for Memory imaged data & indexed primitive rendering
    int   mVertexDataSize;
};

#endif // GCPRIMBUFFER_HPP