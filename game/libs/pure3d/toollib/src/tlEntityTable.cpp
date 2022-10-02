/*===========================================================================
    tlEntityTable.cpp
    created: Jan 19, 2000
    Greg Mayer

    Copyright (c) 2000 Radical Entertainment, Inc.
    All rights reserved.
===========================================================================*/

#include "tlTypes.hpp"
#include "tlEntity.hpp"
#include "tlEntityTable.hpp"

#include <string.h>
#include <stdio.h>
#include <assert.h>
#include <typeinfo>

// guts of this class copied from entitytable.cpp 

//-------------------------------------------------------------------

// algorithm uses a double hashing scheme
// based on Sedgewick (Algorithms in C 3rd ed, p 594)
// and Knuth (TAoCP v3, p 521)

const int TABLE_SIZE = 1024;        // initial table size (must be a power-of-2!)
const int RESIZE_PERCENTAGE = 80;   // table will resize if it gets this full
const int REPACK_PERCENTAGE = 60;   // table will repack if there are this many deleted items in the table

// assumes table size is a power of 2!
int inline static computeHash(const TLUID uid, const int tableSize)
{
    return (unsigned)(uid & (tableSize - 1));
}

// The probe increment should be relatively prime to the table size.  Since the
// table size is a power-of-2, all we have to do is make the increment odd.
int inline static computeIncrement(const TLUID uid)
{
    return (unsigned)((uid >> 9) & 0xff) | 1;
}


//-------------------------------------------------------------------
tlEntityTable::Iterator::Iterator(tlEntityTable* t) :
    table(t), uid(0), hash(0), increment(0)
{
    // hello there    
}

tlEntityTable::Iterator::~Iterator()
{
    // thank you. come again
}

tlEntity* tlEntityTable::Iterator::First(const TLUID u)
{
    uid = u;
    hash = computeHash(uid, table->tableSize);
    increment = computeIncrement(uid);
    nSearch = 0;

    while(nSearch < table->tableSize)
    {
        if(!table->table[hash])
        {
            return NULL;
        }
        else
        if(table->table[hash]->UID() == uid)
        {         
            return table->table[hash];
        }

        hash += increment;
        hash &= (table->tableSize-1);
        nSearch++;
    }

    return NULL;
}


tlEntity* tlEntityTable::Iterator::Next()
{
    while(nSearch < table->tableSize)
    {
        hash += increment;
        hash &= (table->tableSize-1);
        nSearch++;

        if(!table->table[hash])
        {
            return NULL;
        }
        else
        if(table->table[hash]->UID() == uid)
        {
            return table->table[hash];
        }
    }

    return NULL;
}

int tlEntityTable::Iterator::FirstIndex(const TLUID uid)
{
    return First(uid) ? hash : -1;
}

int tlEntityTable::Iterator::NextIndex()
{
    return Next() ? hash : -1;
}

int tlEntityTable::Iterator::FirstFree(const TLUID uid)
{
    tlEntity* obj = First(uid);
    while(obj)
    {
        obj = Next();
    }

    return hash;
}

//-------------------------------------------------------------------
tlEntityTable::RawIterator::RawIterator(tlEntityTable* t) : table(t), index(0)
{
    //
}


tlEntityTable::RawIterator::~RawIterator()
{
    //
}


tlEntity* tlEntityTable::RawIterator::First()
{
    index = 0;
    return Next();
}

tlEntity* tlEntityTable::RawIterator::Next()
{
    // move index to first non-NULL slot
    for(/**/ ;(index < table->tableSize) && (!table->table[index] || (table->table[index] == table->deleteMarker)); index++)
    {
        ;
    }

    tlEntity* obj = index < table->tableSize ? table->table[index] : NULL;
    index++;
    return obj;
}


//-------------------------------------------------------------------
// This class is totally internal to tlEntityTable and is only used
// by it to mark the end of the entity sequence
// - essentially allows tlEntityTable to instantiate an empty tlEntity
class tlEntityDeleteMarker: public tlEntity
{
public:

    void LoadFromChunk16(tlDataChunk*)
    {
        assert("tlEntityDeleteMarker::LoadFromChunk16() unimplemented" == 0);
    }

    tlDataChunk* Chunk16()
    {
        assert("tlEntityDeleteMarker::Chunk16() unimplemented" == 0);
        return 0;
    }
};


