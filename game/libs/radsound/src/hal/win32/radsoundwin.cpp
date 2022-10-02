//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


#include "pch.hpp"
#include "radsoundwin.hpp"
#include <radsound_hal.hpp>

//============================================================================
// ::radSoundFloatAngleToULongWin
//============================================================================

unsigned int radSoundFloatAngleToULongWin
(
    float angle
)
{
    unsigned int uangle = static_cast< unsigned int >( angle );

    if ( uangle > 360 )
    {
        uangle = 360;
    }

    return uangle;
}

//============================================================================
// ::radSoundULongAngleToFloat
//============================================================================

float radSoundULongAngleToFloatWin
(
    unsigned int angle
)
{
    float fangle = static_cast< float >( angle );

    if ( fangle > 360.0f)
    {
        fangle = 360.0f;
    }
    else if ( fangle <= 0.0f )
    {
        fangle = 0.0f;
    }

    return fangle;
}

//============================================================================
// ::radSoundVolumeDbToHardwareWin
//============================================================================

signed long radSoundVolumeDbToHardwareWin
(
    float decibels
)
{
	radSoundVerifyDbVolume( decibels );

	// We don't want too many bytes or we will overflow.  It's 
	// safe to cut this value off at -100
	
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

//============================================================================
// ::radSoundVolumeHardwareToDbWin
//============================================================================

float radSoundVolumeHardwareToDbWin
( 
	signed long hardwareVolume
)
{
	// Just scale the value by 100

	float decibels = ( ( float ) hardwareVolume ) / 100.0f;

	::radSoundVerifyDbVolume( decibels );

	return decibels;
}

//============================================================================
// ::radSoundHardwareVolumeToPercentage
//============================================================================

unsigned long radSoundPercentageToHardwarePitchWin
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

