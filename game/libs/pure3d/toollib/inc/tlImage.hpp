/*===========================================================================
   File:: tlImage.hpp

   Copyright (c) 2000 Radical Entertainment, Inc.  All rights reserved.

===========================================================================*/

#ifndef _TLIMAGE_HPP
#define _TLIMAGE_HPP

#include <stdio.h>
#include <assert.h>
#include "tlEntity.hpp"
#include "tlColour.hpp"
#include "tlTable.hpp"
#include "tlLoadManager.hpp"

enum tlImageFormat
{
    IMG_RAW,
    IMG_PNG,
    IMG_TGA,
    IMG_BMP,
    IMG_IPU,
    IMG_DXT,
    IMG_DXT1,
    IMG_DXT2,            //not used  
    IMG_DXT3,            
    IMG_DXT4,            //not used
    IMG_DXT5,
    IMG_PS2_4BIT,        // PS2 Memory image formats
    IMG_PS2_8BIT,
    IMG_PS2_16BIT,
    IMG_PS2_32BIT,
    IMG_GC_4BIT,        // GameCube memory image formats
    IMG_GC_8BIT,
    IMG_GC_16BIT,
    IMG_GC_32BIT,
    IMG_GC_DXT1,
    IMG_OTHER,     // Other image format not supported.
    IMG_INVALID,   // Known format but not an image.
    IMG_UNKNOWN    // Anything else.
};

enum tlDXTFormat
{
    DXT1,
    DXT2,
    DXT3,
    DXT4,
    DXT5
};

class tlDataChunk;
class tlInventory;
class tlFile;

//*****************************************************************************
// tlImage
//*****************************************************************************
class tlImage : public tlEntity
{
public:

    tlImage();
    tlImage(int w, int h, int b,
            bool ispal = false, bool alpha = false,
            const unsigned char* const* pixels = NULL,
            const unsigned char* pal = NULL);
    tlImage(const tlImage& img);
    tlImage(tlFile& fp);
    tlImage(const char* filename);
    explicit tlImage(tlDataChunk* ch);
    virtual ~tlImage();

    // External image file references
    const char* GetReference() const;
    void SetReference(const char* filename);
    void SetReference() { SetReference(GetName()); }
    bool Dereference();

    // Image attribute options
    int GetWidth() const { return width; }
    int GetHeight() const { return height; }
    int GetBpp() const { return bpp; }
    bool IsPalettized() const { return palettized; }
    bool HasAlpha() const { return hasalpha; }
    int  GetRealAlphaDepth() const;
    tlImageFormat GetFormat() const { return format; }
    void SetFormat(tlImageFormat fmt);
    void SetPS2Format();
    void SetGCFormat(void);
    void SetPalettized( bool flag );
    int GetRawClrUsed(void) { return rawClrUsed; }

    // size accessors
    int GetPaletteCount() const;
    int GetPaletteSize() const;
    int GetScanlineSize( bool bAlignToDWORD = false ) const;

    // default values use NTSC lumenence conversion values
    // NOTE: This will unpalletize an palletized image!!!
    void FillAlphaFromImageColour(tlImage *img, float rscale = 0.30F, 
                                                float gscale = 0.59F, 
                                                float bscale = 0.11F);

    // how many bytes correspond to how many pixels is dependent on bpp
    // and the palettized/alpha flags
    unsigned char** GetPixels() { return pixeldata; }
    const unsigned char* const* GetPixels() const { return pixeldata; }
    void SetPixels(const unsigned char* const* pixels);
    void SetPixels(const unsigned char* pixels);

    // palette is stored as a series of rgb-triplets, a byte per channel
    unsigned char* GetPalette() { return palette; }
    const unsigned char* GetPalette() const { return palette; }
    void SetPalette(const unsigned char* pal);

    void ClearPalette(); // Clear palette to white.

    void SetAttributes(int w, int h, int b,
                       bool ispal = false, bool alpha = false,
                       const unsigned char* const* pixels = NULL,
                       const unsigned char* pal = NULL);
    tlImage& operator = (const tlImage& image);

    // converts current image to specified bit depth/format
    void Convert(int newBpp, bool isPal, bool alpha, bool dither = false);
    void Resize(int newWidth, int newHeight);

