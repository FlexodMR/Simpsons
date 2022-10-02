//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


/* hash table */

#include "../inc/hash.hpp"

nodeType **hashTable = NULL;
size_t hashTableSize = 0;

size_t cells = 0;
size_t collisions = 0;

hashIndexType hash(keyType key) 
{
   /***********************************
    *  hash function applied to data  *
    ***********************************/

    return (key % hashTableSize);
}

statusEnum hashalloc( size_t elements )
{
    if ( hashTable == NULL )
    {
        if ( ( hashTable = (nodeType**)calloc( elements, sizeof(nodeType *))) == 0 )
            return STATUS_MEM_EXHAUSTED;
    }

    hashTableSize = elements;
    return STATUS_OK;
}

void hashdestroy( void )
{
    free(hashTable);
    hashTable = NULL;
    hashTableSize = 0;
    cells = 0;
    collisions = 0;
}

nodeType* hashhead( void )
{
    size_t h;
    for ( h = 0; h < hashTableSize; h++ )
    {
        if ( hashTable[h] != NULL ) return hashTable[h];
    }

    return NULL;
}

size_t hashcount( void )
{
    size_t count = 0;

    nodeType* pNode;
    size_t index;

    for ( index = 0; index < hashTableSize; index++ )
    {
        if ( ( pNode = hashTable[index] ) != NULL )
        {
            while ( pNode )
            {
                count++;
                pNode = pNode->next;
            }
        }
    }

    return count;
}

statusEnum hashinsert( const keyType key, recType *rec ) 
{
    if ( hashTable == NULL ) return STATUS_KEY_NOT_FOUND;

    nodeType *p, *p0;
    hashIndexType bucket;

   /************************************************
    *  allocate node for data and insert in table  *
    ************************************************/

    /* insert node at beginning of list */
    bucket = hash(key);
    if ( ( p = (nodeType*)malloc(sizeof(nodeType)) ) == 0 )
        return STATUS_MEM_EXHAUSTED;
    p0 = hashTable[bucket];
    hashTable[bucket] = p;
    p->next = p0;
    p->key = key;
    p->rec = rec;

    if ( p0 )
    {
        collisions++;
    }
    else
    {
        cells++;
    }

    return STATUS_OK;
}

statusEnum hashdelete( const keyType key )
{
    if ( hashTable == NULL ) return STATUS_KEY_NOT_FOUND;

    nodeType *p0, *p;
    hashIndexType bucket;

   /********************************************
    *  delete node containing data from table  *
    ********************************************/

    /* find node */
    p0 = 0;
    bucket = hash(key);
    p = hashTable[bucket];
    while (p && !compEQ(p->key, key)) 
    {
        p0 = p;
        p = p->next;
    }
    if (!p) return STATUS_KEY_NOT_FOUND;

    /* p designates node to delete, remove it from list */
    if (p0)
        /* not first node, p0 points to previous node */
        p0->next = p->next;
    else
        /* first node on chain */
        hashTable[bucket] = p->next;

    free (p);
    return STATUS_OK;
}

statusEnum hashfind( const keyType key, recType *rec )
{
    if ( hashTable == NULL ) return STATUS_KEY_NOT_FOUND;

    nodeType *p;

   /*******************************
    *  find node containing data  *
    *******************************/

    p = hashTable[hash(key)];
    while (p && !compEQ(p->key, key)) 
        p = p->next;
    if (!p) return STATUS_KEY_NOT_FOUND;
    rec = p->rec;
    return STATUS_OK;
}

int hashcompare( const void* elem1, const void* elem2 )
{
    recType* e1 = *(recType**)elem1;
    recType* e2 = *(recType**)elem2;
    if ( e1->hpc.QuadPart < e2->hpc.QuadPart ) return -1;
    else if ( e1->hpc.QuadPart > e2->hpc.QuadPart ) return 1;
    else return 0;
}

statusEnum hashstats( hashStats* stats )
{
    if ( hashTable == NULL ) return STATUS_KEY_NOT_FOUND;

    if ( stats != NULL )
    {
        stats->cells = 0;
        stats->depth = 0;
        stats->collisions = 0;

        nodeType* pNode;
        size_t index;

        for ( index = 0; index < hashTableSize; index++ )
        {
            if ( ( pNode = hashTable[index] ) != NULL )
            {
                stats->cells++;
                size_t _depth = 1;

                pNode = pNode->next;

                if ( pNode )
                {
                    stats->collisions++;
                }

                while ( pNode )
                {
                    _depth++;
                    pNode = pNode->next;
                }

                stats->depth = __max( _depth, stats->depth );
            }
        }
    }

    return STATUS_OK;
}

size_t hashcollisions( void )
{
    return collisions;
}
