//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


#ifndef _WINCONSOLE_HPP_
#define _WINCONSOLE_CPP_

namespace Console
{

class Console;

// A simple console input driver that hooks up to the 
// windows message loop
//
// You will want to write a replacement if you are using 
// a more comples input system
class WinConsole
{
public:
    WinConsole(Console* c);
    ~WinConsole();

    void Event(int msg, int wparam);

private:
    Console* console;
    bool supressNextChar;
};

}
#endif
