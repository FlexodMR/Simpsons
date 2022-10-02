//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


#ifndef _PLAT_FILEMAP_HPP
#define _PLAT_FILEMAP_HPP

#include <p3d/file.hpp>

class tPS2FileMap : public tFileMem
{
public:
    tPS2FileMap(const char* filename);

    bool IsOpen(void) { return GetMemory() != NULL; }

protected:
    virtual ~tPS2FileMap();
    
    void Open(const char* filename);
    void Close(void);
};

#endif /*_FILEMAP_HPP*/

