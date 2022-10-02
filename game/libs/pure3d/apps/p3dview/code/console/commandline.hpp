//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


#ifndef _COMMANDLINE_HPP_
#define _COMMANDLINE_HPP_

#include"interface.hpp"

namespace Console
{

class Line;

class RealBuffer : public Buffer
{
public:
    RealBuffer();
    ~RealBuffer();

    // Buffer impimentation
    virtual void Echo(const char* text);

    virtual unsigned GetNumLines(void);
    virtual const char* GetLine(unsigned n);

protected:

    int nLines;
    Line* textLines;  // storage for console text
    Line* textTail;
};

class CommandLine : public Buffer
{
public:
    CommandLine(CommandRecipient *, Buffer* real = 0);
    ~CommandLine();

    // Buffer impimentation
    virtual void Echo(const char* text);

    virtual unsigned GetNumLines(void);
    virtual const char* GetLine(unsigned n);

    // local stuff
    void SetInterpreter(CommandRecipient *);
    CommandRecipient * GetInterpreter(void);

    // input events
    virtual void Text(char);
    virtual void Escape(void);
    virtual void Up(void);
    virtual void Down(void);

    void SetBlink(bool b) { blinking = b;}
    void SetCursor(char c) { cursor = c;}

private:
    CommandRecipient* interpreter;

    int blink;

    Buffer* realBuffer;

    Line* historyLines;  // storage for command history
    Line* historyPos;

    char typeBuffer[1024];  // edit buffer for current line
    char* typeLine;
    int nTyped;

    int tryingMatch;
    int nTries;
    int insertPos;
    char matchText[256];

    bool blinking;
    char cursor;
};

}


#endif 
