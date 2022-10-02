//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


#include<stdio.h>
#include<stdlib.h>
#include<string.h>

char tmpArgs[256] = "";
char tmpArgs2[256] = "";
char tmpArgs3[256] = "";
char tmpArgs4[256] = "";

/*
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
        static void Dispatch(void* object, void* args, void* returnVal, R (T::*method)(void)) 
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
    Closure0(char* n, T* o, R (T::*func)(void)) : Method0<T,R>(n,0), object(o) {}

    void Dispatch(void*, void* args, void* returnVal) 
    {
        Method0<T,R>::Dispatch(object, args, returnVal);
    }

protected:
    T* object;
};


template <class T, class R, class P1> class Method1 : public Function
{
public:
    Method1(char* n, R (T::*func)(P1)) : Function(n,1)
    {
        method = func;

        ArgTypeFiller<P1,void,void,void,void,void,void,void>::Do(arg);
    }

    struct MethodDispatch
    {
        static void Dispatch(void* object, void* args, void* returnVal, R (T::*method)(P1)) 
        {
            P1 p = *((P1*)args);
            R r = (((T*)object)->*method)(p);

            if(returnVal)
                *((R*)returnVal) = r;
        }
    };

    struct MethodDispatchV
    {
        static void Dispatch(void* object, void* args, void* returnVal, void (T::*method)(P1)) 
        {
            P1 p = *((P1*)args);
            (((T*)object)->*method)(p);
        }
    };

    void Dispatch(void* object, void* args, void* returnVal) 
    {
        R (T::*m)(P1) = method;
        MetaProgramming::IFVOID<R, MethodDispatchV, MethodDispatch>::RET::Dispatch(object,args,returnVal,m);
    }

protected:
    R (T::*method)(P1);
};

*/

void WriteFunction(int nArgs)
{
    int i;

    printf("template <class R%s> class Function%d : public Function\n",tmpArgs, nArgs);
    printf("{\n");
    printf("public:\n");
    printf("   Function%d(char* n, R (*func)(%s)) : Function(n,%d)\n",nArgs, tmpArgs2, nArgs);
    printf("   {\n");
    printf("      method = func;\n");

    for(i = 0; i < nArgs; i++)
    {
        printf("      arg[%d] = ArgType<P%d>::Type();\n",i,i);
    }
        
    printf("   }\n");

    printf("   struct MethodDispatch\n");
    printf("   {\n");
    printf("      static void Dispatch(void* object, void* args, void* returnVal, R (*method)(%s))\n", tmpArgs2);
    printf("      {\n");

    for(i = 0; i < nArgs; i++)
    {
        printf("         P%d p%d = *((P%d*)args);\n", i, i, i);
        printf("         args = (char*)args + sizeof(P%d);\n", i);
    }

    printf("         R r = (*method)(%s);\n", tmpArgs3);
    printf("         if(returnVal)\n");
    printf("            *((R*)returnVal) = r;\n");
    printf("      }\n");
    printf("   };\n");

    printf("   struct MethodDispatchV\n");
    printf("   {\n");
    printf("      static void Dispatch(void* object, void* args, void* returnVal, void (*method)(%s))\n",tmpArgs2);
    printf("      {\n");

    for(i = 0; i < nArgs; i++)
    {
        printf("         P%d p%d = *((P%d*)args);\n", i,i,i);
        printf("         args = (char*)args + sizeof(P%d);\n", i);
    }

    printf("         (*method)(%s);\n",tmpArgs3);
    printf("      }\n");
    printf("   };\n");

    printf("   void Dispatch(void* object, void* args, void* returnVal)\n");
    printf("   {\n");
    printf("      R (*m)(%s) = method;\n", tmpArgs2);
    printf("      MetaProgramming::IFVOID<R, MethodDispatchV, MethodDispatch>::RET::Dispatch(object,args,returnVal,m);\n");
    printf("   }\n");
    printf("\n");
    printf("protected:\n");
    printf("   R (*method)(%s);\n",tmpArgs2);
    printf("};\n\n\n");
}

