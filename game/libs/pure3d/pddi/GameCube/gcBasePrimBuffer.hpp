//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


#ifndef GCBASPRIMBUFFER_HPP
#define GCBASPRIMBUFFER_HPP

#include <pddi/gamecube/gccon.hpp>

class gcBasePrimBuffer : public pddiPrimBuffer
{
public:
    PDDI_INTERFACE pddiPrimBufferStream* Lock(void) = 0;
    PDDI_INTERFACE void Unlock(pddiPrimBufferStream* stream) = 0;

    PDDI_INTERFACE unsigned char* LockIndexBuffer(void) = 0;
    PDDI_INTERFACE void UnlockIndexBuffer(int count) = 0;

    PDDI_INTERFACE void SetIndices(unsigned short* indices, int count) = 0;

    PDDI_INTERFACE bool CheckMemImageVersion(int version) = 0;
    PDDI_INTERFACE void* LockMemImage(unsigned memImageLength) = 0;
    PDDI_INTERFACE void UnlockMemImage(void) = 0;

    PDDI_INTERFACE void Display(void) = 0;

protected:
    virtual ~gcBasePrimBuffer() {};
};


#endif // GCBASPRIMBUFFER_HPP
