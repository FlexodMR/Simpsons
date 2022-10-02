/*===========================================================================
    File:: tlChunk.hpp

    Classes for reading Pre-Version 12 chunk files. tlChunk handles the new
    file format.

    Copyright (c) 1995, 1998 Radical Entertainment, Inc.  All rights reserved.

===========================================================================*/

#ifndef _TCHUNK_HPP
#define _TCHUNK_HPP



#include "tlFile.hpp"
class tlChunk16
{
public:
    tlChunk16(tlFile* file = NULL);
    virtual ~tlChunk16();
    void  SetFile(tlFile* file);
    tlFile* GetFile();
protected:
    unsigned int ident;
    unsigned int length;
    unsigned int contentsize;
    unsigned int FilePosition;
    tlFile* f;
    tlChunk16(const tlChunk16&);
    void operator=(const tlChunk16&);
};


class tlReadChunk16: public tlChunk16
{
public:
    tlReadChunk16(tlFile* file = NULL);
    ~tlReadChunk16();
    void  Read();            // Read chunk header from the current file position
    void  ReadNext();        // Read chunk header next after the given one
    void  Skip();            // Set file position to the first byte after the chunk
    BOOL  EndOfChunk();      // TRUE if file position is out of the chunk zone
    unsigned int GetID();
    unsigned int GetLength();       // Returns size of the chunk including header
    unsigned int GetDataSize();     // Returns size of data inside the chunk
    unsigned int GetHeaderSize();   // Returns the size of the header
    unsigned int GetContentSize();  // Returns size of data not including subchunks (but including the header)
    unsigned int GetFilePosition() {return FilePosition;};
    // Returns file position of the chunk
};

class tlWriteChunk16: public tlChunk16
{
public:
  tlWriteChunk16();
  tlWriteChunk16(tlFile* file, ULONG id); // Writes chunk's header to the file with length = 0
  ~tlWriteChunk16();                     // Calculates chunk's length and writes it to the header
  void  SetId(unsigned int id);
  void  WriteOpen(unsigned int id);  // Writes chunk's header to the file with length = 0
  void  ContentFinish();      // Calculates length (without subchunks) and writes to the he
  void  WriteFinish();        // Calculates chunk's length and writes it to the header
protected:
  BOOL   OpenForWrite;
};

class tlWriteChunk16Aligned: public tlWriteChunk16
{
public:
  tlWriteChunk16Aligned();
  tlWriteChunk16Aligned(tlFile* file, unsigned int id); // Writes chunk's header to the file with length = 0
  ~tlWriteChunk16Aligned();                     // Calculates chunk's length and writes it to the header
  void  ContentFinish();
  void  WriteFinish();        // Calculates chunk's length (aligned to long) and writes it to the header
};

#endif

