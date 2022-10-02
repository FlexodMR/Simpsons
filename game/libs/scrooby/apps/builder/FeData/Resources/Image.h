//===========================================================================
// Copyright (C) 2000 Radical Entertainment Ltd.  All rights reserved.
//
// Component:   FE Builder Data Structure
//
// Description: This contains the Image class.
//
// Authors:     Ryan Bedard
//
//===========================================================================

// Recompilation protection flag.
#ifndef __IMAGE_H
#define __IMAGE_H


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
// Description: This class is used to represent a front-end Image resource.
//
// Constraints: None
//
//===========================================================================

namespace FeData
{
    class Image : public Resource
    {
        public:
            Image();
            virtual ~Image();

            //makes a toollib chunk for this object
            tlDataChunk* MakeChunk() const;

        protected:

        private:
            // Create this methods as private so they can not be used
            Image(const Image &right);
            const Image & operator = (const Image &right);

            // Data members
    };
}

//===========================================================================
// Inlines
//===========================================================================



#endif                                  // End conditional inclusion