void WriteMethod(int nArgs)
{
    int i;

    printf("template <class T, class R%s> class Method%d : public Function\n",tmpArgs, nArgs);
    printf("{\n");
    printf("public:\n");
    printf("   Method%d(char* n, R (T::*func)(%s)) : Function(n,%d)\n",nArgs, tmpArgs2, nArgs);
    printf("   {\n");
    printf("      method = func;\n");

    for(i = 0; i < nArgs; i++)
    {
        printf("      arg[%d] = ArgType<P%d>::Type();\n",i,i);
    }
        
    printf("   }\n");

    printf("   struct MethodDispatch\n");
    printf("   {\n");
    printf("      static void Dispatch(void* object, void* args, void* returnVal, R (T::*method)(%s))\n", tmpArgs2);
    printf("      {\n");

    for(i = 0; i < nArgs; i++)
    {
        printf("         P%d p%d = *((P%d*)args);\n", i, i, i);
        printf("         args = (char*)args + sizeof(P%d);\n", i);
    }

    printf("         R r = (((T*)object)->*method)(%s);\n", tmpArgs3);
    printf("         if(returnVal)\n");
    printf("            *((R*)returnVal) = r;\n");
    printf("      }\n");
    printf("   };\n");

    printf("   struct MethodDispatchV\n");
    printf("   {\n");
    printf("      static void Dispatch(void* object, void* args, void* returnVal, void (T::*method)(%s))\n",tmpArgs2);
    printf("      {\n");

    for(i = 0; i < nArgs; i++)
    {
        printf("         P%d p%d = *((P%d*)args);\n", i,i,i);
        printf("         args = (char*)args + sizeof(P%d);\n", i);
    }

    printf("         (((T*)object)->*method)(%s);\n",tmpArgs3);
    printf("      }\n");
    printf("   };\n");

    printf("   void Dispatch(void* object, void* args, void* returnVal)\n");
    printf("   {\n");
    printf("      R (T::*m)(%s) = method;\n", tmpArgs2);
    printf("      MetaProgramming::IFVOID<R, MethodDispatchV, MethodDispatch>::RET::Dispatch(object,args,returnVal,m);\n");
    printf("   }\n");
    printf("\n");
    printf("protected:\n");
    printf("   R (T::*method)(%s);\n",tmpArgs2);
    printf("};\n\n\n");
}

void WriteClosure(int nArgs)
{

printf("template <class T, class R%s> class Closure%d : public Method%d<T,R%s>\n",tmpArgs, nArgs, nArgs, tmpArgs4);
printf("{\n");
printf("public:\n");
printf("   Closure%d(char* n, T* o, R (T::*func)(%s)) : Method%d<T,R%s>(n,func), object(o) {}\n", nArgs, tmpArgs2, nArgs, tmpArgs4);
printf("\n");
printf("   void Dispatch(void*, void* args, void* returnVal)\n");
printf("   {\n");
printf("      Method%d<T,R%s>::Dispatch(object, args, returnVal);\n", nArgs, tmpArgs4);
printf("   }\n");
printf("\n");
printf("protected:\n");
printf("   T* object;\n");
printf("};\n\n\n");

}

void main(void)
{
    for(int nArgs = 0; nArgs < 9; nArgs++)
    {
        int i;

        tmpArgs[0] = 0;
        tmpArgs2[0] = 0;
        tmpArgs3[0] = 0;
        tmpArgs4[0] = 0;

        for(i = 0; i < nArgs; i++)
        {
            char buffer[64];
            strcat(tmpArgs, ",class P");
            strcat(tmpArgs, itoa(i, buffer, 10));
        }

        if(nArgs == 0)
        {
            strcpy(tmpArgs2,"void");
        }
        else 
        {
            strcpy(tmpArgs2,"P0");
            for(i = 1; i < nArgs; i++)
            {
                char buffer[64];
                strcat(tmpArgs2, ",P");
                strcat(tmpArgs2, itoa(i, buffer, 10));
            }
        }

        if(nArgs == 0)
        {
            strcpy(tmpArgs3,"");
        }
        else 
        {
            strcpy(tmpArgs3,"p0");
            for(i = 1; i < nArgs; i++)
            {
                char buffer[64];
                strcat(tmpArgs3, ",p");
                strcat(tmpArgs3, itoa(i, buffer, 10));
            }
        }

        if(nArgs == 0)
        {
            strcpy(tmpArgs4,"");
        }
        else 
        {
            for(i = 0; i < nArgs; i++)
            {
                char buffer[64];
                strcat(tmpArgs4, ",P");
                strcat(tmpArgs4, itoa(i, buffer, 10));
            }
        }

        WriteFunction(nArgs);
        WriteMethod(nArgs);
        WriteClosure(nArgs);
    }
}
