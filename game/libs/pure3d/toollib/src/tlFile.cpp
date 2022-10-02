/*===========================================================================
    File:: tlFile.cpp

    Common i/o functions

    Copyright (c) 1995, 1998 Radical Entertainment, Inc.  All rights reserved.

===========================================================================*/

#include <string.h>

#include "chunkids.hpp"
#include "tlImage.hpp"
#include "tlFile.hpp"
#include "tlString.hpp"
#include "tlColour.hpp"
#include "tlPoint.hpp"
#include "tlSphere.hpp"
#include "tlMatrix.hpp"
#include "tlBox.hpp"
#include "tlUV.hpp"
#include "tlByteStream.hpp"
#include "tlCompressedByteStream.hpp"

#include <assert.h>


//----------------------------------------------------------
/***************************************************************************/
tlFile::tlFile()
{
    type = CHUNK16;
    Stream = NULL;
    DestroyStream = TRUE;
}
//----------------------------------------------------------
tlFile::tlFile(tlByteStream *stream, FileType t, BOOL destroy)
{
    AttachStream(stream, t, destroy);
}
//----------------------------------------------------------
tlFile::~tlFile()
{
    DetachStream();
}
//----------------------------------------------------------
void   tlFile::AttachStream(tlByteStream* stream, FileType t, BOOL destroy)
{
    bool compressed = false;
    Stream = stream;
    DestroyStream = destroy;
    
    if(t != FROMFILE)
    {
        type = t;
    }
    else
    {
        if(Stream->IsOpen())
        {
            int magic;
            unsigned long pos = stream->GetPosition();
            stream->GetBytes(&magic, 4);
            stream->SetPosition(pos);
            compressed = false;

            switch(magic)
            {
                case Pure3D::DATA_FILE:
                    type = CHUNK32;
                    break;
                case Pure3D::DATA_FILE_SWAP:
                    type = CHUNK32SWAP;
                    break;
                case Pure3D::DATA_FILE_COMPRESSED:
                    type = CHUNK32;
                    compressed = true;
                    break;
                case Pure3D::DATA_FILE_COMPRESSED_SWAP:
                    type = CHUNK32SWAP;
                    compressed = true;
                    break;
                default:
                    type = CHUNK16;
                    break;
            }
        } 
        else 
        {
            type = CHUNK32;
        }
    }

    if(compressed)
    {
        Stream = new tlCompressedByteStream(stream);
    }
}
//----------------------------------------------------------
void   tlFile::DetachStream(void)
{
    if((Stream != NULL) && DestroyStream)
        delete Stream;
    Stream = NULL;
}
//----------------------------------------------------------
BOOL   tlFile::Eof()
{
    return Stream->Eof();
}
//----------------------------------------------------------
BOOL   tlFile::GetBytes(void* buf, ULONG nbytes)
{
    return Stream->GetBytes(buf,nbytes);
}
//----------------------------------------------------------
float tlFile::GetFloat()
{
    float tmp;
    Stream->GetBytes(&tmp, 4);
    if((type==CHUNK16SWAP) || (type==CHUNK32SWAP))
    {
        tmp = SwapFloat(tmp);
    }
    return tmp;
}
//----------------------------------------------------------
SWORD  tlFile::GetWord()
{
    int tmp = 0;
    Stream->GetBytes(&tmp, 2);
    if((type==CHUNK16SWAP) || (type==CHUNK32SWAP))
    {
        tmp = SwapWord(tmp);
    }
    return tmp;
}
//----------------------------------------------------------
SLONG  tlFile::GetLong()
{
    long tmp;
    Stream->GetBytes(&tmp, 4);
    if((type==CHUNK16SWAP) || (type==CHUNK32SWAP))
    {
        tmp = SwapLong(tmp);
    }
    return tmp;
}
//----------------------------------------------------------
unsigned long tlFile::GetChunkID()
{
    switch(type)
    {
    case CHUNK32:
    case CHUNK32SWAP:
        return GetLong();
        break;
    case CHUNK16:
        return (unsigned long) (unsigned short) GetWord();
        break;
    default:
        assert(0);
        return 0;
        break;
    }
}

