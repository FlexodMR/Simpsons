//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


#ifndef _INTERFACE_HPP_
#define _INTERFACE_HPP_
// Interfaces used by the various console classes 
// for communicating internally

#include <interface/commandrecipient.hpp>

namespace Console
{

// a class that can execute script commands
class Interpreter : public CommandRecipient
{
public:
    virtual ~Interpreter() {};
    virtual void Command(const char* line) = 0;

    virtual char* BeginCompletion(char*) = 0;
    virtual char* NextCompletion(void) = 0;
};

// a class that holds some text
class Buffer
{
public:
    virtual ~Buffer() {};
    virtual void Echo(const char*) = 0;

    virtual unsigned GetNumLines(void) = 0;
    virtual const char* GetLine(unsigned i) = 0;
};

// a class that presents a view of a Buffer
class View
{
public:
    virtual ~View() {};
    virtual void Display(void) = 0;
};

}

#endif
