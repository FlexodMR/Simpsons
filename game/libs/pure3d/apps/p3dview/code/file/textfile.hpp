//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


#include<interface/io.hpp>

class TextOutStream : public OutText
{
public:
    TextOutStream(OutStream*);
    ~TextOutStream();

    void Put(char* text);
    void PutLine(char* text);

protected:
    OutStream* stream;
};


class TextInStream : public InText
{
public:
    TextInStream(InStream*);
    ~TextInStream();

    bool Done(void);
    void Get(char* buffer, int bufferSize);
    void GetLine(char* buffer, int bufferSize);

protected:
    InStream* stream;
};

