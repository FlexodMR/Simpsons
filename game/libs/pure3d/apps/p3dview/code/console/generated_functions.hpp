//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


// the source fuile has been procedureally generated
// if you need to change it please change the generator instead :
//    p3dview/tools/funcgen/funcgen.cpp

template <class R> class Function0 : public Function
{
public:
    Function0(char* n, R (*func)(void)) : Function(n,0)
    {
        method = func;
    }
    struct MethodDispatch
    {
        static void Dispatch(void* object, void* args, void* returnVal, R (*method)(void))
        {
            R r = (*method)();
            if(returnVal)
                *((R*)returnVal) = r;
        }
    };
    struct MethodDispatchV
    {
        static void Dispatch(void* object, void* args, void* returnVal, void (*method)(void))
        {
            (*method)();
        }
    };
    void Dispatch(void* object, void* args, void* returnVal)
    {
        R (*m)(void) = method;
        MetaProgramming::IFVOID<R, MethodDispatchV, MethodDispatch>::RET::Dispatch(object,args,returnVal,m);
    }

protected:
    R (*method)(void);
};


template <class T, class R> class Method0 : public Function
{
public:
    Method0(char* n, R (T::*func)(void)) : Function(n,0)
    {
        method = func;
    }
    struct MethodDispatch
    {
        static void Dispatch(void* object, void* args, void* returnVal, R (T::*method)(void))
        {
            R r = (((T*)object)->*method)();
            if(returnVal)
                *((R*)returnVal) = r;
        }
    };
    struct MethodDispatchV
    {
        static void Dispatch(void* object, void* args, void* returnVal, void (T::*method)(void))
        {
            (((T*)object)->*method)();
        }
    };
    void Dispatch(void* object, void* args, void* returnVal)
    {
        R (T::*m)(void) = method;
        MetaProgramming::IFVOID<R, MethodDispatchV, MethodDispatch>::RET::Dispatch(object,args,returnVal,m);
    }

protected:
    R (T::*method)(void);
};


template <class T, class R> class Closure0 : public Method0<T,R>
{
public:
    Closure0(char* n, T* o, R (T::*func)(void)) : Method0<T,R>(n,func), object(o) {}

    void Dispatch(void*, void* args, void* returnVal)
    {
        Method0<T,R>::Dispatch(object, args, returnVal);
    }

protected:
    T* object;
};


template <class R,class P0> class Function1 : public Function
{
public:
    Function1(char* n, R (*func)(P0)) : Function(n,1)
    {
        method = func;
        arg[0] = ArgType<P0>::Type();
    }
    struct MethodDispatch
    {
        static void Dispatch(void* object, void* args, void* returnVal, R (*method)(P0))
        {
            P0 p0 = *((P0*)args);
            args = (char*)args + sizeof(P0);
            R r = (*method)(p0);
            if(returnVal)
                *((R*)returnVal) = r;
        }
    };
    struct MethodDispatchV
    {
        static void Dispatch(void* object, void* args, void* returnVal, void (*method)(P0))
        {
            P0 p0 = *((P0*)args);
            args = (char*)args + sizeof(P0);
            (*method)(p0);
        }
    };
    void Dispatch(void* object, void* args, void* returnVal)
    {
        R (*m)(P0) = method;
        MetaProgramming::IFVOID<R, MethodDispatchV, MethodDispatch>::RET::Dispatch(object,args,returnVal,m);
    }

protected:
    R (*method)(P0);
};


template <class T, class R,class P0> class Method1 : public Function
{
public:
    Method1(char* n, R (T::*func)(P0)) : Function(n,1)
    {
        method = func;
        arg[0] = ArgType<P0>::Type();
    }
    struct MethodDispatch
    {
        static void Dispatch(void* object, void* args, void* returnVal, R (T::*method)(P0))
        {
            P0 p0 = *((P0*)args);
            args = (char*)args + sizeof(P0);
            R r = (((T*)object)->*method)(p0);
            if(returnVal)
                *((R*)returnVal) = r;
        }
    };
    struct MethodDispatchV
    {
        static void Dispatch(void* object, void* args, void* returnVal, void (T::*method)(P0))
        {
            P0 p0 = *((P0*)args);
            args = (char*)args + sizeof(P0);
            (((T*)object)->*method)(p0);
        }
    };
    void Dispatch(void* object, void* args, void* returnVal)
    {
        R (T::*m)(P0) = method;
        MetaProgramming::IFVOID<R, MethodDispatchV, MethodDispatch>::RET::Dispatch(object,args,returnVal,m);
    }

protected:
    R (T::*method)(P0);
};


template <class T, class R,class P0> class Closure1 : public Method1<T,R,P0>
{
public:
    Closure1(char* n, T* o, R (T::*func)(P0)) : Method1<T,R,P0>(n,func), object(o) {}

    void Dispatch(void*, void* args, void* returnVal)
    {
        Method1<T,R,P0>::Dispatch(object, args, returnVal);
    }

protected:
    T* object;
};


