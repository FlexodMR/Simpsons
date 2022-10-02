//===========================================================================
// Copyright (C) 2000 Radical Entertainment Ltd.  All rights reserved.
//
// Component:   FE Builder Data Structure
//
// Description: This contains the GDIText class.
//
// Authors:     Ryan Bedard
//
//===========================================================================

// Recompilation protection flag.
#ifndef __GDITEXT_H
#define __GDITEXT_H


//===========================================================================
// Nested Includes
//===========================================================================

#include "..\Text.h"

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
// Description: This class is used to draw a Text to a Windows 
//              device-context.
//
// Constraints: None
//
//===========================================================================

namespace FeData
{
    class GDIText : public Text
    {
        public:
            GDIText();
            virtual ~GDIText();

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

