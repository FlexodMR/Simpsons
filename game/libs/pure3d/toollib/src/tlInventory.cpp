/*===========================================================================
    tlInventory.cpp
    created: Jan 19, 2000
    Greg Mayer

    Copyright (c) 2000 Radical Entertainment, Inc.
    All rights reserved.
===========================================================================*/

#include "tlInventory.hpp"
#include "tlEntityTable.hpp"
#include "tlSafeEntityCaster.hpp"
#include "tlDataChunk.hpp"

tlInventory::tlInventory()
{
    table = new tlEntityTable;
}

tlInventory::~tlInventory()
{
    DeleteAllElements();
    delete table;
}

tlEntity* tlInventory::Find(tlSafeEntityCasterBase& caster, const TLUID uid)
{
    tlEntityTable::Iterator iterator(table);
    tlEntity* obj = iterator.First(uid);
    while(obj)
    {
        if(caster.safe_cast(obj))
        {
            return obj;
        }
        obj = iterator.Next();
    }
    return NULL;
}

void tlInventory::DeleteAllElements()
{
    table->RemoveAll();
}

int tlInventory::Store(tlEntity *obj)
{
    return table->Store(obj);
}

int tlInventory::Remove(tlEntity *obj)
{
    return table->Remove(obj);
}

tlDataChunk* tlInventory::Export()
{
    tlDataChunk* outchunk = new tlDataChunk;

    tlEntityTable::RawIterator itor(table);
    tlEntity* entity = itor.First();

    while (entity != 0)
    {
        outchunk->AppendSubChunk(entity->Chunk());
        entity = itor.Next();
    }

    // sort sub chunks according to priority
    outchunk->SortSubChunks();

    return outchunk;
}

void
tlInventory::ResolveReferences()
{
    tlEntityTable::RawIterator itor(table);

    for (tlEntity* entity = itor.First(); entity; entity = itor.Next())
    {
        entity->ResolveReferences(this);
    }
}

