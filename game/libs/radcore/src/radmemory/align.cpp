//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


#include "pch.hpp"
#include <radmemory.hpp>

//============================================================================
// ::radMemoryRoundUp
//============================================================================

unsigned int radMemoryRoundUp( unsigned int size, unsigned int alignment )
{
	if ( alignment != 0 )
	{
		if ( ( size % alignment ) != 0 )
		{
			return size + ( alignment - ( size % alignment ) );
		}
	}

    return size;
}

//============================================================================
// ::radMemoryRoundDown
//============================================================================

unsigned int radMemoryRoundDown( unsigned int size, unsigned alignment )
{
    if ( alignment != 0 )
    {
        return ( size / alignment ) * alignment;
    }

    return size;
}

//============================================================================
// ::radMemoryIsAligned
//============================================================================

bool radMemoryIsAligned( unsigned int value, unsigned int alignment )
{
    return( value == radMemoryRoundUp( value, alignment ) );
}