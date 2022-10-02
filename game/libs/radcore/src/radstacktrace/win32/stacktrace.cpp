//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


#include "pch.hpp"
#include <stdlib.h>
#include <radstacktrace.hpp>

//
// Win32 Implementation
//

#define prev_fp_from_fp(fp)             (*((unsigned int *)fp))
#define ret_addr_from_fp(fp)            (*((unsigned int *)(fp + 4)))

//=============================================================================
// ::radStackTraceWin32Get
//=============================================================================

extern "C" void radStackTraceWin32Get( unsigned int * results, int max, const void * basePointer )
{
  unsigned int  prevfp;
  unsigned int  curfp;
  unsigned int  last;
	
  prevfp = 0x00000000;

  //_asm
  //{
  //  mov   curfp, ebp
  //}

  curfp = ( unsigned int ) basePointer;

  while (max--)
  {
    if (curfp != NULL &&     // is this frame pointer not NULL
        curfp > prevfp &&    // this frame pointer has to be greater than the previous
        !(curfp & 0x3))      // has to be 4byte aligned
    {
	    (*results++) = last = ret_addr_from_fp( curfp );
		  
      prevfp = curfp;
      curfp = prev_fp_from_fp( curfp );
    }
    else
    {
      (*results++) = last;

      curfp = NULL;
    }
  }
}


//=============================================================================
// ::radStackTraceGet
//=============================================================================

extern "C" void radStackTraceGet( unsigned int *results, int max )
{
    radStackTraceWin32Get( results, max, ( void * )( (unsigned int) & results - 8 ) );
}
