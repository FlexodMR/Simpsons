/*===========================================================================
   File:: tlTexture.cpp

   Copyright (c) 2000 Radical Entertainment, Inc.  All rights reserved.

===========================================================================*/

#include "tlTexture.hpp"
#include <assert.h>

#include "chunks.h"
#include "tlDataChunk.hpp"
#include "tlInventory.hpp"
#include "tlTextureChunk.hpp"
#include "tlImage.hpp"
#include "tlColour.hpp"
#include "tlImageQuantizer.hpp"
#include "pddi/pddienum.hpp"

static const unsigned TEXTURE_VERSION = 14000;

inline bool IsPow2(int i)
{
   return (i & (i - 1)) == 0;
}

//*****************************************************************************
// tlTexture
//*****************************************************************************
tlTexture::tlTexture() :
      width(0),
      height(0),
      bpp(32),
      alphaDepth(0),
      textureType(TEXTYPE_RGB),
      usage(USAGE_STATIC),
      priority(0),
      images2d(),
      images3d()
{
   SetName("");
}

tlTexture::tlTexture(const tlTexture& tex) :
      width(tex.width),
      height(tex.height),
      bpp(tex.bpp),
      alphaDepth(tex.alphaDepth),
      textureType(tex.textureType),
      usage(tex.usage),
      priority(tex.priority),
      images2d(tex.images2d),
      images3d(tex.images3d)
{
   SetName(tex.GetName());
}

tlTexture::tlTexture(tlDataChunk* ch)
{
   tlTexture();
   LoadFromChunk(ch);
}

tlTexture::tlTexture(const tlImage& img) :
      width(img.GetWidth()),
      height(img.GetHeight()),
      bpp(img.GetBpp()),
      alphaDepth(img.GetRealAlphaDepth()),
      textureType(TEXTYPE_RGB),
      usage(USAGE_STATIC),
      priority(0),
      images2d(),
      images3d()
{
   SetName(img.GetName());
   AddImagePtr(new tlImage(img));
}

tlTexture::tlTexture(const tlVolumeImage& img) :
      width(img.GetWidth()),
      height(img.GetHeight()),
      bpp(img.GetBpp()),
      alphaDepth(img.HasAlpha() ? 8 : 0),
      textureType(TEXTYPE_RGB),
      usage(USAGE_STATIC),
      priority(0),
      images2d(),
      images3d()
{
   SetName(img.GetName());
   AddVolumeImagePtr(new tlVolumeImage(img));
}

tlTexture::~tlTexture()
{
   int i;
   for (i = 0; i < images2d.Count(); ++i)
   {
      delete images2d[i];
   }
   for (i = 0; i < images3d.Count(); ++i)
   {
      delete images3d[i];
   }
}

void 
tlTexture::SetAlphaDepth( int depth )
{
   alphaDepth = depth;
}

void 
tlTexture::SetSize( int w, int h )
{
   width = w;
   height = h;
}

void 
tlTexture::SetBpp(int depth)
{
   bpp = depth;
}

void 
tlTexture::SetTextureType(tlTextureFormat t)
{
   textureType = t;
}

void tlTexture::SetUsage(tlUsageFormat n)
{
   usage = n;
}

void tlTexture::SetPriority(int n)
{
   priority = n;
}

void tlTexture::SetPS2Format(void)
{
   switch(bpp)
   {
      case 4:
         textureType = PDDI_TEXTYPE_PS2_4BIT;
         break;
      case 8:
         textureType = PDDI_TEXTYPE_PS2_8BIT;
         break;
      case 16:
         textureType = PDDI_TEXTYPE_PS2_16BIT;
         break;
      case 24:
      case 32:
         textureType = PDDI_TEXTYPE_PS2_32BIT;
         break;
   }
   for(int i = 0; i < GetImageCount(); i++)
   {
      GetImage(i)->SetPS2Format();
   }
}


void tlTexture::SetGCFormat(void)
{
   switch(bpp)
   {
      case 4:
         textureType = PDDI_TEXTYPE_GC_4BIT;
         break;
      case 8:
         textureType = PDDI_TEXTYPE_GC_8BIT;
         break;
      case 16:
         textureType = PDDI_TEXTYPE_GC_16BIT;
         break;
      case 24:
      case 32:
         textureType = PDDI_TEXTYPE_GC_32BIT;
         break;
   }
   for(int i = 0; i < GetImageCount(); i++)
   {
      GetImage(i)->SetGCFormat();
   }
}


