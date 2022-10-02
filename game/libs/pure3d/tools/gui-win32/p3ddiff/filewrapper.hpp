//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


#ifndef _FILEWRAPPER_HPP
#define _FILEWRAPPER_HPP


#include <toollib.hpp>


// Externalized variables
extern tlDataChunk* P3DSrcFile_TopChunk;
extern tlDataChunk* P3DDstFile_TopChunk;

extern char P3DSrcFile_Name[];
extern char P3DDstFile_Name[];


// Callable functions
extern const char * P3DFile_GetP3DDiffVersion();
extern const char * P3DFile_GetToollibVersion();
extern bool P3DFile_GetDirty();
extern bool P3DFile_Close();
extern bool P3DFile_Compare(const char* fSrcName, const char* fDstName);


#endif // _FILEWRAPPER_HPP

