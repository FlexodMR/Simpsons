//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


#include<file/textfile.hpp>

#include<string.h>

TextOutStream::TextOutStream(OutStream* s)
{
    stream = s;
}

TextOutStream::~TextOutStream()
{
    delete stream;
}

void TextOutStream::Put(char* text)
{
    if(!stream)
        return;

    stream->Put(strlen(text), text);
}

void TextOutStream::PutLine(char* text)
{
    if(!stream)
        return;

    static char newline[] = {0xd, 0xa};
    stream->Put(strlen(text), text);
    stream->Put(2, newline);
}

TextInStream::TextInStream(InStream* s) :
    stream(s)
{
}

TextInStream::~TextInStream()
{
    delete stream;
}

bool TextInStream::Done(void)
{
    return stream ? (stream->GetPosition() >= stream->GetLength()) : true;
}

void TextInStream::Get(char* buffer, int bufferSize)
{
    if(stream)
    {
        stream->Get(bufferSize-1,buffer);
        buffer[bufferSize-1] = 0;
    }
}

void TextInStream::GetLine(char* buffer, int bufferSize)
{
    if(!stream)
        return;

    int i;

    char c = 0xa;

    while(!Done() && ((c == 0xa) || (c == 0xd)))
    {
        stream->Get(1,&c);
    }

    if(Done() && ((c == 0xa) || (c == 0xd)))
    {
        buffer[0] = 0;
        return;
    }

    *buffer = c;
    buffer++;

    for(i = 1; i < bufferSize; i++)
    {
        if(Done())
        {
            *buffer = 0;
            return;
        }

        stream->Get(1,buffer);
        if((*buffer == 0xa) || (*buffer == 0xd))
        {
            *buffer = 0;
            return;
        }
        *buffer++;
    }
    *(buffer-1) = 0;;
}

