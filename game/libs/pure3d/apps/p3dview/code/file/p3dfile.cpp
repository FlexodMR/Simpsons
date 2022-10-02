//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


#include<file/p3dfile.hpp>
#include<interface/io.hpp>

FilePure3D::FilePure3D(InStream* s, char* name, bool d)
{
    stream = s;
    del = d;

    SetFilename(name);
}

FilePure3D::~FilePure3D()
{
    if(del)
        delete stream;

    stream = NULL;
}

bool FilePure3D::EndOfFile()
{
    return stream ? (stream->GetPosition() < stream->GetLength()) : true;
}

unsigned FilePure3D::GetSize()
{
    return stream ? stream->GetLength() : 0;
}

unsigned FilePure3D::GetPosition()
{
    return stream ? stream->GetPosition() : 0;
}

void FilePure3D::Advance(unsigned offset)
{
    if(stream) stream->Advance(offset);
}

void FilePure3D::SetPosition(int offset)
{
    if(stream) stream->Advance(offset - stream->GetPosition());
}

bool FilePure3D::GetData(void* b, unsigned count, DataType type)
{
    if(!stream) 
        return false;

    char* buf = (char*)b;

    stream->Get(count * type, buf);

    return true;
}

bool FilePure3D::PeekData(void* b, unsigned count, DataType type )
{
    if(!stream) 
        return false;

    char* buf = (char*)b;
    unsigned position = GetPosition();

    stream->Get(count * type, buf);

    SetPosition(position);
    return true;
}


