//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================



//=============================================================================
//
// File:        adpcmcore.cpp
//
// Subsystem:	Radical Sound System
//
// Description:	This file contains standard functions for validating clients
//      sound parameters.  And for internal conversions of data.
//
//=============================================================================

#include <raddebug.hpp>
#include <radsoundmath.hpp>


#define FLOAT_0x3FFF 16383.0f

//============================================================================
// ::radSoundVolumeAnalogToHardwareAdpcmPs2
//============================================================================

short radSoundVolumeAnalogToHardwareAdpcmPs2( float analogVol )
{
    short spuVolume = 0;

    if( analogVol < 0 )
    {
        ::radSoundVerifyAnalogVolume( -analogVol );

        spuVolume = 0x7fff &
             ::radSoundFloatToShort(
			    ::radSoundVolumeAnalogToAmplitude( analogVol ) * FLOAT_0x3FFF ); 
    }
    else
    {
	    ::radSoundVerifyAnalogVolume( analogVol );

        spuVolume =
            ::radSoundFloatToShort(
			    ::radSoundVolumeAnalogToAmplitude( analogVol ) * FLOAT_0x3FFF ); 
    }

    return spuVolume;
}

//============================================================================
// ::radSoundVolumeAmplitudeToHardwareAdpcmPs2
//============================================================================

short radSoundVolumeAmplitudeToHardwareAdpcmPs2( float amplitude )
{
    short spuVolume = 0;

    if( amplitude < 0 )
    {
	    ::radSoundVerifyAmplitudeVolume( -amplitude );
        spuVolume = 0x7fff & ::radSoundFloatToShort( amplitude * FLOAT_0x3FFF );
    }
    else
    {
	    ::radSoundVerifyAmplitudeVolume( amplitude );
        spuVolume = ::radSoundFloatToShort( amplitude * FLOAT_0x3FFF );
    }

    return spuVolume;
}

//============================================================================
// ::radSoundPitchPercentageToHardwareAdpcmPs2
//============================================================================

short radSoundPitchPercentageToHardwareAdpcmPs2
(
    float pitch,
    unsigned int samplingRate
)
{
	::radSoundVerifyAnalogPitch( pitch );

	float floatPitch = ( ( ( ::radSoundUIntToFloat( samplingRate ) / 48000.0f ) * pitch ) * 4096.0f ); 

	//
	// Map to register range
	//

	if ( floatPitch > FLOAT_0x3FFF )
	{
		floatPitch = FLOAT_0x3FFF;
	}
	else if ( floatPitch < 0.0f )
	{
		floatPitch = 0.0f;
	}

    return radSoundFloatToShort( floatPitch );
}
