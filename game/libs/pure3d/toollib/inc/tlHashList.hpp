/*===========================================================================
    File:: tlHashList.hpp

    Copyright (c) 1997, 1998 Radical Entertainment, Inc.  All rights reserved.

===========================================================================*/

#ifndef _TLHASHLIST_HPP
#define _TLHASHLIST_HPP



#include "tlString.hpp"
#include "tlTypes.hpp"
#include "tlIterator.hpp"
#include <assert.h>
#include <string.h>

template<class T> class tlHashListIterator;

template<class T> class tlHashList
{
private:

    friend class tlHashListIterator<T>;
    class Entry
    {
        friend class tlHashList<T>;
        char* name;
        T* contents;
        Entry* nextHash;
        Entry* nextList;
        Entry* prevList;

    public:
        Entry(const char* n, T* c)
        {
            name = strnew(n);
            contents = c;
            nextHash = NULL;
            nextList = NULL;
            prevList = NULL;
        }

        ~Entry()
        {
            if(name){
                strdelete(name);
            }
        }

        Entry*  Next() { return nextList; }
        Entry*  Prev() { return prevList; }
    
        T* Data() { return contents; }

        void DeleteData() { if(contents) { delete contents; } }
    };

    Entry*  head;
    Entry*  tail;
    Entry** table;
    int tablesize;
    int count;

    unsigned long Hash(const char *x)
    {
        unsigned long h = 0;
        unsigned long g;

        while(*x != 0) {
            h = (h << 4) + *x++;
            if ((g = h & 0xf0000000) != 0) {
                h = (h ^ (g >> 24)) ^ g;
            }
        }
        return h;

    }
    
public:
    tlHashList(int tabsize = 521)       // A nice prime
    {
        head = NULL;
        tail = NULL;
        tablesize = tabsize;
        count = 0;
        table = new Entry*[tabsize];
        for(int i=0; i<tabsize; i++){
            table[i] = NULL;
        }
    }

    ~tlHashList()
    {
        delete table;
    }

    void                 ClearAndDelete() 
    {
        Entry* current = head;
        while(current)
        {
            current->DeleteData();
            Entry* n = current->Next();
            delete current;
            current = n;
        }
        head = NULL;
        tail = NULL;
        count = 0;
        for(int i=0; i<tablesize; i++){
            table[i] = NULL;
        }
    }
    
    int                  Count() { return count; }
    
    Entry*               Head() { return head; }
    Entry*               Tail() { return tail; }

    tlIterator<T>*       Iterator()
    {
        return new tlHashListIterator<T>(this);
    }
    
    T* Find(const char* name)
    {
        unsigned long hashval = Hash(name) % tablesize;
        Entry* ent = table[hashval];
        while(ent)
        {
            if(!strcmp(name,ent->name))
            {
                return ent->contents;
            }
            ent = ent->nextHash;
        }
        return NULL;
    }

    T* Remove(const char* name)
    {
        unsigned long hashval = Hash(name) % tablesize;
        Entry** source = &table[hashval];
        Entry* ent = table[hashval];
        while(ent)
        {
            if(!strcmp(name,ent->name))
            {
                T* contents = ent->contents;
                *source = ent->nextHash;
                count--;
                if(head == ent)
                {
                    // Added by KevinC.  Probably handle if removing last element...
                    if( ent->nextList ) {
                        ent->nextList->prevList = NULL;
                    }
                    head = ent->nextList;
                }
                else if(tail == ent)
                {
                ent->prevList->nextList = NULL;
                    tail = ent->prevList;
                }
            else
            {
                ent->prevList->nextList = ent->nextList;
                ent->nextList->prevList = ent->prevList;
            }
            
                return contents;
            }
            source = &ent->nextHash;
            ent = ent->nextHash;
        }
        return NULL;
    }
        
    void                 Clear();

    void Append(const char* name, T* data)
    {
        Entry* entry = new Entry(name,data);
        if(tail==NULL)
        {
            assert(head == NULL);
            assert(count == 0);
            head = tail = entry;
        }else{
            tail->nextList = entry;
            entry->prevList = tail;
            tail = entry;
        }
        count++;
        unsigned long hashval = Hash(name) % tablesize;
        entry->nextHash = table[hashval];
        table[hashval] = entry;
    }
};

template<class T> class tlHashListIterator : public tlIterator<T>
{
    tlHashList<T>* hashlist;
    tlHashList<T>::Entry* current;
public:
    tlHashListIterator(tlHashList<T> *hl) { hashlist = hl; current = hashlist->Head();}
    T* first() { current = hashlist->Head(); return (T*)(current ? current->Data() : NULL);}
    T* next() { current = current->Next(); return (T*)(current ? current->Data() : NULL);}
};

#endif






