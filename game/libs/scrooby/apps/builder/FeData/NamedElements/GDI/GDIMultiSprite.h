//===========================================================================
// Copyright (C) 2000 Radical Entertainment Ltd.  All rights reserved.
//
// Component:   FE Builder Data Structure
//
// Description: This contains the GDIMultiSprite.
//
// Authors:     Ryan Bedard
//
//===========================================================================

// Recompilation protection flag.
#ifndef __GDIMULTISPRITE_H
#define __GDIMULTISPRITE_H


//===========================================================================
// Nested Includes
//===========================================================================

#include "..\MultiSprite.h"

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
// Description: This class is used to draw a MultiSprite to a Windows 
//              device-context.
//
// Constraints: None
//
//===========================================================================

namespace FeData
{
    class GDIMultiSprite : public MultiSprite
    {
        public:
            GDIMultiSprite();
            virtual ~GDIMultiSprite();

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

