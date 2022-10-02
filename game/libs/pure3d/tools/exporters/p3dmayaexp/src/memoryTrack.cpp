//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


#include "../inc/memoryTrack.h"
#include "../inc/exportFunctions.hpp"

#include <stdio.h>
#include <list>
#include <iostream.h>

using namespace std ;

typedef struct 
{
    void*   address;
    size_t  size;
    char    file[128];
    int     line;
} ALLOC_INFO;

typedef list<ALLOC_INFO*> AllocList;

AllocList *allocList = NULL;

void AddTrack( void* addr, size_t asize, const char *fname, int lnum)
{
    ALLOC_INFO *info;

    if(!allocList) 
    {
        allocList = new(AllocList);
    }

    info = new(ALLOC_INFO);
    info->address = addr;
    strncpy(info->file, fname, 127);
    info->line = lnum;
    info->size = asize;
    allocList->insert(allocList->begin(), info);

    char buf[1024];
    sprintf(buf, "%s: LINE %d, ADDRESS %x -> %d alloc'd", fname, lnum, addr, asize);
    clog << "ALLOCATE: " << buf << endl;
};

void RemoveTrack( void* addr)
{
  AllocList::iterator i;

  if(!allocList)
      return;

  for(i = allocList->begin(); i != allocList->end(); i++)
  {
      if((*i)->address == addr)
      {
        char buf[1024];
        sprintf(buf, "%s: LINE %d, ADDRESS %x -> %d free'd", (*i)->file, (*i)->line, (*i)->address, (*i)->size);
        clog << "FREE: " << buf << endl;

//          delete (*i);
          allocList->remove((*i));
          break;
      }
  }
};

void DumpUnfreed()
{
    AllocList::iterator i;
    size_t totalSize = 0;
    char buf[1024];

    if(!allocList)
      return;

    for(i = allocList->begin(); i != allocList->end(); i++) 
    {
        sprintf(buf, "%s: LINE %d, ADDRESS %x -> %d unfreed", (*i)->file, (*i)->line, (*i)->address, (*i)->size);
        gExportLog.Add( CExportLogEntry( ExportLog::kMemoryLeak, buf ) );
        totalSize += (*i)->size;

        delete (*i);
    }

    if ( totalSize > 0 )
    {
        sprintf(buf, "Total Unfreed: %d bytes\n", totalSize);
        gExportLog.Add( CExportLogEntry( ExportLog::kMemoryLeak, buf ) );
    }

    allocList->clear();
};