    // Dither a palettized image to reduce banding
    void Dither(const tlImage &sourceImage);

    // Performs all colour lookup as required
    tlColour GetPixel(int x, int y) const;
    void GetPixel(int x, int y, unsigned char c[4]) const;
    int GetIndex(int x, int y) const;
    // for palettes, sets the closest matching colour
    void SetPixel(int x, int y, tlColour colour);
    void SetPixel(int x, int y, const unsigned char c[4]);

    // returns palette index (return -1 if not palettized)
    int GetPixelIndex(int x, int y) const;
    // sets palette index (does nothing if not palettized)
    void SetPixelIndex(int x, int y, int index);

    // retrieves RGB palette entries
    tlColour GetPaletteEntry(int i) const;
    void GetPaletteEntry(int i, unsigned char c[4]) const;
    // sets RGB palette entry
    void SetPaletteEntry(int i, tlColour colour);
    void SetPaletteEntry(int i, const unsigned char c[4]);

    //color statistics
    int GetNumColorsUsed() const;

    // clearing functions
    void Clear();  // fills to black
    void Fill(tlColour colour);
    void Fill(const unsigned char c[4]);
    void Fill(int index);

    //copy functions
    void CopyRegion(tlImage* src, int sx, int sy, int width, int height, int dx, int dy);

    // Generic load/save functions
    bool Load(tlImageFormat fmt, tlFile &fp);
    bool Load(tlFile &fp);
    bool Save(tlImageFormat fmt, tlFile &fp) const;
    bool Save(tlFile &fp) const { return Save(format, fp); }

    bool Load(tlImageFormat fmt, const char* filename);
    bool Load(const char* filename);
    bool Save(tlImageFormat fmt, const char* filename) const;
    bool Save(const char* filename) const { return Save(format, filename); }
    bool Save(tlImageFormat fmt) const;
    bool Save() const { return Save(format); }

    // Chunk reading / writing code
    void LoadFromChunk(tlDataChunk* ch);
    tlDataChunk* Chunk();

    void LoadFromChunk16(tlDataChunk* ch) { assert(0); }
    tlDataChunk* Chunk16()                { assert(0); return NULL; }

    // Returns palette index of closest matching colour
    int MatchColour(tlColour c) const;
    int MatchColour(const unsigned char quad[4]) const;
    static int MatchColour(tlColour c,
                           int pal_count,
                           const unsigned char* pal);
    static int MatchColour(const unsigned char quad[4],
                           int pal_count,
                           const unsigned char* pal);

    // Simple mipmap generation - neither pretty nor efficient!
    // Note that returned tlImage is owned by the CALLER
    tlImage* GenerateMipmap(int level = 1,
                            bool use_colour_key = true,
                            const unsigned char key[4] = NULL) const;
    tlImage* GenerateMipmap(int level, tlColour key) const;

    tlImage* GenerateBumpmap() const;

    // Converts a palettized image to a N bpp RGB image
    // NOTE: bpp must be either 24 or 32
    void Unpalettize(int newbpp = 24);

    void FlipY(void);
    void FlipX(void);

    // mirrors the image about the line X=Y
    void Flip();  

    // NOTE: Currently only works on 32bpp images!
    void InvertAlpha(void);

    // reorders colour channels for truecolour images
    // reorders palette channels for palettized images
    // Default order is b=0, g=1, r=2, and a=3
    // eg. to swap red and blue channels use SwapChannels( 2, 1, 0, 3 )
    void SwapChannels(int b, int g, int r, int a = 3);

    bool HighlightNTSCIllegalColours();
    void ClampNTSCIllegalColours();
	double DesaturateForNTSC( void ); // Turn down image saturation to get within legal range.
    void ReportIllegalColours(FILE* report_file,bool& isError);

    // Image adjustment functions
    void Gamma(float g);

    // The following image adjustments mimic those in Photoshop 6.0
    void AdjustContrast(float contrast);
    void AdjustBrightness(float brightness);
    void AdjustHue(float hue);
    void AdjustSaturation(float saturation);
    void AdjustLightness(float lightness);

    void Adjust( float contrast,   float brightness, float hue,
                 float saturation, float lightness, float gamma );
    void Inverse( );

