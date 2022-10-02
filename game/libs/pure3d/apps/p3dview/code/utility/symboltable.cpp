//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


#include"symboltable.hpp"
#include<utility/string.hpp>
#include<string.h>

// Hash() - a hashing function that uses the "hashpjw"
// algorithm.  Taken from Dragon book, p436
inline unsigned long Hash(const char *x)
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

class SymbolTableBase::Symbol
{
public :
    Symbol(const char* n, void* d)
    {
        name = n;
        data = d;
        hash = Hash(name);
        count = 0;
    }

    ~Symbol()
    {
    }

    String name;          // full name
    unsigned long hash;  // hashed name
    int count;           // number of entries with same hash in rest of table

    int owned;

    void* data;
};


SymbolTableBase::SymbolTableBase(int n)
{
    nUsed = 0;
    nAvail = n;
    symbols = new Symbol*[n];
    memset(symbols,0,sizeof(Symbol*)*n);
}

SymbolTableBase::~SymbolTableBase()
{
    for(unsigned i = 0; i < nUsed; i++)
    {
        delete symbols[i];
    }

    delete [] symbols;
}


void* SymbolTableBase::Add(const char* name, void* data)
{
    if(nUsed == nAvail)
    {
        nAvail *= 2;
        Symbol** tmp = symbols;
        symbols = new Symbol*[nAvail];

        memcpy(symbols,tmp,sizeof(Symbol*) * nUsed);
        delete [] tmp;
    }

    unsigned long hash = Hash(name);

    for(unsigned i = 0; i < nUsed; i++)
    {
        if(symbols[i]->hash == hash)
            symbols[i]->count++;
    }

    symbols[nUsed++] = new Symbol(name, data);

    return data;
}

void* SymbolTableBase::Find(const char* name)
{
    Symbol* s = FindSymbol(name);
    if(s)
    {
        return s->data;
    }
    return NULL;
}

void* SymbolTableBase::Replace(const char* name, void* data)
{
    Symbol* s = FindSymbol(name);
    void* olddata = NULL;

    if(s)
    {
        olddata = s->data;
        s->data = data;
    }

    if(data == NULL)
    {
        Remove(name);
    }

    return olddata ;
}

int SymbolTableBase::NumSymbols(void)
{
    return nUsed;
} 

void* SymbolTableBase::Get(unsigned n)
{
    if(n >= nUsed)
        return NULL;

    return symbols[n]->data;
}

const char* SymbolTableBase::GetName(unsigned n)
{
    if(n >= nUsed)
        return NULL;

    return symbols[n]->name;
}

SymbolTableBase::Symbol* SymbolTableBase::FindSymbol(const char* name)
{
    unsigned long find = Hash(name);

    for(unsigned i = 0; i < nUsed; i++)
    {
        if(find == symbols[i]->hash)
        {
            if(symbols[i]->count == 0)
            {
                return symbols[i];
            }
            else
            {
                if(strcmp(name, symbols[i]->name) == 0)
                {
                    return symbols[i];
                }
            }
        }
    }
    return NULL;
}

void SymbolTableBase::Remove(const char* name)
{
    unsigned found = 0xffffffff;
    unsigned long find = Hash(name);

    for(unsigned i = 0; i < nUsed; i++)
    {
        if(find == symbols[i]->hash)
        {
            if(symbols[i]->count == 0)
            {
                found = i;
                break;
            }
            else
            {
                if(strcmp(name, symbols[i]->name) == 0)
                {
                    found = i;
                    break;
                }
            }
        }
    }

    if(found != 0xffffffff)
    {
        Delete(symbols[found]->data);
        delete symbols[found];
        if(found != (nUsed - 1))
        {
            memcpy(&symbols[found], &symbols[found+1], (nUsed - found - 1) * sizeof(Symbol*));
        }
        nUsed--;
    }
}


void* SymbolTableBase::GetData(unsigned i)
{
    return (i < nUsed) ? symbols[i]->data : NULL;
}

void* SymbolTableBase::PartialMatch(const char* match, unsigned i, char* fill)
{
    for(i = 0; i < nUsed; i++)
    {
        const char* bigger = symbols[i]->name;
        const char* smaller = match;
        bool success = true;
        unsigned matchNumber = 0xffffffff;

        while(*smaller)
        {
            if(*smaller++ != *bigger++)
            {
                success = false;
            }
        }

        if(success)
        {
            matchNumber++;
        }

        if(matchNumber == i)
        {
            if(fill)
                strcpy(fill, symbols[i]->name);
            return symbols[i]->data;
        }
    }  
    return NULL;
}