template <class R,class P0,class P1> class Function2 : public Function
{
public:
    Function2(char* n, R (*func)(P0,P1)) : Function(n,2)
    {
        method = func;
        arg[0] = ArgType<P0>::Type();
        arg[1] = ArgType<P1>::Type();
    }
    struct MethodDispatch
    {
        static void Dispatch(void* object, void* args, void* returnVal, R (*method)(P0,P1))
        {
            P0 p0 = *((P0*)args);
            args = (char*)args + sizeof(P0);
            P1 p1 = *((P1*)args);
            args = (char*)args + sizeof(P1);
            R r = (*method)(p0,p1);
            if(returnVal)
                *((R*)returnVal) = r;
        }
    };
    struct MethodDispatchV
    {
        static void Dispatch(void* object, void* args, void* returnVal, void (*method)(P0,P1))
        {
            P0 p0 = *((P0*)args);
            args = (char*)args + sizeof(P0);
            P1 p1 = *((P1*)args);
            args = (char*)args + sizeof(P1);
            (*method)(p0,p1);
        }
    };
    void Dispatch(void* object, void* args, void* returnVal)
    {
        R (*m)(P0,P1) = method;
        MetaProgramming::IFVOID<R, MethodDispatchV, MethodDispatch>::RET::Dispatch(object,args,returnVal,m);
    }

protected:
    R (*method)(P0,P1);
};


template <class T, class R,class P0,class P1> class Method2 : public Function
{
public:
    Method2(char* n, R (T::*func)(P0,P1)) : Function(n,2)
    {
        method = func;
        arg[0] = ArgType<P0>::Type();
        arg[1] = ArgType<P1>::Type();
    }
    struct MethodDispatch
    {
        static void Dispatch(void* object, void* args, void* returnVal, R (T::*method)(P0,P1))
        {
            P0 p0 = *((P0*)args);
            args = (char*)args + sizeof(P0);
            P1 p1 = *((P1*)args);
            args = (char*)args + sizeof(P1);
            R r = (((T*)object)->*method)(p0,p1);
            if(returnVal)
                *((R*)returnVal) = r;
        }
    };
    struct MethodDispatchV
    {
        static void Dispatch(void* object, void* args, void* returnVal, void (T::*method)(P0,P1))
        {
            P0 p0 = *((P0*)args);
            args = (char*)args + sizeof(P0);
            P1 p1 = *((P1*)args);
            args = (char*)args + sizeof(P1);
            (((T*)object)->*method)(p0,p1);
        }
    };
    void Dispatch(void* object, void* args, void* returnVal)
    {
        R (T::*m)(P0,P1) = method;
        MetaProgramming::IFVOID<R, MethodDispatchV, MethodDispatch>::RET::Dispatch(object,args,returnVal,m);
    }

protected:
    R (T::*method)(P0,P1);
};


template <class T, class R,class P0,class P1> class Closure2 : public Method2<T,R,P0,P1>
{
public:
    Closure2(char* n, T* o, R (T::*func)(P0,P1)) : Method2<T,R,P0,P1>(n,func), object(o) {}

    void Dispatch(void*, void* args, void* returnVal)
    {
        Method2<T,R,P0,P1>::Dispatch(object, args, returnVal);
    }

protected:
    T* object;
};


template <class R,class P0,class P1,class P2> class Function3 : public Function
{
public:
    Function3(char* n, R (*func)(P0,P1,P2)) : Function(n,3)
    {
        method = func;
        arg[0] = ArgType<P0>::Type();
        arg[1] = ArgType<P1>::Type();
        arg[2] = ArgType<P2>::Type();
    }
    struct MethodDispatch
    {
        static void Dispatch(void* object, void* args, void* returnVal, R (*method)(P0,P1,P2))
        {
            P0 p0 = *((P0*)args);
            args = (char*)args + sizeof(P0);
            P1 p1 = *((P1*)args);
            args = (char*)args + sizeof(P1);
            P2 p2 = *((P2*)args);
            args = (char*)args + sizeof(P2);
            R r = (*method)(p0,p1,p2);
            if(returnVal)
                *((R*)returnVal) = r;
        }
    };
    struct MethodDispatchV
    {
        static void Dispatch(void* object, void* args, void* returnVal, void (*method)(P0,P1,P2))
        {
            P0 p0 = *((P0*)args);
            args = (char*)args + sizeof(P0);
            P1 p1 = *((P1*)args);
            args = (char*)args + sizeof(P1);
            P2 p2 = *((P2*)args);
            args = (char*)args + sizeof(P2);
            (*method)(p0,p1,p2);
        }
    };
    void Dispatch(void* object, void* args, void* returnVal)
    {
        R (*m)(P0,P1,P2) = method;
        MetaProgramming::IFVOID<R, MethodDispatchV, MethodDispatch>::RET::Dispatch(object,args,returnVal,m);
    }

protected:
    R (*method)(P0,P1,P2);
};


