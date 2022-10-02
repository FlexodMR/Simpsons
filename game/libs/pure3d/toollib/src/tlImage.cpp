/*===========================================================================
   File:: tlImage.cpp

   Copyright (c) 1999 Radical Entertainment, Inc.  All rights reserved.

===========================================================================*/
#ifdef WIN32
#pragma warning( disable : 4786 )
#endif

#include "tlImage.hpp"
#include <limits.h>
#include <assert.h>
#include <string.h>
#include <png.h>

#include <set>

#include "chunks.h"
#include "tlDataChunk.hpp"
#include "tlInventory.hpp"
#include "dospath.hpp"
#include "tlImageChunk.hpp"
#include "tlColour.hpp"
#include "tlTarga.hpp"
#include "tlImageQuantizer.hpp"
#include "tlPoint.hpp"
#include "tlFile.hpp"
#include "tlFileByteStream.hpp"
#include "tlMemByteStream.hpp"

#include "pddi/pddienum.hpp"

static const unsigned IMAGE_VERSION_V13 = 0;
static const unsigned IMAGE_VERSION = 14000;
static const unsigned VOLUME_IMAGE_VERSION = 14000;

static const int  DEFAULT_WIDTH  = 0;
static const int  DEFAULT_HEIGHT = 0;
static const int  DEFAULT_BPP    = 32;
static const bool DEFAULT_PALETTIZED = false;
static const bool DEFAULT_ALPHA      = true;
static const int  DEFAULT_VOLUME_DEPTH = 0;

//header file for encode/decode DXT format
#include "DDSFile.h"
#include "S3_intrf.h"

typedef char** Handle;
typedef unsigned char u8;

inline bool IsPow2(int i)
{
    return (i & (i - 1)) == 0;
}

#ifdef MAC
void FixEndian(u8* src, unsigned long numBytes)
{
    unsigned char  tmp[8];  // large enough to hold a double
    unsigned long  max, i;

    if((numBytes == 0) || (numBytes == 1) || (numBytes > 8))
        return;

    max = numBytes - 1;
    for(i=0; i< numBytes; i++)
        tmp[(max - i)] = src[i];

    for(i=0; i< numBytes; i++)
        src[i] = tmp[i];
}

void ReverseDesc2Endian(DDSURFACEDESC2* pDesc2)
{
    FixEndian( (u8*)( &pDesc2->dwSize ), sizeof(DWORD));

    FixEndian( (u8*)( &pDesc2->dwFlags ), sizeof(DWORD));

    FixEndian( (u8*)( &pDesc2->dwHeight ), sizeof(DWORD) );

    FixEndian( (u8*)( &pDesc2->dwWidth ), sizeof(DWORD) );

    FixEndian( (u8*)( &pDesc2->dwLinearSize ), sizeof(DWORD) );

    FixEndian( (u8*)( &pDesc2->dwBackBufferCount ), sizeof(DWORD) );
    FixEndian( (u8*)( &pDesc2->dwMipMapCount ), sizeof(DWORD) );
    FixEndian( (u8*)( &pDesc2->dwAlphaBitDepth ), sizeof(DWORD) );
    FixEndian( (u8*)( &pDesc2->dwReserved ), sizeof(DWORD) );
    FixEndian( (u8*)( &pDesc2->lpSurface ), sizeof(LPVOID) );

    FixEndian( (u8*)( &pDesc2->ddckCKDestOverlay.dwColorSpaceLowValue  ), sizeof(DWORD) );
    FixEndian( (u8*)( &pDesc2->ddckCKDestOverlay.dwColorSpaceHighValue ), sizeof(DWORD) );

    FixEndian( (u8*)( &pDesc2->ddckCKDestBlt.dwColorSpaceLowValue  ), sizeof(DWORD) );
    FixEndian( (u8*)( &pDesc2->ddckCKDestBlt.dwColorSpaceHighValue ), sizeof(DWORD) );

    FixEndian( (u8*)( &pDesc2->ddckCKSrcOverlay.dwColorSpaceLowValue  ), sizeof(DWORD) );
    FixEndian( (u8*)( &pDesc2->ddckCKSrcOverlay.dwColorSpaceHighValue ), sizeof(DWORD) );

    FixEndian( (u8*)( &pDesc2->ddckCKSrcBlt.dwColorSpaceLowValue  ), sizeof(DWORD) );
    FixEndian( (u8*)( &pDesc2->ddckCKSrcBlt.dwColorSpaceHighValue ), sizeof(DWORD) );

    FixEndian( (u8*)( &pDesc2->ddpfPixelFormat.dwSize            ), sizeof(DWORD) );
    FixEndian( (u8*)( &pDesc2->ddpfPixelFormat.dwFlags           ), sizeof(DWORD) );
    FixEndian( (u8*)( &pDesc2->ddpfPixelFormat.dwFourCC          ), sizeof(DWORD) );
    FixEndian( (u8*)( &pDesc2->ddpfPixelFormat.dwRGBBitCount     ), sizeof(DWORD) );
    FixEndian( (u8*)( &pDesc2->ddpfPixelFormat.dwRBitMask        ), sizeof(DWORD) );
    FixEndian( (u8*)( &pDesc2->ddpfPixelFormat.dwGBitMask        ), sizeof(DWORD) );
    FixEndian( (u8*)( &pDesc2->ddpfPixelFormat.dwBBitMask        ), sizeof(DWORD) );
    FixEndian( (u8*)( &pDesc2->ddpfPixelFormat.dwRGBAlphaBitMask ), sizeof(DWORD) );

    FixEndian( (u8*)( &pDesc2->ddsCaps.dwCaps                    ), sizeof(DWORD) );
    FixEndian( (u8*)( &pDesc2->ddsCaps.dwCaps2                   ), sizeof(DWORD) );
    FixEndian( (u8*)( &pDesc2->ddsCaps.dwCaps3                   ), sizeof(DWORD) );
    FixEndian( (u8*)( &pDesc2->ddsCaps.dwCaps4                   ), sizeof(DWORD) );

    FixEndian( (u8*)( &pDesc2->dwTextureStage                    ), sizeof(DWORD) );
}

void ReverseCmpColorBlocks( char* pData, int size )
{

    unsigned char* pClr;

    int i;

    pClr = (unsigned char*)pData;

    // flip each 4x4 texel block
    for( i=0; i< size; i += 8 )
    {
        // flip both 16b colors
        FixEndian( pClr, 2 );
        pClr+= 2;

        FixEndian( pClr, 2 );
        pClr+= 2;

        // flip texel block
        FixEndian( pClr, 4 );
        pClr += 4;
    }

}

#else // !MAC
void FixEndian(u8* src, unsigned long numBytes)
{
}

void ReverseDesc2Endian(DDSURFACEDESC2* pDesc2)
{
}

void ReverseCmpColorBlocks( char* pData, int size )
{
}
#endif // !ENDIAN


static Handle AllocateMemory(long lSize)
{
    Handle hMemory = 0;
    char* pMemory = (char*) malloc(lSize);
    if(pMemory)
    {
        hMemory = (char** )malloc(sizeof(char*));
        *hMemory = pMemory;
    }

    return hMemory;
}

static void FreeMemory(Handle hMemory)
{
    free(*hMemory);
    free(hMemory);
}


static Handle ReadDDSFile( tlFile &fp, DDSURFACEDESC2* pSurfaceDesc, tlImageFormat &frmt )
{

    DWORD dwFileHeader;
    char* pTexture;
    Handle hTexture;
    long fSize;


    // Read the fileheader
    fp.GetBytes( &dwFileHeader,  sizeof(DWORD) );
    FixEndian( (u8*)&dwFileHeader, sizeof(DWORD));

    if(dwFileHeader != DDS_HEADER)      //not a DDS file
    {
        return 0;
    }

    // Read the surface description
    fp.GetBytes( pSurfaceDesc, sizeof(DDSURFACEDESC2) );

    // flip all the 'desc2' data members from little to big-end
    ReverseDesc2Endian(pSurfaceDesc);

    switch( pSurfaceDesc->ddpfPixelFormat.dwFourCC )
    {
        case FOURCC_DXT1:
            frmt = IMG_DXT1;
            break;

        case FOURCC_DXT2:
            frmt = IMG_DXT2;
            break;

        case FOURCC_DXT3:
            frmt = IMG_DXT3;
            break;

        case FOURCC_DXT4:
            frmt = IMG_DXT4;
            break;

        case FOURCC_DXT5:
            frmt = IMG_DXT5;
            break;

    }
    // allocate a buffer for the texture
    if( pSurfaceDesc->dwFlags & DDSD_LINEARSIZE )
    {
        hTexture = AllocateMemory(pSurfaceDesc->dwLinearSize);
        fSize = pSurfaceDesc->dwLinearSize;
    } else {
        hTexture = AllocateMemory( pSurfaceDesc->dwLinearSize * pSurfaceDesc->dwHeight );
        fSize = pSurfaceDesc->dwLinearSize*pSurfaceDesc->dwHeight;
    }

    if(hTexture == NULL)
    {
        return 0;
    }

    pTexture = (char*)*hTexture;

    // read the input file
    fp.GetBytes(pTexture, fSize );

    // We don't need to endian flip the 3B argb color blocks
    // as we can simply flip the color masks instead

    return hTexture;
}

//*****************************************************************************
// tlImage
//*****************************************************************************
tlImage::tlImage():
    format(IMG_PNG),
    reference(NULL),
    pixeldata(NULL),
    rawClrUsed(0),
    palette(NULL),
    filedata(NULL),
    filedatasize(0),
    quickSave(false)
{
    SetAttributes(DEFAULT_WIDTH, DEFAULT_HEIGHT, DEFAULT_BPP,
                  DEFAULT_PALETTIZED, DEFAULT_ALPHA);
}

tlImage::tlImage(int w, int h, int b, bool ispal, bool alpha,
                 const unsigned char* const* pixels, const unsigned char* pal):
    format(IMG_PNG),
    reference(NULL),
    pixeldata(NULL),
    rawClrUsed(0),
    palette(NULL),
    filedata(NULL),
    filedatasize(0),
    quickSave( false )
{
    SetAttributes(w, h, b, ispal, alpha, pixels, pal);
}

tlImage::tlImage(const tlImage& img):
    format(IMG_PNG),
    reference(NULL),
    pixeldata(NULL),
    rawClrUsed(0),
    palette(NULL),
    filedata(NULL),
    filedatasize(0),
    quickSave( false )
{
    *this = img;
}

tlImage::tlImage(tlFile &fp):
    format(IMG_PNG),
    reference(NULL),
    pixeldata(NULL),
    rawClrUsed(0),
    palette(NULL),
    filedata(NULL),
    filedatasize(0),
    quickSave( false )
{
    SetAttributes(DEFAULT_WIDTH, DEFAULT_HEIGHT, DEFAULT_BPP,
                  DEFAULT_PALETTIZED, DEFAULT_ALPHA);
    Load(fp);
}

tlImage::tlImage(const char* filename_ref):
    format(IMG_PNG),
    reference(NULL),
    pixeldata(NULL),
    rawClrUsed(0),
    palette(NULL),
    filedata(NULL),
    filedatasize(0),
    quickSave( false )
{
    SetAttributes(DEFAULT_WIDTH, DEFAULT_HEIGHT, DEFAULT_BPP,
                  DEFAULT_PALETTIZED, DEFAULT_ALPHA);
    SetReference(filename_ref);
}

tlImage::tlImage(tlDataChunk* ch):
    format(IMG_PNG),
    reference(NULL),
    pixeldata(NULL),
    rawClrUsed(0),
    palette(NULL),
    filedata(NULL),
    filedatasize(0),
    quickSave( false )
{
    LoadFromChunk(ch);
}

void
tlImage::FlushFileData()
{
    delete[] filedata;
    filedata = NULL;
    filedatasize = 0;
}

void
tlImage::SetFileData(const unsigned char* data, int size)
{
    FlushFileData();
    filedata = new unsigned char[size];
    filedatasize = size;
    memcpy(filedata, data, filedatasize);
}

void tlImage::Cleanup()
{
    delete[] reference;
    reference = NULL;

    if (pixeldata != NULL)
    {
        for (int y = 0; y < height; ++y)
        {
            delete[] pixeldata[y];
        }
        delete[] pixeldata;
        pixeldata = NULL;
    }

    delete[] palette;
    palette = NULL;

    FlushFileData();

    width  = DEFAULT_WIDTH;
    height = DEFAULT_HEIGHT;
    bpp    = DEFAULT_BPP;
    palettized = DEFAULT_PALETTIZED;
    hasalpha   = DEFAULT_ALPHA;
}

tlImage::~tlImage()
{
    Cleanup();
}

// Return the bit depth required to store the alpha data for this image.
// This is either 0, 1, 4, or 8.
int 
tlImage::GetRealAlphaDepth() const
{
    if(!hasalpha)
    {
        return 0;
    }

    int depth = 0;

    bool useAlpha[256];
    int i;
    for( i = 0; i < 256; i++ ) useAlpha[i] = false;

    if(palettized)
    {
        for( i = 0; i < GetPaletteCount(); i++ )
        {
            tlColour col = GetPaletteEntry(i);
            int alphaVal = col.AlphaCh();
            assert( alphaVal >= 0 && alphaVal <= 255 );

            useAlpha[alphaVal] = true;
        }
    } else {
        for( int x = 0; x < width; x++ )
        {
            for( int y = 0; y < height; y++ )
            {
                tlColour col = GetPixel(x,y);
                int alphaVal = col.AlphaCh();
                assert( alphaVal >= 0 && alphaVal <= 255 );

                useAlpha[alphaVal] = true;
            }
        }
    }

    // Count the number of distinct alpha values in the image.
    int alphaCount = 0;
    for( i = 0; i < 256; i++ )
    {
        if( useAlpha[i] )
        {
            alphaCount++;
        }
    }

    if( alphaCount == 1 && useAlpha[255] )
    {
        depth = 0;  // No alpha utilized
    }
    else if( ( alphaCount == 1 && useAlpha[0] ) ||
             ( alphaCount == 2 && useAlpha[0] && useAlpha[255] ) )
    {
        depth = 1;  // pixels are fully transparent or fully opaque
    }
    else if( alphaCount < 16 )
    {
        depth = 4;  // 4 bits
    }
    else
    {
        depth = 8;
    }
    
    return depth;
}


void
tlImage::SetFormat(tlImageFormat fmt)
{
    if(format != fmt) 
    {
        FlushFileData(); 
        format = fmt; 
    }
}

void 
tlImage::SetPS2Format()
{
    tlImageFormat newformat = format;
    switch(bpp)
    {
        case 4:
            newformat = IMG_PS2_4BIT;
            break;
        case 8:
            newformat = IMG_PS2_8BIT;
            break;
        case 16:
            newformat = IMG_PS2_16BIT;
            break;
        case 24:
            FlushFileData();
            Convert(32,false,false);
            // fallthrough
        case 32:
            newformat = IMG_PS2_32BIT;
            break;
    }

    if(format != newformat)
    {
        FlushFileData();
        format = newformat;
    }
}

void 
tlImage::SetGCFormat(void)
{
    tlImageFormat newformat = format;
    switch(bpp)
    {
        case 4:
            newformat = IMG_GC_4BIT;
            break;
        case 8:
            newformat = IMG_GC_8BIT;
            break;
        case 16:
            newformat = IMG_GC_16BIT;
            break;
        case 24:
            FlushFileData();
            Convert(32,false,false);
            // fallthrough
        case 32:
            newformat = IMG_GC_32BIT;
            break;
    }

    if(format != newformat)
    {
        FlushFileData();
        format = newformat;
    }
}


void 
tlImage::SetPalettized( bool flag )
{ 
    if(palettized != flag)
    {
        FlushFileData(); 
        palettized = flag; 
    }
}

int 
tlImage::GetPaletteCount() const
{
    if (!palettized)
        return 0;

    return (1 << bpp);
}

int tlImage::GetPaletteSize() const
{
    return (GetPaletteCount() * 4);
}

int tlImage::GetScanlineSize( bool bAlignToDWORD ) const
{
    int rc = (width * bpp / 8);

    // Very small bitmaps may yield a scanline size of 0 -- compensate here.
    if ( rc == 0 ) rc++;

    // need extra byte if 4bpp and odd width
    if ((bpp < 8) && ((width & 0x01) != 0))
    {
        ++rc;
    }

    if ( bAlignToDWORD )
    {
        if ( (rc % 4) != 0)
        {
            rc += (4 - (rc % 4));
        }
    }

    return rc;
}


// tlImage external image file references
// ======================================

const char* tlImage::GetReference() const
{
    return reference;
}

void tlImage::SetReference(const char* filename)
{
    if (filename != NULL)
    {
        int len = strlen(filename);

        if (len > 0)
        {
            ++len;
            reference = new char [len];
            memcpy(reference, filename, len);
        }
    }
}

bool tlImage::Dereference()
{
    if (reference)
    {
        tlFileByteStream* fstream = new tlFileByteStream(reference, omREAD);

        if (fstream->IsOpen())
        {
            tlFile fp(fstream, tlFile::FROMFILE);
            if (Load(fp))
            {
                delete[] reference;
                reference = NULL;
                return true;
            }
            else
            {
                return false;
            }
        }
        else
        {
            delete fstream;
            return false;
        }
    }

    return true;
}


// tlImage attributes
// ==================

void tlImage::SetPixels(const unsigned char* const* pixels)
{
    int scanline_size = GetScanlineSize();

    for (int y = 0; y < height; ++y)
    {
        memcpy(pixeldata[y], pixels[y], scanline_size);
    }
   
    FlushFileData();
}

void tlImage::SetPixels(const unsigned char* pixels)
{
    int scanline_size = GetScanlineSize();
    const unsigned char* pixel_ptr = pixels;

    for (int y = 0; y < height; ++y)
    {
        memcpy(pixeldata[y], pixel_ptr, scanline_size);
        pixel_ptr += scanline_size;
    }

    FlushFileData();
}

void tlImage::SetPalette(const unsigned char* pal)
{
    memcpy(palette, pal, GetPaletteSize());
    FlushFileData();
}

// This function sets the key image attributes.  This calls the Cleanup() function
// which deletes all image information.  In order to retain image data you must
// pass pointers to the pixel and palette data.
void tlImage::SetAttributes(int w, int h, int b,
                            bool ispal, bool alpha,
                            const unsigned char* const* pixels,
                            const unsigned char* pal)
{
    Cleanup();

    width = w;
    height = h;
    bpp = b;
    palettized = ispal || (bpp < 8);

    if(bpp == 24)
    {
        hasalpha = false;  // 24 bit image never has alpha.
    }
    else if(bpp == 32)
    {
        hasalpha = true;   // 32 bit image always has alpha.
    }
    else
    {
        hasalpha = alpha;  // 1-16 bit image may or may not alpha.
    }

    if (height > 0)
    {
        pixeldata = new unsigned char* [height];

        int scanline_size = GetScanlineSize();
        for (int y = 0; y < height; ++y)
        {
            pixeldata[y] = new unsigned char [scanline_size];
            memset( pixeldata[y], 0xff, scanline_size );
        }

        if (pixels)
        {
            SetPixels(pixels);
        }
    }

    if (palettized)
    {
        palette = new unsigned char [GetPaletteSize()];

        if (pal)
        {
            SetPalette(pal);
        }
        else
        {
            // No pixel data available set set palette to white.
            ClearPalette();
        }
    }
}