int
tlTexture::MemorySize()
{
   int i;
   int total = 0;
   for(i = 0; i < images3d.Count(); i++)
   {
      total += images3d[i]->MemorySize();
   }
   for(i = 0; i < images2d.Count(); i++)
   {
      total += images2d[i]->MemorySize();
   }
   return total;
}

void
tlTexture::Convert(int newBpp, bool isPal, bool alpha, bool dither)
{
   int i;
   for(i = 0; i < images3d.Count(); i++)
   {
      images3d[i]->Convert(newBpp, isPal, alpha, dither);
   }
   for(i = 0; i < images2d.Count(); i++)
   {
      images2d[i]->Convert(newBpp, isPal, alpha, dither);
   }
   bpp = newBpp;
   SetAlphaDepth(alpha? 8 : 0);
}

void
tlTexture::Flip()
{
   int i;
   for(i = 0; i < images3d.Count(); i++)
   {
      images3d[i]->Flip();
   }
   for(i = 0; i < images2d.Count(); i++)
   {
      images2d[i]->Flip();
   }
   int tmp = width;
   width = height;
   height = tmp;
}

void
tlTexture::Inverse()
{
   int i;
   for(i = 0; i < images3d.Count(); i++)
   {
      images3d[i]->Inverse();
   }

   for(i = 0; i < images2d.Count(); i++)
   {
      images2d[i]->Inverse();
   }
}

bool
tlTexture::HasAlpha() const
{
   int i;
   for(i = 0; i < images3d.Count(); i++)
   {
      if(images3d[i]->HasAlpha())
      {
         return true;
      }
   }
   for(i = 0; i < images2d.Count(); i++)
   {
      if(images2d[i]->HasAlpha())
      {
         return true;
      }
   }
   return false;
}

void 
tlTexture::LoadFromChunk(tlDataChunk* ch)
{
   int i;
   for (i = 0; i < images3d.Count(); ++i)
   {
      delete images3d[i];
   }
   images3d.ZeroCount();
   for (i = 0; i < images2d.Count(); ++i)
   {
      delete images2d[i];
   }
   images2d.ZeroCount();

   tlTextureChunk* texch = dynamic_cast<tlTextureChunk*>(ch);
   assert(texch);
   assert(texch->GetVersion()==TEXTURE_VERSION);

   SetName(texch->GetName());
   SetSize(texch->GetWidth(),texch->GetHeight());
   SetBpp(texch->GetBpp());
   SetAlphaDepth(texch->GetAlphaDepth());
   SetTextureType((tlTextureFormat)texch->GetTextureType());
   SetUsage((tlUsageFormat)texch->GetUsage());
   SetPriority(texch->GetPriority());

   int dch;
   for( dch = 0 ; dch < texch->SubChunkCount() ; dch++)
   {
      tlDataChunk* subch = texch->GetSubChunk(dch);
      switch(subch->ID())
      {
         case Pure3D::Texture::IMAGE:
         {
            AddImagePtr(new tlImage(subch));
            break;
         }
         case Pure3D::Texture::VOLUME_IMAGE:
         {
            AddVolumeImagePtr(new tlVolumeImage(subch));
            break;
         }
      }
   }
}

tlDataChunk*
tlTexture::Chunk()
{  
   tlTextureChunk* result = new tlTextureChunk;
   
   result->SetName(GetName());
   result->SetVersion(TEXTURE_VERSION);
   result->SetWidth(width);
   result->SetHeight(height);
   result->SetBpp(bpp);
   result->SetAlphaDepth(alphaDepth);
   result->SetNumMipMaps(images3d.Count()>images2d.Count()?images3d.Count():images2d.Count());
   result->SetTextureType(textureType);
   result->SetUsage(usage);
   result->SetPriority(priority);
  
   int i;
   for (i = 0; i < images3d.Count(); i++)
   {
      result->AppendSubChunk(images3d[i]->Chunk());      
   }
   for (i = 0; i < images2d.Count(); i++)
   {
      result->AppendSubChunk(images2d[i]->Chunk());      
   }
   return result;
}

int
tlTexture::GetRealImageAlphaDepth(int img)
{
   return images2d[img]->GetRealAlphaDepth();
}

void
tlTexture::AddImage(const tlImage& img)
{
   // copies the image
   tlImage* copy = new tlImage(img);
   images2d.Append(copy);
}

void
tlTexture::AddImagePtr(tlImage* img)
{
   // just adds the pointer
   images2d.Append(img);
}

