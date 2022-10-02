/*===========================================================================
    File:: tlSprite.cpp

    Copyright (c) 1998 Radical Entertainment, Inc.  All rights reserved.

===========================================================================*/

#include "tlSprite.hpp"
#include "tlString.hpp"
//#include "tlImage.hpp"

#include "tlDataChunk.hpp"
#include "tlInventory.hpp"
#include "radmath/util.hpp"

//*****************************************************************************
// tlSprite
//*****************************************************************************
tlSprite::tlSprite() :
        nativex(0),
        nativey(0),
        shader(NULL),
        imagex(0),
        imagey(0),
        blitBorder(1),
        chopped(false),
        maxSprite(256),
        minSprite(32),
        baseImage(NULL)
{
}

tlSprite::~tlSprite()
{
    strdelete(shader);

    // should delete the image?
}

tlSprite::tlSprite(tlDataChunk* ch):
        nativex(0),
        nativey(0),
        shader(NULL),
        imagex(0),
        imagey(0),
        blitBorder(1),
        chopped(false),
        maxSprite(256),
        minSprite(32),
        baseImage(NULL)
{
    LoadFromChunk ( ch );
}

void
tlSprite::LoadFromChunk(tlDataChunk* ch)
{
    assert(ch->ID() == Pure3D::Texture::SPRITE);
    tlSpriteChunk* sch = dynamic_cast<tlSpriteChunk*>(ch);
    assert(sch);

    strdelete(shader);

    SetName( sch->Name() );
    SetNativeX( sch->NativeX() );
    SetNativeY( sch->NativeY() );
    SetShader( sch->Shader() );
    SetImageHeight( sch->ImageHeight() );
    SetImageWidth( sch->ImageWidth() );
    if ( sch->ImageCount() > 1 )
    {
        SetBlitBorder( sch->BlitBorder() );
    }
    for(int index = 0; index < sch->SubChunkCount(); index++ )
    {
        tlDataChunk* sub = sch->GetSubChunk(index);
        switch(sub->ID())
        {
            case Pure3D::Texture::IMAGE:
            {
                tlImage* newImage = new tlImage(sub);
                image.Append( newImage );
                break;
            }

            case P3D_IMAGE :
            {
                tlImage* newImage = new tlImage(sub);
                image.Append( newImage );
                break;
            }

            default:
                // Just ignore this chunk.
                // Really we should preserve this data, but there currently isn't a nice way to do that.
                break;
        }
    }

}

tlDataChunk*
tlSprite::Chunk()
{
    tlSpriteChunk* result = new tlSpriteChunk();

    if( GetName() ) {
        result->SetName( GetName() );
    } else {
        result->SetName( "" );
    }

    result->SetNativeX(nativex);
    result->SetNativeY(nativey);
    result->SetShader(shader);
    result->SetImageHeight(imagey);
    result->SetImageWidth(imagex);
    result->SetImageCount(image.Count());
    if (chopped)
    {
        result->SetBlitBorder(blitBorder);
    }
    else
    {
        result->SetBlitBorder(0);
    }

    //assert(image);
    for (int i=0; i < image.Count(); i++)
    {
        result->AppendSubChunk((tlDataChunk*) (image[i]->Chunk()));   
    }

    return result;


}

void
tlSprite::SetNativeX(unsigned long n)
{
    nativex = n;
}

void
tlSprite::SetNativeY(unsigned long n)
{
    nativey = n;
}

void
tlSprite::SetShader(const char* n)
{
    strdelete(shader);
    shader = strnew(n);

}

void
tlSprite::SetImage(tlImage* i)
{
    if (image.Count() != 0)
    {
        image.Delete(0,image.Count());
    }
    image[0] = i;
    imagex = 0;
    imagey = 0;
}

void
tlSprite::SetBlitBorder(int border)
{
    blitBorder = border>0 ? border : 0;
}

void
tlSprite::SetImageHeight(unsigned int h)
{
    imagey = h;
}

void
tlSprite::SetImageWidth(unsigned int w)
{
    imagex = w;
}

void
tlSprite::SetMinSpriteSize(unsigned int minSize)
{
    minSprite = minSize;
}

