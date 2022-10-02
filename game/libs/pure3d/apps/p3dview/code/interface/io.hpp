//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


#ifndef _IO_HPP_
#define _IO_HPP_
    
class InStream
{
public:
    virtual ~InStream() {};

    virtual unsigned GetPosition(void) = 0;
    virtual unsigned GetLength(void) = 0;

    virtual void Advance(unsigned count) = 0;
    virtual void Get(unsigned count, void* data) = 0;
};

class OutStream
{
public:
    virtual ~OutStream() {};
    virtual void Put(unsigned count, void* data) = 0;
};


class OutText
{
public:
    virtual ~OutText() {};

    virtual void Put(char* text) = 0;
    virtual void PutLine(char* text) = 0;
};


class InText
{
public:
    virtual ~InText() {};

    virtual bool Done(void) = 0;
    virtual void Get(char* buffer, int bufferSize) = 0;
    virtual void GetLine(char* buffer, int bufferSize) = 0;
};

#endif
