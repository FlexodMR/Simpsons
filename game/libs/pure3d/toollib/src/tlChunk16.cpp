/*===========================================================================
    File:: tlChunk16.cpp

    Classes for accessing chunked files from before Version 12

    Copyright (c) 1995, 1998 Radical Entertainment, Inc.  All rights reserved.

===========================================================================*/
#include "tlChunk16.hpp"

//------------------------------------------------------------
tlChunk16::tlChunk16(tlFile* file) : 
        ident(0),
        length(0),
        contentsize(0),
        FilePosition(0),
        f(file)
{
}

tlChunk16::~tlChunk16()
{
}

void  tlChunk16::SetFile(tlFile* file)
{
  f = file;
}

tlFile* tlChunk16::GetFile()
{
    return f;
}

//------------------------------------------------------------
tlReadChunk16::tlReadChunk16(tlFile* file)
{
  SetFile(file);
}

tlReadChunk16::~tlReadChunk16()
{
}

unsigned int tlReadChunk16::GetDataSize()
{
  return (length - GetHeaderSize());
}

unsigned int tlReadChunk16::GetHeaderSize()
{
  return (4 + f->ChunkIDSize() + f->ChunkContentSize());
}

unsigned int tlReadChunk16::GetID()
{
  return ident;
}

unsigned int tlReadChunk16::GetContentSize()
{
  return contentsize;
}

unsigned int tlReadChunk16::GetLength()
{
  return length;
}

void  tlReadChunk16::Read()
{
  FilePosition = f->GetPosition();
  ident  = f->GetChunkID();

  if(f->ChunkContentSize() != 0)
  {
      contentsize = f->GetLong();
  }

  length = f->GetLong();

  if(f->ChunkContentSize() == 0)
  {
      contentsize = length;
  }
}

void  tlReadChunk16::Skip()
{
  f->SetPosition(FilePosition+length);
}

void  tlReadChunk16::ReadNext()
{
  if (length != 0)
     f->SetPosition(FilePosition+length);
  Read();
}

BOOL  tlReadChunk16::EndOfChunk()
{
  return ((f->GetPosition() - FilePosition) >= length);
}

tlWriteChunk16::tlWriteChunk16() : OpenForWrite(FALSE)
{
}

tlWriteChunk16::tlWriteChunk16(tlFile* file, unsigned long id) :
        OpenForWrite(FALSE)
{
  SetFile(file);
  WriteOpen(id);
}

tlWriteChunk16::~tlWriteChunk16()
{
    if (contentsize == 0) ContentFinish();
    if (length == 0) WriteFinish();
}

void  tlWriteChunk16::WriteOpen(unsigned int id)
{
  if (!OpenForWrite)
  {
     ident = id;
     FilePosition = f->GetPosition();
     f->PutChunkID(ident);
     if(f->ChunkContentSize() != 0)
     {
      f->PutLong(0);
     }
     f->PutLong(0);
     OpenForWrite = TRUE;
  }
}

void  tlWriteChunk16::ContentFinish()
{
  if (OpenForWrite && (f->ChunkContentSize() != 0))
  {
     long tmp = f->GetPosition();
     contentsize = tmp - FilePosition;
     f->SetPosition(FilePosition + f->ChunkIDSize());
     f->PutLong(contentsize);
     f->SetPosition(tmp);
  }
}

void  tlWriteChunk16::WriteFinish()
{
  if (OpenForWrite)
  {
     long tmp = f->GetPosition();
     length = tmp - FilePosition;
     f->SetPosition(FilePosition + f->ChunkIDSize() + f->ChunkContentSize());
     f->PutLong(length);
     f->SetPosition(tmp);
     OpenForWrite = FALSE;
  }
}

//------------------------------------------------------------

tlWriteChunk16Aligned::tlWriteChunk16Aligned()
{
  OpenForWrite = FALSE;
}

tlWriteChunk16Aligned::tlWriteChunk16Aligned(tlFile* file, unsigned int id)
{
  OpenForWrite = FALSE;
  SetFile(file);
  WriteOpen(id);
}

tlWriteChunk16Aligned::~tlWriteChunk16Aligned()
{
  if (contentsize == 0) ContentFinish();
  if (length == 0) WriteFinish();
}


// This method is now subtly broken.  It aligns data by adding stuff AFTER the
// contents.  That's not really right.  It'll need fixing.  The right thing
// to do is to have ContentFinish() do it, but only if we're in 32 bit file mode...

void
tlWriteChunk16Aligned::ContentFinish()
{
  if (OpenForWrite && (f->ChunkContentSize() != 0))
  {
     long tmp = f->GetPosition();
     // Align length to multiple of 4
     long pad = (4-(tmp&3))&3;
     for(int i=0;i<pad;i++){
         f->PutChar(0x1D);
     }
     tmp = f->GetPosition();
     contentsize = tmp - FilePosition;
     f->SetPosition(FilePosition + f->ChunkIDSize());
     f->PutLong(contentsize);
     f->SetPosition(tmp);
     OpenForWrite = FALSE;
  }
}

void
tlWriteChunk16Aligned::WriteFinish()
{
  if (OpenForWrite)
  {
     long tmp;
     if(f->ChunkContentSize() != 0)
     {
        tmp = f->GetPosition();
        // Align length to multiple of 4
        long pad = (4-(tmp&3))&3;
        for(int i=0;i<pad;i++)
        {
          f->PutChar(0x1D);
        }
     }
     tmp = f->GetPosition();
     length = tmp - FilePosition;
     f->SetPosition(FilePosition + f->ChunkIDSize() + f->ChunkContentSize());
     f->PutLong(length);
     f->SetPosition(tmp);
     OpenForWrite = FALSE;
  }
}

