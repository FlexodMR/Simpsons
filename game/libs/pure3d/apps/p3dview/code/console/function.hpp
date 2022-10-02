//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


#ifndef _FUNCTION_HPP_
#define _FUNCTION_HPP_

#ifdef RAD_GAMECUBE
    #include <typeinfo.h>
#else
    #include <typeinfo>
#endif

namespace Console {

const char argVoid   = 'v';
const char argString = 's';
const char argInt    = 'i';
const char argFloat  = 'f';
const char argBool   = 'b';
const char argClass  = 'c';
const char argEnum   = 'e';

// the metaprogramming templae used to selcet between functions 
// with return values and no return values
namespace MetaProgramming
{
    // IFVOID<>         
    namespace intimate
    {
        struct SelectThen
        {
            template<class Then, class Else> struct Result
            {
                typedef Then RET;
            };
        }; // end SelectThen                 

        struct SelectElse
        {
            template<class Then, class Else>
            struct Result
            {
                typedef Else RET;
            };
        }; // end SelectElse                 

        template<class Condition> struct Selector
        {       
            typedef  SelectElse RET;
        }; // end Selector                 
        
        template<> struct Selector<void>
        {       
            typedef SelectThen RET;
        }; // end Selector<false>
    } // end namespace private  
    template<class Condition, class Then, class Else> struct IFVOID
    {
             typedef typename intimate::Selector<Condition>::RET select;
             typedef typename select::Result<Then,Else>::RET RET;
    }; // IF 
}


class Function
{
public:
    Function(char* name, int nArgs);
    virtual ~Function();

    char*    GetName(void) {return name;}
    int      GetNumArgs(void)       { return nArgs; }
    char     GetArgType(unsigned i) { return (i < nArgs) ? arg[i] : argVoid; }
    char     GetReturnType(void)    { return returnType; }

    virtual bool CheckClassType(unsigned,char*);

    virtual void Dispatch(void* object, void* args, void* returnVal) = 0;

    template <class T> struct ArgType
    {
        static char Type(void) { return ArgTypeI(typeid(T)); }
    };

    static char ArgTypeI(const type_info&);

protected:
    char name[128];

    unsigned nArgs;
    char arg[8];
    char returnType;
};

#include "generated_functions.hpp"

}

#endif
