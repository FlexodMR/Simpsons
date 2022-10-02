//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


#include <p3d/platform/ps2/plat_filemap.hpp>

#include <eekernel.h>
#include <eeregs.h>
#include <sifdev.h>
#include <stdio.h>
#include <string.h>

tPS2FileMap::tPS2FileMap(const char* filename)
{
    Open(filename);
    SetFilename(filename);
}

tPS2FileMap::~tPS2FileMap()
{
    Close();
}

void tPS2FileMap::Open(const char* filename)
{
    char filebuf[256];
    unsigned char* memory = NULL;
    unsigned int length;

//    sprintf(filebuf, "cdrom0:\\%s;1", filename);
    sprintf(filebuf, "host0:%s", filename);
    int fh = sceOpen(filebuf, SCE_RDONLY);
    if(fh < 0)
    {
        memory = 0;
        return;
    }
    
    length = sceLseek(fh, 0, SCE_SEEK_END);
    sceLseek(fh, 0, SCE_SEEK_SET); 

    memory = new unsigned char[(length + 15) & ~0xf];
    unsigned ret = (unsigned)sceRead(fh, memory, (length + 15) & ~0xf);
    if(ret != length)
    {
        printf("Warning, read %d bytes, but expected %d reading %s\n",
                 ret, length, filebuf);
    }
    
    sceClose(fh);
    dataStream = new radLoadDataStream(memory,length,true);
}

void tPS2FileMap::Close()
{
}