void
tlSprite::SetMaxSpriteSize(unsigned int maxSize)
{
    maxSprite = maxSize;
}

void
tlSprite::SplitImage()
{
    // Only (re-)split the sprite if there is an image which is 
    // not power of two or is too big or too small.
    bool isValidSplit = true;
    int i;
    for( i = 0; i < image.Count(); i++ )
    {
        tlImage* spriteImage = image[i];

        int width  = spriteImage->GetWidth();
        int height = spriteImage->GetHeight();

        bool isPowerTwo = rmt::IsPow2( width ) && rmt::IsPow2( width );
        bool isValidSize = ( rmt::Max( width, height ) <= maxSprite ) &&
                           ( rmt::Min( width, height ) >= minSprite );

        if( ( !isPowerTwo ) || (!isValidSize) )
        {
            isValidSplit = false;
            break;
        }
    }

    if( true == isValidSplit ) return;

    if( image.Count() > 1 ) 
    {
        AssembleImage(); // Put all the pieces together before cutting it up again.
    }

    // Get our start conditions : whatever was applied to the first image will be
    // applied to all of the images
    baseImage = image[0];
    imagex = baseImage->GetWidth();
    imagey = baseImage->GetHeight();
    unsigned int x = 0;
    unsigned int y = 0;
    unsigned int height = 0;
    unsigned int width = 0;

    chopped = true;

    // make sure the image table is clear
    if (image.Count() != 0)
    {
        image.Delete(0,image.Count());
    }
    
    while ( y < (unsigned int)baseImage->GetHeight() )
    {
        height = FindNearestTextureSize(y,imagey);
        x = 0;
        while ( x < (unsigned int)baseImage->GetWidth() )
        {
            width = FindNearestTextureSize(x,imagex);
            tlImage* newImage = new tlImage();
            // We require alpha for the edges of the images
            if(baseImage->HasAlpha())
            {
                newImage->SetAttributes(width,height,baseImage->GetBpp(),baseImage->IsPalettized(), baseImage->HasAlpha());
            }
            else
            {
                if(baseImage->IsPalettized())
                {
                    // just set it as the parent, and we'll add an alpha depth in the palette
                    newImage->SetAttributes(width,height,baseImage->GetBpp(),true,baseImage->HasAlpha());
                }
                else
                {
                    newImage->SetAttributes(width,height,32,false, true);               
                }
            }
            if (baseImage->IsPalettized())
            {
                // We need to find a transparent color to use for the borders where the
                // image doesn't reach, so we'll try and get one
                newImage->SetPalette(baseImage->GetPalette());
                unsigned char colour[4] = {255,255,255,255};
                int i=0;
                for (i=0; i < baseImage->GetPaletteCount()-1; i++)
                {
                    baseImage->GetPaletteEntry(i,colour);
                    if (colour[3] == 0)
                    {
                        break;
                    }
                }
                // We didn't find anything, so we'll just have to add one
                if (i == baseImage->GetPaletteCount()-1)
                {
                    // We'll try to find an unused entry
                    tlTable<int> freeList;
                    freeList.Resize(baseImage->GetPaletteCount());
                    // initialize the whole list to true
                    for (i = 0; i < baseImage->GetPaletteCount()-1; i++)
                    {
                        freeList[i] = 0;
                    }
                    // loop through the destination image section, and mark used colours
                    int xCount = 0;
                    int yCount = 0;
                    int xEnd = x + (x+width>imagex ? imagex-x : width);
                    int yEnd = y + (y+height>imagey ? imagey-y : height);
                    for (xCount = x; xCount < xEnd; xCount++)
                    {
                        for (yCount = y; yCount < yEnd; yCount++)
                        {
                            freeList[baseImage->GetPixelIndex(xCount,yCount)]++;
                        }
                    }
                    // now go through, and find the first unused color
                    for (i=0; i < baseImage->GetPaletteCount()-1; i++)
                    {
                        if (freeList[i] == 0)
                        {
                            break;
                        }
                    }
                    //We never found an empty spot
                    if (i == baseImage->GetPaletteCount()-1)
                    {
                        // The only time this is actually crutial is on the outside border sprites
                        if ( (x+width >= imagex) || (y+height >= imagey) )
                        {
                            //We'll need to clobber a palette entry,
                            //but we'll try and clober the least used
                            int leastUsed = width*height;
                            int leastUsedIndex = 0;
                            for (i = 0; i < freeList.Count(); i++)
                            {
                                if (freeList[i] < leastUsed)
                                {
                                    leastUsed = freeList[i];
                                    leastUsedIndex = i;
                                }
                            }
                            i = leastUsedIndex;
                        }
                    }
                    colour[3] = 0;
                    newImage->SetPaletteEntry(i, colour);
                }
                newImage->Fill(i);
            }
            else
            {
                tlColour clearColour(0,0,0,0);
                newImage->Fill(clearColour);
            }
            newImage->SetName(baseImage->GetName());
            newImage->CopyRegion(baseImage,x,y,
                x+width>imagex ? imagex-x : width,
                y+height>imagey ? imagey-y : height,
                0,0);
            image.Append(newImage);
            x += width - (blitBorder<<1);
        }
        y += height - (blitBorder<<1);
    }

}

