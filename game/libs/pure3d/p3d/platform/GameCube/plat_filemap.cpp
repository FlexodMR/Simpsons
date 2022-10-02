//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


#include <p3d/platform/GameCube/plat_filemap.hpp>
#include <p3d/utility.hpp>


tGCFileMap::tGCFileMap(const char* filename)
{
    mOK = false;
    Open(filename);
    SetFilename((char*)filename);
}

tGCFileMap::~tGCFileMap()
{
    Close();
}

void tGCFileMap::Open(const char* filename)
{

    mOK = DVDOpen((char *)filename, &mFile);
    if (!mOK) return;

    unsigned int length = DVDGetLength(&mFile);
    
    if (length == 0)
    {
        DVDClose(&mFile);
        mOK = false;
        return;
    }

    int aligned_len = (length + 31) & ~31;

    unsigned char* memory = new unsigned char[aligned_len];
    int read = DVDRead(&mFile, memory, aligned_len, 0);
    dataStream = new radLoadDataStream(memory,length,true);
}

void tGCFileMap::Close()
{
    if (mOK)
    {
        DVDClose(&mFile);
        mOK = false;
    }
}


