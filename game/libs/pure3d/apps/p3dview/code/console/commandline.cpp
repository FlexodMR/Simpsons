//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


#include"commandline.hpp"

#include<string.h>

namespace Console
{
// A line of text

class Line
{
public:
    Line* next;
    Line* prev;
    char* text;

    Line()
    {
        text = NULL;
        next = NULL;
        prev = NULL;
    }

    Line(const char* t)
    {
        text = new char [strlen(t)+1];
        strcpy(text, t);
        next = NULL;
        prev = NULL;
    }

    ~Line()
    {
        delete text;
    }

    Line* InsertAfter(Line* l)
    {
        if(next)
            next->prev = l;
        l->next = next;
        l->prev = this;
        next = l;
        return l;
    }

    Line* Unlink(void)
    {
        next->prev = prev;
        prev->next = next;
        prev = NULL;
        next = NULL;
        return this;
    }
};

RealBuffer::RealBuffer() : nLines(0)
{
    textLines = new Line;
    textTail = textLines;
}

RealBuffer::~RealBuffer()
{
    Line* next, * walk;
    for(walk = textLines; walk != NULL; walk = next)
    {
        next = walk->next;
        delete walk;
    }
}

// Buffer impimentation
void RealBuffer::Echo(const char* text)
{
    // add the text to the console text buffer
    textTail = textTail->InsertAfter(new Line(text));
    nLines++;
}

unsigned RealBuffer::GetNumLines(void)
{
    return nLines;
}

const char* RealBuffer::GetLine(unsigned n)
{
    static char dummy[2] = "";

    Line* walk = textLines->next;
    unsigned i = 0;

    while((i != n) && (walk != NULL))
    {
        walk = walk->next;
        i++;
    }

    if(walk)
    {
        return walk->text;
    }
    else
    {
        return dummy;
    }
}

CommandLine::CommandLine(CommandRecipient* s, Buffer* real)
{
    if(!real)
    {
        realBuffer = new RealBuffer;
    }
    else
    {
        realBuffer = real;
    }
        
    historyLines = new Line;
    historyPos = historyLines;


    typeBuffer[0] = ']';
    typeBuffer[1] = ' ';
    typeBuffer[2] = 0;
    typeBuffer[3] = 0;
    typeLine = &typeBuffer[2];  // type buffer include ']' prompt, but 
                                // typed text never overwrites it and
                                // it isn't executed

    blink = true;
    blink = true;
    cursor = '|';

    nTyped = 0;
    tryingMatch = 0;

    interpreter = s;
}

CommandLine::~CommandLine()
{
    Line* next, * walk;

    for(walk = historyLines; walk != NULL; walk = next)
    {
        next = walk->next;
        delete walk;
    }
}

unsigned CommandLine::GetNumLines(void)
{
    return realBuffer->GetNumLines() + 1;
}

const char* CommandLine::GetLine(unsigned n)
{
    if(n == realBuffer->GetNumLines())
    {
        blink = (blink + 1) % 10;
        if(!blinking || (blink > 5))
            typeLine[nTyped] = cursor;
        else
            typeLine[nTyped] = 0;

        return typeBuffer;
    }
    else
    {
        return realBuffer->GetLine(n);
    }
}

void CommandLine::SetInterpreter(CommandRecipient* s)
{
    interpreter = s;
}

CommandRecipient* CommandLine::GetInterpreter(void)
{
    return interpreter;
}

void CommandLine::Echo(const char* text)
{
    realBuffer->Echo(text);
}

void CommandLine::Text(char key)
{
    int handled = 1;

    typeLine[nTyped] = 0;

    if((key == '\t') && dynamic_cast<Interpreter*>(interpreter))
    {
        
        if(tryingMatch)
        {
            char* match = (dynamic_cast<Interpreter*>(interpreter))->NextCompletion();
            if(match)
            {
                strcpy(typeLine, match);
                nTyped = strlen(match);
            }
        }
        else
        {
            tryingMatch = 1;
            strcpy(matchText, typeLine);
            char* match = (dynamic_cast<Interpreter*>(interpreter))->BeginCompletion(matchText);
            if(match)
            {
                strcpy(typeLine, match);
                nTyped = strlen(match);
            }

        }
    }
    else
    if(key == '\t')
    {
    }
    else
    if(key == '\r')
    {
        typeLine[nTyped] = 0;

        // Echo the line
        Echo(typeBuffer);
    
        // add it to the history
        historyLines->InsertAfter(new Line(typeLine));
        historyPos = historyLines;

        // execute the line
        if(interpreter != NULL)
            interpreter->Command(typeLine);

        // clear the type buffer
        nTyped = 0;
        
    }
    else
    if(key == '\b')
    {
        if(nTyped > 0) nTyped--;  // move back a character
        
    }
    else
        typeLine[nTyped++] = key;

    if(key != '\t')
    {
        tryingMatch = 0;
    }

    // null terminate the string (twice)
    // we may be adding a cursor at typeLine[nTyped] later
    // thus the extra null termination
    typeLine[nTyped] = 0;
    typeLine[nTyped+1] = 0;

    return;
}

void CommandLine::Escape(void)
{
    if(tryingMatch)
    {
        strcpy(typeLine, matchText);
        nTyped = strlen(matchText);
        tryingMatch = 0;
    }
    else
    {
        nTyped = 0; // clear the typed text
    }

    // null terminate the string (twice)
    // we may be adding a cursor at typeLine[nTyped] later
    // thus the extra null termination
    typeLine[nTyped] = 0;
    typeLine[nTyped+1] = 0;
}

void CommandLine::Up(void)
{
    // go back in history list
    if(historyPos->next)
    {
        historyPos = historyPos->next;
        if(historyPos->text)
        {
            strcpy(typeLine, historyPos->text);
            nTyped = strlen(typeLine);
        }
        else
        {
            nTyped = 0;
        }
    }

    // null terminate the string (twice)
    // we may be adding a cursor at typeLine[nTyped] later
    // thus the extra null termination
    typeLine[nTyped] = 0;
    typeLine[nTyped+1] = 0;
}

void CommandLine::Down(void)
{
    // go forward in history list
    if(historyPos->prev)
    {
        historyPos = historyPos->prev;
        if(historyPos->text)
        {
            strcpy(typeLine, historyPos->text);
            nTyped = strlen(typeLine);
        }
        else
        {
            nTyped = 0;
        }
    }

    // null terminate the string (twice)
    // we may be adding a cursor at typeLine[nTyped] later
    // thus the extra null termination
    typeLine[nTyped] = 0;
    typeLine[nTyped+1] = 0;
}

}
