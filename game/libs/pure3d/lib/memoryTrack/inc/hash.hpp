//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


#include "memoryTrack.h"

#include <stdio.h>
#include <stdlib.h>

/* implementation dependent declarations */
typedef unsigned long int keyType;            /* type of key */

/* user data stored in hash table */
typedef ALLOC_INFO recType;

typedef int hashIndexType;      /* index into hash table */

#define compEQ(a,b) (a == b)


/* implementation independent declarations */
typedef enum {
    STATUS_OK,
    STATUS_MEM_EXHAUSTED,
    STATUS_KEY_NOT_FOUND
} statusEnum;

typedef struct nodeTag {
    struct nodeTag* next;       /* next node */
    keyType         key;                /* key */
    recType*        rec;                /* user data */
} nodeType;

typedef struct _HASH_STATS
{
    size_t      cells;
    size_t      depth;
    size_t      collisions;
} hashStats;

statusEnum hashalloc( size_t elements );
void hashdestroy();
nodeType* hashhead( void );
size_t hashcount( void );
statusEnum hashstats( hashStats* stats );

statusEnum hashinsert( const keyType key, recType *rec );
statusEnum hashdelete( const keyType key );
statusEnum hashfind( const keyType key, recType *rec );
int hashcompare( const void* elem1, const void* elem2 );
