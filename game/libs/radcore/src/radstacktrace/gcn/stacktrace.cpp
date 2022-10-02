//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


#include <radstacktrace.hpp>
#include <dolphin.h>

//
// RAD_GAMECUBE Implementation
//

extern "C" void radStackTraceGet( unsigned int *pDest, int max )
{
	unsigned int  stack;
	unsigned int  last;
	int           i;
	
	stack = (unsigned int)OSGetStackPointer();  
	
	stack = (*(unsigned int *)stack);
	
	while (max--)
	{
		if (stack != 0x00000000 &&
			stack != 0xffffffff)
		{
			(*pDest++) = last = (*(unsigned int *)(stack + 4));
			
			stack = (*(unsigned int *)stack);
		}
		else
		{
			(*pDest++) = last;
		}
	}
}