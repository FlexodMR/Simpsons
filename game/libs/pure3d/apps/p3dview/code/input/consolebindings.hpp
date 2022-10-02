//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


#ifndef _CONSOLEBINDINGS_HPP_
#define _CONSOLEBINDINGS_HPP_

#include<input/inputdriver.hpp>
#include<console/console.hpp>
#include<console/interface.hpp>

class CommandRecipient;
class OutText;

template<class T> class SymbolTable;

namespace Input
{

class ConsoleBindings : public Recipient
{
public:
    ConsoleBindings(CommandRecipient* recip, Driver* driver);
    ~ConsoleBindings(void);

    void SetConsole(Console::Console* c) { console = c; }

    void Bind(char* input, char* command);
    void SupressKeys(bool b) {supressKey = b;}

    void Dump(OutText* out);

private:
    void Text(char c);
    void Digital(Description*, bool down);
    void Ranged(Description*, float);
    void Pointer(Description*, unsigned x, unsigned y, PointerState, unsigned buttons);


    SymbolTable<char>* bindings;

    CommandRecipient* recip;
    Driver* driver;

    Console::Console* console;

    bool active;
    bool supressKey;
};

}

#endif
