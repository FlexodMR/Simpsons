//=============================================================================
//
// File:        PS2_rSoundRpcServer.cpp
//
// Subsystem:	Radical Sound System
//
// Description:	This file contains the IOP Side implementation of the EE --> IOP
//          communication component.  This component uses sony's remote
//          procedure call implementation.
//
//=============================================================================

//=============================================================================
//
// Discussion of the .vag data format: 
//
//      The deal is this:
//
//      o The data is organized into 16 byte packets.
//      o The 3 hardware control bits are located in the second byte of each
//        sample packet:
//
//        [1 bytes][5bits | *3bits* (2, 1, 0) for control ][14 bytes]
//
//      o bit 0 is the loop/end bit.  All data must have this set.  In the case
//        of a looping sample it signifies when to loop back to the loop/start
//        point ( see bit 2 ).  In the case of non looping data this signifies
//        the end of the data and the spu will mute, but not stop!,  the voice.
//
//      o bit 1 is the loop existence bit.  Looping data must have this bit
//        set in EVERY 16 byte block.  Non-looping data must have this bit
//        cleared in EVERY 16 byte block.
//
//      o bit 2 is the loop/start bit.  All data must have this set.  In the
//        case of a looping sample it signifies the loop back point.  In the
//        case of non looping data it signifies the start of the data.
//     
//============================================================================

//============================================================================
// Include Files
//============================================================================

#include <kernel.h>
#include "iopservervoice.h"
#include "iopserverload.h"

//============================================================================
// Global Data
//============================================================================

ModuleInfo Module = { "radsound", 0x0101 };

//============================================================================
//
// Function: start
//
// Description: This is the entry point to this .irx relocatable module
//
//============================================================================

int start
(
    void
)
{
    FlushDcache();  
    CpuEnableIntr();

    radSoundVoiceServerInitialize( );
    radSoundLoadServerInitialize( );

    return 0;
}