tlImage& tlImage::operator = (const tlImage& image)
{
    FlushFileData();
    SetName(image.GetName());

    SetAttributes(image.GetWidth(), image.GetHeight(), image.GetBpp(),
                  image.IsPalettized(), image.HasAlpha(),
                  image.GetPixels(), image.GetPalette());

    format = image.GetFormat();
    SetReference(image.GetReference());
    if(image.filedatasize)
    {
        SetFileData(image.filedata, image.filedatasize);
    }

    return *this;
}

void tlImage::Convert(int newBpp, bool isPal, bool alpha, bool dither)
{
    FlushFileData();
    if (isPal)
    {
        tlImage *originalImage = NULL;
        if (dither)
        {
            originalImage = new tlImage(*this);
        }
        tlImageQuantizer iq;
        iq.SetColourKeyActive(false);
        iq.Quantize(this, newBpp);
        if (dither)
        {
            Dither(*originalImage);
        }
        delete originalImage;
    }
    else
    {
        tlImage image(GetWidth(), GetHeight(), newBpp, false, alpha);

        for (int y = 0; y < GetHeight(); ++y)
        {
            for (int x = 0; x < GetWidth(); ++x)
            {
                image.SetPixel(x, y, GetPixel(x, y));
            }
        }

        SetAttributes(image.GetWidth(), image.GetHeight(), image.GetBpp(),
                      image.IsPalettized(), image.HasAlpha(),
                      image.GetPixels(), image.GetPalette());
    }
}

/* used to resize the image to the new dimensions while preserving as much of the original image
   as possible (new pixels will be set to index 0 if palettized otherwise it will be (0,0,0,0)
*/
void tlImage::Resize(int newWidth, int newHeight)
{
    FlushFileData();
    tlImage image(newWidth, newHeight, bpp, palettized, hasalpha);

    int minWidth = (width < newWidth) ? width : newWidth;
    int minHeight = (height < newHeight) ? height : newHeight;
    int scanline_size = minWidth * bpp / 8;
   
    if (palettized)
    {
        image.SetPalette(palette);
        image.Fill(0);
    }
    else
    {
        image.Fill(tlColour(0, 0, 0));
    }

    unsigned char** newPixelData = image.GetPixels();
    for (int y = 0; y < minHeight; ++y)
    {
        memcpy(newPixelData[y], pixeldata[y], scanline_size);
    }

    SetAttributes(image.GetWidth(), image.GetHeight(), image.GetBpp(),
                  image.IsPalettized(), image.HasAlpha(),
                  image.GetPixels(), image.GetPalette());
}


// Dither a palettized image to reduce banding.  
// Use the Floyd-Steinberg dithering algorithm to reduce the overall 
// colour error by propogating the error to neighboring pixels.
void tlImage::Dither(const tlImage &sourceImage)
{
    if (!palettized)
    {
        return;
    }

    tlImage errImg( sourceImage );  // This is the source image modified to disperse
                                    // the error due to using colour palette.

    errImg.Convert( 32, false, true ); // In case it was previously indexed.

    for( int y = 0; y < GetHeight(); ++y )
    {
        for( int x = 0; x < GetWidth(); ++x )
        {
            unsigned char errCol[4];        // A single pixel value of errImg.
            errImg.GetPixel( x, y, errCol );

            // The current pixel is the indexed colour closest to the pixel 
            // value with propogated error.
            int currentIndex = MatchColour( errCol );
            tlColour current = GetPaletteEntry( currentIndex );
            SetPixelIndex( x, y, currentIndex );

            // Now find the error in using current and propogate the error
            // to neighboring pixels
            tlColour error = errImg.GetPixel( x, y ) - current;

            tlColour tmpColour;
            // Add 3/8 error to pixel above.
            if( y + 1 < GetHeight() )
            {
                tmpColour = errImg.GetPixel( x, y + 1 ) + error * 0.375f;
                tmpColour.Clamp();
                errImg.SetPixel( x, y + 1, tmpColour );
            }

            // Add 3/8 error to pixel right.
            if( x + 1 < GetWidth() )
            {
                tmpColour = errImg.GetPixel( x + 1, y ) + error * 0.375f;
                tmpColour.Clamp();
                errImg.SetPixel( x + 1, y, tmpColour );
            }

            // Add 1/4 error to pixel above and right.
            if( ( y + 1 < GetHeight() ) && ( x + 1 < GetWidth() ) )
            {
                tmpColour = errImg.GetPixel( x + 1 , y + 1 ) + error * 0.25f;
                tmpColour.Clamp();
                errImg.SetPixel( x + 1, y + 1, tmpColour );
            }
        }
    }
}

void 
tlImage::Flip()
{
    FlushFileData();
    tlImage image(GetHeight(), // swap width and height
                  GetWidth(),
                  GetBpp(), 
                  IsPalettized(),
                  HasAlpha(),
                  NULL,
                  GetPalette());

    int height = GetHeight();
    int width = GetWidth();
    for (int y = 0; y < height; y++)
    {
        for (int x = 0; x < width; x++)
        {
            if(palettized)
            {
                image.SetPixelIndex(y, x, GetPixelIndex((width - x) - 1, (height-y) - 1));
            } else {
                image.SetPixel(y, x, GetPixel((width - x) - 1, (height-y) - 1));
            }
        }
    }

    SetAttributes(image.GetWidth(), image.GetHeight(), image.GetBpp(),
                  image.IsPalettized(), image.HasAlpha(),
                  image.GetPixels(), image.GetPalette());
}

tlColour tlImage::GetPixel(int x, int y) const
{
    union
    {
        // Bit order of uc4 and ul set to match ppdiColour
        unsigned char uc4[4]; // { 0xbb, 0xgg, 0xrr, 0xaa }
        unsigned long ul;     // 0xaarrggbb
    } tmp;

    GetPixel(x, y, tmp.uc4);

    return tlColour(tmp.ul);
}

void tlImage::GetPixel(int x, int y, unsigned char c[4]) const
{
    assert((x >= 0) && (x < width) &&
           (y >= 0) && (y < height));

    if (reference)
    {
        const_cast<tlImage*>(this)->Dereference();
    }

    switch(bpp)
    {
        case 4:
        {
            // Assume it's palettized!
            int index = pixeldata[y][x / 2];

            if ((x & 1) == 0) // if x is even
            {
                index >>= 4;
            }
            index &= 0x0f; // get index from 0-15

            index *= 4;

            memcpy(c, palette + index, 4);
        }
        break;

        case 8:
            if (palettized)
            {
                // 8 bit CLUT
                int index = pixeldata[y][x];
                index *= 4;

                memcpy(c, palette + index, 4);
            }
            else if (hasalpha)
            {
                // assume its an 8-bit alpha map
                memset(c, 0x0ff, 3);
                c[3] = pixeldata[y][x];
            }
            else
            {
                // assume its a grayscale 8-bit image
                unsigned char level = pixeldata[y][x];
                memset(c, level, 3);
                c[3] = 255;
            }
            break;

        case 24:
        {
            // alpha & palette should NOT be on!
            memcpy(c, pixeldata[y] + (x * 3), 3);
            c[3] = 255;
        }
        break;

        case 32:
        {
            // palette should NOT be on!
            memcpy(c, pixeldata[y] + (x * 4), 4);
        }
        break;
    }
}

int
tlImage::GetIndex(int x, int y) const
{
    assert((x >= 0) && (x < width) &&
           (y >= 0) && (y < height));

    if (reference)
    {
        const_cast<tlImage*>(this)->Dereference();
    }

    switch(bpp)
    {
        case 4:
        {
            // Assume it's palettized!
            int index = pixeldata[y][x / 2];

            if ((x & 1) == 0) // if x is even
            {
                index >>= 4;
            }
            index &= 0x0f; // get index from 0-15

            index *= 4;
            return index;
        }
        break;

        case 8:
            if (palettized)
            {
                // 8 bit CLUT
                int index = pixeldata[y][x];
                index *= 4;

                return index;
            }
            break;
        case 24:
        case 32:
            break;
    }
    return 0;
}

void tlImage::SetPixel(int x, int y, tlColour colour)
{
    FlushFileData();
    union
    {
        // Bit order of uc4 and ul set to match ppdiColour
        unsigned char uc4[4]; // { 0xbb, 0xgg, 0xrr, 0xaa }
        unsigned long ul;     // 0xaarrggbb
    } tmp;

    tmp.ul = colour.ULong();

    SetPixel(x, y, tmp.uc4);
}

void tlImage::SetPixel(int x, int y, const unsigned char c[4])
{
    FlushFileData();
    assert((x >= 0) && (x < width) &&
           (y >= 0) && (y < height));

    if (reference)
    {
        Dereference();
    }

    switch(bpp)
    {
        case 4:
        {
            int idx = MatchColour(c);

            if (idx >= 0)
            {
                SetPixelIndex(x, y, idx);
            }
        }
        break;

        case 8:
            if (palettized)
            {
                int idx = MatchColour(c);

                if (idx >= 0)  // we found a matching palette entry
                {
                    pixeldata[y][x] = idx;
                }
            }
            else if (hasalpha)
            {
                // grab the alpha channel
                pixeldata[y][x] = c[3];
            }
            else
            {
                // just do a simple average of the channels
                // - we could use gamma weighting, but then we run
                //   into some reversibility issues with GetPixel()
                int level = c[0] + c[1] + c[2];
                level /= 3;
                pixeldata[y][x] = level;
            }
            break;

        case 24:
        {
            memcpy(pixeldata[y] + (x * 3), c, 3);
        }
        break;

        case 32:
        {
            memcpy(pixeldata[y] + (x * 4), c, 4);
        }
        break;
    }
}

int tlImage::GetPixelIndex(int x, int y) const
{
    assert((x >= 0) && (x < width) &&
           (y >= 0) && (y < height));

    if (!palettized)
        return -1;

    switch(bpp)
    {
        case 4:
        {
            int index = pixeldata[y][x / 2];

            if ((x & 1) == 0) // if x is even
            {
                index >>= 4;
            }
            index &= 0x0f; // get index from 0-15

            return index;
        }

        case 8:
            return pixeldata[y][x];
    }

    return -1;
}

void tlImage::SetPixelIndex(int x, int y, int index)
{
    FlushFileData();
    assert((x >= 0) && (x < width) &&
           (y >= 0) && (y < height));

    if (!palettized)
        return;

    assert((index >= 0) && (index < GetPaletteCount()));

    if (reference)
    {
        Dereference();
    }

    switch(bpp)
    {
        case 4:
        {
            unsigned char* pixelbyte = pixeldata[y] + (x / 2);

            if ((x & 1) == 0) // x is even
            {
                *pixelbyte &= 0x0f;
                *pixelbyte |= (index << 4);
            }
            else
            {
                *pixelbyte &= 0x0f0;
                *pixelbyte |= index;
            }
        }
        break;

        case 8:
            pixeldata[y][x] = index;
            break;
    }
}

// Set the palette to white.
void tlImage::ClearPalette()
{
    memset( palette, 0xff, GetPaletteSize() );
}

// This code is horribly endian dependant

tlColour tlImage::GetPaletteEntry(int i) const
{
    union
    {
        // Bit order of uc4 and ul set to match ppdiColour
        unsigned char uc4[4]; // { 0xbb, 0xgg, 0xrr, 0xaa }
        unsigned long ul;     // 0xaarrggbb
    } tmp;

    GetPaletteEntry(i, tmp.uc4);

    return tlColour(tmp.ul);
}

void tlImage::GetPaletteEntry(int i, unsigned char c[4]) const
{
    if (!palettized)
        return;

    assert((i >= 0) && (i < GetPaletteCount()));

    memcpy(c, palette + (i * 4), 4 * sizeof(unsigned char));
}

void tlImage::SetPaletteEntry(int i, tlColour colour)
{
    unsigned char c[4] =
        {
            colour.BlueCh(),
            colour.GreenCh(),
            colour.RedCh(),
            colour.AlphaCh()
        };

    SetPaletteEntry(i, c);
}

void tlImage::SetPaletteEntry(int i, const unsigned char c[4])
{
    FlushFileData();
    if (!palettized)
        return;

    assert((i >= 0) && (i < GetPaletteCount()));

    memcpy(palette + (i * 4), c, 4 * sizeof(unsigned char));
}

int tlImage::GetNumColorsUsed() const
{
    std::set< tlColour > allColors;

    int resX = this->GetWidth();
    int resY = this->GetHeight();
    int x; 
    int y;
    for( x = 0; x < resX; x++ )
    {
        for( y = 0; y < resY; y++ )
        {
            tlColour pixel = this->GetPixel( x, y );
            allColors.insert( pixel );
        }
    }
    return allColors.size();
}

void tlImage::Clear()
{
    FlushFileData();
    if (palettized)
    {
        int index = MatchColour(tlColour(0, 0, 0));
        if (bpp < 8)
        {
            index = (index << 4) | index;
        }
        int scanline_size = GetScanlineSize();
        for (int y = 0; y < height; ++y)
        {
            memset(pixeldata[y], index, scanline_size);
        }
    }
    else
    {
        if (bpp == 32)
        {
            unsigned char black[4] = { 0, 0, 0, 255 };

            for (int y = 0; y < height; ++y)
            {
                for (int x = 0; x < height; ++x)
                {
                    SetPixel(x, y, black);
                }
            }
        }
        else
        {
            int scanline_size = GetScanlineSize();
            for (int y = 0; y < height; ++y)
            {
                memset(pixeldata[y], 0, scanline_size);
            }
        }
    }
}

void tlImage::Fill(tlColour colour)
{
    union
    {
        // Bit order of uc4 and ul set to match ppdiColour
        unsigned char uc4[4]; // { 0xbb, 0xgg, 0xrr, 0xaa }
        unsigned long ul;     // 0xaarrggbb
    } tmp;

    tmp.ul = colour.ULong();

    Fill(tmp.uc4);
}

void tlImage::Fill(const unsigned char c[4])
{
    FlushFileData();
    if (palettized)
    {
        int index = MatchColour(c);
        if (bpp < 8)
        {
            index = (index << 4) | index;
        }
        int scanline_size = GetScanlineSize();
        for (int y = 0; y < height; ++y)
        {
            memset(pixeldata[y], index, scanline_size);
        }
    }
    else
    {
        for (int y = 0; y < height; ++y)
        {
            for (int x = 0; x < width; ++x)
            {
                SetPixel(x, y, c);
            }
        }
    }
}

void tlImage::Fill(int index)
{
    FlushFileData();
    if (!palettized)
        return;

    assert((index >= 0) && (index < GetPaletteCount()));

    if (bpp == 4)
    {
        index = (index << 4) | index;
    }
    int scanline_size = GetScanlineSize();

    for (int y = 0; y < height; ++y)
    {
        memset(pixeldata[y], index, scanline_size);
    }
}

void tlImage::CopyRegion(tlImage* srcImg, int sx, int sy, int sw, int sh, int dx, int dy)
{
    assert((sx >= 0) && (sx+sw <= srcImg->GetWidth()));
    assert((sy >= 0) && (sy+sh <= srcImg->GetHeight()));

    if (reference)
    {
        Dereference();
    }
    if (srcImg->GetReference())
    {
        srcImg->Dereference();     
    }
   
    // clip the blit
    if(dx < 0) 
    {
        sx -= dx;
        sw += dx;
        dx = 0;
    }
    if(dy < 0)
    {
        sy -= dy;
        sh += dy;
        dy = 0;
    }
    if(dx+sw > width)
    {
        sw -= ((dx+sw)-width);
    }
    if(dy+sh > height)
    {
        sh -= ((dy+sh)-height);
    }
    if((sw < 1) || (sh < 1)) 
    {
        return;   
    }

    if (srcImg->IsPalettized())
    {
        for (int y = 0; y < sh; y++)
        {
            for (int x = 0; x< sw; x++)
            {
                int index;
                index = srcImg->GetPixelIndex(sx+x,sy+y);
                if (palettized)
                {
                    SetPixelIndex(dx+x,dy+y,index);
                }
                else
                {
                    SetPixel(dx+x,dy+y,srcImg->GetPaletteEntry(index));
                }
            }
        }
    }
    else
    {
        for (int y = 0; y < sh; y++)
        {
            for (int x = 0; x< sw; x++)
            {
                tlColour colour;
                colour = srcImg->GetPixel(sx+x,sy+y);
                SetPixel(dx+x,dy+y,colour);
            }
        }
    }

/*
  if(srcImg->GetPixels() && pixeldata)
  {
  unsigned char** src = srcImg->pixeldata;
  unsigned char** dest = pixeldata;

  switch (srcImg->GetBpp())      
  {
  case 32:
  {
  switch (bpp)
  {
  case 32:
  {
  for(int y=0; y < sh; y++)
  {
  memcpy(dest[dy+y], src[sy+y], sw);
  }
  break;
  }
  case 24:
  {
  for (int y = 0; y < sh; y++)
  {
  for (int x
  }
  }
  }
  break;
  }
  case 24:
  {
  memcpy(dest[dy+i] + (x * 3), src[sy+i], 3);
  break;
  }
  }
  }
*/
}

// tlImage generic loading/saving functions
// ========================================

bool tlImage::Load(tlFile &fp)
{
    tlImageFormat fmt = DetectFormat(fp);
    if(fmt == IMG_OTHER || fmt == IMG_INVALID || fmt == IMG_UNKNOWN)
    {
        return false;
    }
        
    return Load(fmt, fp);
}

bool tlImage::Load(tlImageFormat fmt, tlFile &fp)
{
    Cleanup();

    bool rc = false;

    switch (fmt)
    {
        case IMG_RAW:
            rc = LoadRAW(fp);
            break;

        case IMG_PNG:
            rc = LoadPNG(fp);
            break;

        case IMG_TGA:
            rc = LoadTGA(fp);
            break;

        case IMG_BMP:
            rc = LoadBMP(fp);
            break;

        case IMG_DXT:
        case IMG_DXT1:
        case IMG_DXT2:
        case IMG_DXT3:
        case IMG_DXT4:
        case IMG_DXT5:
            rc = LoadDXT( fp );
            break;

        case IMG_IPU:
            rc = false;
            break;

        case IMG_PS2_4BIT:
        case IMG_PS2_8BIT:
        case IMG_PS2_16BIT:
        case IMG_PS2_32BIT:
            rc = LoadPS2(fp);
            break;

        case IMG_GC_4BIT:
        case IMG_GC_8BIT:
        case IMG_GC_16BIT:
        case IMG_GC_32BIT:
            rc = LoadGC(fp);
            break;
    }

    if (!rc)
    {
        Cleanup();
    }

    return rc;
}

bool tlImage::Save(tlImageFormat fmt, tlFile &fp) const
{
    if (reference)
    {
        const_cast<tlImage*>(this)->Dereference();
    }

    switch (fmt)
    {
        case IMG_RAW:
            return SaveRAW(fp);

        case IMG_PNG:
            return SavePNG(fp);

        case IMG_TGA:
            return SaveTGA(fp);

        case IMG_BMP:
            return SaveBMP(fp);

        case IMG_DXT1:
            if( quickSave )
                return SaveDXTQuick( fp, DXT1 );
            else
                return SaveDXT( fp, DXT1 );

        case IMG_DXT3:
            if( quickSave )
                return SaveDXTQuick( fp, DXT1 );
            else
                return SaveDXT( fp, DXT3 );

        case IMG_DXT5:
            if( quickSave )
                return SaveDXTQuick( fp, DXT1 );
            else
                return SaveDXT( fp, DXT5 );

        case IMG_PS2_4BIT:
        case IMG_PS2_8BIT:
        case IMG_PS2_16BIT:
        case IMG_PS2_32BIT:
            return SavePS2( fp );

        case IMG_GC_4BIT:
        case IMG_GC_8BIT:
        case IMG_GC_16BIT:
        case IMG_GC_32BIT:
            return SaveGC( fp );


        default:
            assert("tlImage unknown format" == 0);
            return false;
    }
}

