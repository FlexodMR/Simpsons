//===========================================================================
// Copyright (C) 2000 Radical Entertainment Ltd.  All rights reserved.
//
// Component:   FE Builder Data Structure
//
// Description: This contains the MovieClip class.
//
// Authors:     Ian Gipson
//
//===========================================================================

// Recompilation protection flag.
#ifndef __MOVIECLIP_H
#define __MOVIECLIP_H


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
// Description: This class is used to represent a front-end MovieClip resource.
//
// Constraints: None
//
//===========================================================================

namespace FeData
{
    class MovieClip : public Resource
    {
        public:
            MovieClip();
            virtual ~MovieClip();

            //makes a toollib chunk for this object
            tlDataChunk* MakeChunk() const;

        protected:

        private:
            // Create this methods as private so they can not be used
            MovieClip(const MovieClip &right);
            const MovieClip & operator = (const MovieClip &right);

            // Data members
    };
}

//===========================================================================
// Inlines
//===========================================================================



#endif                                  // End conditional inclusion

