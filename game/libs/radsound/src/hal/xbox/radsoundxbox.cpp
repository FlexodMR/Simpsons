//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


#include "pch.hpp"
#include "radsoundxbox.hpp"

//============================================================================
// ::radSoundPercentageToHardwarePitch
//============================================================================

unsigned long radSoundPercentageToHardwarePitchXBox
(
    float pitch,
    unsigned int normalFrequency
)
{
    ::radSoundVerifyAnalogPitch( pitch );

    unsigned long newPitch = static_cast< unsigned long >( pitch * static_cast< float >( normalFrequency ) );

    if (newPitch < DSBFREQUENCY_MIN )
    {
        newPitch = DSBFREQUENCY_MIN;
    }
    else if ( newPitch > DSBFREQUENCY_MAX )
    {
        newPitch = DSBFREQUENCY_MAX;
    }

    return newPitch;
}


//============================================================================
// ::radSoundVolumeDbToHardwareXBox
//============================================================================

signed long radSoundVolumeDbToHardwareXBox
(
    float decibels
)
{
    ::radSoundVerifyDbVolume( decibels );

	// We don't want to overflow.  -100 dB is plenty quiet.

	if( decibels < -100.0f )
	{
		decibels = -100.0f;
	}

    signed long db = static_cast< signed long >( decibels * 100.0f );
    
    if ( db > DSBVOLUME_MAX )
    {
        db = DSBVOLUME_MAX;
    }
    else if ( db < DSBVOLUME_MIN )
    {
        db = DSBVOLUME_MIN;
    }

    return db;
}

float radSoundVolumeHardwareToDbXBox( signed long hardware )
{
	float db = ((float) hardware) / 100.0f;

	::radSoundVerifyDbVolume( db );

	return db;
}