bool tlImage::Load(tlImageFormat fmt, const char* filename)
{
    tlFileByteStream* fstream = new tlFileByteStream(filename, omREAD);

    if (fstream->IsOpen())
    {
        tlFile fp(fstream, tlFile::FROMFILE);
        return Load(fmt, fp);
    }
    else
    {
        delete fstream;
        return false;
    }
}

bool tlImage::Load(const char* filename)
{
    tlFileByteStream* fstream = new tlFileByteStream(filename, omREAD);

    if (fstream->IsOpen())
    {
        tlFile fp(fstream, tlFile::FROMFILE);
        return Load(fp);
    }
    else
    {
        delete fstream;
        return false;
    }
}

bool tlImage::Save(tlImageFormat fmt, const char* filename) const
{
    tlFileByteStream* fstream = new tlFileByteStream(filename, omWRITE);

    if (fstream->IsOpen())
    {
        tlFile fp(fstream, tlFile::CHUNK32);
        return Save(fmt, fp);
    }
    else
    {
        delete fstream;
        return false;
    }
}

bool tlImage::Save(tlImageFormat fmt) const
{
    char filename[P3DMAXNAME];
    strcpy(filename, GetName());
    ForceExtension(filename, GetFileExtension(fmt));

    tlFileByteStream* fstream = new tlFileByteStream(filename, omWRITE);

    if (fstream->IsOpen())
    {
        tlFile fp(fstream, tlFile::CHUNK32);
        return Save(fmt, fp);
    }
    else
    {
        delete fstream;
        return false;
    }
}


// tlImage PNG loading/saving functions
// ====================================

static void user_error_fn(png_structp png_ptr, png_const_charp string)
{
    printf("PNG ERROR: %s\n", string);
    exit(-1);
}

static void user_warning_fn(png_structp png_ptr, png_const_charp string)
{
    printf("PNG WARNING: %s\n", string);
}

static void user_read_data(png_structp read_ptr, png_bytep data, unsigned int length)
{
    tlFile* fp = (tlFile*)png_get_io_ptr(read_ptr);
    fp->GetBytes(data, length);
}

bool tlImage::LoadPNG(tlFile &fp)
{
    png_structp read_ptr = png_create_read_struct(PNG_LIBPNG_VER_STRING,
                                                  NULL,
                                                  user_error_fn,
                                                  user_warning_fn);
    if (!read_ptr)
        return false;

    png_infop info_ptr = png_create_info_struct(read_ptr);
    if (!info_ptr)
    {
        png_destroy_read_struct(&read_ptr, NULL, NULL);
        return false;
    }

    png_infop end_ptr = png_create_info_struct(read_ptr);
    if (!end_ptr)
    {
        png_destroy_read_struct(&read_ptr, &info_ptr, NULL);
        return false;
    }

    png_set_read_fn(read_ptr, &fp, user_read_data);

    png_read_info(read_ptr, info_ptr);

    // Get the initial info on the image
    int channel_bit, color_type;

    png_get_IHDR(read_ptr, info_ptr,
                 (png_uint_32*)&width,
                 (png_uint_32*)&height,
                 &channel_bit,          // bits per colour channel
                 &color_type,           // rgb, palette, gray
                 NULL,                  // interlace type
                 NULL,                  // compression type
                 NULL);                 // filter type

    palettized = ((color_type & PNG_COLOR_MASK_PALETTE) != 0);
    hasalpha = ((color_type & PNG_COLOR_MASK_ALPHA) != 0);

    if (color_type == PNG_COLOR_TYPE_GRAY)
    {
        // All pure grayscale images will be represented
        // with at least 8 bits
        if (channel_bit < 8)
        {
            png_set_expand(read_ptr);
        }

        bpp = 8;
    }
    else if (color_type == PNG_COLOR_TYPE_GRAY_ALPHA)
    {
        // We'll up-convert gray-alpha images to RGBA
        png_set_gray_to_rgb(read_ptr);
        bpp = 32;
    }
    else if (color_type == PNG_COLOR_TYPE_PALETTE)
    {
        assert(channel_bit >= 4);
        bpp = channel_bit;
    }
    else if (color_type == PNG_COLOR_TYPE_RGB)
    {
        bpp = 24;
    }
    else if (color_type == PNG_COLOR_TYPE_RGB_ALPHA)
    {
        bpp = 32;
    }

    // We don't support 16 bit colour channels!
    if (channel_bit == 16)
    {
        png_set_strip_16(read_ptr);
    }

    // Update to reflect conversion changes
    png_read_update_info(read_ptr, info_ptr);

    int row_bytes = png_get_rowbytes(read_ptr, info_ptr);
    pixeldata = new unsigned char* [height];

    for (int y = 0; y < height; ++y)
    {
        pixeldata[y] = new unsigned char [row_bytes];
        memset( pixeldata[y], 0xff, row_bytes );
    }

    png_read_image(read_ptr, pixeldata);

    // grab the palette
    if (palettized)
    {
        int size = GetPaletteSize();
        palette = new unsigned char [size];
        ClearPalette();

        // load palette chunk
        if (png_get_valid(read_ptr, info_ptr, PNG_INFO_PLTE) > 0)
        {
            png_color* png_pal;

            png_get_PLTE(read_ptr, info_ptr, &png_pal, &size);

            for (int i = 0; i < size; ++i)
            {
                memcpy(palette + (i * 4), png_pal, 3);
                *(palette + (i * 4) + 3) = 255;
                ++png_pal;
            }
        }

        // load transparency channel for palette
        if (png_get_valid(read_ptr, info_ptr, PNG_INFO_tRNS) > 0)
        {
            png_bytep trans;
            int num_trans;

            png_get_tRNS(read_ptr, info_ptr, &trans, &num_trans, 0);

            if (num_trans > size)
                num_trans = size;

            bool hasNonOpaqueAlpha = false;
            for (int i = 0; i < num_trans; ++i)
            {
                *(palette + (i * 4) + 3) = *trans;
                if(*trans != 255)
                {
                    hasNonOpaqueAlpha = true;
                }
                ++trans;
            }

            hasalpha = hasNonOpaqueAlpha;  // Ignore opaque alpha.
        }
    }

    png_read_end(read_ptr, end_ptr);

    png_destroy_read_struct(&read_ptr, &info_ptr, &end_ptr);

    SwapChannels( 2, 1, 0 );  // Swap red and blue colour channels.

    return true;
}

bool tlImage::LoadRAW(tlFile &fp)
{
    char raw_hdr[4];
    fp.GetBytes(raw_hdr, 4);

    if (strcmp(raw_hdr, "RAW") != 0)
        return false;

    width = fp.GetLong();
    height = fp.GetLong();
    bpp = fp.GetLong();
    palettized = (fp.GetLong() != 0);
    hasalpha = (fp.GetLong() != 0);

    SetAttributes(width, height, bpp, palettized, hasalpha);

    if (palettized)
    {
        fp.GetBytes(palette, GetPaletteSize());
    }

    int scanline_size = GetScanlineSize();
    for (int y = 0; y < height; ++y)
    {
        fp.GetBytes(pixeldata[y], scanline_size);
    }

    SwapChannels( 2, 1, 0 );  // Swap red and blue colour channels.

    return true;
}

bool tlImage::LoadTGA(tlFile &fp)
{
    unsigned char id_length, has_color_map, image_type;
    palettized = false;
    fp.GetBytes(&id_length, 1);
    fp.GetBytes(&has_color_map, 1);
    fp.GetBytes(&image_type, 1);

    // we're only supporting uncompressed palettized
    // and truecolour images
    if (!((image_type == 1) || (image_type == 2)))
    {
        return false;
    }

    // fail if its a palettized image without a palette!
    if ((image_type == 1) && !has_color_map)
    {
        return false;
    }

    unsigned short cm_first_entry_index, cm_length;
    unsigned char cm_bpp;

    fp.GetBytes(&cm_first_entry_index, 2);
    fp.GetBytes(&cm_length, 2);
    fp.GetBytes(&cm_bpp, 1);

    if (has_color_map)
    {
        palettized = true;

        // only support 24 and 32bpp palette entries
        if ((cm_bpp != 24) && (cm_bpp != 32))
        {
            return false;
        }
    }

    unsigned short x_origin, y_origin,
        img_width, img_height;
    unsigned char img_bpp, img_desc;
    fp.GetBytes(&x_origin, 2);
    fp.GetBytes(&y_origin, 2);
    fp.GetBytes(&img_width, 2);
    fp.GetBytes(&img_height, 2);
    fp.GetBytes(&img_bpp, 1);
    fp.GetBytes(&img_desc, 1);

    // Note:  looks like TGA doesn't generally support 4bpp images
    if ((img_bpp != 8) && (img_bpp != 24) && (img_bpp != 32))
    {
        return false;
    }

    // we only support left->right scanlines
    if ((img_desc & 0x10) != 0)
    {
        return false;
    }

    width = img_width;
    height = img_height;
    bpp = img_bpp;
    hasalpha = (bpp == 32);

    // skip image id
    if (id_length > 0)
    {
        fp.SetPosition(fp.GetPosition() + id_length);
    }

    // load the palette
    if (palettized)
    {
        palette = new unsigned char [GetPaletteSize()];
        ClearPalette();
        unsigned char* pal = palette + (cm_first_entry_index * 4);

        if (cm_bpp == 32)
        {
            fp.GetBytes(pal, cm_length * 4);
            hasalpha = true;
        }
        else
        {
            for (int i = 0; i < cm_length; ++i)
            {
                fp.GetBytes(pal, 3);
                pal[3] = 255;
                pal += 4;
            }
            hasalpha = false;
        }
    }

    int scanline_size = GetScanlineSize();
    pixeldata = new unsigned char* [height];
    for (int y = 0; y < height; ++y)
    {
        pixeldata[y] = new unsigned char [scanline_size];
        fp.GetBytes(pixeldata[y], scanline_size);
    }

    // Fixed red-blue swap - SwapChannels(2, 1, 0);

    if ((img_desc & 0x20) == 0)
    {
        FlipY();
    }

    return true;
}

bool tlImage::LoadBMP(tlFile &fp)
{
    // bitmapfileheader
#ifdef WIN32
#pragma pack(1)
#endif

    struct BMPFILEHEADER
    {
        short    type;
        unsigned size;
        short    reserved1;
        short    reserved2;
        unsigned bitsoffset;
    } header; 


    struct BMPINFOHEADER
    {
        unsigned size; 
        unsigned width; 
        unsigned height; 
        short    planes; 
        short    bitCount;
        unsigned compression; 
        unsigned sizeImage; 
        unsigned XPelsPerMeter; 
        unsigned YPelsPerMeter; 
        unsigned clrUsed; 
        unsigned clrImportant; 
    }  infoheader;

#ifdef WIN32
#pragma pack()
#endif

    // read the bitmapfileheader
    fp.GetBytes(&header, sizeof(header));

    // make sure that this a a valid BMP file
    if (header.type != 0x4D42)
    {
        return false;
    }

    // read the bitmapinfoheader
    fp.GetBytes(&infoheader, sizeof(infoheader));

    // extract the tlImage member vars we need to keep
    width  = infoheader.width;
    height = infoheader.height;
    bpp    = infoheader.bitCount;
    rawClrUsed = infoheader.clrUsed;
    hasalpha = (bpp == 32);

    if ( ( bpp != 1 ) && (bpp != 4) && (bpp != 8) && (bpp != 24) && (bpp != 32))
    {
        return false;
    }

    bool bIsBitmap = ( bpp == 1 );

    // don't support compressed BMP files
    if (infoheader.compression != 0)
    {
        return false;
    }

    unsigned bytes_read = sizeof(header) + sizeof(infoheader);

    // Done reading through the header look for the palette
    palettized =  ( ( bpp == 1 ) || (bpp == 4) || (bpp == 8));

    if (palettized)
    {
        int pal_count = 0;

        pal_count = GetPaletteCount();
        if (infoheader.clrUsed != 0) 
        {
            pal_count = rmt::Min(infoheader.clrUsed, static_cast<unsigned>(pal_count));
        }

        palette = new unsigned char [GetPaletteSize()];
        ClearPalette();

        fp.GetBytes(palette, pal_count * 4);
        bytes_read += (pal_count * 4);

        // If bitmap (2-color, 1-bitplane) promote to 4 bpp
        // and copy bitmap palette into 4bpp palette.
        if ( bpp == 1 )
        {
            unsigned int old_pal_size = GetPaletteSize();

            bpp = 4;    // Temporarily, for GetPaletteSize()

            unsigned char* new_palette = new unsigned char [GetPaletteSize()];
            memset( new_palette, 0, GetPaletteSize());
            memcpy( new_palette, palette, old_pal_size );

            // transfer new palette
            delete [] palette;
            palette = new_palette;

            bpp = 1;    // Restored.
        }

        // Set Alpha for all colours opaque.
        unsigned char* pal = palette + 3;
        for (int i = 0; i < pal_count; ++i)
        {
            *pal = 255;
            pal += 4;
        }
        hasalpha = false;
    }

    // go to the head of the image
    while (bytes_read < header.bitsoffset) 
    {
        char ignored;
        fp.GetBytes(&ignored, 1);
        ++bytes_read;
    }

    // this scanline is 32-bit aligned
    int scanline_size = GetScanlineSize( true );    // TRUE == Align to DWORD

// ** Replace this with bAlignToDWORD flag above **
//    int scanline_diff = scanline_size % 4;
//    if (scanline_diff != 0)
//    {
//        scanline_size += (4 - scanline_diff);
//    }

    int scanline_alloc = scanline_size;
    if ( bIsBitmap )
    {
        bpp = 4;
        scanline_alloc = GetScanlineSize( true );
    }

    pixeldata = new unsigned char* [height];

    for (int y = 0; y < height; ++y)
    {
        pixeldata[y] = new unsigned char [scanline_alloc];
        fp.GetBytes(pixeldata[y], scanline_size);

        // If promoting 1-bpp to 4-bpp must expand data
        if ( bIsBitmap )
        {
            unsigned char* pp = NULL;
            unsigned int b;
            unsigned int pixelByte = 0;
            unsigned int bit = 7;
            
            pp = new unsigned char [scanline_alloc];
            memcpy( pp, pixeldata[y], scanline_size );
            memset( pixeldata[y], 0, scanline_alloc );

            // Assign 2 pixels per pass, so (width/2) passes.
            for ( b = 0; b < (unsigned)(width/2); b++ )
            {
                unsigned char pix = 0;

                // Assign first bit in pair to upper nibble of current byte
                if ( *(pp+pixelByte) & ( 1 << bit ) )
                {
                    pix |= ( 1 << 4 );
                }
                // Assign second bit in pair to lower nibble of current byte
                if ( *(pp+pixelByte) & ( 1 << ( bit - 1 ) ) )
                {
                    pix |= ( 1 << 0 );
                }

                // Assign byte (2 pixels) to pixeldata
                *(pixeldata[y]+b) = pix;

                // If looping bits this round then increment to next 8-pixel byte.
                if ( bit < 2 )
                {
                    pixelByte++;
                }

                bit = ( bit + 6 ) % 8;  // 5 3 1 5 3 1 etc.
            }

            delete pp;
        }

    }

    // Fixed red-blue swap - SwapChannels(2, 1, 0);
    FlipY();

    return true;
}

bool
tlImage::LoadPS2(tlFile &fp)
{
    char hdr[4];
    fp.GetBytes(hdr, 4);

    if (strncmp(hdr, "P3DI", 4) != 0)
    {
        return false;
    }

    fp.GetLong(); // int pddiTexType, ignored

    width = fp.GetLong(); 
    height = fp.GetLong(); 
    bpp = fp.GetLong(); 
    int paletteSize = fp.GetLong();
    int imageSize = fp.GetLong();

    if(paletteSize > 0)
    {
        palettized = true;
    }
    
    // PS2 format always has alpha except for 16 and 24 bpp.
    hasalpha = (bpp != 16 && bpp != 24);
    SetAttributes(width, height, bpp,
                  palettized, hasalpha,
                  NULL, NULL);

    if (palettized)
    {
        char* swizzled = new char[GetPaletteSize()];
        fp.GetBytes(swizzled, GetPaletteSize());
        UnSwizzlePalettePS2(swizzled);
    }

    int scanline_size = GetScanlineSize();
    for (int y = 0; y < height; ++y)
    {
        if(GetBpp() == 4)
        {
            for(int x = 0; x < width/2; x++)
            {
                char swapnibbles = fp.GetChar();
                pixeldata[y][x] = ((swapnibbles >> 4) & 0xf) | ((swapnibbles & 0xf) << 4);
            }
        } else {
            fp.GetBytes(pixeldata[y], scanline_size);
        }
    }

    SwapChannels( 2, 1, 0 );  // Swap red and blue colour channels.

    FlipY();
    return true;
}



bool
tlImage::LoadGC(tlFile &fp)
{
    return false;
}




// tlImage save functions
// ======================

static void user_write_data(png_structp write_ptr, png_bytep data, unsigned int length)
{
    tlFile* fp = (tlFile*)png_get_io_ptr(write_ptr);
    fp->PutBytes(data, length);
}

static void user_flush_data(png_structp png_ptr)
{
    // do nothing
}

bool tlImage::SavePNG(tlFile &fp) const
{
    png_structp write_ptr = png_create_write_struct(PNG_LIBPNG_VER_STRING,
                                                    NULL,
                                                    user_error_fn,
                                                    user_warning_fn);
    if (write_ptr == NULL)
    {
        return false;
    }

    png_infop info_ptr = png_create_info_struct(write_ptr);
    if (info_ptr == NULL)
    {
        png_destroy_write_struct(&write_ptr, NULL);
        return false;
    }

    png_set_write_fn(write_ptr, &fp, user_write_data, user_flush_data);

    int channel_bit, color_type, row_bytes;

    if (bpp >= 8 )
    {
        channel_bit = 8;

        if (bpp == 8)
        {
            if (palettized)
            {
                color_type = PNG_COLOR_TYPE_PALETTE;
            }
            else
            {
                // NOTE:  PNG doesn't support pure alpha pixmaps,
                //        so I just export 'em as grayscale images.
                color_type = PNG_COLOR_TYPE_GRAY;
            }

            row_bytes = width;
        }
        else if (bpp == 24)
        {
            color_type = PNG_COLOR_TYPE_RGB;
            row_bytes = width * 3;
        }
        else if (bpp == 32)
        {
            color_type = PNG_COLOR_TYPE_RGB_ALPHA;
            row_bytes = width * 4;
        }
    }
    else // bpp == 4
    {
        channel_bit = bpp;
        color_type = PNG_COLOR_TYPE_PALETTE;
        // need to add one if 4bpp and odd width
        row_bytes = (width / 2) + (width & 0x01);
    }

    png_set_IHDR(write_ptr, info_ptr,
                 width, height,
                 channel_bit,
                 color_type,
                 PNG_INTERLACE_NONE,
                 PNG_COMPRESSION_TYPE_DEFAULT,
                 PNG_FILTER_TYPE_DEFAULT);

    png_color* png_pal = 0;
    png_byte* png_alpha = 0;

    const_cast<tlImage*>(this)->SwapChannels(2, 1, 0);

    if (palettized)
    {
        int num_entries = GetPaletteCount();
        png_pal = new png_color [num_entries];
        png_alpha = new png_byte [num_entries];

        bool hasNonOpaqueAlpha = false;
        for (int i = 0; i < num_entries; ++i)
        {
            memcpy(png_pal + i, palette + (i * 4), 3);
            png_alpha[i] = *(palette + (i * 4) + 3);
            if(png_alpha[i] != 255)
            {
                hasNonOpaqueAlpha = true;
            }
        }

        png_set_PLTE(write_ptr, info_ptr, png_pal, num_entries);
        if(hasNonOpaqueAlpha) // No need to write out alpha if not used.
        {
            png_set_tRNS(write_ptr, info_ptr, png_alpha, num_entries, 0);
        }
    }

    png_write_info(write_ptr, info_ptr);
    png_write_image(write_ptr, pixeldata);
    png_write_end(write_ptr, info_ptr);

    png_destroy_write_struct(&write_ptr, &info_ptr);

    delete[] png_alpha;
    delete[] png_pal;

    const_cast<tlImage*>(this)->SwapChannels(2, 1, 0);

    return true;
}