//-------------------------------------------------------------------
tlEntityTable::tlEntityTable() :
    tableSize(TABLE_SIZE), table(NULL), nElement(0), resizeThreshhold(0),
    nDeleteMarker(0), repackThreshhold(0), deleteMarker(new tlEntityDeleteMarker)
{
    //deleteMarker->SetUID(~0);  // hopefully this uid will never be generated
    // can't set the UID explicity in toollib so we should just set the name
    // to something unlikely
    deleteMarker->SetName("__DELETE__MARKER__");

    //deleteMarker->AddRef();  // this is for tEntitys    
    Grow();
}

tlEntityTable::~tlEntityTable()
{
    RemoveAll();
    delete[] table;
    //deleteMarker->Release(); // this is for tEntitys
    delete deleteMarker;
}

void tlEntityTable::RemoveAll()
{
    if(table)
    {
        for(int i=0; i < tableSize; i++)
        {
            if(table[i] && (table[i] != deleteMarker))
            {
                //table[i]->Release();
                delete table[i];
            }
            table[i] = NULL;
        }
    }
    nElement = 0;
    nDeleteMarker = 0;
}

void tlEntityTable::Grow()
{
    if(table)
    {
        // build new table, rehash all elements
        tlEntity** oldTable = table;
        int oldSize = tableSize;
        nElement = 0;
        tableSize *= 2;
        nDeleteMarker = 0;
        table = new tlEntity*[tableSize];
        memset(table, 0, tableSize*sizeof(tlEntity*));
        Rehash(oldTable, oldSize);
        delete[] oldTable;
    }
    else
    {
        delete[] table;
        table = new tlEntity*[tableSize];
        memset(table, 0, tableSize*sizeof(tlEntity*));
    }

    resizeThreshhold = (tableSize / 100) * RESIZE_PERCENTAGE;
    repackThreshhold = (tableSize / 100) * REPACK_PERCENTAGE;
}

// This function builds a new table with all the delete markers
// removed.  This will increase search performance on tables
// that have had a lot of items deleted from them.
void tlEntityTable::Repack()
{
    if(table)
    {
        // build new table, rehash all elements
        nDeleteMarker = 0;
        tlEntity** oldTable = table;
        table = new tlEntity*[tableSize];
        memset(table, 0, tableSize*sizeof(tlEntity*));
        Rehash(oldTable, tableSize);
        delete[] oldTable;
    }
}

void tlEntityTable::Rehash(tlEntity** elements, int count)
{
    for(int i=0; i < count; i++)
    {
        if(elements[i] && (elements[i] != deleteMarker))
        {
            Store(elements[i]);
        }
    }
}


tlEntity* tlEntityTable::Find(const TLUID uid)
{
    Iterator iterator(this);
    return iterator.First(uid);
}

int tlEntityTable::Store(tlEntity* obj)
{
    int result = 0;

    if(nElement >= resizeThreshhold)
    {
        Grow();
    }

    // TODO: collision detection
    TLUID uid = obj->UID();
    Iterator iterator(this);

    // this may not be the most effecient, but it should work
    //
    // before storing uid, do a find on uid.
    // if we find anything other than NULL, return -1.
    tlEntity* check = iterator.First(uid);
    while(check)
    {
        if(typeid(*check) == typeid(*obj))
        {
            result = -1;
            //break;
        
            // DO NOT insert
            
            return result;
            
        }
        check = iterator.Next();
    }

    int where = iterator.FirstFree(uid);
    if(table[where] == deleteMarker)
    {
        nDeleteMarker--;
    }
    table[where] = obj;
    //obj->AddRef();
    nElement++;

    return result;
}

int tlEntityTable::Remove(tlEntity* obj)
{
    if (!obj)
    {
        return NULL;
    }

    int objDeleted = 0;
    Iterator iterator(this);
    int where = iterator.FirstIndex(obj->UID());
    while (where >= 0)
    {
        if (obj == table[where])
        {
            objDeleted = 1;
            delete table[where];           
            table[where] = deleteMarker;
            nElement--;
            if(++nDeleteMarker > repackThreshhold)
            {
                Repack();
            }
            break;
        }
        else
        {
            where = iterator.NextIndex();
        }
    }

    return(objDeleted);
}





