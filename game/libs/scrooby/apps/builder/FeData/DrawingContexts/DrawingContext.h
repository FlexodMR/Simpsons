//===========================================================================
// Copyright (C) 2000 Radical Entertainment Ltd.  All rights reserved.
//
// Component:   FE Builder Data Structure
//
// Description: This contains the DrawingContext class.
//
// Authors:     Ryan Bedard
//
//===========================================================================

// Recompilation protection flag.
#ifndef __DRAWINGCONTEXT_H
#define __DRAWINGCONTEXT_H


//===========================================================================
// Nested Includes
//===========================================================================

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
// Description: This class is the base drawing context.
//
// Constraints: None
//
//===========================================================================

namespace FeData
{
    class DrawingContext
    {
        public:
            DrawingContext();
            virtual ~DrawingContext();

        protected:

        private:
            // Create this methods as private so they can not be used
            DrawingContext(const DrawingContext &right);
            const DrawingContext & operator = (const DrawingContext &right);

            // Data members
    };
}

//===========================================================================
// Inlines
//===========================================================================



#endif                                  // End conditional inclusion