bool tlImage::SaveRAW(tlFile &fp) const
{
    fp.PutBytes("RAW", 4);
    fp.PutLong(width);
    fp.PutLong(height);
    fp.PutLong(bpp);
    fp.PutLong(palettized);
    fp.PutLong(hasalpha);

    const_cast<tlImage*>(this)->SwapChannels(2, 1, 0);

    if (palettized)
    {
        fp.PutBytes(palette, GetPaletteSize());
    }

    int scanline_size = GetScanlineSize();

    for (int y = 0; y < height; ++y)
    {
        fp.PutBytes(pixeldata[y], scanline_size);
    }

    const_cast<tlImage*>(this)->SwapChannels(2, 1, 0);

    return true;
}

bool tlImage::SaveTGA(tlFile &fp) const
{
    unsigned char img_hdr[3];
    img_hdr[0] = 0;
    img_hdr[1] = palettized;
    img_hdr[2] = palettized ? 1 : 2;
    fp.PutBytes(img_hdr, 3);

    unsigned short cm_info[2];
    cm_info[0] = 0;
    unsigned char cm_bpp;

    if (palettized)
    {
        cm_info[1] = GetPaletteCount();
        cm_bpp = 32;
    }
    else
    {
        cm_info[1] = 0;
        cm_bpp = 0;
    }

    fp.PutBytes(cm_info, 4);
    fp.PutBytes(&cm_bpp, 1);

    unsigned short img_dims[4] = { 0, 0, width, height };
    unsigned char img_desc[2];
    if (bpp < 8) img_desc[0] = 8;
    else img_desc[0] = bpp;
    img_desc[1] = 0x20 | (((bpp == 32) && hasalpha) ? 0x08 : 0x00);

    fp.PutBytes(img_dims, 8);
    fp.PutBytes(img_desc, 2);

    // const_cast<tlImage*>(this)->SwapChannels(2, 1, 0);

    if (palettized)
    {
        fp.PutBytes(palette, GetPaletteSize());
    }

    if (bpp < 8)
    {
        for (int y = 0; y < height; ++y)
        {
            for (int x = 0; x < width; ++x)
            {
                int index = GetPixelIndex(x, y);
                fp.PutChar(index);
            }
        }
    }
    else
    {
        int scanline_size = GetScanlineSize();
        for (int y = 0; y < height; ++y)
        {
            fp.PutBytes(pixeldata[y], scanline_size);
        }
    }

    // const_cast<tlImage*>(this)->SwapChannels(2, 1, 0);

    return true;
}

bool tlImage::SaveBMP(tlFile &fp) const
{
    fp.PutBytes("BM", 2);

    int scanline_size = GetScanlineSize();

    int scanline_diff = (scanline_size % 4);
    if (scanline_diff != 0)
    {
        scanline_diff = 4 - scanline_diff;
    }

    long img_size = (scanline_size + scanline_diff) * height;
    if (img_size <= 0) img_size = 1;
    long pal_size = GetPaletteSize();

    long file_size = 54 + img_size;
    if (palettized) file_size += pal_size;
    fp.PutLong(file_size);
    fp.PutLong(0);

    long img_data_offset = 54;
    if (palettized) img_data_offset += pal_size;
    fp.PutLong(img_data_offset);

    fp.PutLong(40);      // structure size
    fp.PutLong(width);
    fp.PutLong(height);
    fp.PutWord(1);       // planes
    fp.PutWord(bpp);
    fp.PutLong(0);       // compression (none)
    fp.PutLong(img_size);
    fp.PutLong(2795);
    fp.PutLong(2795);
    fp.PutLong(0);
    fp.PutLong(0);

    // Fixed red-blue swap - const_cast<tlImage*>(this)->SwapChannels(2, 1, 0);

    if (palettized)
    {
        fp.PutBytes(palette, pal_size);
    }

    const_cast<tlImage*>(this)->FlipY();

    char ignored = 0;
    for (int y = 0; y < height; ++y)
    {
        fp.PutBytes(pixeldata[y], scanline_size);

        for (int i = 0; i < scanline_diff; ++i)
        {
            fp.PutBytes(&ignored, 1);
        }
    }

    const_cast<tlImage*>(this)->FlipY();
    // Fixed red-blue swap - const_cast<tlImage*>(this)->SwapChannels(2, 1, 0);

    return true;
}

bool tlImage::SavePS2(tlFile &fp) const
{
    fp.PutBytes("P3DI", 4);
    switch(format)
    {
        case IMG_PS2_4BIT:
            fp.PutLong(PDDI_TEXTYPE_PS2_4BIT);
            break;
        case IMG_PS2_8BIT:
            fp.PutLong(PDDI_TEXTYPE_PS2_8BIT);
            break;
        case IMG_PS2_16BIT:
            fp.PutLong(PDDI_TEXTYPE_PS2_16BIT);
            break;
        case IMG_PS2_32BIT:
            fp.PutLong(PDDI_TEXTYPE_PS2_32BIT);
            break;
        default:
            assert(0 == "Unrecognized file type in SavePS2()\n");
    }
   
    fp.PutLong(GetWidth());
    fp.PutLong(GetHeight());
    fp.PutLong(GetBpp());
    fp.PutLong(GetPaletteSize());
    fp.PutLong(GetHeight() * GetScanlineSize());

    const_cast<tlImage*>(this)->SwapChannels(2, 1, 0);

    if (palettized)
    {
        char* swizzled = SwizzlePalettePS2();
        fp.PutBytes(swizzled, GetPaletteSize());
        delete[] swizzled;
    }

    int scanline_size = GetScanlineSize();

    for (int y = height - 1 ; y >= 0; y--)
    {
        if(GetBpp() == 4)
        {
            for(int x = 0; x < width/2; x++)
            {
                char swapnibbles = ((pixeldata[y][x] >> 4) & 0xf) | ((pixeldata[y][x] & 0xf) << 4);
                fp.PutChar(swapnibbles);
            }
        } else {
            fp.PutBytes(pixeldata[y], scanline_size);
        }
    }

    const_cast<tlImage*>(this)->SwapChannels(2, 1, 0);

    return true;
}

static int Swizzle(int i)
{
    //0 1 2 3 4 5 6 7 10 11 12 13 14 15 16 17
    //8 9 A B C D E F 18 19 1A 1B 1C 1D 1E 1F
    // We swap bits 3 and 4
    // There mut be a cleaner way to do this...

    int bit3 = i & 0x8;
    int bit4 = i & 0x10;
    return (i & 0xe7) | (bit3<<1) | (bit4>>1);
}

char*
tlImage::SwizzlePalettePS2() const
{
    char* result = new char[GetPaletteSize()];

    if(bpp == 4)
    {
        for(int i = 0; i < 16; i++)
        {
            result[i*4 + 0] = palette[i * 4 + 0];
            result[i*4 + 1] = palette[i * 4 + 1];
            result[i*4 + 2] = palette[i * 4 + 2];
            result[i*4 + 3] = (unsigned char)(((unsigned int)((unsigned char)palette[i * 4 + 3]) << 7) / 255);
        }
    }
    else
    {
        assert(bpp == 8);
        for(int i = 0; i < 256; i++)
        {
            result[i*4 + 0] = palette[Swizzle(i) * 4 + 0];
            result[i*4 + 1] = palette[Swizzle(i) * 4 + 1];
            result[i*4 + 2] = palette[Swizzle(i) * 4 + 2];
            result[i*4 + 3] = (unsigned char)(((unsigned int)((unsigned char)palette[Swizzle(i) * 4 + 3]) << 7) / 255);
        }
    }
    return result;
}

void
tlImage::UnSwizzlePalettePS2(const char* swizzled)
{
    if(bpp == 4)
    {
        for(int i = 0; i < 16; i++)
        {
            palette[i * 4 + 0] = swizzled[i*4 + 0];
            palette[i * 4 + 1] = swizzled[i*4 + 1];
            palette[i * 4 + 2] = swizzled[i*4 + 2];
            palette[i * 4 + 3] = (unsigned char)(((unsigned int)((unsigned char)swizzled[i*4 + 3]) * 255) >> 7);
        }
    }
    else
    {
        assert(bpp == 8);
        for(int i = 0; i < 256; i++)
        {
            palette[Swizzle(i) * 4 + 0] = swizzled[i*4 + 0];
            palette[Swizzle(i) * 4 + 1] = swizzled[i*4 + 1];
            palette[Swizzle(i) * 4 + 2] = swizzled[i*4 + 2];
            palette[Swizzle(i) * 4 + 3] = (unsigned char)(((unsigned int)((unsigned char)swizzled[i*4 + 3]) * 255) >> 7);
        }
    }
}

//--------------------------------------------------------
bool tlImage::SaveGC(tlFile &fp) const
{
    fp.PutBytes("ID3P", 4);

    const_cast<tlImage*>(this)->SwapChannels(2, 1, 0);

    char *swizzled = NULL;    
    switch(format)
    {
        case IMG_GC_4BIT:
            fp.PutLong(SwapLong(PDDI_TEXTYPE_GC_4BIT));
            swizzled = GCSwizzle4Bit();
            break;
        case IMG_GC_8BIT:
            fp.PutLong(SwapLong(PDDI_TEXTYPE_GC_8BIT));
            swizzled = GCSwizzle8Bit();
            break;
        case IMG_GC_16BIT:
            fp.PutLong(SwapLong(PDDI_TEXTYPE_GC_16BIT));
            swizzled = GCSwizzle16Bit();
            break;
        case IMG_GC_32BIT:
            fp.PutLong(SwapLong(PDDI_TEXTYPE_GC_32BIT));
            swizzled = GCSwizzle32Bit();
            break;
        case IMG_GC_DXT1:
            fp.PutLong(SwapLong(PDDI_TEXTYPE_GC_DXT1));
            swizzled = GCSwizzleDXT1();
            break;
        default:
            assert(0 == "Unrecognized file type in SaveGC()\n");
    }
   
    fp.PutLong(SwapLong(GetWidth()));
    fp.PutLong(SwapLong(GetHeight()));
    fp.PutLong(SwapLong(GetBpp()));
    fp.PutLong(SwapLong(GetPaletteCount() * 2));
    fp.PutLong(SwapLong(GetHeight() * GetScanlineSize()));

    if (palettized)
    {    
        char *spal = GCSwizzlePalette();
        fp.PutBytes(spal, GetPaletteCount() * 2);
        delete[] spal;
    }

    fp.PutBytes(swizzled, GetHeight() * GetScanlineSize());
    delete[] swizzled;

    const_cast<tlImage*>(this)->SwapChannels(2, 1, 0);

    return true;
}




// tlImage chunk manipulation functions
// ====================================
void tlImage::LoadFromChunk(tlDataChunk* ch)
{
    Cleanup();

    assert(ch->ID() == Pure3D::Texture::IMAGE);

    tlImageChunk* ich = dynamic_cast<tlImageChunk*>(ch);
    assert(ich);
   
    SetName(ich->GetName());
    assert(ich->GetVersion() == IMAGE_VERSION);

    SetAttributes(ich->GetWidth(), ich->GetHeight(), ich->GetBpp(),
                  (ich->GetPalettized() != 0), (ich->GetHasAlpha() != 0));

    format = (tlImageFormat)ich->GetFormat();

    for(int dch = 0; dch < ich->SubChunkCount(); dch++)
    {
        tlDataChunk* subch = ich->GetSubChunk(dch);
        switch(subch->ID())
        {
            case Pure3D::Texture::IMAGE_DATA:
            {
                tlImageDataChunk* datach = dynamic_cast<tlImageDataChunk*>(subch);
                assert(datach);

                tlMemByteStream* mstream = new tlMemByteStream(datach->GetImageData(),
                                                               datach->GetImageDataSize());
                tlFile* fp = new tlFile(mstream,tlFile::CHUNK32);
                Load(format, *fp);
                delete fp;

                break;
            }

            case Pure3D::Texture::IMAGE_FILENAME:
            {
                tlImageFileNameChunk* fnamech = dynamic_cast<tlImageFileNameChunk*>(subch);
                assert(fnamech);
                SetReference(fnamech->GetFileName());
                break;
            }
        }
    }
}

tlDataChunk* tlImage::Chunk()
{
    tlImageChunk* chunk = new tlImageChunk();

    chunk->SetName(GetName());
    chunk->SetVersion(IMAGE_VERSION);
    chunk->SetWidth(width);
    chunk->SetHeight(height);
    chunk->SetBpp(bpp);
    chunk->SetPalettized(palettized);
    chunk->SetHasAlpha(hasalpha);
    chunk->SetFormat(format);

    if (reference)
    {
        tlImageFileNameChunk* fileRef = new tlImageFileNameChunk();
        fileRef->SetFileName(reference);
        chunk->AppendSubChunk(fileRef);
    }
    else if (pixeldata)
    {
        tlImageDataChunk* data = new tlImageDataChunk();

        tlMemByteStream* mstream = new tlMemByteStream((BYTE*)NULL, 0);
        tlFile *fp = new tlFile(mstream, tlFile::CHUNK32);
        Save(format, *fp);
        unsigned long img_size = fp->GetPosition();

        unsigned char* img_bytes = new unsigned char [img_size];
        fp->SetPosition(0);
        fp->GetBytes(img_bytes, img_size);

        data->SetImageDataSize(img_size);
        data->SetImageData(img_bytes, img_size);

        delete[] img_bytes;
        delete fp;

        chunk->AppendSubChunk(data);
    }

    return chunk;
}

// tlImage simple colour palette matching
// - return palette index of closest match
// =======================================

int tlImage::MatchColour(tlColour c) const
{
    if (!palettized)
    {
        return -1;
    }

    return MatchColour(c, GetPaletteCount(), palette);
}

int tlImage::MatchColour(const unsigned char quad[4]) const
{
    if (!palettized)
    {
        return -1;
    }

    return MatchColour(quad, GetPaletteCount(), palette);
}

int tlImage::MatchColour(tlColour c,
                         int pal_count,
                         const unsigned char* pal)
{
    unsigned char quad[4] =
        {
            c.BlueCh(), c.GreenCh(), c.RedCh(), c.AlphaCh()
        };

    return MatchColour(quad, pal_count, pal);
}

int tlImage::MatchColour(const unsigned char quad[4],
                         int pal_count,
                         const unsigned char* pal)
{
    const unsigned char* pal_ptr = pal;

    int min_diff = INT_MAX;
    int idx = -1;

    for (int i = 0; i < pal_count; ++i)
    {
        int diff_b = quad[0] - pal_ptr[0];
        int diff_g = quad[1] - pal_ptr[1];
        int diff_r = quad[2] - pal_ptr[2];
        int diff_a = quad[3] - pal_ptr[3];

        int diff = (diff_b * diff_b) +
            (diff_g * diff_g) +
            (diff_r * diff_r) +
            (diff_a * diff_a);

        if (diff < min_diff)
        {
            idx = i;

            if (diff == 0)
                break;

            min_diff = diff;
        }

        pal_ptr += 4;
    }

    return idx;
}


// tlImage simple mipmap generation
// - assumes power-of-2 image dimensions
// =====================================================

bool tlImage::InitializeMipmap(int level, tlImage** mipmap,
                               int& box_w, int& box_h, int &w, int &h) const
{
    if (reference)
    {
        const_cast<tlImage*>(this)->Dereference();
    }

    if (level < 0)
    {
        *mipmap = NULL;
        return false;
    }

    if (level == 0)
    {
        *mipmap = new tlImage(*this);
        return false;
    }

    box_w = (1 << level);
    box_h = box_w;

    w = width / box_w;
    h = height / box_h;

    int min_dim;
    if (bpp < 8) min_dim = 2;
    else min_dim = 1;

    if ((w < min_dim) && (h < min_dim))
    {
        *mipmap = NULL;
        return false;
    }

    if (w < min_dim)
    {
        w = min_dim;
        box_w = 1;
    }
    else if (h < min_dim)
    {
        h = min_dim;
        box_h = 1;
    }

    *mipmap = new tlImage(w, h, bpp, palettized, hasalpha, NULL, palette);

    //we have set the newly created sublevel image the same format as the uplevel image
    (*mipmap)->SetFormat( format );


    char orig_name[P3DMAXNAME];
    strcpy(orig_name, GetName());
    char *dot_pos;
    bool had_ext = (HasExtension(orig_name, &dot_pos) != 0);
    RemoveExtension(orig_name);

    char mipmap_name[P3DMAXNAME];
    if (had_ext)
    {
        sprintf(mipmap_name, "%s_%d.%s", orig_name, level, GetFileExtension());
    }
    else
    {
        sprintf(mipmap_name, "%s_%d", orig_name, level);
    }

    (*mipmap)->SetName(mipmap_name);

    return true;
}

void tlImage::BoxFilter(tlImage* mipmap, int box_w, int box_h, int w, int h) const
{
    unsigned int c[4];
    unsigned char c_tmp[4];
    int bx = 0, by = 0;
    int box_count = box_w * box_h;

    for (int y = 0; y < h; ++y, by += box_h, bx = 0)
    {
        for (int x = 0; x < w; ++x, bx += box_w)
        {
            memset(c, 0, sizeof(c));

            for (int j = 0; j < box_h; ++j)
            {
                for (int i = 0; i < box_w; ++i)
                {
                    GetPixel(bx + i, by + j, c_tmp);

                    c[0] += c_tmp[0];
                    c[1] += c_tmp[1];
                    c[2] += c_tmp[2];
                    c[3] += c_tmp[3];
                }
            }

            c_tmp[0] = (c[0] / box_count);
            c_tmp[1] = (c[1] / box_count);
            c_tmp[2] = (c[2] / box_count);
            c_tmp[3] = (c[3] / box_count);

            mipmap->SetPixel(x, y, c_tmp);
        }
    }
}

void tlImage::BoxFilterWithColourKey(tlImage* mipmap,
                                     int box_w, int box_h, int w, int h,
                                     const unsigned char key[4]) const
{
    unsigned int c[4];
    unsigned char c_tmp[4];
    int bx = 0, by = 0;
    int box_count = box_w * box_h;
    int key_count;

    for (int y = 0; y < h; ++y, by += box_h, bx = 0)
    {
        for (int x = 0; x < w; ++x, bx += box_w)
        {
            memset(c, 0, sizeof(c));
            key_count = 0;

            for (int j = 0; j < box_h; ++j)
            {
                for (int i = 0; i < box_w; ++i)
                {
                    GetPixel(bx + i, by + j, c_tmp);

                    // Is this pixel the colour key?
                    if ((c_tmp[0] == key[0]) &&
                        (c_tmp[1] == key[1]) &&
                        (c_tmp[2] == key[2]) &&
                        (c_tmp[3] == key[3]))
                    {
                        ++key_count;
                    }
                    else
                    {
                        c[0] += c_tmp[0];
                        c[1] += c_tmp[1];
                        c[2] += c_tmp[2];
                        c[3] += c_tmp[3];
                    }
                }
            }

            // If it was MOSTLY the colour key,
            // set the mipmapped pixel to be the colour key
            if (key_count > (box_count / 2))
            {
                memcpy(c_tmp, key, 4);
            }
            else
            {
                int pix_count = box_count - key_count;
                c_tmp[0] = (c[0] / pix_count);
                c_tmp[1] = (c[1] / pix_count);
                c_tmp[2] = (c[2] / pix_count);
                c_tmp[3] = (c[3] / pix_count);
            }

            mipmap->SetPixel(x, y, c_tmp);
        }
    }
}

