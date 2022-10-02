//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


#ifndef RADSOUNDWIN_HPP
#define RADSOUNDWIN_HPP

#include <dsound.h>

//============================================================================
// Helper Functions
//============================================================================

unsigned int  radSoundFloatAngleToULongWin( float angle );
float         radSoundULongAngleToFloatWin( unsigned int angle );
signed long   radSoundVolumeDbToHardwareWin( float volume );
float         radSoundVolumeHardwareToDbWin( signed long hardwareVolume );
unsigned long radSoundPercentageToHardwarePitchWin( float pitch, unsigned int normalFrequency );

#endif // RADSOUNDWIN32_HPP