    // Retrieve default file extension for the image's format type
    static const char* GetFileExtension(tlImageFormat fmt);
    const char* GetFileExtension() const { return GetFileExtension(format); }

    // Detects the image format as deduced from the first few
    // bytes in the tlFile stream -- the stream position will be
    // returned to where it was initially once complete.
    static tlImageFormat DetectFormat(tlFile& fp);

    int MemorySize();  // Return the memory size of this image
    int ColoursUsed() const;
    bool SolidColour() const; // Returns true if this image is one solid colour
    tlColour MaxRGB() const;  // Return the max color for each channel
    tlColour AveRGB() const;  // Return the average colour for each channel
    float DeltaE( const tlImage &baseImage ) const; // Difference between two images.

    void AppendGrayScaleToAlpha( );
    void PrepareForAlphaBlend( const tlImage *baseImage = NULL );
    void PrepareForAlphaBlend( float meanIntensity, const tlImage *baseImage = NULL );

    bool Blur( float pixelRadius );
    bool GaussianBlur( float sigma, float radius = 0.0f );
    bool Convolve2Pass( const float *kernelVert, int orderVert, 
                        const float *kernelHorz, int orderHorz);
    bool Convolve( const float *kernel, int order );

    void SetQuickSave( bool bQuickSave ){ quickSave = bQuickSave; };
    bool GetQuickSave( ){ return quickSave; };

    void Clamp1BitAlpha();


protected:

    int  width;
    int  height;
    int  bpp;
    int  rawClrUsed;
    bool palettized;
    bool hasalpha;
    bool quickSave;
    tlImageFormat format;

    char* reference;

    // pixeldata is stored as an array of rows of pixels
    // Bit order is pixeldata[row]={0xbb, 0xgg, 0xrr, 0xaa, 0xbb, 0xgg, ..., 0xaa}
    //     -or-     pixeldata[row]={0xbb, 0xgg, 0xrr, 0xbb, 0xgg, ..., 0xrr}
    unsigned char** pixeldata;

    unsigned char* palette;    // Same bit order as pixeldata

    // The image file (possibly compressed)
    // We keep this around to avoid recompressing and possibly losing data
    unsigned char* filedata;
    unsigned int filedatasize;

    void FlushFileData();
    void SetFileData(const unsigned char* data, int size);

    void Cleanup();

    bool LoadInternal(tlImageFormat fmt, tlFile &fp);

    bool LoadRAW(tlFile &fp);
    bool LoadBMP(tlFile &fp);
    bool LoadTGA(tlFile &fp);
    bool LoadPNG(tlFile &fp);
    bool LoadDXT(tlFile &fp);
    bool LoadPS2(tlFile &fp);
    bool LoadGC(tlFile &fp);

    bool SaveRAW(tlFile &fp) const;
    bool SaveBMP(tlFile &fp) const;
    bool SaveTGA(tlFile &fp) const;
    bool SavePNG(tlFile &fp) const;
    bool SaveDXT(tlFile &fp, tlDXTFormat frmt) const; 
    bool SaveDXTQuick(tlFile &fp, tlDXTFormat frmt ) const;
    bool SavePS2(tlFile &fp) const; 
    bool SaveGC(tlFile &fp) const; 

    // PS2 format function
    char* SwizzlePalettePS2() const;
    void UnSwizzlePalettePS2(const char* swizzled);

    bool InitializeMipmap(int level, tlImage** mipmap,
                         int& box_w, int& box_h, int& w, int& h) const;
    void BoxFilter(tlImage* mipmap, int box_w, int box_h, int w, int h) const;
    void BoxFilterWithColourKey(tlImage* mipmap,
                               int box_w, int box_h, int w, int h,
                               const unsigned char key[4]) const;
    long QuickDXTEncode( tlDXTFormat frmt, char ** & encoded ) const;
    int  GetDXTBlockSize( tlDXTFormat frmt ) const;

    char *GCSwizzle32Bit(void) const;
    char *GCSwizzle16Bit(void) const;
    char *GCSwizzle8Bit(void) const;
    char *GCSwizzle4Bit(void) const;
    char *GCSwizzleDXT1(void) const;
    char *GCSwizzlePalette(void) const;