tlImage* tlImage::GenerateMipmap(int level, tlColour key) const
{
    unsigned char quad[4] =
        {
            key.BlueCh(), key.GreenCh(), key.RedCh(), key.AlphaCh()
        };

    return GenerateMipmap(level, true, quad);
}

tlImage* tlImage::GenerateMipmap(int level,
                                 bool use_colour_key,
                                 const unsigned char key[4]) const
{
    tlImage* mipmap;
    int box_w, box_h, w, h;

    if (InitializeMipmap(level, &mipmap, box_w, box_h, w, h))
    {
        if (use_colour_key)
        {
            if (key != 0)
            {
                BoxFilterWithColourKey(mipmap, box_w, box_h, w, h, key);
            }
            else
            {
                // Default colour key is hot pink
                unsigned char default_key[4] = { 255, 0, 255, 255 };
                BoxFilterWithColourKey(mipmap, box_w, box_h, w, h, default_key);
            }
        }
        else
        {
            BoxFilter(mipmap, box_w, box_h, w, h);
        }
    }

    return mipmap;
}

tlImage* tlImage::GenerateBumpmap() const
{
    tlImage* bumpmap = new tlImage(*this);
    bumpmap->Unpalettize(32);

    // This is a somewhat simple algorithm taken from DX8
    // bumpmapping demo

    for (int y = 0; y < height; ++y)
    {
        for (int x = 0; x < width; ++x)
        {
            unsigned char c00[4];
            unsigned char c10[4];
            unsigned char c01[4];
         
            GetPixel(x,   y,   c00);
            GetPixel((x == (width -1)) ? 0 : x + 1, y,   c10); //if we're at the boundaries, wrap around
            GetPixel(x,   (y == (height -1)) ? 0 : y+1, c01);
         
            float height00 = (float) c00[1] / 255.0f;
            float height10 = (float) c10[1] / 255.0f;
            float height01 = (float) c01[1] / 255.0f;
         
            tlPoint vp00(x+0.0f, y+0.0f, height00);
            tlPoint vp10(x+1.0f, y+0.0f, height10);
            tlPoint vp01(x+0.0f, y+1.0f, height01);
         
            tlPoint vec01 = vp10 - vp00;
            tlPoint vec02 = vp01 - vp00;
            tlPoint normal = Normalize(CrossProd(vec01,vec02));
         
            c00[0] = (char)( 127.0f * normal.x + 128.0f );  //blue
            c00[1] = (char)( 127.0f * normal.y + 128.0f );  //green
            c00[2] = (char)( 127.0f * normal.z + 128.0f );  //red
            c00[3] = (char)( 255.0f * height );    //alpha
            bumpmap->SetPixel(x, y, c00);
        }
    }

    return bumpmap;
}

// Converts a palettized image to N bpp RGB
// N must be 24 or 32
// ========================================

void tlImage::Unpalettize(int newbpp)
{
    assert((newbpp == 24) || (newbpp == 32));

    if (!palettized && (bpp == newbpp))
    {
        return;
    }

    if (reference)
    {
        Dereference();
    }

    int bytes = newbpp / 8;

    unsigned char** newpixels = new unsigned char* [height];
    unsigned char* curpixel;
    unsigned char c[4];

    for (int y = 0; y < height; ++y)
    {
        newpixels[y] = new unsigned char [bytes * width];
        curpixel = newpixels[y];

        for (int x = 0; x < width; ++x)
        {
            GetPixel(x, y, c);
            memcpy(curpixel, c, bytes);
            curpixel += bytes;
        }
    }

    bpp = newbpp;
    palettized = false;
    hasalpha = (bpp == 32);

    delete[] pixeldata;
    pixeldata = newpixels;

    delete[] palette;
    palette = NULL;
}


// Retrieve default file extension for the image's format type
const char* tlImage::GetFileExtension(tlImageFormat fmt)
{
    switch (fmt)
    {
        case IMG_RAW:
            return "raw";
        case IMG_PNG:
            return "png";
        case IMG_BMP:
            return "bmp";
        case IMG_TGA:
            return "tga";
        case IMG_DXT:
        case IMG_DXT1:
        case IMG_DXT3:
        case IMG_DXT5:
            return "dds";
        default:
            assert("Unknown image format type" == 0);
    }

    return NULL;
}


// Detects the image format as deduced from the first few
// bytes in the tlFile stream -- the stream position will be
// returned to where it was initially once complete.
tlImageFormat tlImage::DetectFormat(tlFile& fp)
{
    unsigned long initial_pos = fp.GetPosition();

    unsigned char img_hdr[4];
    memset(img_hdr, 0, 4);

    fp.SetPosition(0);
    fp.GetBytes(img_hdr, 4);
    fp.SetPosition(initial_pos);

    if ((img_hdr[0] == 137) &&
        (img_hdr[1] == 'P') &&
        (img_hdr[2] == 'N') &&
        (img_hdr[3] == 'G'))
    {
        return IMG_PNG;
    }
    else if ((img_hdr[0] == 'B') &&
             (img_hdr[1] == 'M'))
    {
        return IMG_BMP;
    }
    else if ((img_hdr[0] == 'R') &&
             (img_hdr[1] == 'A') &&
             (img_hdr[2] == 'W') &&
             (img_hdr[3] == 0))
    {
        return IMG_RAW;
    }
    else if ((img_hdr[0] == 'D') &&
             (img_hdr[1] == 'D') &&
             (img_hdr[2] == 'S') &&
             (img_hdr[3] == 0))
    {
        return IMG_DXT;
    }
    else if ((img_hdr[0] == 'P') &&
             (img_hdr[1] == 'S') &&
             (img_hdr[2] == '0') &&
             (img_hdr[3] == '4'))
    {
        return IMG_PS2_4BIT;
    }
    else if ((img_hdr[0] == 'P') &&
             (img_hdr[1] == 'S') &&
             (img_hdr[2] == '0') &&
             (img_hdr[3] == '8'))
    {
        return IMG_PS2_8BIT;
    }
    else if ((img_hdr[0] == 'P') &&
             (img_hdr[1] == 'S') &&
             (img_hdr[2] == '1') &&
             (img_hdr[3] == '6'))
    {
        return IMG_PS2_16BIT;
    }
    else if ((img_hdr[0] == 'P') &&
             (img_hdr[1] == 'S') &&
             (img_hdr[2] == '3') &&
             (img_hdr[3] == '2'))
    {
        return IMG_PS2_32BIT;
    }
    else if ((img_hdr[0] == 'P') &&
             (img_hdr[1] == '3') &&
             (img_hdr[2] == 'D') &&
             (img_hdr[3] == 0xff))
    {
        return IMG_INVALID; // P3D format - not an image.
    }
    // TGA format has no clear type id in header.  Call it a TGA file if it would
    // produce a valid TGA image format.
    unsigned char tgaHasColourMap = img_hdr[1];
    unsigned char tgaImageType    = img_hdr[2];
    if((tgaImageType == 1 && tgaHasColourMap != 0) || tgaImageType == 2)
    {
        return IMG_TGA;
    }

    return IMG_UNKNOWN;
}


int
tlImage::MemorySize()
{
    return GetPaletteSize() + GetScanlineSize() * height;
}

int
tlImage::ColoursUsed() const
{
    if(!palettized)
    {
        // this is an upper bound
        return width * height;
    }

    // count the colours
    int colour[256];
    int i;
    for ( i = 0; i < 256; i++ )
    {
        colour[i] = 0;
    }

   
    for(int y = 0; y < height; y++)
    {
        for(int x = 0; x < width; x++)
        {
            colour[GetIndex(x,y)]++;
        }
    }

    int count = 0;
    for( i = 0; i < 256; i++ )
    {
        if(colour[i])
        {
            count++;
        }
    }

    return count;
}

bool
tlImage::SolidColour() const
{
    tlColour last;
    for(int y = 0; y < height; y++)
    {
        for(int x = 0; x < width; x++)
        {
            tlColour pix = GetPixel(x,y);
            if(((x > 0) || (y > 0)) && !(pix == last))
            {
                return false;
            }
            last = pix;
        }
    }
    return true;
}
// Return the max color for each channel.
tlColour tlImage::MaxRGB() const
{
    tlColour maxColour = GetPixel(0, 0);

    int x, y;   
    for( x = 0; x < width; x++ )
    {
        for( y = 0; y < height; y++ )
        {            
            tlColour imagePixel = GetPixel(x, y);

            int channel;
            for( channel = 0; channel < 3; channel++ )
            {
                if( imagePixel[channel] > maxColour[channel] )
                {
                    maxColour[channel] = imagePixel[channel];
                }
            }
        }
    }

    return maxColour;
}

// Compute the square root mean square delta E of two images using CIELab space.
// This is a good indication of the error in one file if the other is the true image.
float tlImage::DeltaE( const tlImage &image2 ) const
{
    float sumSquareDetlaE = 0.0f;

    if( image2.width != width || image2.height != height )
    {
        return -777.0f;
    }

    int x, y;   
    for( x = 0; x < width; x++ )
    {
        for( y = 0; y < height; y++ )
        {            
            tlColourLab pixel  = GetPixel(x, y);
            tlColourLab pixel2 = image2.GetPixel(x, y);

            pixel.rgb2Lab();
            pixel2.rgb2Lab();

            tlColourLab labDiff = pixel - pixel2;
            sumSquareDetlaE += labDiff.Lstar() * labDiff.Lstar() 
                + labDiff.astar() * labDiff.astar() + labDiff.bstar() * labDiff.bstar();
         
        }
    }

    float error = (float)::sqrt( sumSquareDetlaE / ( width * height ) );

    return error;
}

// Return the average colour for each channel
tlColour tlImage::AveRGB() const
{
    tlColour sumColour( 0.0f, 0.0f, 0.0f );

    int x, y;   
    for( x = 0; x < width; x++ )
    {
        for( y = 0; y < height; y++ )
        {
            sumColour = sumColour + GetPixel(x, y);
        }
    }

    tlColour aveColour = sumColour * ( 1.0f / (float)( width * height ) );

    return aveColour;
}

//*****************************
//
// Takes the passed in tlImage and uses its colours 
// scaled and accumulated to generatte an alpha value
// NOTE: This will unpalletize an palletized image!!!
//
void tlImage::FillAlphaFromImageColour(tlImage *img, float rscale, float gscale, float bscale)
{
    //Duh...
    if (img == NULL) return;

    // Make sure that the image has an alpha channel
    if (reference)  Dereference();
    if (bpp != 32)  Unpalettize(32);

    hasalpha = true;

    int max_x = width;
    int max_y = height;

    if (img->width  < max_x) max_x = img->width;
    if (img->height < max_y) max_y = img->height;

    // Display warning about mismatched image sizes
    if ((width != img->width) || (height != img->height))
    {
        printf("Warning: FillAlphaFromImageColour maps not the same size! %s %s\n", GetName(), img->GetName());
    }

    float scale = 1.0F / (rscale + gscale + bscale);

    int x, y;
    for (y = 0; y < max_y; y++)
    {
        for (x = 0; x < max_x; x++)
        {
            unsigned char c[4];
            img->GetPixel(x, y, c);

            float r = rscale * (float) c[2];
            float g = gscale * (float) c[1];
            float b = bscale * (float) c[0];

            float alpha = scale * (r + g + b);

            if (alpha < 0.0F) alpha = 0.0F;
            if (alpha > 255.0F) alpha = 255.0F;

            GetPixel(x, y, c);
            c[3] = (unsigned char) alpha;
            SetPixel(x, y, c);
        }
    }
}



//************************************
//
// Flip an image Y
// Fixes upsidedown images
void tlImage::FlipY(void)
{
    int scanline_size = GetScanlineSize();
    unsigned char *buffer = new unsigned char[scanline_size];

    int y;
    for (y = 0; y < height / 2; y++)
    {
        int top = (height - 1) - y;

        memcpy(buffer, pixeldata[y], scanline_size);
        memcpy(pixeldata[y], pixeldata[top], scanline_size);
        memcpy(pixeldata[top], buffer, scanline_size);
    }   

    delete[] buffer;
}

//************************************
//
// Flip an image X
// Fixes leftsideright images
void tlImage::FlipX(void)
{
    tlColour tmpColour;
    int tmp;
    
    int y, x;
    for (y = 0; y < height; y++){
        for( x = 0; x < width / 2; ++x ){
            if(palettized)
            {
                tmp = GetPixelIndex((width - x) - 1, y);
                SetPixelIndex((width - x) - 1, y, GetPixelIndex(x, y));
                SetPixelIndex(x, y, tmp);
            } else {
                tmpColour = GetPixel((width - x) - 1, y);
                SetPixel((width - x) - 1, y, GetPixel(x, y));
                SetPixel(x, y, tmpColour);
            }
        }
    }   
}
//****************************************
//
// Invert Alpha
// NOTE: Currently only works on 32bpp images!
void tlImage::InvertAlpha(void)
{

    if (bpp != 32) return;

    int x, y;
    for (y = 0; y < height; y++)
    {
        unsigned char *pix = pixeldata[y];
        for (x = 0; x < width; x++)
        {
            pix[3] = 255 - pix[3];
            pix += 4;
        }
    }
}


// reorders colour channels for truecolour images
// reorders palette channels for palettized images
// Default order is b=0, g=1, r=2, and a=3
// eg. to swap red and blue channels use SwapChannels( 2, 1, 0, 3 )
void tlImage::SwapChannels(int b, int g, int r, int a)
{
    int rows, cols, bytes;
    unsigned char** pixel_ptr = NULL;
    unsigned char buffer[4];

    if (palettized)
    {
        rows = 1;
        cols = GetPaletteCount();
        bytes = 4;
        pixel_ptr = &palette;
    }
    else if (bpp == 24)
    {
        rows = height;
        cols = width;
        bytes = 3;
        pixel_ptr = pixeldata;
    }
    else if (bpp == 32)
    {
        rows = height;
        cols = width;
        bytes = 4;
        pixel_ptr = pixeldata;
    }

    if (pixel_ptr != NULL)
    {
        for (int y = 0; y < rows; ++y)
        {
            unsigned char* pixel = pixel_ptr[y];

            for (int x = 0; x < cols; ++x)
            {
                memcpy(buffer, pixel, bytes);

                pixel[0] = buffer[b];
                pixel[1] = buffer[g];
                pixel[2] = buffer[r];

                if (bytes > 3)
                {
                    pixel[3] = buffer[a];
                }

                pixel += bytes;
            }
        }
    }
}

bool
tlImage::HighlightNTSCIllegalColours()
{
    bool mbIllegalNTSCColor = false;

    if(palettized)
    {
        for(int i = 0; i < GetPaletteCount(); i++)
        {
            tlColour col = GetPaletteEntry(i);
            if(!col.IsLegalNTSC())
            {
                SetPaletteEntry(i, tlColour(1.0f, 0.0f, 1.0f));
                mbIllegalNTSCColor = true;
            }
        }
    } else {
        for( int x = 0; x < width; x++ )
        {
            for( int y = 0; y < height; y++ )
            {
                tlColour col = GetPixel(x,y);
                if(!col.IsLegalNTSC())
                {
                    SetPixel(x, y, tlColour(1.0f, 0.0f, 1.0f));
                    mbIllegalNTSCColor = true;
                }
            }
        }
    }
    return mbIllegalNTSCColor;
}

double
tlImage::DesaturateForNTSC( void )
{
	double minAmp = 0.0f;
	double maxAmp = 0.0f;
	// Find the worst offending colour.
	if( palettized )
	{
		for( int i = 0; i < GetPaletteCount(); ++i )
		{
			tlColour c = GetPaletteEntry( i );
			double amp = c.NTSCOverheatAmount();
			if( amp > maxAmp )
			{
				maxAmp = amp;
			}
			if( amp < minAmp )
			{
				minAmp = amp;
			}
		}
	}
	else
	{
		for( int x = 0; x < width; ++x )
		{
			for( int y = 0; y < height; ++y )
			{
				tlColour c = GetPixel( x, y );
				double amp = c.NTSCOverheatAmount();
				if( amp > maxAmp )
				{
					maxAmp = amp;
				}
				if( amp < minAmp )
				{
					minAmp = amp; 
				}
			}
		}
	}
	double ratio = tlColour::GetAmplitudeRatio( maxAmp );
	ratio = ( ratio - 1.0f ) * 100.0;
	if( ratio < 0.0 )
	{
		AdjustSaturation( ratio );
	}
	else
	{
		ratio = 0.0;
	}
	return ratio;
}

void
tlImage::ClampNTSCIllegalColours()
{
    if(palettized)
    {
        for(int i = 0; i < GetPaletteCount(); i++)
        {
            tlColour col = GetPaletteEntry(i);
            if(!col.IsLegalNTSC())
            {
                col.ClampNTSC();
                SetPaletteEntry(i, col);
            }
        }
    } else {
        for( int x = 0; x < width; x++ )
        {
            for( int y = 0; y < height; y++ )
            {
                tlColour col = GetPixel(x,y);
                if(!col.IsLegalNTSC())
                {
                    col.ClampNTSC();
                    SetPixel(x, y, col);
                }
            }
        }
    }
}

// this structure is used for the ordering of tlColours in a STL set
struct ltrgb
{
    bool operator()(const tlColour* c1, const tlColour* c2) const
    {
        if ( c1->RedCh() < c2->RedCh() )
        {
            return true;
        }
    
        if ( c1->GreenCh() < c2->GreenCh() )
        {
            return true;
        }

        if ( c1->BlueCh() < c2->BlueCh() )
        {
            return true;
        }

        return false;
    }
};

void
tlImage::ReportIllegalColours(FILE* report_file, bool& isError)
{
    if(palettized)
    {
        for(int i = 0; i < GetPaletteCount(); i++)
        {
            tlColour col = GetPaletteEntry(i);

            if( !col.IsLegalNTSC() )
            {
                // only display the name of the image if the image name hasn't already been printed
                if( !isError )
                {
                    fprintf(report_file,"Image: %s\n",GetName());
                    isError = true;
                }

                // this is used to display a suggested fix for the illegal color
                tlColour col_fix = GetPaletteEntry(i);
                col_fix.ClampNTSC();

                fprintf(report_file,"Illegal Color at Palette Entry %d.  The color is R=%d G=%d B=%d.",i,(int)col.RedCh(),(int)col.GreenCh(),(int)col.BlueCh());
                fprintf(report_file," Change color to R=%d G=%d B=%d.\n",(int)col_fix.RedCh(),(int)col_fix.GreenCh(),(int)col_fix.BlueCh());
            }
        }
    }
    else
    {
        // this set is used to ensure that illegal colors are only printed out once for an image
        std::set<tlColour*, ltrgb> colour_set;

        for( int x = 0; x < width; x++ )
        {
            for( int y = 0; y < height; y++ )
            {
                tlColour *col = new tlColour(GetPixel(x,y));

                // only display the error message if the color is illegal and the color hasn't already been
                // written out as an error
                if( !col->IsLegalNTSC() && colour_set.find(col) == colour_set.end() )
                {
                    // only display the name of the image if the image name hasn't already been printed
                    if( !isError )
                    {
                        fprintf(report_file,"Image: %s\n",GetName());
                        isError = true;
                    }

                    tlColour *set_col = new tlColour(GetPixel(x,y));

                    // this is used to display a suggested fix for the illegal color
                    tlColour col_fix = GetPixel(x,y);
                    col_fix.ClampNTSC();

                    fprintf(report_file,"Illegal Color at x = %d y = %d.  The color is R=%d G=%d B=%d.",x,y,(int)col->RedCh(),(int)col->GreenCh(),(int)col->BlueCh());
                    fprintf(report_file," Change color to R=%d G=%d B=%d.\n",(int)col_fix.RedCh(),(int)col_fix.GreenCh(),(int)col_fix.BlueCh());
               
                    colour_set.insert(colour_set.begin(),set_col);
                }

                delete col;
            }
        }

        // iterate through the set deleting all of the memory that was allocated
        std::set<tlColour*, ltrgb>::iterator colour_it = colour_set.begin();
        std::set<tlColour*, ltrgb>::iterator colour_it_del;
        tlColour* temp_colour;

        while ( colour_it != colour_set.end() )
        {
            temp_colour = *colour_it;
            colour_it_del = colour_it;

            colour_it++;

            delete temp_colour;
            colour_set.erase(colour_it_del);
        }
    }


}

