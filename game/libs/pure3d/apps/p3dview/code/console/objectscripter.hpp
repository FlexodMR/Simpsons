//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


#ifndef _OBJECTSCRIPTER_HPP_
#define _OBJECTSCRIPTER_HPP_

#include"interface.hpp"
#include<utility/symboltable.hpp>
#include<utility/pointer.hpp>
#include"function.hpp"

#define MAKE_CLOSURE(f) (reinterpret_cast<Console::ClosureFunction>(f))

struct pddiColour;

namespace RadicalMathLibrary
{
    class Vector;
}

namespace Console
{

class Function;
class Class;
class Object;
class Enum;
class ClosureObject;

class ObjectScripter : public Interpreter
{
public:
    ObjectScripter();
    ~ObjectScripter();
    
    void  AddClass(Class*);
    void  AddEnum(Enum*);
    void  AddObject(char* className, char* name, void* object);
    void  NewObject(char* className, char* name);

    template <class T, class R> void SetClosure(char* n, T* o, R (T::*func)(void)) { SetFunctionI(n, new Closure0<T,R>(n,o,func)); }
    template <class T, class R, class P1> void SetClosure(char* n, T* o, R (T::*func)(P1)) { SetFunctionI(n,new Closure1<T,R,P1>(n,o,func)); }
    template <class T, class R, class P1, class P2> void SetClosure(char* n, T* o, R (T::*func)(P1,P2)) { SetFunctionI(n,new Closure2<T,R,P1,P2>(n,o,func)); }
    template <class T, class R, class P1, class P2, class P3> void SetClosure(char* n, T* o, R (T::*func)(P1,P2,P3)) { SetFunctionI(n,new Closure3<T,R,P1,P2,P3>(n,o,func)); }
    template <class T, class R, class P1, class P2, class P3, class P4> void SetClosure(char* n, T* o, R (T::*func)(P1,P2,P3,P4)) { SetFunctionI(n,new Closure4<T,R,P1,P2,P3,P4>(n,o,func)); }
    template <class T, class R, class P1, class P2, class P3, class P4, class P5> void SetClosure(char* n, T* o, R (T::*func)(P1,P2,P3,P4,P5)) { SetFunctionI(n,new Closure5<T,R,P1,P2,P3,P4,P5>(n,o,func)); }
    template <class T, class R, class P1, class P2, class P3, class P4, class P5, class P6> void SetClosure(char* n, T* o, R (T::*func)(P1,P2,P3,P4,P5,P6)) { SetFunctionI(n,new Closure6<T,R,P1,P2,P3,P4,P5,P6>(n,o,func)); }

    template <class T, class R> void SetClosure(char* n, RefPtr<T>& o, R (T::*func)(void)) { SetFunctionI(n, new Closure0<T,R>(n,o,func)); }
    template <class T, class R, class P1> void SetClosure(char* n, RefPtr<T>& o, R (T::*func)(P1)) { SetFunctionI(n,new Closure1<T,R,P1>(n,o,func)); }
    template <class T, class R, class P1, class P2> void SetClosure(char* n, RefPtr<T>& o, R (T::*func)(P1,P2)) { SetFunctionI(n,new Closure2<T,R,P1,P2>(n,o,func)); }
    template <class T, class R, class P1, class P2, class P3> void SetClosure(char* n, RefPtr<T>& o, R (T::*func)(P1,P2,P3)) { SetFunctionI(n,new Closure3<T,R,P1,P2,P3>(n,o,func)); }
    template <class T, class R, class P1, class P2, class P3, class P4> void SetClosure(char* n, RefPtr<T>& o, R (T::*func)(P1,P2,P3,P4)) { SetFunctionI(n,new Closure4<T,R,P1,P2,P3,P4>(n,o,func)); }
    template <class T, class R, class P1, class P2, class P3, class P4, class P5> void SetClosure(char* n, RefPtr<T>& o, R (T::*func)(P1,P2,P3,P4,P5)) { SetFunctionI(n,new Closure5<T,R,P1,P2,P3,P4,P5>(n,o,func)); }
    template <class T, class R, class P1, class P2, class P3, class P4, class P5, class P6> void SetClosure(char* n, RefPtr<T>& o, R (T::*func)(P1,P2,P3,P4,P5,P6)) { SetFunctionI(n,new Closure6<T,R,P1,P2,P3,P4,P5,P6>(n,o,func)); }

