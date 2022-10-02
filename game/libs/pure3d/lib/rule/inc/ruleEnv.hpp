//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


// Recompilation protection flag.
#ifndef __RULEENV_HPP_
#define __RULEENV_HPP_

#ifdef WIN32

//===========================================================================
// Nested Includes
//===========================================================================

#include <wtypes.h>

//===========================================================================
// Forward References
//===========================================================================

//===========================================================================
// Constants, Typedefs, and Macro Definitions (needed by external clients)
//===========================================================================

void CreateLaunchEnvVar( const char* envName, const char* inFile = NULL, const char* outFile = NULL );
BOOL FindInPath( const char* searchfile, char* pathbuffer, const char* pathvar = "PATH" );

#endif  // WIN32

#endif // __RULEENV_HPP_