void
tlImage::Gamma(float g)
{
    if(palettized)
    {
        for(int i = 0; i < GetPaletteCount(); i++)
        {
            tlColour col = GetPaletteEntry(i);
            col.Gamma(g);
            SetPaletteEntry(i, col);
        }
    } else {
        for( int x = 0; x < width; x++ )
        {
            for( int y = 0; y < height; y++ )
            {
                tlColour col = GetPixel(x,y);
                col.Gamma(g);
                SetPixel(x, y, col);
            }
        }
    }
}

void tlImage::AdjustContrast(float contrast)
{
    Adjust( contrast , 0.0f, 0.0f, 0.0f, 0.0f, 1.0f );
}

void tlImage::AdjustBrightness(float brightness)
{
    Adjust( 0.0f, brightness, 0.0f, 0.0f, 0.0f, 1.0f );
}

void tlImage::AdjustHue(float hue)
{
    Adjust( 0.0f, 0.0f, hue, 0.0f, 0.0f, 1.0f );
}

void tlImage::AdjustSaturation(float saturation)
{
    Adjust( 0.0f, 0.0f, 0.0f, saturation, 0.0f, 1.0f );
}

void tlImage::AdjustLightness(float lightness)
{
    Adjust( 0.0f, 0.0f, 0.0f, 0.0f, lightness, 1.0f );
}

void tlImage::Adjust( float contrast,   float brightness, float hue,
                      float saturation, float lightness, float gamma )
{
    tlColour mean;
    if( contrast != 0.0f )
    {
        mean = AveRGB();
        float ave = 0.3f * mean[0] + 0.59f * mean[1] + 0.11f * mean[2];
        mean = tlColour( ave, ave, ave );
    }
        
    if(palettized)
    {
        for(int i = 0; i < GetPaletteCount(); i++)
        {
            tlColour col = GetPaletteEntry(i);

            if( contrast != 0.0f )   col.AdjustContrast( mean, contrast );
            if( brightness != 0.0f ) col.AdjustBrightness( brightness );
            if( hue != 0.0f )        col.AdjustHue( hue );
            if( saturation != 0.0f ) col.AdjustSaturation( saturation );
            if( lightness != 0.0f )  col.AdjustLightness( lightness );
            if( gamma != 0.0f )      col.Gamma( gamma );

            SetPaletteEntry(i, col);
        }
    } else {
        for( int x = 0; x < width; x++ )
        {
            for( int y = 0; y < height; y++ )
            {
                tlColour col = GetPixel(x,y);

                if( contrast != 0.0f )   col.AdjustContrast( mean, contrast );
                if( brightness != 0.0f ) col.AdjustBrightness( brightness );
                if( hue != 0.0f )        col.AdjustHue( hue );
                if( saturation != 0.0f ) col.AdjustSaturation( saturation );
                if( lightness != 0.0f )  col.AdjustLightness( lightness );
                if( gamma != 0.0f )      col.Gamma( gamma );

                SetPixel(x, y, col);
            }
        }
    }
}

void tlImage::Inverse( )
{
    //inverse the palette table only if is palettized
    if( IsPalettized( ) ){
        for( int i = 0; i < GetPaletteCount( ); ++i ){
            tlColour colour = GetPaletteEntry( i );
            colour.Inverse( );

            SetPaletteEntry( i, colour );
        }
    }
    else{       //otherwise inverse the pixel color
        for ( int y = 0; y < GetHeight(); ++y ){
            for (int x = 0; x < GetWidth(); ++x){
                tlColour clr = GetPixel(x, y);
                clr.Inverse( );
                SetPixel( x, y, clr );
            }
        }
    }
}

// Compute the Gaussian equation.
static float Gaussian( float sigma, float radius )
{    
    return rmt::Exp( -radius * radius  / ( sigma * sigma ) );
}

// Compute the Gaussian equation using the squared parameters.
// sigma2 = sigma * sigma and radius2 = radius * radius.
static float Gaussian2( float sigma2, float radius2 )
{    
    return rmt::Exp( -radius2 / sigma2 );
}

// Compute the order of this Gaussian kernel.  If a radius of zero is 
// used, then an optimum order is computed.
static int GetGaussianKernelOrder( float sigma, float radius = 0.0f )
{
    int order;

    if( radius < 0.0f )
    {
        radius *= -1.0f;
    }

    // If a radius is requested use that to determine the order.
    if( radius > 0.0f )
    {
        order = static_cast<int>( 2.0f * rmt::Ceil( radius ) ) + 1;
    }
    else
    {
        // Find the largest order which still contains worthwhile information.
        
        order = 3; // Initial guess.
        float sum( 0.0f ), borderSum( 0.0f );
        const float sigma2 = sigma * sigma;

        do
        {
            order += 2; // Is the next order still ok?

            const int halfOrder = order / 2;
            int x, y;
            sum = 0.0f;

            for( x = -halfOrder; x <= halfOrder; x++ )
            {
                for( y = -halfOrder; y <= halfOrder; y++ )
                {
                    sum += Gaussian2( sigma2, static_cast<float>( x * x + y * y ) );
                }
            }

            borderSum = 0.0f;
            for( x = -halfOrder; x < halfOrder; x++ )
            {
                borderSum += Gaussian2( sigma2, static_cast<float>( x * x + halfOrder * halfOrder ) );
            }
            // By symetry the border sum is four times this value.
            borderSum *= 4.0f;

        } while( borderSum > ( sum / 256.0f ) );

        order -= 2; // Set the order back to the last valid value.
    }
    
    return order;
}

// Blur an image using the pixels within the given radius.
// This allows for a simpler means of selcting sigma from GaussianBlur.
bool tlImage::Blur( float pixelRadius )
{
    if( pixelRadius == 0.0f )
    {
        return true; // Radius of zero implies no blur.
    }

    if( pixelRadius < 0.0f )
    {
        pixelRadius *= -1.0f;
    }

    float sigma = 0.3f + 0.45f * pixelRadius; // Chosen through several tests.

    return GaussianBlur( sigma );
}

bool tlImage::GaussianBlur( float sigma, float radius )
{
    int order = GetGaussianKernelOrder( sigma, radius );

    // Ensure the kernel is smaller than image.
    if( order >= GetWidth() || order >= GetHeight() )
    {
        order = ( GetWidth() < GetHeight() ) ? ( GetWidth() - 1 ) : ( GetHeight() - 1 );
        order = ( ( order & 1 ) == 0 ) ? ( order - 1 ) : order;
    }
    if( order <= 1 )
    {
        return false;
    }

    int halfOrder = order / 2;

    float *kernel = new float[order];
    float *k = kernel;
    int i;
    
    // Create 1D kernel.
    for( i = -halfOrder; i <= halfOrder; i++ )
    {
        *k = Gaussian2( sigma * sigma, static_cast<float>( i * i ) );
        k++;
    }

    bool retValue = Convolve2Pass( kernel, order, kernel, order );

    delete[] kernel;

    return retValue;
}

// Convolve the image by using a 1D vertical kernel and a 1D horizontal 
// kernel in two seperate passes.  This is quicker than the 2D version
// and may be used if the 2D kernel is seperable into the two 1D kernels.
bool tlImage::Convolve2Pass( const float *kernelVert, int orderVert, 
                             const float *kernelHorz, int orderHorz)
{
    const tlColour BLACK( 0.0f, 0.0f, 0.0f );

    // Quick exits.
    if( orderVert < 1 || orderHorz < 1 || kernelVert == NULL || kernelHorz == NULL )
    {
        return false;  // invalid parameters values
    }
    if( ( ( orderVert & 1 ) != 1 ) || ( ( orderHorz & 1 ) != 1 ) )
    {
        return false;  // Must be odd order
    }
    if( orderVert > GetHeight() || orderHorz > GetWidth() )
    {
        return false;  // kernel must not be larger than image.
    }
    if( orderVert == 1 && orderHorz == 1 )
    {
        return true;   // nothing to do  ( Ignoring order=1, kernel[0]=0 )
    }

    float normalization = 0;
    int i, j;
    for( i = 0; i < orderVert; i++ )
    {
        for( j = 0; j < orderHorz; j++ )
        {
            normalization += kernelVert[i] * kernelHorz[j];
        }
    }
    normalization = ( normalization == 0.0f ) ? 1.0f : 1.0f / normalization;

    // Prepare this image for convolution.
    int  finalBpp          = GetBpp();
    bool finalIsPalettized = IsPalettized();
    Convert( ( HasAlpha() ? 32 : 24 ), false, HasAlpha() );

    // Create a copy of this image, dialated so as to allow for full convolution
    int dialationHorz = ( orderHorz - 1 ) / 2;
    int dialationVert = ( orderVert - 1 ) / 2;
    tlImage sourceImage( GetWidth() + 2 * dialationHorz, GetHeight() + 2 * dialationVert, 
                         GetBpp(), IsPalettized(), HasAlpha() );

    // Copy the center region.
    sourceImage.CopyRegion( this, 0, 0, GetWidth(), GetHeight(), dialationHorz, dialationVert );

    // First dialate horizontally.
    for( i = 1; i <= dialationHorz; i++ )
    {
        // Reflect image to the left.
        sourceImage.CopyRegion( this, i, 0, 1, GetHeight(), 
                                dialationHorz - i, dialationHorz );

        // Reflect image to the right.
        sourceImage.CopyRegion( this, ( GetWidth() - 1 ) - i, 0, 1, GetHeight(), 
                                ( dialationHorz + GetWidth() -1 ) + i, dialationHorz );
    }
    // Next dialate vertically.
    for( i = 1; i <= dialationVert; i++ )
    {
        // Reflect above top row.
        sourceImage.CopyRegion( &sourceImage, 0, ( dialationVert - 1 ) + i, 
                                sourceImage.GetWidth(), 1, 
                                0, ( dialationVert - i ) );
        
        // Reflect below bottom row.
        sourceImage.CopyRegion( &sourceImage, 0, ( dialationVert + GetHeight() - 1 ) - i, 
                                sourceImage.GetWidth(), 1, 
                                0, ( dialationVert + GetHeight() - 1) + i );
    }

    tlColour sourceColour, sumColour;
    int x, y;       // position in the target image (this)
    int sourceY, dx, dy;

    // Full float value is needed for the intermediate values so use a tlColour array
    // rather than another tlImage.
    tlColour *vertImage = new tlColour[ sourceImage.GetWidth() * GetHeight() ];

    // Apply vertical kernel
    int pixelIdx = 0;
    for( y = 0; y < GetHeight(); y++ )
    {
        for( x = 0; x < sourceImage.GetWidth(); x++ )
        {
            vertImage[pixelIdx] = BLACK;
            for( dy = 0; dy < orderVert; dy++ )
            {
                sourceY = y + dy;
                vertImage[pixelIdx] = vertImage[pixelIdx] + sourceImage.GetPixel( x, sourceY ) * 
                    kernelVert[dy];
            }
            pixelIdx++;
        }
    }

    // Apply horizontal kernel
    pixelIdx = 0;
    for( y = 0; y < GetHeight(); y++ )
    {
        for( x = 0; x < GetWidth(); x++ )
        {
            int pixelOffset = pixelIdx;
            sourceColour = BLACK;
            for( dx = 0; dx < orderHorz; dx++ )
            {
                sourceColour = sourceColour + vertImage[pixelOffset] * kernelHorz[dx];
                pixelOffset++;
            }
            sourceColour = sourceColour * normalization;
            sourceColour.Clamp();
            SetPixel( x, y, sourceColour ); 

            pixelIdx++;
        }
        pixelIdx += orderHorz - 1;
    }

    Convert( finalBpp, finalIsPalettized, HasAlpha() );

    delete[] vertImage;
    
    return true;
}

// Convolve the current image with the specified kernel.  It is assumed
// that the kernel is a row-dominant square matrix of width and height
// ( order x order ).  The boundaries of the image are extended through 
// reflection far enough so as to allow application of the kernel to all
// pixels.  Other extensions of the boundary might be a good addition 
// at some later time.
bool tlImage::Convolve( const float *kernel, int order )
{
    const tlColour BLACK( 0.0f, 0.0f, 0.0f );

    // Quick exits.
    if( order < 1 || kernel == NULL )
    {
        return false;  // invalid parameters values
    }
    if( ( order & 1 ) != 1)
    {
        return false;  // Must be odd order
    }
    if( order > GetWidth() || order > GetHeight() )
    {
        return false;  // kernel must not be larger than image.
    }
    if( order == 1 )
    {
        return true;   // nothing to do  ( Ignoring order=1, kernel[0]=0 )
    }        

    float normalization = 0;
    int i;
    for( i = 0; i < order * order; i++ )
    {
        normalization += kernel[i];
    }
    normalization = ( normalization == 0.0f ) ? 1.0f : 1.0f / normalization;

    // Prepare this image for convolution.
    int  finalBpp          = GetBpp();
    bool finalIsPalettized = IsPalettized();
    Convert( ( HasAlpha() ? 32 : 24 ), false, HasAlpha() );

    // Create a copy of this image, dialated so as to allow for full convolution
    int dialation = ( order - 1 ) / 2;
    tlImage sourceImage( GetWidth() + 2 * dialation, GetHeight() + 2 * dialation, 
                         GetBpp(), IsPalettized(), HasAlpha() );

    // Copy the center region.
    sourceImage.CopyRegion( this, 0, 0, GetWidth(), GetHeight(), dialation, dialation );

    // First dialate horizontally.
    int horzDialation, vertDialation;
    for( horzDialation = 1; horzDialation <= dialation; horzDialation++ )
    {
        // Reflect image to the left.
        sourceImage.CopyRegion( this, horzDialation, 0, 1, GetHeight(), 
                                dialation - horzDialation, dialation );

        // Reflect image to the right.
        sourceImage.CopyRegion( this, ( GetWidth() - 1 ) - horzDialation, 0, 1, GetHeight(), 
                                ( dialation + GetWidth() -1 ) + horzDialation, dialation );
    }
    // Next dialate vertically.
    for( vertDialation = 1; vertDialation <= dialation; vertDialation++ )
    {
        // Reflect above top row.
        sourceImage.CopyRegion( &sourceImage, 0, ( dialation - 1 ) + vertDialation, 
                                sourceImage.GetWidth(), 1, 0, ( dialation - vertDialation ) );
        
        // Reflect below bottom row.
        sourceImage.CopyRegion( &sourceImage, 0, ( dialation + GetHeight() - 1 ) - vertDialation, 
                                sourceImage.GetWidth(), 1, 
                                0, ( dialation + GetHeight() - 1) + vertDialation );
    }

    tlColour sourceColour, sumColour;
    const float *k;
    int x, y;       // position in the target image (this)
    int sourceY, dx, dy;
    for( y = 0; y < GetHeight(); y++ )
    {
        for( x = 0; x < GetWidth(); x++ )
        {
            sourceColour = BLACK;
            k = kernel;
            for( dy = 0; dy < order; dy++ )
            {
                sourceY = y + dy;
                for( dx = 0;  dx < order; dx++ )
                {
                    sourceColour = sourceColour + sourceImage.GetPixel( x + dx, sourceY ) * (*k);
                    k++;
                }
            }
            sourceColour = sourceColour * normalization;
            sourceColour.Clamp();
            SetPixel( x, y, sourceColour ); 
        }
    }

    Convert( finalBpp, finalIsPalettized, HasAlpha() );

    return true;
}

static bool WriteDDSFile( tlFile &fp, DDSURFACEDESC2* pSurfaceDesc)
{

    DWORD dwFileHeader = DDS_HEADER;
    char* pData = (char*) pSurfaceDesc->lpSurface;
    ULONG nSize = pSurfaceDesc->dwLinearSize;
    FixEndian( (u8*)&dwFileHeader, sizeof(DWORD));
    fp.PutBytes( &dwFileHeader, sizeof( DWORD ) );

    pSurfaceDesc->lpSurface = NULL; // Hide pointer - not valid in file.
    ReverseDesc2Endian(pSurfaceDesc);
    fp.PutBytes(pSurfaceDesc, sizeof(DDSURFACEDESC2) );

    ReverseCmpColorBlocks(pData, nSize);
    fp.PutBytes(pData, nSize);

    return true;
}

//////////////////////////////////////////////////////////////////////////////////
///         Save an raw image as a DXTn file
bool tlImage::SaveDXTQuick(tlFile &fp, tlDXTFormat frmt ) const
{
    // We have a texture. Now compress it
   
    //convert image to 32bits non-palettized format before encoding
    tlImage tmpImg( *this );

    tmpImg.SwapChannels(2, 1, 0);
    tmpImg.FlipY( );

    Handle hTextureOut;

    long nSize = tmpImg.QuickDXTEncode( frmt, hTextureOut );

    if( nSize > 0 )
    {
        // Compression time
        DDSURFACEDESC2 ddsd2;

        // Setup structures to save compressed texture
        memset(&ddsd2, 0, sizeof(DDSURFACEDESC2));
        ddsd2.dwSize = sizeof(DDSURFACEDESC2);
        ddsd2.dwFlags = DDSD_CAPS|DDSD_WIDTH|DDSD_HEIGHT|DDSD_PIXELFORMAT|
            DDSD_MIPMAPCOUNT|DDSD_LINEARSIZE;
        ddsd2.dwWidth = width;
        ddsd2.dwHeight = height;
        ddsd2.dwMipMapCount = 0;
        ddsd2.dwLinearSize = nSize;
        ddsd2.lpSurface = *hTextureOut;

        ddsd2.ddpfPixelFormat.dwSize = sizeof(DDPIXELFORMAT);
        ddsd2.ddpfPixelFormat.dwFlags = DDPF_FOURCC;

        ddsd2.ddpfPixelFormat.dwRBitMask = 0xff0000;
        ddsd2.ddpfPixelFormat.dwGBitMask = 0x00ff00;
        ddsd2.ddpfPixelFormat.dwBBitMask = 0x0000ff;
        if( hasalpha )
            ddsd2.ddpfPixelFormat.dwRGBAlphaBitMask = 0xff000000;
        else
            ddsd2.ddpfPixelFormat.dwRGBAlphaBitMask = 0x000000;
      

        switch( frmt ){
            case DXT1:
                ddsd2.ddpfPixelFormat.dwFourCC = FOURCC_DXT1;
                break;

            case DXT2:
                ddsd2.ddpfPixelFormat.dwFourCC = FOURCC_DXT2;
                break;

            case DXT3:
                ddsd2.ddpfPixelFormat.dwFourCC = FOURCC_DXT3;
                break;

            case DXT4:
                ddsd2.ddpfPixelFormat.dwFourCC = FOURCC_DXT4;
                break;

            case DXT5:
                ddsd2.ddpfPixelFormat.dwFourCC = FOURCC_DXT5;
                break;
        }

        ddsd2.ddsCaps.dwCaps = DDSCAPS_TEXTURE|DDSCAPS_COMPLEX|DDSCAPS_MIPMAP;

        // And save it as a DDS file
        WriteDDSFile(fp, &ddsd2);

        FreeMemory(hTextureOut);
    }


    return true;
   
}

