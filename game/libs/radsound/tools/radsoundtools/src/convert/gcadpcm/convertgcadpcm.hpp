//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


#ifndef ENCGCADPCM_H
#define ENCGCADPCM_H

// need GCN_ADPCMINFO
#include "..\..\..\inc\radsoundfile.hpp"

typedef radSoundHalAdpcmInfoGcn gcnADPCMHeaderStruct ;

typedef unsigned long (*lpFunc1)(unsigned long);
typedef unsigned long (*lpFunc2)(void);
typedef void (*lpFunc3)(short*, unsigned char*, gcnADPCMHeaderStruct *, unsigned long);
typedef void (*lpFunc4)(unsigned char*, short*, gcnADPCMHeaderStruct *, unsigned long);
typedef void (*lpFunc5)(unsigned char*, gcnADPCMHeaderStruct *, unsigned long);

extern lpFunc1 getBytesForAdpcmBuffer;
extern lpFunc1 getBytesForAdpcmSamples;
extern lpFunc1 getBytesForPcmBuffer;
extern lpFunc1 getBytesForPcmSamples;
extern lpFunc1 getSampleForAdpcmNibble;
extern lpFunc1 getNibbleAddress;
extern lpFunc2 getBytesForAdpcmInfo;
extern lpFunc3 encode;
extern lpFunc4 decode;
extern lpFunc5 getLoopContext;

bool LoadGCAdpcmDLL( );

void UnloadGCAdpcmDLL( );


#endif // ENCGCADPCM_H