/*===========================================================================
   File:: tlTexture.hpp

   Copyright (c) 2000 Radical Entertainment, Inc.  All rights reserved.

===========================================================================*/

#ifndef _TLTEXTURE_HPP
#define _TLTEXTURE_HPP

#include "tlEntity.hpp"
#include "tlTable.hpp"
#include "tlLoadManager.hpp"
#include <assert.h>

class tlDataChunk;
class tlImage;
class tlVolumeImage;
class tlColour;
class tlInventory;

enum tlUsageFormat {
   USAGE_STATIC,
   USAGE_DYNAMIC,
   USAGE_NOCACHE
};

enum tlTextureFormat {
   TEXTYPE_RGB,
   TEXTYPE_PALETTIZED,
   TEXTYPE_LUMINANCE,
   TEXTYPE_BUMPMAP,
   TEXTYPE_DXT1,
   TEXTYPE_DXT2,
   TEXTYPE_DXT3,
   TEXTYPE_DXT4,
   TEXTYPE_DXT5,
   TEXTYPE_IPU,
   TEXTYPE_Z,
   TEXTYPE_LINEAR,
   TEXTYPE_RENDERTARGET
};

//*****************************************************************************
// tlTexture
//*****************************************************************************
class tlTexture : public tlEntity
{
public:
   tlTexture();
   tlTexture(const tlTexture& tex);
   explicit tlTexture(tlDataChunk* ch);
   explicit tlTexture(const tlImage& img);
   explicit tlTexture(const tlVolumeImage& img);
   virtual ~tlTexture();

   // Chunk reading / writing code
   void LoadFromChunk(tlDataChunk* ch);
   tlDataChunk* Chunk();

   void LoadFromChunk16(tlDataChunk* ch)    { assert(0); }
   tlDataChunk* Chunk16()                   { assert(0); return NULL; }

   void SetSize(int w, int h);
   void SetBpp(int depth);
   void SetAlphaDepth(int depth);
   void SetTextureType(tlTextureFormat n);    
   void SetUsage(tlUsageFormat n);   
   void SetPriority(int n);
   void SetPS2Format(void);
   void SetGCFormat(void);

   int MemorySize();  // Returns the size of the texture in memory

   // converts current image to specified bit depth/format
   void Convert(int newBpp, bool isPal, bool alpha, bool dither = false);

   // mirrors the image about the line X=Y
   void Flip(); 
   
   //inverse all images
   void Inverse( );

   bool HasAlpha() const;

   tlTable<tlImage*>& GetImages()               { return images2d; }
   tlTable<tlVolumeImage*>& GetVolumeImages()   { return images3d; }

   tlImage* GetImage(int i) const               { assert(i<images2d.Count()); return images2d[i]; }
   tlVolumeImage* GetVolumeImage(int i) const   { assert(i<images3d.Count()); return images3d[i]; }

   int GetImageCount() const                    { return images2d.Count(); }
   int GetVolumeImageCount() const              { return images3d.Count(); }

   int GetWidth() const                         { return width; }
   int GetHeight() const                        { return height; }
   int GetAlphaDepth( ) const                   { return alphaDepth; }
   int GetTextureType() const                   { return textureType; }

   int GetRealImageAlphaDepth(int img);

   void AddImage(const tlImage& img); // you delete your img
   void AddImagePtr(tlImage* img); // toollib will delete the img

   void AddVolumeImage(const tlVolumeImage& img); // you delete your img
   void AddVolumeImagePtr(tlVolumeImage* img); // toollib will delete the img

   // set new_bpp = 0 to keep bpp same as original image
   void GenerateMipmaps(int levels, int min_dimension = 8,
                        int new_bpp = 0,
                        bool use_colour_key = true,
                        const unsigned char colour_key[4] = NULL);
   void GenerateMipmaps(int levels, int min_dimension,
                        int new_bpp,
                        tlColour colour_key);

   tlTexture* GenerateBumpmap();

   void GenerateVolumeTexture(int depth);

   void AppendGrayScaleToAlpha( );      //convert the texture to grayscale and append it to alpha channel
                                        //this func is used for modulate grayscale texture in ps2
   void PrepareForAlphaBlend( const tlImage *baseImage );
   void PrepareForAlphaBlend( float meanIntensity, const tlImage *baseImage );

   tlColour GetTexel( float u, float v );

private:

   int width;
   int height;
   int bpp;
   int alphaDepth;
   int textureType;
   int usage;
   int priority;
   
   tlTable<tlImage*> images2d;
   tlTable<tlVolumeImage*> images3d;
};

//*****************************************************************************
// tlTextureLoader
//*****************************************************************************
class tlTextureLoader : public tlEntityLoader
{
public:
    tlTextureLoader();

    virtual tlEntity* Load(tlDataChunk* chunk);
};

#endif
