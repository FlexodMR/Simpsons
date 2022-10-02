#ifndef _SYMBOL_HPP_
#define _SYMBOL_HPP_

class tSymbolTableBase
{
public:
   tSymbolTableBase(int n);
   ~tSymbolTableBase();

   void* Add(char* name, void* data);
   void* Find(char* name);
   void* Replace(char* name, void* data);

   int   NumSymbols(void);
   void* Get(int n);
   char* GetName(int n);

   void* PartialMatch(char* partial, unsigned n, char* fill = 0x0);

protected:
   class tSymbol;

   void* GetData(unsigned);

   tSymbol* FindSymbol(char* name);
   tSymbol** symbols;
   unsigned nUsed, nAvail;
};


template<class T> class tSymbolTable : public tSymbolTableBase
{
public:

      tSymbolTable(int n) : tSymbolTableBase(n) {}
      ~tSymbolTable() 
      {
         for(unsigned i = 0; i < nUsed; i++)
         {
            delete (T*)(GetData(i));
         }
      }

      T* Add(char* name, T* data)
      {
         return (T*)tSymbolTableBase::Add(name, (void*)data);
      }

      T* Find(char* name)
      {
         return (T*)tSymbolTableBase::Find(name);
      }

      T* Replace(char* name, T* data)
      {
         return (T*)tSymbolTableBase::Replace(name, (void*)data);
      }

      T* Get(int n)
      {
         return (T*)tSymbolTableBase::Get(n);
      }

      T* PartialMatch(char* partial, unsigned n, char* fill = NULL)
      {
         return (T*)tSymbolTableBase::PartialMatch(partial,n, fill);
      }
};

#endif