template <class T, class R,class P0,class P1,class P2> class Method3 : public Function
{
public:
    Method3(char* n, R (T::*func)(P0,P1,P2)) : Function(n,3)
    {
        method = func;
        arg[0] = ArgType<P0>::Type();
        arg[1] = ArgType<P1>::Type();
        arg[2] = ArgType<P2>::Type();
    }
    struct MethodDispatch
    {
        static void Dispatch(void* object, void* args, void* returnVal, R (T::*method)(P0,P1,P2))
        {
            P0 p0 = *((P0*)args);
            args = (char*)args + sizeof(P0);
            P1 p1 = *((P1*)args);
            args = (char*)args + sizeof(P1);
            P2 p2 = *((P2*)args);
            args = (char*)args + sizeof(P2);
            R r = (((T*)object)->*method)(p0,p1,p2);
            if(returnVal)
                *((R*)returnVal) = r;
        }
    };
    struct MethodDispatchV
    {
        static void Dispatch(void* object, void* args, void* returnVal, void (T::*method)(P0,P1,P2))
        {
            P0 p0 = *((P0*)args);
            args = (char*)args + sizeof(P0);
            P1 p1 = *((P1*)args);
            args = (char*)args + sizeof(P1);
            P2 p2 = *((P2*)args);
            args = (char*)args + sizeof(P2);
            (((T*)object)->*method)(p0,p1,p2);
        }
    };
    void Dispatch(void* object, void* args, void* returnVal)
    {
        R (T::*m)(P0,P1,P2) = method;
        MetaProgramming::IFVOID<R, MethodDispatchV, MethodDispatch>::RET::Dispatch(object,args,returnVal,m);
    }

protected:
    R (T::*method)(P0,P1,P2);
};


template <class T, class R,class P0,class P1,class P2> class Closure3 : public Method3<T,R,P0,P1,P2>
{
public:
    Closure3(char* n, T* o, R (T::*func)(P0,P1,P2)) : Method3<T,R,P0,P1,P2>(n,func), object(o) {}

    void Dispatch(void*, void* args, void* returnVal)
    {
        Method3<T,R,P0,P1,P2>::Dispatch(object, args, returnVal);
    }

protected:
    T* object;
};


template <class R,class P0,class P1,class P2,class P3> class Function4 : public Function
{
public:
    Function4(char* n, R (*func)(P0,P1,P2,P3)) : Function(n,4)
    {
        method = func;
        arg[0] = ArgType<P0>::Type();
        arg[1] = ArgType<P1>::Type();
        arg[2] = ArgType<P2>::Type();
        arg[3] = ArgType<P3>::Type();
    }
    struct MethodDispatch
    {
        static void Dispatch(void* object, void* args, void* returnVal, R (*method)(P0,P1,P2,P3))
        {
            P0 p0 = *((P0*)args);
            args = (char*)args + sizeof(P0);
            P1 p1 = *((P1*)args);
            args = (char*)args + sizeof(P1);
            P2 p2 = *((P2*)args);
            args = (char*)args + sizeof(P2);
            P3 p3 = *((P3*)args);
            args = (char*)args + sizeof(P3);
            R r = (*method)(p0,p1,p2,p3);
            if(returnVal)
                *((R*)returnVal) = r;
        }
    };
    struct MethodDispatchV
    {
        static void Dispatch(void* object, void* args, void* returnVal, void (*method)(P0,P1,P2,P3))
        {
            P0 p0 = *((P0*)args);
            args = (char*)args + sizeof(P0);
            P1 p1 = *((P1*)args);
            args = (char*)args + sizeof(P1);
            P2 p2 = *((P2*)args);
            args = (char*)args + sizeof(P2);
            P3 p3 = *((P3*)args);
            args = (char*)args + sizeof(P3);
            (*method)(p0,p1,p2,p3);
        }
    };
    void Dispatch(void* object, void* args, void* returnVal)
    {
        R (*m)(P0,P1,P2,P3) = method;
        MetaProgramming::IFVOID<R, MethodDispatchV, MethodDispatch>::RET::Dispatch(object,args,returnVal,m);
    }

protected:
    R (*method)(P0,P1,P2,P3);
};


template <class T, class R,class P0,class P1,class P2,class P3> class Method4 : public Function
{
public:
    Method4(char* n, R (T::*func)(P0,P1,P2,P3)) : Function(n,4)
    {
        method = func;
        arg[0] = ArgType<P0>::Type();
        arg[1] = ArgType<P1>::Type();
        arg[2] = ArgType<P2>::Type();
        arg[3] = ArgType<P3>::Type();
    }
    struct MethodDispatch
    {
        static void Dispatch(void* object, void* args, void* returnVal, R (T::*method)(P0,P1,P2,P3))
        {
            P0 p0 = *((P0*)args);
            args = (char*)args + sizeof(P0);
            P1 p1 = *((P1*)args);
            args = (char*)args + sizeof(P1);
            P2 p2 = *((P2*)args);
            args = (char*)args + sizeof(P2);
            P3 p3 = *((P3*)args);
            args = (char*)args + sizeof(P3);
            R r = (((T*)object)->*method)(p0,p1,p2,p3);
            if(returnVal)
                *((R*)returnVal) = r;
        }
    };
    struct MethodDispatchV
    {
        static void Dispatch(void* object, void* args, void* returnVal, void (T::*method)(P0,P1,P2,P3))
        {
            P0 p0 = *((P0*)args);
            args = (char*)args + sizeof(P0);
            P1 p1 = *((P1*)args);
            args = (char*)args + sizeof(P1);
            P2 p2 = *((P2*)args);
            args = (char*)args + sizeof(P2);
            P3 p3 = *((P3*)args);
            args = (char*)args + sizeof(P3);
            (((T*)object)->*method)(p0,p1,p2,p3);
        }
    };
    void Dispatch(void* object, void* args, void* returnVal)
    {
        R (T::*m)(P0,P1,P2,P3) = method;
        MetaProgramming::IFVOID<R, MethodDispatchV, MethodDispatch>::RET::Dispatch(object,args,returnVal,m);
    }

protected:
    R (T::*method)(P0,P1,P2,P3);
};