//----------------------------------------------------------
char*  tlFile::GetPString(char* string)
{
    unsigned char len = (unsigned char)GetChar();
    Stream->GetBytes(string, len);
    string[len] = 0;
    return string;
}
//----------------------------------------------------------
char*  tlFile::GetLongString()
{
    unsigned long len = (unsigned long)GetLong();
    char* string = new char[len + 1];
    Stream->GetBytes(string, len);
    string[len] = 0;
    return string;
}
//----------------------------------------------------------
char   tlFile::GetChar()
{
    char tmp;
    Stream->GetBytes(&tmp, 1);
    return tmp;
}
//----------------------------------------------------------
BOOL   tlFile::IsOpen()
{
    if(Stream == NULL)
        return FALSE;
    return Stream->IsOpen();
}
//----------------------------------------------------------
void   tlFile::SetPosition(SLONG offset)
{
    Stream->SetPosition(offset);
}
//----------------------------------------------------------
ULONG  tlFile::GetPosition()
{
    return Stream->GetPosition();
}

//----------------------------------------------------------
tlFile::FileFormat tlFile::DetectFormat()
{
   unsigned long initial_pos = GetPosition();

   unsigned char img_hdr[4];
   memset(img_hdr, 0, 4);

   GetBytes(img_hdr, 4);
   SetPosition(initial_pos);

   if((img_hdr[0] == 'P') &&
      (img_hdr[1] == '3') &&
      (img_hdr[2] == 'D') &&
      (img_hdr[3] == 0xff))
   {
       return FORMAT_P3D;
   }

   tlImageFormat imageFormat = tlImage::DetectFormat(*this);
   if(imageFormat != IMG_INVALID && imageFormat != IMG_UNKNOWN)
   {
       return FORMAT_IMAGE;
   }

   return FORMAT_UNKNOWN;   
}

//----------------------------------------------------------
unsigned int 
tlFile::ChunkIDSize()
{
    switch(type)
    {
    case CHUNK32:
    case CHUNK32SWAP:
        return 4;
        break;
    case CHUNK16:
        return 2;
        break;
    default:
        assert(0);
        return 0;
        break;
    }
}

//----------------------------------------------------------
unsigned int 
tlFile::ChunkContentSize()
{
    switch(type)
    {
    case CHUNK32:
    case CHUNK32SWAP:
        return 4;
        break;
    case CHUNK16:
        return 0;
        break;
    default:
        assert(0);
        return 0;
        break;
    }
}

/***************************************************************************/
#include "tlFile.hpp"
#include <string.h>

BOOL   tlFile::PutBytes(const void* buf, ULONG nbytes)
{
    return Stream->PutBytes(buf,nbytes);
}

BOOL   tlFile::PutPString(char* string)
{
    static char* dummy = "";

    if(!string)
        string = dummy;

    int len = strlen(string);
    int pad = (4-(len&3))&3;
    assert(len+pad < 256);
    PutChar(len+pad);
    PutBytes(string, len);
    for(int i=0;i<pad;i++)
    {
      PutChar(0x0);
    }

    return true;
}

BOOL   tlFile::PutLongString(char* string)
{
    static char* dummy = "";

    if(!string)
        string = dummy;

    int len = strlen(string);
    int pad = (4-(len&3))&3;
    PutLong(len+pad);
    PutBytes(string, len);
    for(int i=0;i<pad;i++)
    {
      PutChar(0x0);
    }

    return true;
}

BOOL   tlFile::PutFloat(float buf)
{
    if((type==CHUNK16SWAP) || (type==CHUNK32SWAP))
    {
        buf = SwapFloat(buf);
    }
    return Stream->PutBytes(&buf, 4);
}

BOOL   tlFile::PutWord(SWORD buf)
{
    if((type==CHUNK16SWAP) || (type==CHUNK32SWAP))
    {
        buf = SwapWord(buf);
    }
    return Stream->PutBytes(&buf, 2);
}

BOOL   tlFile::PutInteger(SWORD buf)
{
    if((type==CHUNK16SWAP) || (type==CHUNK32SWAP))
    {
        buf = SwapWord(buf);
    }
    return Stream->PutBytes(&buf, 2);
}

BOOL   tlFile::PutLong(SLONG buf)
{
    if((type==CHUNK16SWAP) || (type==CHUNK32SWAP))
    {
        buf = SwapLong(buf);
    }
    return Stream->PutBytes(&buf, 4);
}

BOOL tlFile::PutChunkID(unsigned int id)
{
    switch(type)
    {
    case CHUNK16:
    case CHUNK16SWAP:
        assert((unsigned int)((unsigned short) id) == id); 
        return PutWord((unsigned short) id);
        break;
    case CHUNK32:
    case CHUNK32SWAP:
        return PutLong(id);
        break;
    default:
        assert(0);
        return 0;
        break;
    }
}

