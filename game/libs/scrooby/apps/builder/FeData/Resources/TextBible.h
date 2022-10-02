//===========================================================================
// Copyright (C) 2000 Radical Entertainment Ltd.  All rights reserved.
//
// Component:   FE Builder Data Structure
//
// Description: This contains the TextBible class.
//
// Authors:     Ryan Bedard
//
//===========================================================================

// Recompilation protection flag.
#ifndef __TEXTBIBLE_H
#define __TEXTBIBLE_H


//===========================================================================
// Nested Includes
//===========================================================================

#include "Resource.h"

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
// Description: This class is used to represent a front-end TextBible resource.
//
// Constraints: None
//
//===========================================================================

namespace FeData
{
    class TextBible : public Resource
    {
        public:
            TextBible();
            virtual ~TextBible();

            //makes a toollib chunk for this object
            tlDataChunk* MakeChunk() const;

        protected:

        private:
            // Create this methods as private so they can not be used
            TextBible(const TextBible &right);
            const TextBible & operator = (const TextBible &right);

            // Data members
    };
}

//===========================================================================
// Inlines
//===========================================================================



#endif                                  // End conditional inclusion