template <class T, class R,class P0,class P1,class P2,class P3> class Closure4 : public Method4<T,R,P0,P1,P2,P3>
{
public:
    Closure4(char* n, T* o, R (T::*func)(P0,P1,P2,P3)) : Method4<T,R,P0,P1,P2,P3>(n,func), object(o) {}

    void Dispatch(void*, void* args, void* returnVal)
    {
        Method4<T,R,P0,P1,P2,P3>::Dispatch(object, args, returnVal);
    }

protected:
    T* object;
};


template <class R,class P0,class P1,class P2,class P3,class P4> class Function5 : public Function
{
public:
    Function5(char* n, R (*func)(P0,P1,P2,P3,P4)) : Function(n,5)
    {
        method = func;
        arg[0] = ArgType<P0>::Type();
        arg[1] = ArgType<P1>::Type();
        arg[2] = ArgType<P2>::Type();
        arg[3] = ArgType<P3>::Type();
        arg[4] = ArgType<P4>::Type();
    }
    struct MethodDispatch
    {
        static void Dispatch(void* object, void* args, void* returnVal, R (*method)(P0,P1,P2,P3,P4))
        {
            P0 p0 = *((P0*)args);
            args = (char*)args + sizeof(P0);
            P1 p1 = *((P1*)args);
            args = (char*)args + sizeof(P1);
            P2 p2 = *((P2*)args);
            args = (char*)args + sizeof(P2);
            P3 p3 = *((P3*)args);
            args = (char*)args + sizeof(P3);
            P4 p4 = *((P4*)args);
            args = (char*)args + sizeof(P4);
            R r = (*method)(p0,p1,p2,p3,p4);
            if(returnVal)
                *((R*)returnVal) = r;
        }
    };
    struct MethodDispatchV
    {
        static void Dispatch(void* object, void* args, void* returnVal, void (*method)(P0,P1,P2,P3,P4))
        {
            P0 p0 = *((P0*)args);
            args = (char*)args + sizeof(P0);
            P1 p1 = *((P1*)args);
            args = (char*)args + sizeof(P1);
            P2 p2 = *((P2*)args);
            args = (char*)args + sizeof(P2);
            P3 p3 = *((P3*)args);
            args = (char*)args + sizeof(P3);
            P4 p4 = *((P4*)args);
            args = (char*)args + sizeof(P4);
            (*method)(p0,p1,p2,p3,p4);
        }
    };
    void Dispatch(void* object, void* args, void* returnVal)
    {
        R (*m)(P0,P1,P2,P3,P4) = method;
        MetaProgramming::IFVOID<R, MethodDispatchV, MethodDispatch>::RET::Dispatch(object,args,returnVal,m);
    }

protected:
    R (*method)(P0,P1,P2,P3,P4);
};


template <class T, class R,class P0,class P1,class P2,class P3,class P4> class Method5 : public Function
{
public:
    Method5(char* n, R (T::*func)(P0,P1,P2,P3,P4)) : Function(n,5)
    {
        method = func;
        arg[0] = ArgType<P0>::Type();
        arg[1] = ArgType<P1>::Type();
        arg[2] = ArgType<P2>::Type();
        arg[3] = ArgType<P3>::Type();
        arg[4] = ArgType<P4>::Type();
    }
    struct MethodDispatch
    {
        static void Dispatch(void* object, void* args, void* returnVal, R (T::*method)(P0,P1,P2,P3,P4))
        {
            P0 p0 = *((P0*)args);
            args = (char*)args + sizeof(P0);
            P1 p1 = *((P1*)args);
            args = (char*)args + sizeof(P1);
            P2 p2 = *((P2*)args);
            args = (char*)args + sizeof(P2);
            P3 p3 = *((P3*)args);
            args = (char*)args + sizeof(P3);
            P4 p4 = *((P4*)args);
            args = (char*)args + sizeof(P4);
            R r = (((T*)object)->*method)(p0,p1,p2,p3,p4);
            if(returnVal)
                *((R*)returnVal) = r;
        }
    };
    struct MethodDispatchV
    {
        static void Dispatch(void* object, void* args, void* returnVal, void (T::*method)(P0,P1,P2,P3,P4))
        {
            P0 p0 = *((P0*)args);
            args = (char*)args + sizeof(P0);
            P1 p1 = *((P1*)args);
            args = (char*)args + sizeof(P1);
            P2 p2 = *((P2*)args);
            args = (char*)args + sizeof(P2);
            P3 p3 = *((P3*)args);
            args = (char*)args + sizeof(P3);
            P4 p4 = *((P4*)args);
            args = (char*)args + sizeof(P4);
            (((T*)object)->*method)(p0,p1,p2,p3,p4);
        }
    };
    void Dispatch(void* object, void* args, void* returnVal)
    {
        R (T::*m)(P0,P1,P2,P3,P4) = method;
        MetaProgramming::IFVOID<R, MethodDispatchV, MethodDispatch>::RET::Dispatch(object,args,returnVal,m);
    }

protected:
    R (T::*method)(P0,P1,P2,P3,P4);
};


