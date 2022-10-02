/*===========================================================================
    File:: tlSprite.hpp

    Copyright (c) 1998-1999 Radical Entertainment, Inc.  All rights reserved.

===========================================================================*/

#ifndef _TLSPRITE_HPP
#define _TLSPRITE_HPP

#include "tlSpriteChunk.hpp"
#include "tlImage.hpp"
#include "tlLoadManager.hpp"
#include <assert.h>

class tlImage;
class tlDataChunk;
class tlInventory;

//*****************************************************************************
// tlSprite
//*****************************************************************************
class tlSprite : public tlEntity
{
    unsigned long nativex;
    unsigned long nativey;
    char*         shader;

    unsigned long imagex;
    unsigned long imagey;
    unsigned int  blitBorder;

    bool chopped;

    tlTable<tlImage*> image;

    unsigned int maxSprite;
    unsigned int minSprite;

    tlImage* baseImage;

    int FindNearestTextureSize(unsigned int,unsigned int);

public:

    tlSprite();
    ~tlSprite();

    tlSprite(tlDataChunk* ch);

    void LoadFromChunk(tlDataChunk* ch);
    tlDataChunk* Chunk();

    void LoadFromChunk16(tlDataChunk* ch)   { assert(0); }
    tlDataChunk* Chunk16()                  { assert(0); return NULL; }

    // accessors
    inline unsigned long    GetNativeX() { return nativex; }
    inline unsigned long    GetNativeY() { return nativey; }
    inline char*            GetShader() { return shader; }
    inline tlImage*         GetImage(int index = 0) { return image[index]; }
    inline unsigned int     GetImageCount() { return image.Count(); }
    inline unsigned int     GetImageHeight() { return imagex; }
    inline unsigned int     GetImageWidth() { return imagey; }
    inline unsigned int     GetMinSpriteSize() { return minSprite; }
    inline unsigned int     GetMaxSpriteSize() { return maxSprite; }

    void             SetNativeX(unsigned long);
    void             SetNativeY(unsigned long);
    void             SetShader(const char*);
    void             SetImage(tlImage*);
    void             SetBlitBorder(int border);
    void             SetImageHeight(unsigned int);
    void             SetImageWidth(unsigned int);
    void             SetMinSpriteSize(unsigned int);
    void             SetMaxSpriteSize(unsigned int);

    void             AssembleImage();
    void             SplitImage();

    // Extensions to tlImage
    void             Convert(int newBpp, bool isPal, bool alpha);
    void             SetFormat(tlImageFormat format);
    void             SetPS2Format();
    void             SetGCFormat();

};

//*****************************************************************************
// tlSpriteLoader
//*****************************************************************************
class tlSpriteLoader : public tlEntityLoader
{
public:
    tlSpriteLoader();

    virtual tlEntity* Load(tlDataChunk* chunk);
};

#endif