void
tlSprite::AssembleImage()
{
    if( !baseImage )
    {
        if( image.Count() > 1 )
        {
            baseImage = new tlImage();
            baseImage->SetAttributes( imagex, imagey, 32, false, true );
            int x = 0;
            int y = 0;
            int i = 0;
            while( y < static_cast<int>(imagey-1) )
            {
                x = 0;
                while( x < static_cast<int>(imagex-1) )
                {
                    baseImage->CopyRegion( image[i], blitBorder, blitBorder, image[i]->GetWidth() - (blitBorder << 1), image[i]->GetHeight() - (blitBorder << 1), x + blitBorder, y + blitBorder );
                    x += image[i]->GetWidth() - (blitBorder<<1);
                    i++;
                }
                y += image[i-1]->GetHeight() - (blitBorder<<1);
            }
        }
        else
        {
            baseImage = image[0];
        }
    }
    image.Delete(0,image.Count());
    image.Append(baseImage);
    chopped = false;
    baseImage=NULL;
}

int
tlSprite::FindNearestTextureSize(unsigned int val, unsigned int max)
{
    unsigned int base = max - val;
    if (base >= maxSprite)
    {
        return maxSprite;
    }
    if (base <= minSprite)
    {
        return minSprite;
        //return base;
    }

    // It's not one of the extremes, so find the nearest power of two
    int shift = 0;
    while (base != 1)
    {
        base >>= 1;
        shift++;
    }

    return 1<<shift;   
}

void
tlSprite::Convert(int newBpp, bool isPal, bool alpha)
{
    int i=0;
    for(;i < image.Count();i++)
    {
        image[i]->Convert(newBpp, isPal, alpha);
    }
}

void
tlSprite::SetFormat(tlImageFormat format)
{
    int i=0;
    for(;i < image.Count();i++)
    {
        image[i]->SetFormat(format);
    }
}

void
tlSprite::SetPS2Format()
{
    int i=0;
    for(;i < image.Count();i++)
    {
        image[i]->SetPS2Format();
    }
}

void
tlSprite::SetGCFormat()
{
    // The gamecube supports DXT1 compression only, which only has one alpha bit,
    // so we'll check if the alpha depth is shallow enough to let us use it.
    int alpha=8;
    
    if (chopped)
    {
        if (baseImage)
        {
            alpha=baseImage->GetRealAlphaDepth();
        }
    }
    else
    {
        alpha=image[0]->GetRealAlphaDepth();
    }
    if (alpha<2)
    {
        // convert to a pure 32 bit form so we can use the DXT1 compression on it.
        if (image[0]->GetBpp() != 32)
        {
            Convert(32,false,true);
        }
        SetFormat(IMG_DXT1);
    }
}

//*****************************************************************************
// tlSpriteLoader
//*****************************************************************************
tlSpriteLoader::tlSpriteLoader() : 
tlEntityLoader(Pure3D::Texture::SPRITE)
{            
}

tlEntity*
tlSpriteLoader::Load(tlDataChunk* chunk)
{
    return new tlSprite(chunk);
}


