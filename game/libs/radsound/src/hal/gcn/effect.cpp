//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


#include <string.h>

#include <dolphin.h>
#include <dolphin/mix.h>
#include <dolphin/axfx.h>

#include <radsound.hpp>

#include "..\common\softwarelistener.hpp"
#include "radsoundgcn.hpp"
#include "voice.hpp"
#include "effect.hpp"


//============================================================================
// Local functions
//============================================================================

#define NUM_SAMPLES_IN_BUFFER 160

struct AuxData
{
    s32* l; // Left buffer
    s32* r; // Right buffer
    s32* s; // Surround buffer
};

void radSoundNullEffectCallback( void * pData, void * pContect )
{
    AuxData * pAuxData = (AuxData*) pData;    
   
    ::memset( pAuxData->l, 0, sizeof( s32 ) * NUM_SAMPLES_IN_BUFFER );
    ::memset( pAuxData->r, 0, sizeof( s32 ) * NUM_SAMPLES_IN_BUFFER );
    ::memset( pAuxData->s, 0, sizeof( s32 ) * NUM_SAMPLES_IN_BUFFER );
}

/* virtual */ radSoundEffectGcn::~radSoundEffectGcn( void )
{

}

