//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


#include <p3d/platform/linux/plat_filemap.hpp>
#include <unistd.h>
#include <string.h>
#include <sys/mman.h>
#include <sys/types.h>
#include <sys/stat.h>
#include <fcntl.h>

tLinuxFileMap::tLinuxFileMap(const char* filename)
{
    memory = position = NULL;
    length = 0;
    Open(filename);
    SetFilename(filename);
}

tLinuxFileMap::~tLinuxFileMap()
{
    Close();
}

void 
tLinuxFileMap::Open(const char* filename)
{
    fh = open(filename, O_RDONLY);
    if(fh == -1)
    {
        return;
    }
    
    length = lseek(fh, 0, SEEK_END);
    if(length < 0)
    {
        return;
    }

    memory = (unsigned char*)mmap(NULL, length, PROT_READ, MAP_PRIVATE, fh, 0);
    if(!memory)
    {
        close(fh);
        return;
    }
    position = memory;
}

void tLinuxFileMap::Close()
{
    munmap((caddr_t)(memory),length);
    close(fh);
    position = memory = NULL;
}

