//===========================================================================
// Copyright (C) 2000 Radical Entertainment Ltd.  All rights reserved.
//
// Component:   FE Builder Data Structure
//
// Description: This contains the DrawingElement class which represents a 
//              DrawingElement.
//
// Authors:     Ryan Bedard, Eric Tong
//
//===========================================================================

// Recompilation protection flag.
#ifndef __DRAWINGELEMENT_H
#define __DRAWINGELEMENT_H


//===========================================================================
// Nested Includes
//===========================================================================

#include "PageElement.h"

//===========================================================================
// Forward References
//===========================================================================

namespace FeData
{
    class DrawingContext;
    class DrawingElementDescription;
}

//===========================================================================
// Constants, Typedefs, and Macro Definitions (needed by external clients)
//===========================================================================

//===========================================================================
// Interface Definitions
//===========================================================================

//===========================================================================
//
// Description: This class is used to represent a front-end drawing element.
//
// Constraints: None
//
//===========================================================================

namespace FeData
{
    class DrawingElement : public PageElement
    {
        public:
            DrawingElement();
            virtual ~DrawingElement();

            virtual bool Draw( DrawingContext* theDrawingContext ) = 0;
            int GetXResolution();
            int GetYResolution();

            virtual DrawingElement* GetDrawingElementUnderLocation( int x, int y ) = 0;
            virtual bool Move(int dx, int dy) = 0;

            virtual bool GetBoundingLeft( int& left ) = 0;
            virtual bool GetBoundingTop( int& top ) = 0;
            virtual bool GetBoundingRight( int& right ) = 0;
            virtual bool GetBoundingBottom( int& bottom ) = 0;

            virtual DrawingElementDescription* GetDescription() = 0;
            virtual bool SetFromDescription( DrawingElementDescription* description );

        protected:
            virtual bool FillInDescription( DrawingElementDescription* description );

        private:
            DrawingElement(const DrawingElement &right);
            const DrawingElement & operator = (const DrawingElement &right);

            // Data members
    };
}

//===========================================================================
// Inlines
//===========================================================================



#endif                                  // End conditional inclusion

