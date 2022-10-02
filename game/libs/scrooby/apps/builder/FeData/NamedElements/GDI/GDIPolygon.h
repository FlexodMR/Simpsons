//===========================================================================
// Copyright (C) 2000 Radical Entertainment Ltd.  All rights reserved.
//
// Component:   FE Builder Data Structure
//
// Description: This contains the GDIPolygon class.
//
// Authors:     Ryan Bedard
//
//===========================================================================

// Recompilation protection flag.
#ifndef __GDIPOLYGON_H
#define __GDIPOLYGON_H


//===========================================================================
// Nested Includes
//===========================================================================

#include "..\Polygon.h"

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
// Description: This class is used to draw a Polygon to a Windows 
//              device-context.
//
// Constraints: None
//
//===========================================================================

namespace FeData
{
    class GDIPolygon : public Polygon
    {
        public:
            GDIPolygon();
            virtual ~GDIPolygon();

            virtual bool Draw( DrawingContext* theDrawingContext );

            virtual DrawingElement* GetDrawingElementUnderLocation( int x, int y );

        protected:

        private:
            static const int m_maxVertexesToDraw;
    };
}

//===========================================================================
// Inlines
//===========================================================================



#endif                                  // End conditional inclusion

