//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


#ifndef _CLASS_HPP_
#define _CLASS_HPP_

#include"function.hpp"
#include<utility/symboltable.hpp>

namespace Console {

class Object;

class Class
{

public:
    Class(char* name, unsigned size, Class* parent = 0, int nMethods = 64);
    ~Class();

    unsigned GetSize(void) { return size; }
    char* GetName(void) { return name; }

    template <class T, class R> void AddMethod(char* n, R (T::*func)(void)) { AddMethodI(n, new Method0<T,R>(n,func)); }
    template <class T, class R, class P1> void AddMethod(char* n, R (T::*func)(P1)) { AddMethodI(n,new Method1<T,R,P1>(n,func)); }
    template <class T, class R, class P1, class P2> void AddMethod(char* n, R (T::*func)(P1,P2)) { AddMethodI(n,new Method2<T,R,P1,P2>(n,func)); }
    template <class T, class R, class P1, class P2, class P3> void AddMethod(char* n, R (T::*func)(P1,P2,P3)) { AddMethodI(n,new Method3<T,R,P1,P2,P3>(n,func)); }
    template <class T, class R, class P1, class P2, class P3, class P4> void AddMethod(char* n, R (T::*func)(P1,P2,P3,P4)) { AddMethodI(n,new Method4<T,R,P1,P2,P3,P4>(n,func)); }
    template <class T, class R, class P1, class P2, class P3, class P4, class P5> void AddMethod(char* n, R (T::*func)(P1,P2,P3,P4,P5)) { AddMethodI(n,new Method5<T,R,P1,P2,P3,P4,P5>(n,func)); }
    //template <class T, class R, class P1, class P2, class P3, class P4, class P5, class P6> void AddMethod(char* n, R (T::*func)(P1,P2,P3,P4,P5,P6)) { AddMethodI(n,new Method6<T,R,P1,P2,P3,P4,P5,P6>(n,func)); }
    //template <class T, class R, class P1, class P2, class P3, class P4, class P5, class P6, class P7> void AddMethod(char* n, R (T::*func)(P1,P2,P3,P4,P5,P6,P7)) { AddMethodI(n,new Method7<T,R,P1,P2,P3,P4,P5,P6,P7>(n,func)); }

    Function* GetMethod(char* name);

    SymbolTable<Function>* GetFunctionTable(void) {return methods;}

    void AddMethodI(char* name, Function*);
private:

    Class* parent;
    unsigned size;
    char name[128];

    SymbolTable<Function>* methods;
};

class Object
{
public:
    Object(Class*);
    Object(Class*, void*, bool del = false);
    ~Object();

    Class* GetClass(void)  { return type;  }
    void*   GetObject(void) { return object;}

private:
    Class* type;
    void*   object;
    bool    del;
};

}

#endif