    template <class T, class R> void SetClosure(char* n, AutoPtr<T>& o, R (T::*func)(void)) { SetFunctionI(n, new Closure0<T,R>(n,o,func)); }
    template <class T, class R, class P1> void SetClosure(char* n, AutoPtr<T>& o, R (T::*func)(P1)) { SetFunctionI(n,new Closure1<T,R,P1>(n,o,func)); }
    template <class T, class R, class P1, class P2> void SetClosure(char* n, AutoPtr<T>& o, R (T::*func)(P1,P2)) { SetFunctionI(n,new Closure2<T,R,P1,P2>(n,o,func)); }
    template <class T, class R, class P1, class P2, class P3> void SetClosure(char* n, AutoPtr<T>& o, R (T::*func)(P1,P2,P3)) { SetFunctionI(n,new Closure3<T,R,P1,P2,P3>(n,o,func)); }
    template <class T, class R, class P1, class P2, class P3, class P4> void SetClosure(char* n, AutoPtr<T>& o, R (T::*func)(P1,P2,P3,P4)) { SetFunctionI(n,new Closure4<T,R,P1,P2,P3,P4>(n,o,func)); }
    template <class T, class R, class P1, class P2, class P3, class P4, class P5> void SetClosure(char* n, AutoPtr<T>& o, R (T::*func)(P1,P2,P3,P4,P5)) { SetFunctionI(n,new Closure5<T,R,P1,P2,P3,P4,P5>(n,o,func)); }
    template <class T, class R, class P1, class P2, class P3, class P4, class P5, class P6> void SetClosure(char* n, AutoPtr<T>& o, R (T::*func)(P1,P2,P3,P4,P5,P6)) { SetFunctionI(n,new Closure6<T,R,P1,P2,P3,P4,P5,P6>(n,o,func)); }

    template <class T, class R> void SetClosure(char* n, DumbPtr<T>& o, R (T::*func)(void)) { SetFunctionI(n, new Closure0<T,R>(n,o,func)); }
    template <class T, class R, class P1> void SetClosure(char* n, DumbPtr<T>& o, R (T::*func)(P1)) { SetFunctionI(n,new Closure1<T,R,P1>(n,o,func)); }
    template <class T, class R, class P1, class P2> void SetClosure(char* n, DumbPtr<T>& o, R (T::*func)(P1,P2)) { SetFunctionI(n,new Closure2<T,R,P1,P2>(n,o,func)); }
    template <class T, class R, class P1, class P2, class P3> void SetClosure(char* n, DumbPtr<T>& o, R (T::*func)(P1,P2,P3)) { SetFunctionI(n,new Closure3<T,R,P1,P2,P3>(n,o,func)); }
    template <class T, class R, class P1, class P2, class P3, class P4> void SetClosure(char* n, DumbPtr<T>& o, R (T::*func)(P1,P2,P3,P4)) { SetFunctionI(n,new Closure4<T,R,P1,P2,P3,P4>(n,o,func)); }
    template <class T, class R, class P1, class P2, class P3, class P4, class P5> void SetClosure(char* n, DumbPtr<T>& o, R (T::*func)(P1,P2,P3,P4,P5)) { SetFunctionI(n,new Closure5<T,R,P1,P2,P3,P4,P5>(n,o,func)); }
    template <class T, class R, class P1, class P2, class P3, class P4, class P5, class P6> void SetClosure(char* n, DumbPtr<T>& o, R (T::*func)(P1,P2,P3,P4,P5,P6)) { SetFunctionI(n,new Closure6<T,R,P1,P2,P3,P4,P5,P6>(n,o,func)); }
    
