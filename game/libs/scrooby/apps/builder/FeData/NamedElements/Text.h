//===========================================================================
// Copyright (C) 2000 Radical Entertainment Ltd.  All rights reserved.
//
// Component:   FE Builder Data Structure
//
// Description: This contains the Text class which represents a Text.
//
// Authors:     Ryan Bedard
//
//===========================================================================

// Recompilation protection flag.
#ifndef __TEXT_H
#define __TEXT_H


//===========================================================================
// Nested Includes
//===========================================================================

#include "MultiText.h"

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
    class Text : public MultiText
    {
        public:
            Text();
            virtual ~Text();

            virtual bool Draw( DrawingContext* theDrawingContext ) = 0;

        protected:

        private:
            // Create this methods as private so they can not be used
            Text(const Text &right);
            const Text & operator = (const Text &right);

            // Data members
    };
}

//===========================================================================
// Inlines
//===========================================================================



#endif                                  // End conditional inclusion

