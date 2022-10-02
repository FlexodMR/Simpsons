//===========================================================================
// Copyright ©2002 Radical Entertainment Ltd.  All rights reserved.
//
// Created:     31 May, 2002
//
// Component:   
//
// Description: 
//
// Constraints: 
//
// Creator:     Bryan Ewert
//
//===========================================================================

// This entire file is active only if RAD_DEBUG is defined.
#ifdef RAD_DEBUG

//===========================================================================
// Includes
//===========================================================================

#include "../inc/memoryTrack.h"
#include "../inc/hash.hpp"

#include <winbase.h>
#include <stdio.h>
#include <listArray/listarray.hpp>
#include <iostream>

//===========================================================================
// Local Constants, Typedefs, and Macros
//===========================================================================

/*
 * prime number for the address lookup hash table.
 * Other suggestions: 1567, 12323, 23993, 47951, 343051
 * (I've heard they shouldn't be too close to powers of 2,
 *  although this may apply more specifically to hashing strings.)
 */
static const unsigned int gHashTableSize = 35323;   // PRIME

static clock_t baseClock = clock();
static LARGE_INTEGER baseHPC;

//#define MEMORY_TRACK_ECHO_ALLOCATIONS
//#define MEMORY_TRACK_SHOW_STATS

//===========================================================================
// Global Data, Local Data, Local Classes
//===========================================================================

CLog            gMemoryTrackLog;

//===========================================================================
// Implementation
//===========================================================================

void AddTrack( void* addr, size_t asize, const char *fname, int lnum)
{
    ALLOC_INFO *rec;

    // If table is already allocated this does nothing.
    if ( hashalloc( gHashTableSize ) == STATUS_MEM_EXHAUSTED ) return;

    rec = (ALLOC_INFO*)malloc( sizeof( ALLOC_INFO ) );

    rec->address = addr;
    strncpy(rec->file, fname, 127);
    rec->line = lnum;
    rec->size = asize;
    rec->clock = clock();
    
    if ( !QueryPerformanceCounter( &rec->hpc ) )
    {
        std::cerr << "NO HIGH PERFORMANCE COUNTER" << std::endl;
    }

//    allocList.AddItem( info );

    hashinsert( (unsigned long int)addr, rec );

#ifdef MEMORY_TRACK_ECHO_ALLOCATIONS

    char buf[1024];
    sprintf(buf, "%s: LINE %d, ADDRESS 0x%x -> %d alloc'd", fname, lnum, addr, asize);
    clog << "ALLOCATE: " << hex << buf << dec << endl;

#endif      // MEMORY_TRACK_ECHO_ALLOCATIONS

};

bool IsTracked( void* addr )
{
//    size_t i;
//    for(i = 0; i < allocList.NumItems(); i++)
//    {
//        if( allocList[i] == addr) return true;
//    }

    ALLOC_INFO* rec = NULL;
    if ( hashfind( (unsigned long int)addr, rec ) == STATUS_OK ) return true;

    return false;
}

void RemoveTrack( void* addr)
{
//    ALLOC_INFO* pInfo = NULL;
//    unsigned int length = allocList.NumItems();
//
//    size_t i;
//    for(i = 0; i < allocList.NumItems(); i++)
//    {
//        pInfo = allocList[i];
//        if( pInfo->address == addr)
//        {
//            char buf[1024];
//            sprintf(buf, "%s: LINE %d, ADDRESS 0x%x -> %d free'd", pInfo->file, pInfo->line, pInfo->address, pInfo->size);
//            clog << "FREE: " << hex << buf << dec << endl;
//
//            allocList.DeleteItem(i);
//            delete pInfo;
//
//            if ( length == allocList.NumItems() )
//            {
//                cerr << "*** TRACK DETECTED & REMOVED.. but allocList did not shrink! ***" << endl;
//            }
//
//            break;
//        }
//    }
//
//    length = allocList.NumItems();

    ALLOC_INFO* rec = NULL;
    if ( hashfind( (unsigned long int)addr, rec ) == STATUS_OK )
    {
        hashdelete( (unsigned long int)addr );
        free( rec );
    }

};

void DumpUnfreed()
{
    size_t totalSize = 0;
    ALLOC_INFO* pInfo = NULL;
    char buf[1024];

//    unsigned int length = allocList.NumItems();

//    while ( allocList.NumItems() )
//    {
//        pInfo = allocList[0];
//        sprintf(buf, "%s: LINE %d, ADDRESS 0x%x -> %d unfreed", pInfo->file, pInfo->line, pInfo->address, pInfo->size);
//        gMemoryTrackLog.Add( CLogEntry( buf ) );
//        totalSize += pInfo->size;
//
//        allocList.DeleteItem(0);
//        delete pInfo;
//    }

    LARGE_INTEGER freq;
    QueryPerformanceFrequency( &freq );

    size_t count = hashcount();
    size_t index = 0;
    recType** ppTable = (recType**)calloc( sizeof( recType* ), count );

    hashStats stats;
    hashstats( &stats );

    nodeType* pHead;
    while ( pHead = hashhead() )
    {
        keyType     key = pHead->key;
        ppTable[index] = pHead->rec;
        
        hashdelete( key );
        index++;
    }

    // Sort the table by the time of the allocations
    qsort( ppTable, count, sizeof( recType* ), hashcompare );

    for ( index = 0; index < count; index++ )
    {
        recType*    rec = ppTable[index];

        double _clock = (double)( rec->clock - baseClock ) / CLOCKS_PER_SEC;

        double _hpc = ( rec->hpc.QuadPart - baseHPC.QuadPart ) / (double)freq.QuadPart;

        sprintf(buf, "%s: LINE %d, ADDRESS 0x%x @ %.4f sec -> %d unfreed", rec->file, rec->line, rec->address, _hpc, rec->size);
        gMemoryTrackLog.Add( CLogEntry( buf ) );
        totalSize += rec->size;

        free( rec );
    }

    if ( totalSize > 0 )
    {
        sprintf(buf, "Total Unfreed: %d bytes in %d allocations", totalSize, count );
        gMemoryTrackLog.Add( CLogEntry( buf ) );
    }

#ifdef MEMORY_TRACK_SHOW_STATS

    sprintf(buf, "Hash Table stats: Cells used: %d; Depth: %d; Collisions: %d", stats.cells, stats.depth, stats.collisions );
    gMemoryTrackLog.Add( CLogEntry( buf ) );

#endif      // MEMORY_TRACK_SHOW_STATS

//    else
//    {
//        sprintf(buf, "~~ Memory list traversed (%d items), but all memory released successfully ~~\n", length );
//        gMemoryTrackLog.Add( CLogEntry( buf ) );
//    }

    free( ppTable );
};

void MemoryTrackReset( void )
{
//    while ( allocList.NumItems() )
//    {
//        ALLOC_INFO* pInfo = allocList[0];
//        
//        allocList.DeleteItem(0);
//        delete pInfo;
//    }

    nodeType* pHead;
    while ( pHead = hashhead() )
    {
        keyType     key = pHead->key;
        recType*    rec = pHead->rec;

        hashdelete( key );
        free( rec );
    }

    hashdestroy();

    baseClock = clock();
    QueryPerformanceCounter( &baseHPC );
}

// This entire file is active only if RAD_DEBUG is defined.
#endif      // RAD_DEBUG