template <class T, class R,class P0,class P1,class P2,class P3,class P4> class Closure5 : public Method5<T,R,P0,P1,P2,P3,P4>
{
public:
    Closure5(char* n, T* o, R (T::*func)(P0,P1,P2,P3,P4)) : Method5<T,R,P0,P1,P2,P3,P4>(n,func), object(o) {}

    void Dispatch(void*, void* args, void* returnVal)
    {
        Method5<T,R,P0,P1,P2,P3,P4>::Dispatch(object, args, returnVal);
    }

protected:
    T* object;
};


template <class R,class P0,class P1,class P2,class P3,class P4,class P5> class Function6 : public Function
{
public:
    Function6(char* n, R (*func)(P0,P1,P2,P3,P4,P5)) : Function(n,6)
    {
        method = func;
        arg[0] = ArgType<P0>::Type();
        arg[1] = ArgType<P1>::Type();
        arg[2] = ArgType<P2>::Type();
        arg[3] = ArgType<P3>::Type();
        arg[4] = ArgType<P4>::Type();
        arg[5] = ArgType<P5>::Type();
    }
    struct MethodDispatch
    {
        static void Dispatch(void* object, void* args, void* returnVal, R (*method)(P0,P1,P2,P3,P4,P5))
        {
            P0 p0 = *((P0*)args);
            args = (char*)args + sizeof(P0);
            P1 p1 = *((P1*)args);
            args = (char*)args + sizeof(P1);
            P2 p2 = *((P2*)args);
            args = (char*)args + sizeof(P2);
            P3 p3 = *((P3*)args);
            args = (char*)args + sizeof(P3);
            P4 p4 = *((P4*)args);
            args = (char*)args + sizeof(P4);
            P5 p5 = *((P5*)args);
            args = (char*)args + sizeof(P5);
            R r = (*method)(p0,p1,p2,p3,p4,p5);
            if(returnVal)
                *((R*)returnVal) = r;
        }
    };
    struct MethodDispatchV
    {
        static void Dispatch(void* object, void* args, void* returnVal, void (*method)(P0,P1,P2,P3,P4,P5))
        {
            P0 p0 = *((P0*)args);
            args = (char*)args + sizeof(P0);
            P1 p1 = *((P1*)args);
            args = (char*)args + sizeof(P1);
            P2 p2 = *((P2*)args);
            args = (char*)args + sizeof(P2);
            P3 p3 = *((P3*)args);
            args = (char*)args + sizeof(P3);
            P4 p4 = *((P4*)args);
            args = (char*)args + sizeof(P4);
            P5 p5 = *((P5*)args);
            args = (char*)args + sizeof(P5);
            (*method)(p0,p1,p2,p3,p4,p5);
        }
    };
    void Dispatch(void* object, void* args, void* returnVal)
    {
        R (*m)(P0,P1,P2,P3,P4,P5) = method;
        MetaProgramming::IFVOID<R, MethodDispatchV, MethodDispatch>::RET::Dispatch(object,args,returnVal,m);
    }

protected:
    R (*method)(P0,P1,P2,P3,P4,P5);
};


