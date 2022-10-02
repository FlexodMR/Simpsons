//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


#ifndef _TLHASHTABLE_HPP
#define _TLHASHTABLE_HPP



class tlHashEntry
{
public:
    char* name;
    void* contents;
    tlHashEntry* next;

    tlHashEntry(const char* n, void* c);

private:

    tlHashEntry(const tlHashEntry&);
    tlHashEntry& operator=(const tlHashEntry&);
};

class tlHashTable
{
public:
    tlHashTable(int tablesize = 2053);        //: Make the default table have a decent (prime) size
    ~tlHashTable();

    void* Find(const char* name);             //: Return the entry given by name, or NULL
    void Add(const char* name, void* data);   //: Put data into the table, under name.
                                                            //  Asserts if the table is full...

    // (*function) is applied to the contents of each tlHashEntry
    void Map( void (*function)(void *) );

private:

    tlHashTable(const tlHashTable&);
    tlHashTable& operator=(const tlHashTable&);
    
    int size;
    tlHashEntry** table;
    unsigned long Hash(const char *x);
};

#endif

// Local Variables: ***
// comment-column: 45 ***
// End: ***

