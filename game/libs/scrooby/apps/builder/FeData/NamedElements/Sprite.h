//===========================================================================
// Copyright (C) 2000 Radical Entertainment Ltd.  All rights reserved.
//
// Component:   FE Builder Data Structure
//
// Description: This contains the Sprite class which represents a Sprite.
//
// Authors:     Ryan Bedard
//
//===========================================================================

// Recompilation protection flag.
#ifndef __SPRITE_H
#define __SPRITE_H


//===========================================================================
// Nested Includes
//===========================================================================

#include "MultiSprite.h"

//===========================================================================
// Forward References
//===========================================================================

//===========================================================================
// Constants, Typedefs, and Macro Definitions (needed by external clients)
//===========================================================================

//===========================================================================
// Interface Definitions
//===========================================================================

//===========================================================================
//
// Description: This class is used to represent a front-end multi sprite.
//
// Constraints: None
//
//===========================================================================

namespace FeData
{
    class Sprite : public MultiSprite
    {
        public:
            Sprite();
            virtual ~Sprite();

            virtual bool Draw( DrawingContext* theDrawingContext ) = 0;

            Image* GetImage();
            bool   SetImage( Image* theImage );

            virtual DrawingElementDescription* GetDescription();

        protected:

        private:
            // Create this methods as private so they can not be used
            Sprite(const Sprite &right);
            const Sprite & operator = (const Sprite &right);

            // Data members
    };
}

//===========================================================================
// Inlines
//===========================================================================



#endif                                  // End conditional inclusion

