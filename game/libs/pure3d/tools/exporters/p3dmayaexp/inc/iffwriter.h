// Copyright (C) 1998 Alias | Wavefront, a division of Silicon Graphics Limited.
// 
// The information in this file is provided for the exclusive use of the
// licensees of Alias | Wavefront.  Such users have the right to use, modify,
// and incorporate this code into other products for purposes authorized
// by the Alias | Wavefront license agreement, without fee.
// 
// ALIAS | WAVEFRONT DISCLAIMS ALL WARRANTIES WITH REGARD TO THIS SOFTWARE,
// INCLUDING ALL IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS, IN NO
// EVENT SHALL ALIAS | WAVEFRONT BE LIABLE FOR ANY SPECIAL, INDIRECT OR
// CONSEQUENTIAL DAMAGES OR ANY DAMAGES WHATSOEVER RESULTING FROM LOSS OF USE,
// DATA OR PROFITS, WHETHER IN AN ACTION OF CONTRACT, NEGLIGENCE OR OTHER
// TORTIOUS ACTION, ARISING OUT OF OR IN CONNECTION WITH THE USE OR
// PERFORMANCE OF THIS SOFTWARE.
//

#ifndef _iffwriter_h
#define _iffwriter_h

typedef unsigned char byte;

class MStatus;
class MString;

class IFFimageWriter
{
public:
          IFFimageWriter ();
          ~IFFimageWriter ();
          MStatus open (MString filename);
          MStatus close ();
        MStatus outFilter( const char * );
          MStatus writeImage ( byte *, float *, int);
          MStatus setSize ( int x, int y);
        MStatus setBytesPerChannel( int bpp);
        MStatus setType( int type);
          MString errorString ();

protected:
          ILimage *fImage;
          byte *fBuffer;
          float *fZBuffer;

        int    Bpp;
        int    Xsize;
        int Ysize;

};

#endif

