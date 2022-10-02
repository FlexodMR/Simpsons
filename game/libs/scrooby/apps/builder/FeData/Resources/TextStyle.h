//===========================================================================
// Copyright (C) 2000 Radical Entertainment Ltd.  All rights reserved.
//
// Component:   FE Builder Data Structure
//
// Description: This contains the TextStyle class.
//
// Authors:     Victor Medrano
//
//===========================================================================

// Recompilation protection flag.
#ifndef __TEXTSTYLE_H
#define __TEXTSTYLE_H


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
// Description: This class is used to represent a front-end TextStyle resource.
//
// Constraints: None
//
//===========================================================================

namespace FeData
{
    class TextStyle : public Resource
    {
        public:
            TextStyle();
            virtual ~TextStyle();

            //makes a toollib chunk for this object
            tlDataChunk* MakeChunk() const;

        protected:

        private:
            // Create this methods as private so they can not be used
            TextStyle(const TextStyle &right);
            const TextStyle & operator = (const TextStyle &right);

            // Data members
    };
}

//===========================================================================
// Inlines
//===========================================================================



#endif                                  // End conditional inclusion