void
tlTexture::AddVolumeImage(const tlVolumeImage& img)
{
   // copies the image
   tlVolumeImage* copy = new tlVolumeImage(img);
   images3d.Append(copy);
}

void
tlTexture::AddVolumeImagePtr(tlVolumeImage* img)
{
   // just adds the pointer
   images3d.Append(img);
}

void
tlTexture::GenerateMipmaps(int levels, int min_dimension, int new_bpp,
                           bool use_colour_key, const unsigned char colour_key[4])
{   
   if (images3d.Count()>0)
   {
      int lvl = images3d.Count();

      // Check if original image is palettized
      // - if so, unpalettize it so we can do proper
      //   colour reduction later

      if (new_bpp < 4)
      {
         bpp = images3d[0]->GetBpp();
      }
      else
      {
         bpp = new_bpp;
      }

      if (images3d[0]->IsPalettized())
      {
         images3d[0]->Unpalettize(32);
      }
 
      // Generate the mipmaps

      while (lvl < levels)
      {
         if ((images3d[lvl-1]->GetWidth() <= min_dimension) ||
             (images3d[lvl-1]->GetHeight() <= min_dimension) ||
             (images3d[lvl-1]->GetDepth() <= 1))
         {
            break;
         }

         tlVolumeImage* mipmap = images3d[0]->GenerateMipmap(lvl, use_colour_key, colour_key);
         if (mipmap == 0)
         {
            break;
         }

         images3d.Append(mipmap);
         ++lvl;
      }

      // If originally palettized, perform colour reduction
      // on 32bpp mipmaps

      if (bpp <= 8)
      {
         tlImageQuantizer iq;

         if (use_colour_key)
         {
            iq.SetColourKeyActive(true);
            if (colour_key != 0)
            {
               iq.SetColourKey(colour_key);
            }
         }
         else
         {
            iq.SetColourKeyActive(false);
         }

         iq.Quantize(images3d, bpp);
      }
   }

   if (images2d.Count()>0)
   {
      int lvl = images2d.Count();

      // Check if original image is palettized
      // - if so, unpalettize it so we can do proper
      //   colour reduction later

      if (new_bpp < 4)
      {
         bpp = images2d[0]->GetBpp();
      }
      else
      {
         bpp = new_bpp;
      }

      if (images2d[0]->IsPalettized())
      {
         images2d[0]->Unpalettize(32);
      }

      // Generate the mipmaps

      while (lvl < levels)
      {
         if ((images2d[lvl-1]->GetWidth() <= min_dimension) ||
             (images2d[lvl-1]->GetHeight() <= min_dimension))
         {
            break;
         }

         tlImage* mipmap = images2d[0]->GenerateMipmap(lvl,
                                                     use_colour_key,
                                                     colour_key);
         if (mipmap == 0)
         {
            break;
         }

         images2d.Append(mipmap);
         ++lvl;
      }

      // If originally palettized, perform colour reduction
      // on 32bpp mipmaps

      if (bpp <= 8)
      {
         tlImageQuantizer iq;

         if (use_colour_key)
         {
            iq.SetColourKeyActive(true);
            if (colour_key != 0)
            {
               iq.SetColourKey(colour_key);
            }
         }
         else
         {
            iq.SetColourKeyActive(false);
         }

         iq.Quantize(images2d, bpp);
      }
   }
}

void
tlTexture::GenerateMipmaps(int levels, int min_dimension,
                           int new_bpp,
                           tlColour colour_key)
{
   unsigned char tmp_key[4] =
   {
      colour_key.BlueCh(),
      colour_key.GreenCh(),
      colour_key.RedCh(),
      colour_key.AlphaCh()
   };

   GenerateMipmaps(levels, min_dimension, new_bpp, true, tmp_key);
}

tlTexture*
tlTexture::GenerateBumpmap()
{
   assert(images2d.Count()>0);
   tlTexture* result = new tlTexture(*this);
   result->images2d[0] = images2d[0]->GenerateBumpmap();
   return result;
}

void
tlTexture::GenerateVolumeTexture(int depth)
{
   if ((images2d[0])&&(IsPow2(depth)))
   {
      int i;
      for (i = 0; i < images3d.Count(); ++i)
      {
         delete images3d[i];
      }
      images3d.SetCount(1);

      images3d[0] = new tlVolumeImage(images2d[0],depth);
      width /= depth;
      
      for (i = 0; i < images2d.Count(); ++i)
      {
         delete images2d[i];
      }
      images2d.ZeroCount();
   }
}

