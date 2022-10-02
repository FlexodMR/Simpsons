//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


#ifndef RADSTACKTRACE_HPP
#define RADSTACKTRACE_HPP

//=============================================================================
// ::radStackTraceGet
//=============================================================================

//
// Call this function to return an array of addresses which represent the
// current function call stack.
//

extern "C" void radStackTraceGet( unsigned int * results, int numResults );


//=============================================================================
// ::radStackTracePs2Get
//=============================================================================

//
// This stack trace function allows the caller to specify the stack pointer and
// return address of another context
//

#ifdef RAD_PS2

extern "C" void radStackTracePs2Get( unsigned int * results, 
    int numResults, const void * stackPointer, const void * returnAddress );

#endif  // RAD_PS2

//=============================================================================
// ::radStackTraceWin32Get
//=============================================================================

//
// This stack trace function allows the caller to specify the base pointer (EBP)
// of another context
//

#if defined RAD_WIN32 || RAD_XBOX

extern "C" void radStackTraceWin32Get( unsigned int * results, 
    int numResults, const void * basePointer );

#endif // RAD_WIN32 || RAD_XBOX

#endif RADSTACKTRACE_HPP
