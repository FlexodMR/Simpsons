//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


//=============================================================================
//
// File:        helpfunc.hpp
//
// Subsystem:	Radical Fountation Tech - help functions
//
// Description:	
//
// Revisions:	June 22nd 2001
//
//=============================================================================
#ifndef HELPFUNC_HPP_
#define HELPFUNC_HPP_

char* GetSZRegistryValue(const HKEY hRootKey, const char *szEntry, const char *szKey);

BOOL CreateDirectoryRecursive( const char * pTargetFilePath );

bool StringMatchesWildCardPattern( const char * pTestName, const char * pWildCard );

#endif // HELPFUNC_HPP_