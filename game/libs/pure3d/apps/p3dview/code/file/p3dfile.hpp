//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


#include<p3d/file.hpp>

class InStream;

class FilePure3D : public tFile
{
public:
    FilePure3D(InStream* stream, char* name, bool del= true);
    ~FilePure3D();

    bool     EndOfFile();
    unsigned GetSize();
    unsigned GetPosition();
    void     Advance(unsigned offset);
    void     SetPosition(int offset);

    bool   GetData(void* buf, unsigned count, DataType);
    bool   PeekData(void* buf, unsigned count, DataType);

private:
    InStream* stream;
    bool del;
};