BOOL   tlFile::PutChar(char buf)
{
  return Stream->PutBytes(&buf, 1);
}

void tlFile::PutPoint(const tlPoint& p)
{
    PutFloat(p.x);
    PutFloat(p.y);
    PutFloat(p.z);
}

tlPoint tlFile::GetPoint(void)
{
    tlPoint  p;
    p.x = GetFloat();
    p.y = GetFloat();
    p.z = GetFloat();
    return p;
}

void tlFile::PutPointList(tlPoint* p, int n)
{
    for(int i = 0; i < n; i++)
    {
        PutPoint(p[i]);
    }
}

void tlFile::GetPointList(tlPoint* p, int n)
{
    for(int i = 0; i < n; i++)
    {
        p[i] = GetPoint();
    }
}

void tlFile::PutUV(tlUV& uv)
{
    PutFloat(uv.u);
    PutFloat(uv.v);
}

tlUV tlFile::GetUV(void)
{
    tlUV  uv;
    uv.u = GetFloat();
    uv.v = GetFloat();
    return uv;
}

void tlFile::PutUVList(tlUV* p, int n)
{
    for(int i = 0; i < n; i++)
    {
        PutUV(p[i]);
    }
}

void tlFile::GetUVList(tlUV* p, int n)
{
    for(int i = 0; i < n; i++)
    {
        p[i] = GetUV();
    }
}

void tlFile::PutMatrix(tlMatrix& m)
{
    for(int i = 0; i < 4; i++)
        for(int j = 0; j < 4; j++)
            PutFloat(m.element[i][j]);
}

tlMatrix tlFile::GetMatrix(void)
{
    tlMatrix m;

    for(int i = 0; i < 4; i++)
        for(int j = 0; j < 4; j++)
            m.element[i][j] = GetFloat();

    //m.element[0][3] = m.element[1][3] = m.element[2][3] = 0.0f;
    //m.element[3][3] = 1.0f;
    return m;
}

union packedcolour
{
    // bit order 0xaarrggbb matches pddiColour
    long packed;  
    struct {
        unsigned char b;
        unsigned char g;
        unsigned char r;
        unsigned char a;
    } raw;
};

void tlFile::PutColour(tlColour& c)
{
    packedcolour col;
    col.raw.r = (unsigned char) (c.red * 255);
    col.raw.g = (unsigned char) (c.green * 255);
    col.raw.b = (unsigned char) (c.blue * 255);
    col.raw.a = (unsigned char) (c.alpha * 255);
    PutLong(col.packed);
}

tlColour tlFile::GetColour(void)
{
    packedcolour col;
    col.packed = GetLong();
    tlColour c(col.raw.r,col.raw.g,col.raw.b,col.raw.a);
    return c;
}

void tlFile::PutColourOffset(tlColourOffset& c)
{
    short value;
    value = (short)(c.red*255);
    PutWord( value );
    value = (short)(c.green*255);
    PutWord( value );
    value = (short)(c.blue*255);
    PutWord( value );
    value = (short)(c.alpha*255);
    PutWord( value );
    
}

tlColourOffset tlFile::GetColourOffset(void)
{

    int r, g, b, a;
    r = GetWord( );
    g = GetWord( );
    b = GetWord( );
    a = GetWord( );

    tlColourOffset c( r, g, b, a);
    return c;
}

void tlFile::PutColourList(tlColour* p, int n)
{
  for(int i = 0; i < n; i++)
    {
        PutColour(p[i]);
    }
}

void tlFile::GetColourList(tlColour* p, int n)
{
    for(int i = 0; i < n; i++)
    {
        p[i] = GetColour();
    }
}

void tlFile::PutBox(tlBox& b)
{
    PutPoint(b.low);
    PutPoint(b.high);
}

tlBox tlFile::GetBox(void)
{
    tlBox b;
    b.low = GetPoint();
    b.high = GetPoint();
    return b;
}

void tlFile::PutSphere(tlSphere& s)
{
    PutPoint(s.centre);
    PutFloat(s.radius);
}

tlSphere tlFile::GetSphere(void)
{
    tlSphere s;
    s.centre = GetPoint();
    s.radius = GetFloat();
    return s;
}