void tlTexture::AppendGrayScaleToAlpha( )
{
    int i;
    for( i = 0; i < images2d.Count( ); ++i ){
        images2d[ i ]->AppendGrayScaleToAlpha( );
    }

    for( i = 0; i < images3d.Count( ); ++i ){
        images3d[ i ]->AppendGrayScaleToAlpha( );
    }

    //the depth of alpha is 8 for holding the grayscale map
    SetAlphaDepth( 8 );
    SetBpp( 32 );
}

void tlTexture::PrepareForAlphaBlend( const tlImage *baseImage )
{
    PrepareForAlphaBlend( -1.0f, baseImage );
}

void tlTexture::PrepareForAlphaBlend( float meanIntensity, const tlImage *baseImage )
{
    // Save current image attributes to restore later.
    int  finalBpp = bpp;
    bool finalPalletized = images2d[0]->IsPalettized();

    // Prepare image attributes for tlImage::PrepareForAlphaBlend()
    Convert(32, false, true);

    int i;
    for( i = 0; i < images2d.Count( ); ++i ){
        images2d[ i ]->PrepareForAlphaBlend( meanIntensity, baseImage );
    }
    // Since these images now have alpha, 24 bit is not an option.
    if( finalBpp == 24 )
    { 
        finalBpp = 32;
    }

    // Preperation of the images may have changed image attributes.
    Convert(finalBpp, finalPalletized, true);

}

// Find the colour of the texel at u, v.  This uses bi-linear interpolation
// of the nearest 4 pixels.  UVs are mapped (wrapped) to the range 0 to 1 where 
// 0 = 1 = equal ammount of the first and last pixel.
tlColour tlTexture::GetTexel( float u, float v )
{
    // v component increases opposite of y.
    v = -v;

    // get the fractional part of u, v
    u -= (int)u;
    v -= (int)v;
    
    // make sure it's positive
    u = ( u >= 0.0f ) ? u : 1.0f + u;
    v = ( v >= 0.0f ) ? v : 1.0f + v;
    
    float x, y;

    //now convert it to pixel coordinates.  ( 0.5 is pixel 0, 1.5 is pixel 1, etc. )
    x = u * GetWidth();
    y = v * GetHeight();
    
    // Subtract 0.5 to center about integer values. ( 0.0 is pixel 0, 1.0 is pixel 1, etc. )
    x -= 0.5f;
    y -= 0.5f;

    // make sure it's positive
    x = ( x >= 0.0f ) ? x : x + GetWidth();
    y = ( y >= 0.0f ) ? y : y + GetHeight();

    // Determine the pixels bounding the sampling point
    int lowX  = (int)x;
    int lowY  = (int)y;
    int highX = ( lowX != GetWidth()  - 1 ) ? lowX + 1 : 0;
    int highY = ( lowY != GetHeight() - 1 ) ? lowY + 1 : 0;
    
    // the fractional ammount used for bi-linear interpolation
    float w1 = x - lowX;
    float w2 = y - lowY;

    tlColour t1, t2, t3, t4;
    
    t1 = GetImage( 0 )->GetPixel( lowX, lowY );
    t2 = GetImage( 0 )->GetPixel( highX, lowY );
    t3 = GetImage( 0 )->GetPixel( lowX, highY );
    t4 = GetImage( 0 )->GetPixel( highX, highY );
    float a1(t1.alpha), a2(t2.alpha), a3(t3.alpha), a4(t4.alpha);

    // Use linear interpolation in the x direction
    t1 = t1 * ( 1.0f - w1 ) + t2 * w1;
    t2 = t3 * ( 1.0f - w1 ) + t4 * w1;

    // Use linear interpolation in the y direction
    t1 = t1 * ( 1.0f - w2 ) + t2 * w2;

    // The tlColour operator don't allow for correct interpolation of alpha values. Do so here.
    t1.alpha = ( a1 * ( 1.0f - w1 ) + a2 * w1 ) * ( 1.0f - w2 ) +
               ( a3 * ( 1.0f - w1 ) + a4 * w1 ) * w2;
    
    return t1;
}

//*****************************************************************************
// tlTextureLoader
//*****************************************************************************
tlTextureLoader::tlTextureLoader() : 
tlEntityLoader(Pure3D::Texture::TEXTURE)
{            
}

tlEntity*
tlTextureLoader::Load(tlDataChunk* chunk)
{
    return new tlTexture(chunk);
}


