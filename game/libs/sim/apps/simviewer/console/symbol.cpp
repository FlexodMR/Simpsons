#include "symbol.hpp"
#include <string.h>

// Hash() - a hashing function that uses the "hashpjw"
// algorithm.  Taken from Dragon book, p436
// same as p3dHash from v11
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

class tSymbolTableBase::tSymbol
{
public :
   tSymbol(char* n, void* d)
   {
      int len = strlen(n);
      name = new char[len+1];
      strcpy(name, n);
      hash = Hash(name);
      data = d;
      count = 0;
   }

   ~tSymbol()
   {
      delete [] name;
   }

   char* name;          // full name
   unsigned long hash;  // hashed name
   int count;           // number of entries with same hash in rest of table

   int owned;

   void* data;
};


tSymbolTableBase::tSymbolTableBase(int n)
{
   nUsed = 0;
   nAvail = n;
   symbols = new tSymbol*[n];
   memset(symbols,0,sizeof(tSymbol*)*n);
}

tSymbolTableBase::~tSymbolTableBase()
{
   for(unsigned i = 0; i < nUsed; i++)
   {
      delete symbols[i];
   }

   delete [] symbols;
}


void* tSymbolTableBase::Add(char* name, void* data)
{
   if(nUsed == nAvail)
   {
      nAvail *= 2;
      tSymbol** tmp = symbols;
      symbols = new tSymbol*[nAvail];

      memcpy(symbols,tmp,sizeof(tSymbol*));
      delete [] tmp;
   }

   unsigned long hash = Hash(name);

   for(unsigned i = 0; i < nUsed; i++)
   {
      if(symbols[i]->hash == hash)
         symbols[i]->count++;
   }

   symbols[nUsed++] = new tSymbol(name, data);

   return data;
}

void* tSymbolTableBase::Find(char* name)
{
   tSymbol* s = FindSymbol(name);
   if(s)
   {
      return s->data;
   }
   return NULL;
}

void* tSymbolTableBase::Replace(char* name, void* data)
{
   tSymbol* s = FindSymbol(name);
   void* olddata = NULL;

   if(s)
   {
      olddata = s->data;
      s->data = data;
   }

   return olddata ;
}

int tSymbolTableBase::NumSymbols(void)
{
   return nUsed;
} 

void* tSymbolTableBase::Get(int n)
{
   return symbols[n]->data;
}

char* tSymbolTableBase::GetName(int n)
{
   return symbols[n]->name;
}

tSymbolTableBase::tSymbol* tSymbolTableBase::FindSymbol(char* name)
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

void* tSymbolTableBase::GetData(unsigned i)
{
   return (i < nUsed) ? symbols[i]->data : NULL;
}

void* tSymbolTableBase::PartialMatch(char* match, unsigned i, char* fill)
{
   for(i = 0; i < nUsed; i++)
   {
      char* bigger = symbols[i]->name;
      char* smaller = match;
      bool success = true;
      unsigned matchNumber = ~0;

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
