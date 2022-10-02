//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


#include <pddi/ps2/packet.hpp>
#include <string.h>

GsDummyContext dummyContext;

void* VifStream::Unpack(unsigned vuDest, unsigned qword, unsigned format, void* data, VIF::UnpackAddressMode addrMode)
{
   *buf = VIF1_SET_UNPACK(vuDest, qword, format, 0);
   *buf |= (unsigned)addrMode; // absolute or tops relative
   buf++;

    void* unpackDataPtr = buf;

    switch(format)
    {
        case VIF::V4_32:
        case VIF::mask_V4_32:
            if(data) memcpy(buf, data, qword * 16);
            buf += (qword * 4);
        break;
      
        case VIF::V3_32:
        case VIF::mask_V3_32:
            if(data) memcpy(buf, data, qword * 12);
            buf += (qword * 3);
        break;

        case VIF::V3_16:
        case VIF::mask_V3_16:
            if(data) memcpy(buf, data, qword * 6);
            buf += ((qword * 6) + 3) / 4;
        break;

        case VIF::V4_16:
        case VIF::mask_V2_16:
            if(data) memcpy(buf, data, qword * 8);
            buf += (qword * 2);
        break;

        case VIF::V2_32:
        case VIF::mask_V2_32:
            if(data) memcpy(buf, data, qword * 8);
            buf += (qword * 2);
        break;

        case VIF::V4_8:
        case VIF::mask_V4_8:
            if(data) memcpy(buf, data, qword * 4);
            buf += qword;
        break;

        case VIF::V4_5:
        case VIF::mask_V4_5:
            if(data) memcpy(buf, data, qword * 2);
            buf += (qword + 1) / 2;
        break;

        default:
            EE::Break();  // format not handled, add a case for it
        break;
    }
   
    return unpackDataPtr;
}