    template <class R> void SetFunction(char* n,  R (*func)(void)) { SetFunctionI(n, new Function0<R>(n,func)); }
    template <class R, class P1> void SetFunction(char* n,  R (*func)(P1)) { SetFunctionI(n,new Function1<R,P1>(n,func)); }
    template <class R, class P1, class P2> void SetFunction(char* n,  R (*func)(P1,P2)) { SetFunctionI(n,new Function2<R,P1,P2>(n,func)); }
    template <class R, class P1, class P2, class P3> void SetFunction(char* n,  R (*func)(P1,P2,P3)) { SetFunctionI(n,new Function3<R,P1,P2,P3>(n,func)); }
    template <class R, class P1, class P2, class P3, class P4> void SetFunction(char* n,  R (*func)(P1,P2,P3,P4)) { SetFunctionI(n,new Function4<R,P1,P2,P3,P4>(n,func)); }
    template <class R, class P1, class P2, class P3, class P4, class P5> void SetFunction(char* n,  R (*func)(P1,P2,P3,P4,P5)) { SetFunctionI(n,new Function5<R,P1,P2,P3,P4,P5>(n,func)); }
    template <class R, class P1, class P2, class P3, class P4, class P5, class P6> void SetFunction(char* n,  R (*func)(P1,P2,P3,P4,P5,P6)) { SetFunctionI(n,new Function6<R,P1,P2,P3,P4,P5,P6>(n,func)); }
    //template <class R, class P1, class P2, class P3, class P4, class P5, class P6, class P7> void SetFunction(char* n,  R (*func)(P1,P2,P3,P4,P5,P6,P7)) { SetFunctionI(n,new Function7<R,P1,P2,P3,P4,P5,P6,P7>(n,func)); }
    //template <class R, class P1, class P2, class P3, class P4, class P5, class P6, class P7, class P8> void SetFunction(char* n,  R (*func)(P1,P2,P3,P4,P5,P6,P7,P8)) { SetFunctionI(n,new Function8<R,P1,P2,P3,P4,P5,P6,P7,P8>(n,func)); }

    void  Alias(char* name, char* function);
    void  SetAliasRedirect(CommandRecipient* c) {aliasRecip = c;}

    void  SetFloat(char* name, float val);
    void  SetInt(char* name, int val);
    void  SetString(char* name, char* val);

    void  SetFloatRef(char* name, float* val) { AddObject("float", name, (void*)val); }
    void  SetIntRef(char* name, int* val)     { AddObject("int", name, (void*)val); }
    void  SetBoolRef(char* name, bool* val)     { AddObject("bool", name, (void*)val); }
    void  SetStringRef(char* name, char* val) { AddObject("string", name, (void*)val); }
    void  SetColourRef(char* name, pddiColour* val) { AddObject("colour", name, (void*)val); }
    void  SetVectorRef(char* name, RadicalMathLibrary::Vector* val) { AddObject("vector", name, (void*)val); }

    float GetFloat(char* name);
    int   GetInt(char* name);
    char* GetString(char* name);

    void Use(char*);

    char* BeginCompletion(char*);
    char* NextCompletion(void);

    void Command(const char*);

    void SetOutput(Buffer* t) { output = t; }
    Buffer* GetOutput(void) { return output; }

    void SetSupress(bool b) { supressUnknown = b;}
    bool GetSupress(void) { return supressUnknown;}

protected :
    enum completionMode { NONE, OBJECT, METHOD, OBJECT_OR_METHOD };

    void SingleCommand(char*);
    void Print(char*);

    Object* FindOnly(char* name, char* type);
    Object* FindOrCreate(char* name, char* type);
    

private:
    void SetFunctionI(char* name, Function*);

    SymbolTable<Class>* classes;
    SymbolTable<Enum>* enums;
    SymbolTable<Object>* objects;
    SymbolTable<char>* aliases;

    Class* scripterClass;
    Object* scripterObject;

    Object* used;
    
    completionMode completingMode;
    int completingCount;
    Object* completingObject;
    char completingFormed[256];
    char completingFragment[32];

    Buffer* output;

    bool supressUnknown;

    CommandRecipient* aliasRecip;
};

}
#endif
