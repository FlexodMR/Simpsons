//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


#ifndef ADPCM_HPP
#define ADPCM_HPP

//============================================================================
// Include Files
//============================================================================

#include <radsound.hpp>

short radSoundVolumeAnalogToHardwareAdpcmPs2( float analogVol );
short radSoundVolumeAmplitudeToHardwareAdpcmPs2( float amplitude );
short radSoundPitchPercentageToHardwareAdpcmPs2( float pitch, unsigned int samplingRate );

#endif // ADPCM_HPP