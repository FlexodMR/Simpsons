//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================



#include <raddebug.hpp>

unsigned short radSoundVolumeAnalogToHardwareGcn( float in )
{
    rAssert( in >= 0.0f );
    rAssert( in <= 1.0f );
    
    return (unsigned short ) ( in * 32767.0f );
}
	

