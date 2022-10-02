//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


#include "tlHashTable.hpp"
#include "tlString.hpp"

#include <string.h>
#include <stdlib.h>
#include <assert.h>



tlHashEntry::tlHashEntry(const char* n, void* c): 
        name(strnew(n)),
        contents(c),
        next(NULL)
{
}

unsigned long
tlHashTable::Hash(const char *x)
{
    unsigned long h = 0;
    unsigned long g;

    while(*x != 0)
    {
        h = (h << 4) + *x++;
        if ((g = h & 0xf0000000) != 0)
        {
            h = (h ^ (g >> 24)) ^ g;
        }
    }
    return h;
}

tlHashTable::tlHashTable(int tablesize):
        size(tablesize),
        table(new tlHashEntry*[tablesize])
{
    for(int i=0;i<tablesize;i++){
        table[i] = NULL;
    }
}

tlHashTable::~tlHashTable()
{
    for(int i=0;i<size;i++){
        tlHashEntry* entry = table[i];
        while(entry){
            if(entry->name){
                strdelete(entry->name);
            }
            tlHashEntry* next = entry->next;
            delete entry;
            entry = next;
        }
    }
    delete table;
}

void*
tlHashTable::Find(const char* name)
{
    unsigned long hashval = Hash(name) % size;
    tlHashEntry* entry = table[hashval];
    while(entry){
        if(!strcmp(entry->name,name)){
            return entry->contents;
        }
        entry = entry->next;
    }
    return NULL;
}

void
tlHashTable::Add(const char* name, void* data)
{
    unsigned long hashval = Hash(name) % size;
    tlHashEntry* entry = new tlHashEntry(name,data);
    entry->next = table[hashval];
    table[hashval] = entry;
}


void
tlHashTable::Map( void (*function)(void *) )
{
    // apply (*function) to each tlHashEntry
    for(int i=0; i < size - 1; i++)
    {
        if(table[i] != NULL)     
        {
            (*function)(table[i]->contents);
            tlHashEntry* next = table[i]->next;
            while(next != NULL)
            {
                (*function)(next->contents);
                next = next->next; // that's cute :)
            }
        }
    }
}

