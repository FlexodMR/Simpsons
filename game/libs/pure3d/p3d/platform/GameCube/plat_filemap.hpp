//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


#ifndef _PLAT_FILEMAP_HPP
#define _PLAT_FILEMAP_HPP

#include <p3d/file.hpp>

#include "dolphin/dvd.h"

class tGCFileMap : public tFileMem
{
public:
    tGCFileMap(const char* filename);

    bool IsOpen(void) { return GetMemory() != NULL; }

protected:
    virtual ~tGCFileMap();

    void Open(const char* filename);
    void Close(void);

    DVDFileInfo mFile;
    char *mFilename;
    bool mOK;
};


#endif /*_FILEMAP_HPP*/