template <class T, class R,class P0,class P1,class P2,class P3,class P4,class P5> class Method6 : public Function
{
public:
    Method6(char* n, R (T::*func)(P0,P1,P2,P3,P4,P5)) : Function(n,6)
    {
        method = func;
        arg[0] = ArgType<P0>::Type();
        arg[1] = ArgType<P1>::Type();
        arg[2] = ArgType<P2>::Type();
        arg[3] = ArgType<P3>::Type();
        arg[4] = ArgType<P4>::Type();
        arg[5] = ArgType<P5>::Type();
    }
    struct MethodDispatch
    {
        static void Dispatch(void* object, void* args, void* returnVal, R (T::*method)(P0,P1,P2,P3,P4,P5))
        {
            P0 p0 = *((P0*)args);
            args = (char*)args + sizeof(P0);
            P1 p1 = *((P1*)args);
            args = (char*)args + sizeof(P1);
            P2 p2 = *((P2*)args);
            args = (char*)args + sizeof(P2);
            P3 p3 = *((P3*)args);
            args = (char*)args + sizeof(P3);
            P4 p4 = *((P4*)args);
            args = (char*)args + sizeof(P4);
            P5 p5 = *((P5*)args);
            args = (char*)args + sizeof(P5);
            R r = (((T*)object)->*method)(p0,p1,p2,p3,p4,p5);
            if(returnVal)
                *((R*)returnVal) = r;
        }
    };
    struct MethodDispatchV
    {
        static void Dispatch(void* object, void* args, void* returnVal, void (T::*method)(P0,P1,P2,P3,P4,P5))
        {
            P0 p0 = *((P0*)args);
            args = (char*)args + sizeof(P0);
            P1 p1 = *((P1*)args);
            args = (char*)args + sizeof(P1);
            P2 p2 = *((P2*)args);
            args = (char*)args + sizeof(P2);
            P3 p3 = *((P3*)args);
            args = (char*)args + sizeof(P3);
            P4 p4 = *((P4*)args);
            args = (char*)args + sizeof(P4);
            P5 p5 = *((P5*)args);
            args = (char*)args + sizeof(P5);
            (((T*)object)->*method)(p0,p1,p2,p3,p4,p5);
        }
    };
    void Dispatch(void* object, void* args, void* returnVal)
    {
        R (T::*m)(P0,P1,P2,P3,P4,P5) = method;
        MetaProgramming::IFVOID<R, MethodDispatchV, MethodDispatch>::RET::Dispatch(object,args,returnVal,m);
    }

protected:
    R (T::*method)(P0,P1,P2,P3,P4,P5);
};


template <class T, class R,class P0,class P1,class P2,class P3,class P4,class P5> class Closure6 : public Method6<T,R,P0,P1,P2,P3,P4,P5>
{
public:
    Closure6(char* n, T* o, R (T::*func)(P0,P1,P2,P3,P4,P5)) : Method6<T,R,P0,P1,P2,P3,P4,P5>(n,func), object(o) {}

    void Dispatch(void*, void* args, void* returnVal)
    {
        Method6<T,R,P0,P1,P2,P3,P4,P5>::Dispatch(object, args, returnVal);
    }

protected:
    T* object;
};


template <class R,class P0,class P1,class P2,class P3,class P4,class P5,class P6> class Function7 : public Function
{
public:
    Function7(char* n, R (*func)(P0,P1,P2,P3,P4,P5,P6)) : Function(n,7)
    {
        method = func;
        arg[0] = ArgType<P0>::Type();
        arg[1] = ArgType<P1>::Type();
        arg[2] = ArgType<P2>::Type();
        arg[3] = ArgType<P3>::Type();
        arg[4] = ArgType<P4>::Type();
        arg[5] = ArgType<P5>::Type();
        arg[6] = ArgType<P6>::Type();
    }
    struct MethodDispatch
    {
        static void Dispatch(void* object, void* args, void* returnVal, R (*method)(P0,P1,P2,P3,P4,P5,P6))
        {
            P0 p0 = *((P0*)args);
            args = (char*)args + sizeof(P0);
            P1 p1 = *((P1*)args);
            args = (char*)args + sizeof(P1);
            P2 p2 = *((P2*)args);
            args = (char*)args + sizeof(P2);
            P3 p3 = *((P3*)args);
            args = (char*)args + sizeof(P3);
            P4 p4 = *((P4*)args);
            args = (char*)args + sizeof(P4);
            P5 p5 = *((P5*)args);
            args = (char*)args + sizeof(P5);
            P6 p6 = *((P6*)args);
            args = (char*)args + sizeof(P6);
            R r = (*method)(p0,p1,p2,p3,p4,p5,p6);
            if(returnVal)
                *((R*)returnVal) = r;
        }
    };
    struct MethodDispatchV
    {
        static void Dispatch(void* object, void* args, void* returnVal, void (*method)(P0,P1,P2,P3,P4,P5,P6))
        {
            P0 p0 = *((P0*)args);
            args = (char*)args + sizeof(P0);
            P1 p1 = *((P1*)args);
            args = (char*)args + sizeof(P1);
            P2 p2 = *((P2*)args);
            args = (char*)args + sizeof(P2);
            P3 p3 = *((P3*)args);
            args = (char*)args + sizeof(P3);
            P4 p4 = *((P4*)args);
            args = (char*)args + sizeof(P4);
            P5 p5 = *((P5*)args);
            args = (char*)args + sizeof(P5);
            P6 p6 = *((P6*)args);
            args = (char*)args + sizeof(P6);
            (*method)(p0,p1,p2,p3,p4,p5,p6);
        }
    };
    void Dispatch(void* object, void* args, void* returnVal)
    {
        R (*m)(P0,P1,P2,P3,P4,P5,P6) = method;
        MetaProgramming::IFVOID<R, MethodDispatchV, MethodDispatch>::RET::Dispatch(object,args,returnVal,m);
    }

protected:
    R (*method)(P0,P1,P2,P3,P4,P5,P6);
};


