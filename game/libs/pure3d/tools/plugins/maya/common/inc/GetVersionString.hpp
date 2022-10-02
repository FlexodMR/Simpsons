//===========================================================================
// Copyright ©2002 Radical Entertainment Ltd.  All rights reserved.
//
// Created:     22 July, 2002
//
// Component:   GetVersionString.h
//
// Description: Used to retrieve the version string from a Maya MLL plug-in
//              for display in Maya's UI.
//
// Constraints: ** LINK with version.lib **
//
// Creator:     Bryan Ewert
//
//===========================================================================

// Recompilation protection flag.
#ifndef GETVERSIONSTRING_H
#define GETVERSIONSTRING_H

//===========================================================================
// Nested Includes
//===========================================================================

#include <stdio.h>

//===========================================================================
// Forward References
//===========================================================================

//===========================================================================
// Constants, Typedefs, and Macro Definitions (needed by external clients)
//===========================================================================

void GetVersionString( const char* pDllName, char* buf, size_t maxBytes );

//===========================================================================
// Inlines
//===========================================================================

#endif // GETVERSIONSTRING_H