//////////////////////////////////////////////////////////////////////////////////
///         Save an raw image as a DXTn file
bool tlImage::SaveDXT(tlFile &fp, tlDXTFormat frmt ) const
{

    
    //convert image to 32bits non-palettized format before encoding
    tlImage tmpImg( *this );

    tmpImg.Convert( 32, false, hasalpha );

    // We have a texture. Now compress it

    Handle hTextureOut;
    long nSize;
    int nEncodeType;

    switch( frmt ){
        case DXT1:
            //specify S3TC_ENCODE_RGB_ALPHA_COMPARE will enable 1-bit alpha for
            //DXT1 texture
            nEncodeType = S3TC_ENCODE_RGB_FULL | S3TC_ENCODE_RGB_ALPHA_COMPARE;           
            break;

        case DXT3:
            nEncodeType = S3TC_ENCODE_RGB_FULL | S3TC_ENCODE_ALPHA_EXPLICIT;
            break;

        case DXT5:
            nEncodeType = S3TC_ENCODE_RGB_FULL | S3TC_ENCODE_ALPHA_INTERPOLATED;
            break;

        default:
            assert("tlImage unknown format" == 0);
            return false;
    }

    S3_TEXTURE textureIn;

    memset(&textureIn, 0, sizeof(textureIn));
    textureIn.lWidth = tmpImg.width;
    textureIn.lHeight = tmpImg.height;
    textureIn.lPitch = tmpImg.width*tmpImg.bpp/8;

    Handle hTextureIn;

    nSize = tmpImg.width*tmpImg.height*tmpImg.bpp/8;
    hTextureIn = AllocateMemory( nSize );

    char *dest = *hTextureIn;
    int scanline = textureIn.lPitch;

    // Images in toollib are upside down compared to DXTn
    for( int i = tmpImg.height - 1; i >=0; i-- )
    {        
        memcpy( dest, tmpImg.pixeldata[ i ], scanline ); 
        dest += scanline;
    }

    textureIn.pSurface = *hTextureIn;

    textureIn.PixelFormat.nARGBBitCount = tmpImg.bpp;
   
    //the image mask of tlImage seems is RGB
    textureIn.PixelFormat.nRedMask    = 0x00ff0000;
    textureIn.PixelFormat.nGreenMask  = 0x0000ff00;
    textureIn.PixelFormat.nBlueMask   = 0x000000ff;

    if( tmpImg.hasalpha )
        textureIn.PixelFormat.nAlphaMask = 0xff000000;
    else
        textureIn.PixelFormat.nAlphaMask = 0;

   
    // Endian switch Masks as necessary - easier than endian switching all data
    FixEndian((u8*) &textureIn.PixelFormat.nRedMask, sizeof(DWORD));
    FixEndian((u8*) &textureIn.PixelFormat.nGreenMask, sizeof(DWORD));
    FixEndian((u8*) &textureIn.PixelFormat.nBlueMask, sizeof(DWORD));

    nSize = S3TC_GetEncodeSize( width, height, nEncodeType);


    hTextureOut = AllocateMemory(nSize);
    if(hTextureOut)
    {
        // Compression time
        DDSURFACEDESC2 ddsd2;
        S3_TEXTURE textureOut;
      
        S3TC_Encode(&textureIn, &textureOut, *hTextureOut, nEncodeType, 0, 0, 0);
      
        // Setup structures to save compressed texture
        memset(&ddsd2, 0, sizeof(DDSURFACEDESC2));
        ddsd2.dwSize = sizeof(DDSURFACEDESC2);
        ddsd2.dwFlags = DDSD_CAPS|DDSD_WIDTH|DDSD_HEIGHT|DDSD_PIXELFORMAT|
            DDSD_MIPMAPCOUNT|DDSD_LINEARSIZE;
        ddsd2.dwWidth = textureOut.lWidth;
        ddsd2.dwHeight = textureOut.lHeight;
        ddsd2.dwMipMapCount = 0;
        ddsd2.dwLinearSize = nSize;
        ddsd2.lpSurface = *hTextureOut;

        ddsd2.ddpfPixelFormat.dwSize = sizeof(DDPIXELFORMAT);
        ddsd2.ddpfPixelFormat.dwFlags = DDPF_FOURCC;

        ddsd2.ddpfPixelFormat.dwRBitMask = 0xff0000;
        ddsd2.ddpfPixelFormat.dwGBitMask = 0x00ff00;
        ddsd2.ddpfPixelFormat.dwBBitMask = 0x0000ff;
        if( tmpImg.hasalpha )
            ddsd2.ddpfPixelFormat.dwRGBAlphaBitMask = 0xff000000;
        else
            ddsd2.ddpfPixelFormat.dwRGBAlphaBitMask = 0x000000;
      


        switch( frmt ){
            case DXT1:
                ddsd2.ddpfPixelFormat.dwFourCC = FOURCC_DXT1;
                break;

            case DXT2:
                ddsd2.ddpfPixelFormat.dwFourCC = FOURCC_DXT2;
                break;

            case DXT3:
                ddsd2.ddpfPixelFormat.dwFourCC = FOURCC_DXT3;
                break;

            case DXT4:
                ddsd2.ddpfPixelFormat.dwFourCC = FOURCC_DXT4;
                break;

            case DXT5:
                ddsd2.ddpfPixelFormat.dwFourCC = FOURCC_DXT5;
                break;
        }

        ddsd2.ddsCaps.dwCaps = DDSCAPS_TEXTURE|DDSCAPS_COMPLEX|DDSCAPS_MIPMAP;

        // And save it as a DDS file
        WriteDDSFile(fp, &ddsd2);

        FreeMemory(hTextureOut);
    }

    FreeMemory( hTextureIn );

    return true;
   
}

bool tlImage::LoadDXT( tlFile &fp )
{

    DDSURFACEDESC2 surfaceDesc;

    //read in the header of DXTn file, frmt carries the DXT format of this file
    memset( &surfaceDesc, 0, sizeof( DDSURFACEDESC2 ) );

    tlImageFormat frmt;

    Handle hInTexture = ReadDDSFile( fp, &surfaceDesc, frmt );
    if( !hInTexture  )
        return false;

    S3_TEXTURE textureIn;
    S3_TEXTURE textureOut;

    textureIn.lWidth = surfaceDesc.dwWidth;
    textureIn.lHeight = surfaceDesc.dwHeight;
    textureIn.lPitch = surfaceDesc.dwLinearSize;
    textureIn.pSurface = *hInTexture;

    textureIn.PixelFormat.nFlags = S3_TF_COMPRESSED;
    switch(frmt)
    {
        case IMG_DXT1:
            textureIn.PixelFormat.nARGBBitCount = S3TC_ENCODE_ALPHA_NONE;
            break;
        case IMG_DXT3:
            textureIn.PixelFormat.nARGBBitCount = S3TC_ENCODE_ALPHA_EXPLICIT;
            break;
        case IMG_DXT5:
            textureIn.PixelFormat.nARGBBitCount = S3TC_ENCODE_ALPHA_INTERPOLATED;
            break;
        default:
            textureIn.PixelFormat.nARGBBitCount = S3TC_ENCODE_ALPHA_NONE;
            break;
    }

    long nSize = S3TC_GetDecodeSize( textureIn.lWidth, textureIn.lHeight );

    Handle hDecodedTexture = AllocateMemory(nSize);
    if(!hDecodedTexture)
        return false;

    memset( &textureOut, 0, sizeof( S3_TEXTURE ) );
    S3TC_Decode( &textureIn, &textureOut, *hDecodedTexture );

    //set the image parameter
    width = textureIn.lWidth;
    height = textureIn.lHeight;
    bpp = textureOut.PixelFormat.nARGBBitCount;
    pixeldata = (unsigned char**) hDecodedTexture;
    palettized = false;
    format = frmt;

    hasalpha = ( textureOut.PixelFormat.nFlags & S3_TF_HASALPHA );

    //finally copy the decoded texture to pixeldata
    //hDecodedTexture hold a linear layout of image data
    //while pixeldata is an array of linear layout
    pixeldata = new unsigned char* [height];

    int scanline = width*bpp/8;
    for (int y = 0; y < height; ++y)
    {
        pixeldata[y] = new unsigned char [scanline];
    }

    char *src = *hDecodedTexture;


    for( int i = (height - 1); i >= 0; i-- )
    {        
        memcpy( pixeldata[ i ], src, scanline ); 
        src += scanline;
    }

    FreeMemory( hDecodedTexture );
 
    // Fixed red-blue swap -  SwapChannels( 2, 1, 0, 3 );

    return true;
}

// Store the grayscaled image to the alpha channel 
// for the texture modulate operation in ps2
void tlImage::AppendGrayScaleToAlpha( )
{

    //convert the original image to 32 bpp with 8 bit alpha depth
    Convert( 32, false, true );

    //now copy the palettized index to the alpha channel
    for( int j = 0; j < height; ++j ){
        for( int i = 0; i < width; ++i ){
            tlColour color= GetPixel( i, j );            
            color.alpha = ( color.red + color.green + color.blue ) / 3.0F;
            SetPixel( i, j, color );
        }
    }
        
    //convert back to palettized image finally
    Convert( 32, true, true );
}

//----------------------------------------------------------------------------------------
//  Prepare this image for use with modulation by alpha blending.  After this
//  is done, an approximate modulation can be performed by using alpha blending:
//  for each pixel
//  {
//     Approximate.pixel = ( BaseImage.pixel - this.pixel ) this.pixel.alpha.
//  }
//----------------------------------------------------------------------------------------
void tlImage::PrepareForAlphaBlend( const tlImage *baseImage ) 
{
    PrepareForAlphaBlend( -1.0f, baseImage );
}

// Prepare for modulation by alpha blending.  Mean intensity if determined from image if first
// parameter is not positive.
void tlImage::PrepareForAlphaBlend( float meanIntensity, const tlImage *baseImage ) {
   
    const tlColour APPROX_EFFECTIVE_MEAN( 0.7f, 0.7f, 0.7f ); // Chosen through several trials.
    const tlColour WHITE( 1.0f, 1.0f, 1.0f );

    tlColour basePixel;     // Pixel value of the base image.
    tlColour manglePixel;   // Pixel value of this image which will be mangled.
    tlColour effectiveMean; // The effective average pixel value of the base texture.

    // Change to 32 bit, non-palettized, alpha channel.
    if( GetBpp() == 32 || ! HasAlpha() || IsPalettized() == true ) 
    {
        Convert( 32, false, true );
    }
   
    if( meanIntensity <= 0.0f )
    {
        if( baseImage == NULL )
        {
            effectiveMean = APPROX_EFFECTIVE_MEAN;
        }
        else
        {
            // Choose effective mean adaptively based on baseImage.
            tlColour mean = baseImage->AveRGB();
            // The following works for light but not dark base images.
            // tlColour max  = baseImage->MaxRGB();
            // effectiveMean = mean + ( max - mean ) * 0.5;  
            effectiveMean = mean;
        }
    }
    else
    {
        meanIntensity = rmt::Clamp( 1.0f - meanIntensity, 0.0f, 1.0f ); 
        effectiveMean = tlColour( meanIntensity, meanIntensity, meanIntensity );
    }   

    int x, y;   
    for( x = 0; x < GetWidth(); x++ )
    {
        for( y = 0; y < GetHeight(); y++ )
        {
            manglePixel = GetPixel( x, y );
            // basePixel   = base.GetPixel(x, y);
            int   maxChannel = manglePixel.MaxChannel();
            float maxValue   = manglePixel[maxChannel];
            if( maxValue != 0.0f )
            {
                // Set the two minor colour channels.
                manglePixel = effectiveMean * ( WHITE - manglePixel * ( 1.0f / maxValue ) );
            }
            manglePixel[maxChannel] = 0.0f;     // Set the max colour channel.
            manglePixel.alpha       = maxValue; // Set the alpha channel (used as scale).

            manglePixel.Clamp();
            SetPixel( x, y, manglePixel );
        }
    }

}

long tlImage::QuickDXTEncode( tlDXTFormat frmt, char ** & encoded ) const
{
    bool bPow;

    //testing if width is power of 2
    bPow = ( ( width - 1 ) & width ) == 0;

    if( !bPow )
        return 0;
    
    bPow = ( ( height - 1 ) & height ) == 0;

    if( !bPow )
        return 0;
    
    unsigned short blockSize = GetDXTBlockSize( frmt );

    long size = blockSize*(width/4)*(height/4);
    //allocated memory for encoded dxt image
    encoded = AllocateMemory( size );
    

    char * start = *encoded;
    
    for( int i = 0; i < height/4; ++i ){
        for( int j = 0; j < width/4; ++j ){
            QuickDXTBlockEncode( start, j*4, i*4, frmt );
            start += blockSize;
        }
    }

    return size;

}

int tlImage::GetDXTBlockSize( tlDXTFormat frmt ) const
{
    switch( frmt ){
        case DXT1:
            return 8;
        case DXT3:
        case DXT5:
            return 16;
        default:
            return 0;
    }
}

void tlImage::QuickDXTBlockEncode( char * buffer, int cornerx, int cornery, tlDXTFormat frmt ) const
{
    QuickDXTBlockColorEncode( buffer, cornerx, cornery );

    if( frmt == IMG_DXT3 || frmt == IMG_DXT5 ){
        buffer += 8;                    //increase buffer by 8 bytes
        QuickDXTBlockAlphaEncode( buffer, cornerx, cornery );
    }
}

void tlImage::QuickDXTBlockColorEncode( char * buffer, int cornerx, int cornery ) const
{

    unsigned short min, max, aver;
    long sum = 0;
    min =  max = aver = 0;

    int i, j;
    for( i = 0; i < 4; ++i ){
        for ( j = 0; j < 4; ++j ){
            tlColour clr = GetPixel( cornerx + j, cornery + i );
            unsigned short value = clr.RGB565( );

            max = max > value ? max : value;
            min = min < value ? min : value;
            sum += value;
        }
    }

    aver = (unsigned short)( sum/16 );

    //quick encode algorithm:  color0 = max; color1 = min
    //for pixel( i, j ):       if p(ij ) = color0, code(ij) = 0
    //     if p(ij) = color1, code(ij) = 1
    //     if p(ij) > aver,   code(ij) = 2
    //     if p(ij ) < aver,  code(ij) = 3
    unsigned long ec = 0;
    for( i = 0; i < 4; ++i ){
        for( j = 0; j < 4; ++j ){
            tlColour clr = GetPixel( cornerx + j, cornery + i );
            unsigned short value = clr.RGB565( );

            unsigned long code;
            if( value == max )
                code = 0;
            else if( value == min )
                code = 1;
            else if( value > aver )
                code = 2;
            else
                code = 3;

            code <<= 2*( 4*i + j );
            ec |= code;
        }
    }

    *buffer++ = ( char )( max & 0xff );
    *buffer++ = ( char )( max >> 8 );
    *buffer++ = ( char )( min & 0xff );
    *buffer++ = ( char )( min >> 8 );
    *buffer++ = ( char )( ec & 0xff );
    *buffer++ = ( char )( ( ec >> 8 ) & 0xff );
    *buffer++ = ( char )( ( ec >> 16 ) & 0xff );
    *buffer++ = ( char )( ( ec >> 24 ) & 0xff );
}

void tlImage::QuickDXTBlockAlphaEncode( char * buffer, int cornerx, int cornery ) const
{

    if( !hasalpha ){
        for( int i = 0; i < 8; ++i )
            *(buffer + i ) = 0;
    }
    else{
        unsigned long alpha1, alpha2;
        alpha1 = alpha2 = 0;
        int i, j;
        unsigned short min = 0, max = 0;
        for( i = 0; i < 4; ++i ){
            for ( j = 0; j < 4; ++j ){
                tlColour clr = GetPixel( cornerx + j, cornery + i );
                unsigned short value = clr.AlphaCh( );

                max = max > value ? max : value;
                min = min < value ? min : value;                
            }
        }

        unsigned short delta = ( max - min )/16 + 1;        

        //quantitizer alpha
        for( i = 0; i < 4; ++i ){
            for ( j = 0; j < 4; ++j ){
                tlColour clr = GetPixel( cornerx + j, cornery + i );
                unsigned short value = clr.AlphaCh( );

                unsigned long alpha = ( value - min )/ delta;

                if( i < 2 ){
                    alpha  <<= 4*( 4*i + j );
                    alpha1 |= alpha;
                }
                else{
                    alpha <<= 4*( 4*(i - 2) + j );
                    alpha2 |= alpha;
                }
            }
        }

        *buffer++ = ( char )( alpha1 & 0xff );
        *buffer++ = ( char )( ( alpha1 >> 8 ) & 0xff );
        *buffer++ = ( char )( ( alpha1 >> 16 ) & 0xff );
        *buffer++ = ( char )( ( alpha1 >> 24 ) & 0xff );

        *buffer++ = ( char )( alpha2 & 0xff );
        *buffer++ = ( char )( ( alpha2 >> 8 ) & 0xff );
        *buffer++ = ( char )( ( alpha2 >> 16 ) & 0xff );
        *buffer++ = ( char )( ( alpha2 >> 24 ) & 0xff );

    }

}




//----------------------------------------------------------------------
char *tlImage::GCSwizzle32Bit(void) const
{
    int bpl = GetScanlineSize();
    char *bits = new char[bpl * height];

    char *artile, *gbtile;
    char *lines = new char[width * 16];


    int x, y;
    for (y = 0; y < height; y += 4)
    {
        for (int a = 0; a < 4; a++) 
        {
            memcpy(&lines[a * bpl], pixeldata[(height - (y + a)) - 1], bpl);
        }

        for (x = 0; x < width; x += 4)
        {
            artile = &bits[(y * bpl) + (x * 16)]; 
            gbtile = &bits[(y * bpl) + (x * 16) + 32]; 

            int tx, ty;
            for (ty = 0; ty < 4; ty++)
            {
                for (tx = x; tx < (x + 4); tx++)
                {
                    artile[0] = lines[(ty * bpl) + (tx * 4 + 3)];
                    artile[1] = lines[(ty * bpl) + (tx * 4 + 0)];
                    artile += 2;

                    gbtile[0] = lines[(ty * bpl) + (tx * 4 + 1)];
                    gbtile[1] = lines[(ty * bpl) + (tx * 4 + 2)];
                    gbtile += 2;
                }
            }
        }
    }

    delete[] lines;
    return bits;
}


//----------------------------------------------------------------------
char *tlImage::GCSwizzle16Bit(void) const
{
    return NULL;
}


