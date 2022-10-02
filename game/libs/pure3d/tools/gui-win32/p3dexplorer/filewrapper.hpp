//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


// file: filewrapper.hpp
// Greg Mayer
// Nov 20, 1998

#ifndef _FILEWRAPPER_HPP
#define _FILEWRAPPER_HPP


#include <toollib.hpp>



// Externalized variables
extern tlDataChunk* P3DFile_TopChunk;
extern char P3DFile_Name[];


// Callable functions
extern const char * P3DFile_GetP3DExplorerVersion();
extern const char * P3DFile_GetToollibVersion();
extern bool P3DFile_GetDirty();
extern void P3DFile_SetDirty_Modified(bool dirty);
extern void P3DFile_SetDirty_Deleted(bool dirty);
extern void P3DFile_SetDirty_Inserted(bool dirty);
extern bool P3DFile_CheckDirty();
extern bool P3DFile_New();
extern bool P3DFile_IsNew();
extern bool P3DFile_Open(const char* fname);
extern bool P3DFile_Save();
extern bool P3DFile_SaveAs(const char* fname);
extern bool P3DFile_ExportImage( tlImageChunk *imgchunk, const char* fname);
extern bool P3DFile_ImportImage( tlDataChunk *texchunk, const char* fname);
extern bool P3DFile_Close();


#endif // _FILEWRAPPER_HPP

