//===========================================================================
// Copyright (C) 2000 Radical Entertainment Ltd.  All rights reserved.
//
// Component:   FE Builder Data Structure
//
// Description: This contains the GDISprite.
//
// Authors:     Ryan Bedard
//
//===========================================================================

// Recompilation protection flag.
#ifndef __GDISPRITE_H
#define __GDISPRITE_H


//===========================================================================
// Nested Includes
//===========================================================================

#include "..\Sprite.h"

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
// Description: This class is used to draw a Sprite to a Windows 
//              device-context.
//
// Constraints: None
//
//===========================================================================

namespace FeData
{
    class GDISprite : public Sprite
    {
        public:
            GDISprite();
            virtual ~GDISprite();

            virtual bool Draw( DrawingContext* theDrawingContext );
            int GetDeviceY(); 

        protected:

        private:
    };
}

//===========================================================================
// Inlines
//===========================================================================



#endif                                  // End conditional inclusion