  private:
    void QuickDXTBlockEncode( char * buffer, int cornerx, int cornery, tlDXTFormat frmt ) const;
    void QuickDXTBlockColorEncode( char * buffer, int cornerx, int cornery ) const;
    void QuickDXTBlockAlphaEncode( char * buffer, int cornerx, int cornery ) const;
};

//*****************************************************************************
// tlVolumeImage
//*****************************************************************************
class tlVolumeImage : public tlEntity
{
public:

   tlVolumeImage();
   tlVolumeImage(int w, int h, int d, int b, tlImageFormat format = IMG_PNG, bool ispal = false, bool alpha = false);
   tlVolumeImage(const tlVolumeImage& img);
   tlVolumeImage(tlImage* img, int depth);
   tlVolumeImage(tlDataChunk* ch);
   virtual ~tlVolumeImage();

   tlVolumeImage& operator = (const tlVolumeImage& image);

   void SetAttributes(int w, int h, int d, int b, bool ispal, bool alpha);
   void SetFormat(tlImageFormat fmt);

   // Image attribute options
   int GetWidth() const { return width; }
   int GetHeight() const { return height; }
   int GetDepth() const { return depth; }
   int GetBpp() const { return bpp; }
   bool IsPalettized() const { return palettized; }
   bool HasAlpha() const { return hasalpha; }
   tlImageFormat GetFormat() const { return format; }

   tlTable<tlImage*>& GetImages()        { return images; }
   void AddImage(tlImage* image);
   void SetImage(int i, tlImage* image);
   tlImage* GetImage(int i);

   // converts current image to specified bit depth/format
   void Convert(int newBpp, bool isPal, bool alpha, bool dither = false);
   void Resize(int newWidth, int newHeight);

   // mirrors the image about the line X=Y
   void Flip();  
   void FlipY(void);
   void FlipX(void);

   //inverse the image
   void Inverse( );

   // Performs all colour lookup as required
   tlColour GetPixel(int x, int y, int z) const;
   void GetPixel(int x, int y, int z, unsigned char c[4]) const;

   // for palettes, sets the closest matching colour
   void SetPixel(int x, int y, int z, tlColour colour);
   void SetPixel(int x, int y, int z, const unsigned char c[4]);

   // clearing functions
   void Clear();  // fills to black
   void Fill(tlColour colour);
   void Fill(const unsigned char c[4]);

   // Chunk reading / writing code
   void LoadFromChunk(tlDataChunk* ch);
   void LoadFromChunk16(tlDataChunk* ch)  { ; }
   tlDataChunk* Chunk();
   tlDataChunk* Chunk16()                 { return NULL; }

   // Simple mipmap generation - neither pretty nor efficient!
   // Note that returned tlImage is owned by the CALLER
   tlVolumeImage* GenerateMipmap(int level = 1, bool use_colour_key = true, const unsigned char key[4] = NULL) const;
   tlVolumeImage* GenerateMipmap(int level, tlColour key) const;

   // Converts a palettized image to a N bpp RGB image
   // NOTE: bpp must be either 24 or 32
   void Unpalettize(int newbpp = 24);

   // NOTE: Currently only works on 32bpp images!
   void InvertAlpha(void);

   // reorders colour channels for truecolour images
   // reorders palette channels for palettized images
   // Default order is b=0, g=1, r=2, and a=3
   // eg. to swap red and blue channels use SwapChannels( 2, 1, 0, 3 )
   void SwapChannels(int b, int g, int r, int a = 3);

   int MemorySize();  // Return the memory size of this image

   void AppendGrayScaleToAlpha( );
   void SetQuickSave( bool bQuickSave );
   bool GetQuickSave( ){ return quickSave; };


protected:

   void Cleanup();
   bool InitializeMipmap(int level, tlVolumeImage** mipmap, int& w, int& h, int& d) const;

   int  width;
   int  height;
   int  depth;
   int  bpp;
   bool palettized;
   bool hasalpha;  
   bool quickSave;
   tlImageFormat     format;   
   tlTable<tlImage*> images;
};

//*****************************************************************************
// tlImageLoader
//*****************************************************************************
class tlImageLoader : public tlEntityLoader
{
public:
    tlImageLoader();

    virtual bool CheckChunkID(unsigned chunkID);

    virtual tlEntity* Load(tlDataChunk* chunk);
};

#endif
