//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


#ifndef _CONSOLE_HPP_
#define _CONSOLE_HPP_

#include<p3d/refcounted.hpp>

class CommandRecipient;

namespace Console
{
    class ViewP3D;
    class QuickViewP3D;
    class CommandLine;
    class ObjectScripter;

// the main console class
class Console
{
public:
    Console();
    virtual ~Console();

    CommandLine*    GetCommandLine(void) { return commandLine;}
    ObjectScripter* GetInterpreter(void) { return interpreter;}

    // check for various kinds of activation
    bool IsActive(void)      { return active || quick;}
    bool IsFullActive(void)  { return active;}
    bool IsQuickActive(void) { return quick;}

    // Input Events
    virtual void Text(char);          // ascii characters
    virtual void Activate(void);      // activate/deactivate console
    virtual void QuickActivate(void); // activate single command console
    virtual void Escape(void);        // clear type text, exit quick cosole, etc.
    virtual void Up(void);            // command history up
    virtual void Down(void);          // command history down

protected:
    bool active;
    bool quick;

    CommandLine* commandLine;
    ObjectScripter*   interpreter;
};

}
namespace con = Console;

#endif
