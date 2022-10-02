/*===========================================================================
    tlEntityTable.hpp
    created: Jan 19, 2000
    Greg Mayer

    Copyright (c) 2000 Radical Entertainment, Inc.
    All rights reserved.
===========================================================================*/

#ifndef _TLENTITYTABLE_HPP
#define _TLENTITYTABLE_HPP

#include "tlTypes.hpp"

class tlEntity;

class tlEntityTable
{
public:
    tlEntityTable();
    virtual ~tlEntityTable();

    class Iterator
    {
    public:
        Iterator(tlEntityTable* table);
        ~Iterator();

        tlEntity* First(const TLUID uid);   // TLUID is an __int64 
        tlEntity* Next();

    private:
        tlEntityTable* table;
        TLUID uid;
        int hash;
        int increment;
        int nSearch;

        int FirstIndex(const TLUID uid);
        int NextIndex();

        int FirstFree(const TLUID uid);

        friend class tlEntityTable;
    };

    // finds all objects in table - returns NULL when done   
    class RawIterator
    {
    public:
        RawIterator(tlEntityTable* table);
        ~RawIterator();
        tlEntity* First();
        tlEntity* Next();
    
    private:
        tlEntityTable* table;
        int index;      

    };

    friend class RawIterator;
    friend class Iterator;
    
    tlEntity* Find(const TLUID uid);
    
    // return -1 if there is a UID and type collision
    // return 0 for no problemo
    int Store(tlEntity* obj);

    //
    // Returns 1 if obj was deleted from the inventory
    // and 0 if not
    //
    int Remove(tlEntity* obj);
    void RemoveAll();

    int GetElementCount() { return nElement; }

private:
    tlEntityTable(const tlEntityTable&);

    void Grow();
    void Repack();
    void Rehash(tlEntity** table, int count);

    int tableSize;
    tlEntity** table;
    int nElement;
    int resizeThreshhold;
    int nDeleteMarker;
    int repackThreshhold;
    tlEntity* deleteMarker;
};



#endif // _TLENTITYTABLE_HPP