//----------------------------------------------------------------------
char *tlImage::GCSwizzle8Bit(void)  const
{
    char *bits = new char[GetScanlineSize() * height];
    char *lines = new char[width * 4];
    int x, y;
    for (y = 0; y < height; y += 4)
    {
        for (int a = 0; a < 4; a++) 
        {
            memcpy(&lines[a * GetScanlineSize()], pixeldata[(height - (y + a)) - 1], GetScanlineSize());
        }

        for (x = 0; x < width; x += 8)
        {
            char *dest = &bits[y * width + x * 4];
            int tx, ty;
            for (ty = 0; ty < 4; ty++)
            {
                for (tx = x; tx < (x + 8); tx++)
                {
                    *dest = lines[ty * width + tx];
                    ++dest;
                }
            }
        }
    }
    delete[] lines;
    return bits;
}

//----------------------------------------------------------------------
char *tlImage::GCSwizzle4Bit(void)  const
{
    int   bpl   = GetScanlineSize();
    char *bits  = new char[bpl * height];
    char *lines = new char[bpl * 8];

    int x, y;
    for (y = 0; y < height; y += 8)
    {
        for (int a = 0; a < 8; a++) 
        {
            memcpy(&lines[a * bpl], pixeldata[(height - (y + a)) - 1], bpl);
        }

        for (x = 0; x < width; x += 8)
        {
            unsigned int *dest = (unsigned int *)(&bits[y * bpl + x * 4]);
            int ty;
            for (ty = 0; ty < 8; ty++)
            {
                *dest = *((unsigned int *) (&lines[ty * bpl + x / 2]));
                ++dest;
            }
        }
    }


    // Swap the even/odd pixels
//    int size = height * bpl;
//    int a;
//    for (a = 0; a < size; a++)
//    {
//        char temp = bits[a];
//        bits[a] = (char) (((temp >> 4) & 0x0F) | ((temp << 4) & 0xF0));
//    }


    delete[] lines;
    return bits;
}

//----------------------------------------------------------------------
char *tlImage::GCSwizzleDXT1(void)  const
{
    return NULL;
}

//----------------------------------------------------------------------
char *tlImage::GCSwizzlePalette(void) const
{

    unsigned short *pal = new unsigned short[GetPaletteCount()];

    int a;
    for (a = 0; a < GetPaletteCount(); a++)
    {
        tlColour c(*((unsigned long *)&palette[a * 4]));

        unsigned short val;

        if (c.AlphaCh() > 255 - (256 >> 3))
        {
            // Set high bit so the mode is 555, if high bit is clear mode is 4443
            val = (unsigned short)  (0x8000 |
                                     ((c.BlueCh()   >> 3) << 10) |
                                     ((c.GreenCh() >> 3) << 5)  |
                                     (c.RedCh()  >> 3));
        }
        else
        {

            // if high bit is clear mode is 4443
            val = (unsigned short)   (0x7FFF & 
                                      ((c.BlueCh()   >> 4) << 8) |
                                      ((c.GreenCh() >> 4) << 4) |
                                      (c.RedCh()  >> 4) |
                                      ((c.AlphaCh() >> 5) << 12));
        }

        pal[a] = SwapWord(val);

    }
    return (char *) pal;
}

void tlImage::Clamp1BitAlpha()
{
    if (!HasAlpha())
    {
        return;
    }
    if (IsPalettized())
    {
        int i = 0;
        tlColour c;
        for(; i < GetPaletteCount(); i++)
        {
            c = GetPaletteEntry(i);
            if (c.alpha > 127)
            {
                c.alpha = 255;
            }
            else
            {
                c.alpha = 0;
            }
            SetPaletteEntry(i,c);
        }
    }
    else
    {
        int x = 0;
        int y = 0;
        tlColour c;
        for(; y < GetHeight(); y++)
        {
            for(x = 0; x < GetWidth(); x++)
            {
                c = GetPixel( x, y );
                if( c.alpha > 127 )
                {
                    c.alpha = 255;
                }
                else
                {
                    c.alpha = 0;
                }
                SetPixel( x, y, c );
            }
        }
    }
}



//----------------------------------------------------------------------
// tlVolumeImage initialization & cleanup
// ================================
tlVolumeImage::tlVolumeImage():
    width(DEFAULT_WIDTH),
    height(DEFAULT_HEIGHT),
    depth(DEFAULT_VOLUME_DEPTH),
    bpp(DEFAULT_BPP),
    palettized(DEFAULT_PALETTIZED),
    hasalpha(DEFAULT_ALPHA),
    format(IMG_PNG),
    quickSave( false )
{
}

tlVolumeImage::tlVolumeImage(int w, int h, int d, int b, tlImageFormat fmt, bool ispal, bool alpha):
    format(fmt),
    quickSave( false )
{
    SetAttributes(w, h, d, b, ispal, alpha);
}

tlVolumeImage::tlVolumeImage(const tlVolumeImage& img)
{
    *this = img;
}

tlVolumeImage::tlVolumeImage(tlImage* image, int d)
{
    assert(d>0);
    assert(image);

    Cleanup();
    images.SetCount(d);

    width = image->GetWidth()/d;
    height = image->GetHeight();
    depth = d;
    bpp = image->GetBpp();
    palettized = image->IsPalettized();
    hasalpha = image->HasAlpha();
    format = image->GetFormat();
    SetName(image->GetName());

    assert (IsPow2(width)&&IsPow2(height)&&IsPow2(depth));

    for (int i = 0; i < depth; i++)
    {
        char imageName[256];
        sprintf(imageName,"%s_%i",image->GetName(),i);

        images[i] = new tlImage(width, height, bpp, palettized, hasalpha, NULL, image->GetPalette());
        images[i]->SetName(imageName);
        images[i]->CopyRegion(image,width*i,0,width,height,0,0);
    }  
}

tlVolumeImage::tlVolumeImage(tlDataChunk* ch):
    width(DEFAULT_WIDTH),
    height(DEFAULT_HEIGHT),
    depth(DEFAULT_VOLUME_DEPTH),
    bpp(DEFAULT_BPP),
    palettized(DEFAULT_PALETTIZED),
    hasalpha(DEFAULT_ALPHA),
    format(IMG_PNG),
    quickSave( false )
{
    LoadFromChunk(ch);
}

void tlVolumeImage::Cleanup()
{
    int i;
    for (i = 0; i < images.Count(); i++)
    {
        delete images[i];
    }
    images.ZeroCount();

    width  = DEFAULT_WIDTH;
    height = DEFAULT_HEIGHT;
    bpp    = DEFAULT_BPP;
    palettized = DEFAULT_PALETTIZED;
    hasalpha   = DEFAULT_ALPHA;
    depth  = DEFAULT_VOLUME_DEPTH;
}

tlVolumeImage::~tlVolumeImage()
{
    Cleanup();
}

// tlVolumeImage attributes
// ==================
// This function sets the key image attributes.  This calls the Cleanup() function
// which deletes all image information so don't call this image data must be retained.
void tlVolumeImage::SetAttributes(int w, int h, int d, int b, bool ispal, bool alpha)
{
    Cleanup();

    width = w;
    height = h;
    depth = d;
    bpp = b;
    palettized = ispal || (bpp < 8);

    if(bpp == 24)
    {
        hasalpha = false;  // 24 bit image never has alpha.
    }
    else if(bpp == 32)
    {
        hasalpha = true;   // 32 bit image always has alpha.
    }
    else
    {
        hasalpha = alpha;  // 1-16 bit image may or may not alpha.
    }

    assert (IsPow2(width)&&IsPow2(height)&&IsPow2(depth));

    images.SetCount(d);
}

void tlVolumeImage::SetFormat(tlImageFormat fmt)
{
    for (int i = 0; i < images.Count(); i++)
    {
        if (images[i])
        {
            images[i]->SetFormat(fmt);
        }
    }
}

void tlVolumeImage::SetQuickSave( bool bQuick )
{
    quickSave = bQuick;

    for (int i = 0; i < images.Count( ); i++){
        if (images[i])
            images[i]->SetQuickSave( bQuick );
    }
}

tlVolumeImage& tlVolumeImage::operator = (const tlVolumeImage& image)
{
    SetName(image.GetName());
    SetAttributes(image.GetWidth(), image.GetHeight(), image.GetDepth(), image.GetBpp(), image.IsPalettized(), image.HasAlpha());
    SetFormat(image.GetFormat());

    for (int i = 0; i < image.GetDepth(); i++)
    {
        images[i] = new tlImage(*(image.images[i]));
    }

    SetQuickSave( quickSave );
    return *this;
}

void tlVolumeImage::AddImage(tlImage* image)
{
    assert(image);
    tlImage* copy = new tlImage(*image);
    images.Append(copy);
}

void tlVolumeImage::SetImage(int i, tlImage* image)
{
    assert(image);
    if(i<depth)
    {
        delete images[i];
        images[i] = new tlImage(*image);
    }
}

tlImage* tlVolumeImage::GetImage(int i)
{
    if(i<depth)
    {
        return images[i];
    }
    else
    {
        return NULL;
    }
}

void tlVolumeImage::Convert(int newBpp, bool isPal, bool alpha, bool dither)
{
    for (int i = 0; i < images.Count(); i++)
    {
        images[i]->Convert(newBpp,isPal,alpha,dither);
    }
}

/* used to resize the image to the new dimensions while preserving as much of the original image
   as possible (new pixels will be set to index 0 if palettized otherwise it will be (0,0,0,0)
*/
void tlVolumeImage::Resize(int newWidth, int newHeight)
{
    for (int i = 0; i < images.Count(); i++)
    {
        images[i]->Resize(newWidth,newHeight);
    }
}

//************************************
//
// Flip an image on x = y
void 
tlVolumeImage::Flip()
{
    for (int i = 0; i < images.Count(); i++)
    {
        images[i]->Flip();
    }
}

//************************************
//
// Flip an image Y
// Fixes upsidedown images
void tlVolumeImage::FlipY(void)
{
    for (int i = 0; i < images.Count(); i++)
    {
        images[i]->FlipY();
    }
}

//************************************
//
// Flip an image X
// Fixes leftsideright images
void tlVolumeImage::FlipX(void)
{
    for (int i = 0; i < images.Count(); i++)
    {
        images[i]->FlipX();
    }
}

void tlVolumeImage::Inverse( )
{

    for (int i = 0; i < images.Count(); i++)
        images[i]->Inverse();

}

tlColour tlVolumeImage::GetPixel(int x, int y, int z) const
{
    assert((x>=0)&&(x<width));
    assert((y>=0)&&(y<height));
    assert((z>=0)&&(z<depth));
    return images[z]->GetPixel(x,y);
}

void tlVolumeImage::GetPixel(int x, int y, int z, unsigned char c[4]) const
{
    assert((x>=0)&&(x<width));
    assert((y>=0)&&(y<height));
    assert((z>=0)&&(z<depth));
    images[z]->GetPixel(x,y,c);
}

void tlVolumeImage::SetPixel(int x, int y, int z, tlColour colour)
{
    assert((x>=0)&&(x<width));
    assert((y>=0)&&(y<height));
    assert((z>=0)&&(z<depth));
    images[z]->SetPixel(x, y, colour);
}

void tlVolumeImage::SetPixel(int x, int y, int z, const unsigned char c[4])
{
    assert((x>=0)&&(x<width));
    assert((y>=0)&&(y<height));
    assert((z>=0)&&(z<depth));
    images[z]->SetPixel(x, y, c);
}

void tlVolumeImage::Clear()
{
    for (int i = 0; i < images.Count(); i++)
    {
        images[i]->Clear();
    }
}

void tlVolumeImage::Fill(tlColour colour)
{
    for (int i = 0; i < images.Count(); i++)
    {
        images[i]->Fill(colour);
    }
}

void tlVolumeImage::Fill(const unsigned char c[4])
{
    for (int i = 0; i < images.Count(); i++)
    {
        images[i]->Fill(c);
    }
}


// tlVolumeImage chunk manipulation functions
// ====================================
void tlVolumeImage::LoadFromChunk(tlDataChunk* ch)
{
    Cleanup();

    assert(ch->ID() == Pure3D::Texture::VOLUME_IMAGE);

    tlVolumeImageChunk* vch = dynamic_cast<tlVolumeImageChunk*>(ch);
    assert(vch);

    assert(vch->GetVersion() == VOLUME_IMAGE_VERSION);
   
    SetName(vch->GetName());
    SetAttributes(vch->GetWidth(), vch->GetHeight(), vch->GetDepth(), vch->GetBpp(),(vch->GetPalettized() != 0), (vch->GetHasAlpha() != 0));
    SetFormat((tlImageFormat)vch->GetFormat());

    int imageNum = 0;

    for(int dch = 0; dch < vch->SubChunkCount(); dch++)
    {
        tlDataChunk* subch = vch->GetSubChunk(dch);
        switch(subch->ID())
        {
            case Pure3D::Texture::IMAGE:
            {
                if (imageNum<depth)
                {
                    images[imageNum] = new tlImage(subch);
                    imageNum++;
                }
                break;
            }
        }
    }
}

tlDataChunk* tlVolumeImage::Chunk()
{
    tlVolumeImageChunk* chunk = new tlVolumeImageChunk();

    chunk->SetName(GetName());
    chunk->SetVersion(VOLUME_IMAGE_VERSION);
    if ((images.Count()>0)&&(depth>0))
    {
        chunk->SetWidth(images[0]->GetWidth());
        chunk->SetHeight(images[0]->GetHeight());
        chunk->SetDepth(depth);
        chunk->SetBpp(images[0]->GetBpp());
        chunk->SetPalettized(images[0]->IsPalettized());
        chunk->SetHasAlpha(images[0]->HasAlpha());
        chunk->SetFormat(images[0]->GetFormat());
    }
    else
    {
        chunk->SetWidth(width);
        chunk->SetHeight(height);
        chunk->SetDepth(depth);
        chunk->SetBpp(bpp);
        chunk->SetPalettized(palettized);
        chunk->SetHasAlpha(hasalpha);
        chunk->SetFormat(format);
    }

    for (int i = 0; i < images.Count(); i++)
    {
        chunk->AppendSubChunk(images[i]->Chunk());
    }
    return chunk;
}

bool tlVolumeImage::InitializeMipmap(int level, tlVolumeImage** mipmap, int &w, int &h, int &d) const
{
    if (level < 0)
    {
        *mipmap = NULL;
        return false;
    }

    if (level == 0)
    {
        *mipmap = new tlVolumeImage(*this);
        return false;
    }

    int levelFactor = (1 << level);

    w = width / levelFactor;
    h = height / levelFactor;
    d = depth / levelFactor;

    int min_dim;
    if (bpp < 8) 
        min_dim = 2;
    else 
        min_dim = 1;

    if ((w < min_dim) && (h < min_dim) && (d < 1))
    {
        *mipmap = NULL;
        return false;
    }

    if (w < min_dim)
    {
        w = min_dim;
    }
    else if (h < min_dim)
    {
        h = min_dim;
    }
    else if (d < 1)
    {
        d = 1;
    }

    *mipmap = new tlVolumeImage(w, h, d, bpp, format, palettized, hasalpha);

    char mipmap_name[P3DMAXNAME];
    sprintf(mipmap_name, "%s_%d", GetName(), level);
    (*mipmap)->SetName(mipmap_name);

    return true;
}

// mipmaps aren't currently generated correctly, should be doing pixel interpolation
tlVolumeImage* tlVolumeImage::GenerateMipmap(int level, tlColour key) const
{
    unsigned char quad[4] =
        {
            key.BlueCh(), key.GreenCh(), key.RedCh(), key.AlphaCh()
        };

    return GenerateMipmap(level, true, quad);
}

// mipmaps aren't currently generated correctly, should be doing pixel interpolation
tlVolumeImage* tlVolumeImage::GenerateMipmap(int level, bool use_colour_key, const unsigned char key[4]) const
{
    tlVolumeImage* mipmap;
    int w, h, d;
    if (InitializeMipmap(level, &mipmap, w, h, d))
    {
        for (int i = 0; i < depth; i++)
        {
            tlImage* mipmap1 = images[i]->GenerateMipmap(level,use_colour_key,key);
            if (i<depth-1)
            {
                i++;
                tlImage* mipmap2 = images[i]->GenerateMipmap(level,use_colour_key,key);
                assert (mipmap1->GetWidth() == mipmap2->GetWidth());
                assert (mipmap1->GetHeight() == mipmap2->GetHeight());
                tlImage* mipmap3 = new tlImage(mipmap1->GetWidth(),mipmap1->GetHeight(),mipmap1->GetBpp(),mipmap1->IsPalettized(),mipmap1->HasAlpha());
                for (int y = 0; y < mipmap1->GetHeight(); y++)
                {
                    for (int x = 0; x < mipmap1->GetWidth(); x++)
                    {
                        tlColour c1 = mipmap1->GetPixel(x,y);
                        tlColour c2 = mipmap2->GetPixel(x,y);
                        tlColour avg((c1.RedCh() + c2.RedCh())/2,(c1.GreenCh() + c2.GreenCh())/2,(c1.BlueCh() + c2.BlueCh())/2,(c1.AlphaCh() + c2.AlphaCh())/2);
                        mipmap3->SetPixel(x,y,avg);
                        mipmap3->SetName(mipmap1->GetName());
                    }
                }
                delete mipmap1;
                delete mipmap2;
                mipmap->images[i/2] = mipmap3;
            }
            else
            {
                mipmap->images[i/2] = mipmap1;
            }
        }
    }
    return mipmap;
}

// Converts a palettized image to N bpp RGB
// N must be 24 or 32
// ========================================

void tlVolumeImage::Unpalettize(int newbpp)
{
    assert((newbpp == 24) || (newbpp == 32));
    for (int i = 0; i < images.Count(); i++)
    {
        images[i]->Unpalettize(newbpp);
    }
}

int
tlVolumeImage::MemorySize()
{
    int totalSize = 0;
    for (int i = 0; i < images.Count(); i++)
    {
        totalSize += images[i]->MemorySize();
    }
    return totalSize;
}

//****************************************
//
// Invert Alpha
// NOTE: Currently only works on 32bpp images!
void tlVolumeImage::InvertAlpha(void)
{
    for (int i = 0; i < images.Count(); i++)
    {
        images[i]->InvertAlpha();
    }
}

// reorders colour channels for truecolour images
// reorders palette channels for palettized images
// Default order is b=0, g=1, r=2, and a=3
// eg. to swap red and blue channels use SwapChannels( 2, 1, 0, 3 )
void tlVolumeImage::SwapChannels(int b, int g, int r, int a)
{
    for (int i = 0; i < images.Count(); i++)
    {
        images[i]->SwapChannels(b, g, r, a);
    }
}


// Store the grayscaled image to the alpha channel 
// for the texture modulate operation in ps2
void tlVolumeImage::AppendGrayScaleToAlpha( )
{
    for (int i = 0; i < images.Count(); i++)
        images[i]->AppendGrayScaleToAlpha( );
   
}


//*****************************************************************************
// tlImageLoader
//*****************************************************************************
tlImageLoader::tlImageLoader() : 
    tlEntityLoader(0)
{
}

bool 
tlImageLoader::CheckChunkID(unsigned id)
{
    switch (id)
    {
        case Pure3D::Texture::IMAGE:
        {
            return true;
            break;
        }
        case Pure3D::Texture::VOLUME_IMAGE:
        {
            return true;
            break;
        }
        default:
        {
            return false;
            break;
        }
    }
}

tlEntity* 
tlImageLoader::Load(tlDataChunk* chunk)
{
    switch (chunk->ID())
    {
        case Pure3D::Texture::IMAGE:
        {
            return new tlImage(chunk);
            break;
        }
        case Pure3D::Texture::VOLUME_IMAGE:
        {
            return new tlVolumeImage(chunk);
            break;
        }
        default:
        {
            return NULL;
            break;
        }
    }
}

// End of file.