template <class T, class R,class P0,class P1,class P2,class P3,class P4,class P5,class P6> class Method7 : public Function
{
public:
    Method7(char* n, R (T::*func)(P0,P1,P2,P3,P4,P5,P6)) : Function(n,7)
    {
        method = func;
        arg[0] = ArgType<P0>::Type();
        arg[1] = ArgType<P1>::Type();
        arg[2] = ArgType<P2>::Type();
        arg[3] = ArgType<P3>::Type();
        arg[4] = ArgType<P4>::Type();
        arg[5] = ArgType<P5>::Type();
        arg[6] = ArgType<P6>::Type();
    }
    struct MethodDispatch
    {
        static void Dispatch(void* object, void* args, void* returnVal, R (T::*method)(P0,P1,P2,P3,P4,P5,P6))
        {
            P0 p0 = *((P0*)args);
            args = (char*)args + sizeof(P0);
            P1 p1 = *((P1*)args);
            args = (char*)args + sizeof(P1);
            P2 p2 = *((P2*)args);
            args = (char*)args + sizeof(P2);
            P3 p3 = *((P3*)args);
            args = (char*)args + sizeof(P3);
            P4 p4 = *((P4*)args);
            args = (char*)args + sizeof(P4);
            P5 p5 = *((P5*)args);
            args = (char*)args + sizeof(P5);
            P6 p6 = *((P6*)args);
            args = (char*)args + sizeof(P6);
            R r = (((T*)object)->*method)(p0,p1,p2,p3,p4,p5,p6);
            if(returnVal)
                *((R*)returnVal) = r;
        }
    };
    struct MethodDispatchV
    {
        static void Dispatch(void* object, void* args, void* returnVal, void (T::*method)(P0,P1,P2,P3,P4,P5,P6))
        {
            P0 p0 = *((P0*)args);
            args = (char*)args + sizeof(P0);
            P1 p1 = *((P1*)args);
            args = (char*)args + sizeof(P1);
            P2 p2 = *((P2*)args);
            args = (char*)args + sizeof(P2);
            P3 p3 = *((P3*)args);
            args = (char*)args + sizeof(P3);
            P4 p4 = *((P4*)args);
            args = (char*)args + sizeof(P4);
            P5 p5 = *((P5*)args);
            args = (char*)args + sizeof(P5);
            P6 p6 = *((P6*)args);
            args = (char*)args + sizeof(P6);
            (((T*)object)->*method)(p0,p1,p2,p3,p4,p5,p6);
        }
    };
    void Dispatch(void* object, void* args, void* returnVal)
    {
        R (T::*m)(P0,P1,P2,P3,P4,P5,P6) = method;
        MetaProgramming::IFVOID<R, MethodDispatchV, MethodDispatch>::RET::Dispatch(object,args,returnVal,m);
    }

protected:
    R (T::*method)(P0,P1,P2,P3,P4,P5,P6);
};


template <class T, class R,class P0,class P1,class P2,class P3,class P4,class P5,class P6> class Closure7 : public Method7<T,R,P0,P1,P2,P3,P4,P5,P6>
{
public:
    Closure7(char* n, T* o, R (T::*func)(P0,P1,P2,P3,P4,P5,P6)) : Method7<T,R,P0,P1,P2,P3,P4,P5,P6>(n,func), object(o) {}

    void Dispatch(void*, void* args, void* returnVal)
    {
        Method7<T,R,P0,P1,P2,P3,P4,P5,P6>::Dispatch(object, args, returnVal);
    }

protected:
    T* object;
};


template <class R,class P0,class P1,class P2,class P3,class P4,class P5,class P6,class P7> class Function8 : public Function
{
public:
    Function8(char* n, R (*func)(P0,P1,P2,P3,P4,P5,P6,P7)) : Function(n,8)
    {
        method = func;
        arg[0] = ArgType<P0>::Type();
        arg[1] = ArgType<P1>::Type();
        arg[2] = ArgType<P2>::Type();
        arg[3] = ArgType<P3>::Type();
        arg[4] = ArgType<P4>::Type();
        arg[5] = ArgType<P5>::Type();
        arg[6] = ArgType<P6>::Type();
        arg[7] = ArgType<P7>::Type();
    }
    struct MethodDispatch
    {
        static void Dispatch(void* object, void* args, void* returnVal, R (*method)(P0,P1,P2,P3,P4,P5,P6,P7))
        {
            P0 p0 = *((P0*)args);
            args = (char*)args + sizeof(P0);
            P1 p1 = *((P1*)args);
            args = (char*)args + sizeof(P1);
            P2 p2 = *((P2*)args);
            args = (char*)args + sizeof(P2);
            P3 p3 = *((P3*)args);
            args = (char*)args + sizeof(P3);
            P4 p4 = *((P4*)args);
            args = (char*)args + sizeof(P4);
            P5 p5 = *((P5*)args);
            args = (char*)args + sizeof(P5);
            P6 p6 = *((P6*)args);
            args = (char*)args + sizeof(P6);
            P7 p7 = *((P7*)args);
            args = (char*)args + sizeof(P7);
            R r = (*method)(p0,p1,p2,p3,p4,p5,p6,p7);
            if(returnVal)
                *((R*)returnVal) = r;
        }
    };
    struct MethodDispatchV
    {
        static void Dispatch(void* object, void* args, void* returnVal, void (*method)(P0,P1,P2,P3,P4,P5,P6,P7))
        {
            P0 p0 = *((P0*)args);
            args = (char*)args + sizeof(P0);
            P1 p1 = *((P1*)args);
            args = (char*)args + sizeof(P1);
            P2 p2 = *((P2*)args);
            args = (char*)args + sizeof(P2);
            P3 p3 = *((P3*)args);
            args = (char*)args + sizeof(P3);
            P4 p4 = *((P4*)args);
            args = (char*)args + sizeof(P4);
            P5 p5 = *((P5*)args);
            args = (char*)args + sizeof(P5);
            P6 p6 = *((P6*)args);
            args = (char*)args + sizeof(P6);
            P7 p7 = *((P7*)args);
            args = (char*)args + sizeof(P7);
            (*method)(p0,p1,p2,p3,p4,p5,p6,p7);
        }
    };
    void Dispatch(void* object, void* args, void* returnVal)
    {
        R (*m)(P0,P1,P2,P3,P4,P5,P6,P7) = method;
        MetaProgramming::IFVOID<R, MethodDispatchV, MethodDispatch>::RET::Dispatch(object,args,returnVal,m);
    }

protected:
    R (*method)(P0,P1,P2,P3,P4,P5,P6,P7);
};


