/*===========================================================================
    File:: tlFormChunk.cpp

    Copyright (c) 1999 Radical Entertainment, Inc.  All rights reserved.

===========================================================================*/

#include "tlFormChunk.hpp"
#include <assert.h>

#include "tlFile.hpp"
#include "tlString.hpp"
#include "tlNameChunk.hpp"

tlFormChunk::tlFormChunk() : name(NULL), version(0), subchunks()
{
    SetID('F','O','R','M');
}

tlFormChunk::~tlFormChunk()
{
    strdelete(name);
}

void
tlFormChunk::Write(tlFile& f)
{
    tlChunk::Write(f);
    WriteHeader(f);
    WriteSubChunks(f);
}

void
tlFormChunk::WriteHeader(tlFile& f)
{
    if(name)
    {
        tlNameChunk namech;
        namech.SetName(name);
        namech.Write(f);
    }
}

void
tlFormChunk::WriteSubChunks(tlFile& f)
{
    for(int i = 0; i < SubChunkCount() ; i++)
    {
        GetSubChunk(i)->Write(f);
    }
}

long
tlFormChunk::Size()
{
    return tlChunk::Size() + DataSize();
}

long
tlFormChunk::DataSize()
{
    int size = 0;
    
    if(name)
    {
        size += 9 + strlen(name);   // HACK
    }
    
    for(int i = 0; i < SubChunkCount() ; i++)
    {
        size += GetSubChunk(i)->Size();
    }
    return size;
}

int 
tlFormChunk::SubChunkCount()
{
    return subchunks.Count();
}

tlChunk*& 
tlFormChunk::GetSubChunk(int index)
{
    return subchunks[index];
}

void
tlFormChunk::AppendSubChunk(tlChunk* ch)
{
    subchunks.Append(ch);
}

