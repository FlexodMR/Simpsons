//===========================================================================
// Copyright (C) 2000 Radical Entertainment Ltd.  All rights reserved.
//
// Component:   FE Builder Data Structure
//
// Description: This contains the MultiSpriteLoader class.
//
// Authors:     Eric Tong
//
//===========================================================================

// Recompilation protection flag.
#ifndef __MULTISPRITELOADER_H
#define __MULTISPRITELOADER_H


//===========================================================================
// Nested Includes
//===========================================================================

//===========================================================================
// Forward References
//===========================================================================
namespace FeData
{
    class MultiSprite;
    class Page;
}
class XMLTree;

//===========================================================================
// Constants, Typedefs, and Macro Definitions (needed by external clients)
//===========================================================================

const char* const g_MultiSpriteTag                        = "MultiSprite";
const char* const g_MultiSpriteTagImages                  = "Images";
const char* const g_MultiSpriteTagImage                   = "Image";
const char* const g_MultiSpriteTagImageName               = "name";
const char* const g_MultiSpriteTagCurrentIndex            = "CurrentIndex";
const char* const g_MultiSpriteTagCurrentIndexValue       = "value";


//===========================================================================
// Interface Definitions
//===========================================================================

//===========================================================================
//
// Description: This class is used load a layer from the file.
//
// Constraints: None
//
//===========================================================================

namespace FeData
{
    class MultiSpriteLoader
    {
        public:
            MultiSpriteLoader();
            ~MultiSpriteLoader();

            MultiSprite* Load( XMLTree &loadTree, Page* thePage );

        protected:

        private:
            // Create this methods as private so they can not be used
            MultiSpriteLoader(const MultiSpriteLoader &right);
            const MultiSpriteLoader & operator = (const MultiSpriteLoader &right);

            // Data members
    };
}

//===========================================================================
// Inlines
//===========================================================================



#endif                                  // End conditional inclusion