template <class T, class R,class P0,class P1,class P2,class P3,class P4,class P5,class P6,class P7> class Method8 : public Function
{
public:
    Method8(char* n, R (T::*func)(P0,P1,P2,P3,P4,P5,P6,P7)) : Function(n,8)
    {
        method = func;
        arg[0] = ArgType<P0>::Type();
        arg[1] = ArgType<P1>::Type();
        arg[2] = ArgType<P2>::Type();
        arg[3] = ArgType<P3>::Type();
        arg[4] = ArgType<P4>::Type();
        arg[5] = ArgType<P5>::Type();
        arg[6] = ArgType<P6>::Type();
        arg[7] = ArgType<P7>::Type();
    }
    struct MethodDispatch
    {
        static void Dispatch(void* object, void* args, void* returnVal, R (T::*method)(P0,P1,P2,P3,P4,P5,P6,P7))
        {
            P0 p0 = *((P0*)args);
            args = (char*)args + sizeof(P0);
            P1 p1 = *((P1*)args);
            args = (char*)args + sizeof(P1);
            P2 p2 = *((P2*)args);
            args = (char*)args + sizeof(P2);
            P3 p3 = *((P3*)args);
            args = (char*)args + sizeof(P3);
            P4 p4 = *((P4*)args);
            args = (char*)args + sizeof(P4);
            P5 p5 = *((P5*)args);
            args = (char*)args + sizeof(P5);
            P6 p6 = *((P6*)args);
            args = (char*)args + sizeof(P6);
            P7 p7 = *((P7*)args);
            args = (char*)args + sizeof(P7);
            R r = (((T*)object)->*method)(p0,p1,p2,p3,p4,p5,p6,p7);
            if(returnVal)
                *((R*)returnVal) = r;
        }
    };
    struct MethodDispatchV
    {
        static void Dispatch(void* object, void* args, void* returnVal, void (T::*method)(P0,P1,P2,P3,P4,P5,P6,P7))
        {
            P0 p0 = *((P0*)args);
            args = (char*)args + sizeof(P0);
            P1 p1 = *((P1*)args);
            args = (char*)args + sizeof(P1);
            P2 p2 = *((P2*)args);
            args = (char*)args + sizeof(P2);
            P3 p3 = *((P3*)args);
            args = (char*)args + sizeof(P3);
            P4 p4 = *((P4*)args);
            args = (char*)args + sizeof(P4);
            P5 p5 = *((P5*)args);
            args = (char*)args + sizeof(P5);
            P6 p6 = *((P6*)args);
            args = (char*)args + sizeof(P6);
            P7 p7 = *((P7*)args);
            args = (char*)args + sizeof(P7);
            (((T*)object)->*method)(p0,p1,p2,p3,p4,p5,p6,p7);
        }
    };
    void Dispatch(void* object, void* args, void* returnVal)
    {
        R (T::*m)(P0,P1,P2,P3,P4,P5,P6,P7) = method;
        MetaProgramming::IFVOID<R, MethodDispatchV, MethodDispatch>::RET::Dispatch(object,args,returnVal,m);
    }

protected:
    R (T::*method)(P0,P1,P2,P3,P4,P5,P6,P7);
};


template <class T, class R,class P0,class P1,class P2,class P3,class P4,class P5,class P6,class P7> class Closure8 : public Method8<T,R,P0,P1,P2,P3,P4,P5,P6,P7>
{
public:
    Closure8(char* n, T* o, R (T::*func)(P0,P1,P2,P3,P4,P5,P6,P7)) : Method8<T,R,P0,P1,P2,P3,P4,P5,P6,P7>(n,func), object(o) {}

    void Dispatch(void*, void* args, void* returnVal)
    {
        Method8<T,R,P0,P1,P2,P3,P4,P5,P6,P7>::Dispatch(object, args, returnVal);
    }

protected:
    T* object;
};



