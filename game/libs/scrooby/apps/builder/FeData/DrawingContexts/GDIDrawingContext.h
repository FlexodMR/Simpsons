//===========================================================================
// Copyright (C) 2000 Radical Entertainment Ltd.  All rights reserved.
//
// Component:   FE Builder Data Structure
//
// Description: This contains the GDIDrawingContext class.
//
// Authors:     Ryan Bedard
//
//===========================================================================

// Recompilation protection flag.
#ifndef __GDIDRAWINGCONTEXT_H
#define __GDIDRAWINGCONTEXT_H


//===========================================================================
// Nested Includes
//===========================================================================

#include "DrawingContext.h"

//===========================================================================
// Forward References
//===========================================================================

class CDC;

//===========================================================================
// Constants, Typedefs, and Macro Definitions (needed by external clients)
//===========================================================================

//===========================================================================
// Interface Definitions
//===========================================================================

//===========================================================================
//
// Description: This class is to draw with a Windows device-context.
//
// Constraints: None
//
//===========================================================================

namespace FeData
{
    class GDIDrawingContext : public DrawingContext
    {
        public:
            GDIDrawingContext();
            virtual ~GDIDrawingContext();

            void SetCDC( CDC* theDC  );
            CDC* GetCDC();

        protected:

        private:
            // Create this methods as private so they can not be used
            GDIDrawingContext(const GDIDrawingContext &right);
            const GDIDrawingContext & operator = (const GDIDrawingContext &right);

            // Data members
            CDC *m_DC;
    };
}

//===========================================================================
// Inlines
//===========================================================================



#endif                                  // End conditional inclusion

