//===========================================================================
// Copyright (C) 2001 Radical Entertainment Ltd.  All rights reserved.
//
// Component:   FE Builder Data Structure
//
// Description: This contains the Chunkable class which represents something
//              that can be turned int P3D chunks using toollib.
//
// Authors:     Ryan Bedard
//
//===========================================================================

// Recompilation protection flag.
#ifndef __CHUNKABLE_H
#define __CHUNKABLE_H


//===========================================================================
// Nested Includes
//===========================================================================

//===========================================================================
// Forward References
//===========================================================================
class tlDataChunk;

//===========================================================================
// Constants, Typedefs, and Macro Definitions (needed by external clients)
//===========================================================================

//===========================================================================
// Interface Definitions
//===========================================================================

//===========================================================================
//
// Description: This class is used to represent a chunkable objectk.
//
// Constraints: None
//
//===========================================================================

namespace FeData
{
    class Chunkable
    {
        public:
            virtual tlDataChunk* MakeChunk() const = 0;

        protected:

        private:
            // Data members
    };
}

//===========================================================================
// Inlines
//===========================================================================



#endif                                  // End conditional inclusion

