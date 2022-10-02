//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


#ifndef _SYMBOLTABLE_HPP_
#define _SYMBOLTABLE_HPP_

class SymbolTableBase
{
public:
    SymbolTableBase(int n);
    virtual ~SymbolTableBase();

    void* Add(const char* name, void* data);
    void* Find(const char* name);
    void* Replace(const char* name, void* data);
    void  Remove(const char* name);

    int   NumSymbols(void);
    void* Get(unsigned n);
    const char* GetName(unsigned n);

    void* PartialMatch(const char* partial, unsigned n, char* fill = 0x0);

protected:
    class Symbol;

    virtual void Delete(void* data) = 0;
    void* GetData(unsigned);

    Symbol* FindSymbol(const char* name);
    Symbol** symbols;
    unsigned nUsed, nAvail;
};


template<class T> class SymbolTable : public SymbolTableBase
{
public:

        SymbolTable(int n = 256) : SymbolTableBase(n) {}
        ~SymbolTable() 
        {
            for(unsigned i = 0; i < nUsed; i++)
            {
                delete (T*)(GetData(i));
            }
        }

        T* Add(const char* name, T* data)
        {
            return (T*)SymbolTableBase::Add(name, (void*)data);
        }

        T* Find(const char* name)
        {
            return (T*)SymbolTableBase::Find(name);
        }

        T* Replace(const char* name, T* data)
        {
            return (T*)SymbolTableBase::Replace(name, (void*)data);
        }

        T* Get(unsigned n)
        {
            return (T*)SymbolTableBase::Get(n);
        }

        T* PartialMatch(const char* partial, unsigned n, char* fill = 0)
        {
            return (T*)SymbolTableBase::PartialMatch(partial,n, fill);
        }

protected:
        void Delete(void* o) 
        { 
            delete (T*)(o);
        }
};

#endif
