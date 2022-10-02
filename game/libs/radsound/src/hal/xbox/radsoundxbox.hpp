//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


//=============================================================================
//
// File:        radsoundxbox.hpp
//
// Subsystem:	Radical Sound System
//
// Description:	This files contains all internal definitions for XBOX specific
//              implementations of the sound system.  
//
// Creation TH
// Modified RS 10-April-2001
//
//=============================================================================

#ifndef RADSOUNDXBOX_HPP
#define RADSOUNDXBOX_HPP

//============================================================================
// Include Files
//============================================================================

#include <dsound.h>
#include <radsound.hpp>
#include <radfile.hpp>

//============================================================================
// Forward class declarations
//============================================================================

struct IRadSoundHalSystemXBox;
struct IRadSoundHalEffectXBox;
struct radSoundObjectXBox;


//============================================================================
// Creation
//============================================================================

IRadSoundHalSystemXBox * radSoundHalSystemXBoxGet( void );

//============================================================================
// Conversion Functions
//============================================================================

signed long   radSoundVolumeDbToHardwareXBox( float volume );
float         radSoundVolumeHardwareToDbXBox( signed long hvol );

unsigned long radSoundPercentageToHardwarePitchXBox( float pitch, unsigned int normalFrequency );

//============================================================================
// Interface: IRadDxSoundSystem
//============================================================================

struct IRadSoundHalSystemXBox
    :
    public IRadSoundHalSystem
{
    virtual void GetDirectSoundReference( IDirectSound ** ppIDirectSound ) = 0;
};

#endif // RADSOUNDXBOX_HPP