/*===========================================================================
    File:: tlFile.hpp

    Common i/o functions

    Copyright (c) 1995, 1998 Radical Entertainment, Inc.  All rights reserved.

===========================================================================*/

#ifndef _TLFILE_HPP
#define _TLFILE_HPP

#include <stdio.h>


#include "tlTypes.hpp"

class tlPoint;
class tlUV;
class tlMatrix;
class tlBox;
class tlSphere;
class tlColour;
class tlColourOffset;
class tlByteStream;


typedef unsigned char BYTE;

inline long SwapLong(long v)
{
    long tmp;

    tmp = (v >> 24) & (0x000000FF);
    tmp |= (v & 0x000000FF) << 24;
    tmp |= (v & 0x0000FF00) << 8;
    tmp |= (v & 0x00FF0000) >> 8;
    return tmp;
}

inline short SwapWord(short v)
{
    short tmp;

    tmp = (v >> 8) & (0x00FF);
    tmp |= (v & 0x00FF) << 8;

    return tmp;
}

inline float SwapFloat(float v)
{
    long tmp;
    long tmp2 = *(long*)(&v);
    tmp = (tmp2 >> 24) & (0x000000FF);
    tmp |= (tmp2 & 0x000000FF) << 24;
    tmp |= (tmp2 & 0x0000FF00) << 8;
    tmp |= (tmp2 & 0x00FF0000) >> 8;
    return (*(float*)(&tmp));
}

class tlFile
{
public:
    enum FileType { CHUNK16, CHUNK16SWAP, CHUNK32, CHUNK32SWAP, FROMFILE };
    enum FileFormat { FORMAT_P3D, FORMAT_IMAGE, FORMAT_UNKNOWN };

    tlFile();
    tlFile(tlByteStream*, FileType t, BOOL DestroyOnClose = TRUE);
    virtual ~tlFile();

    virtual void AttachStream(tlByteStream* stream, FileType t = FROMFILE, BOOL DestroyOnClose = FALSE);
    virtual void DetachStream();

    void Close(void) { DetachStream(); }

    virtual BOOL   IsOpen();
    virtual BOOL   Eof();
    virtual void   SetPosition(SLONG offset);
    virtual ULONG  GetPosition();

    virtual BOOL   GetBytes(void* buf, ULONG nbytes);
    
    char*          GetPString(char* string);    
    char*          GetLongString();
    float          GetFloat();
    SWORD          GetWord();
    SLONG          GetLong();
    char           GetChar();
    unsigned long  GetChunkID();          // reads either a 16 or 32 bit chunk ID based on file type
    unsigned int   ChunkIDSize();
    unsigned int   ChunkContentSize();

    void SetType( FileType t) { type = t; }
    FileType GetType() { return type; }
    FileFormat DetectFormat();

    // Tool lib enhanced methods.
public:
    inline tlByteStream*   GetStream() { return Stream; }
    
    virtual BOOL   PutBytes(const void* buf, ULONG nbytes);
    BOOL     PutPString(char* string);
    BOOL     PutPString(char* string, int length);
    BOOL     PutLongString(char* string);
    BOOL     PutFloat(float buf);
    BOOL     PutWord(SWORD buf);
    BOOL     PutInteger(SWORD buf);
    BOOL     PutLong(SLONG buf);
    BOOL     PutChar(char buf);
    BOOL     PutChunkID(unsigned int id);

    void PutPoint(const tlPoint& p);
    tlPoint GetPoint(void);
    void PutPointList(tlPoint*, int);
    void GetPointList(tlPoint*, int);

    void PutUV(tlUV& p);
    tlUV GetUV(void);
    void PutUVList(tlUV*, int);
    void GetUVList(tlUV*, int);
    
    void PutMatrix(tlMatrix& p);
    tlMatrix GetMatrix(void);
    
    void PutColour(tlColour& p);
    tlColour GetColour(void);
    void PutColourList(tlColour*, int);
    void GetColourList(tlColour*, int);
   
    void PutColourOffset(tlColourOffset& p);
    tlColourOffset GetColourOffset(void);
    
    void PutBox(tlBox&);
    tlBox GetBox(void);
    
    void PutSphere(tlSphere&);
    tlSphere GetSphere(void);

protected:

    FileType type;

    tlByteStream* Stream;
    BOOL DestroyStream;
    char FileName[255];

    tlFile(const tlFile&);
    tlFile& operator=(const tlFile&);
};

#endif //#ifndef _TLFILE_HPP


