//===========================================================================
// Copyright (C) 2000 Radical Entertainment Ltd.  All rights reserved.
//
// Component:   FE Builder Data Structure
//
// Description: This contains the SpriteSaver class.
//
// Authors:     Eric Tong
//
//===========================================================================

// Recompilation protection flag.
#ifndef __SPRITESAVER_H
#define __SPRITESAVER_H


//===========================================================================
// Nested Includes
//===========================================================================

//===========================================================================
// Forward References
//===========================================================================
namespace FeData
{
    class Sprite;
}
class XMLSaver;

//===========================================================================
// Constants, Typedefs, and Macro Definitions (needed by external clients)
//===========================================================================

//===========================================================================
// Interface Definitions
//===========================================================================

//===========================================================================
//
// Description: This class is used save a Sprite to a file.
//
// Constraints: None
//
//===========================================================================

namespace FeData
{
    class SpriteSaver
    {
        public:
            SpriteSaver();
            ~SpriteSaver();

            bool Save( Sprite* theSprite, XMLSaver& theSaver );

        protected:

        private:
            // Create this methods as private so they can not be used
            SpriteSaver(const SpriteSaver &right);
            const SpriteSaver & operator = (const SpriteSaver &right);

            // Data members
    };
}

//===========================================================================
// Inlines
//===========================================================================



#endif                                  // End conditional inclusion

