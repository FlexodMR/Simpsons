//===========================================================================
// Copyright (C) 2000 Radical Entertainment Ltd.  All rights reserved.
//
// Component:   FE Builder Data Structure
//
// Description: This contains the Group class which represents a Group.
//
// Authors:     Ryan Bedard, Eric Tong
//
//===========================================================================

// Recompilation protection flag.
#ifndef __GROUP_H
#define __GROUP_H


//===========================================================================
// Nested Includes
//===========================================================================

#include "DrawingElement.h"
#include "..\Helpers\ElementList.h"
#include "..\Helpers\EnumConversion.h"

//===========================================================================
// Forward References
//===========================================================================

namespace FeData
{
    class DrawingContext;
    class GroupDescription;
}

//===========================================================================
// Constants, Typedefs, and Macro Definitions (needed by external clients)
//===========================================================================

//===========================================================================
// Interface Definitions
//===========================================================================

//===========================================================================
//
// Description: This class is used to represent a front-end group.
//
// Constraints: None
//
//===========================================================================

namespace FeData
{
    class Group : public DrawingElement
    {
        public:
            Group();
            virtual ~Group();

            int GetNumberOfDrawingElements();
            
            bool AddDrawingElement( DrawingElement* newDrawingElement );
            bool AddDrawingElementBefore( DrawingElement* newDrawingElement, 
                                          const DrawingElement* existingDrawingElement );
            bool AddDrawingElementAtEnd( DrawingElement* newDrawingElement );
            bool AddDrawingElementAtIndex( DrawingElement* newDrawingElement, int index );

            virtual tlDataChunk* MakeChunk() const;
            bool RemoveDrawingElement( int index );
            bool RemoveDrawingElement( DrawingElement* existingDrawingElement );
            bool RemoveDrawingElementWithoutDelete( DrawingElement* existingDrawingElement );

            DrawingElement* GetDrawingElement( int index );
            int GetDrawingElementIndex( DrawingElement* existingDrawingElement );

            int GetAlpha() const;
            void SetAlpha( int alpha );

            virtual bool Draw( DrawingContext* theDrawingContext );
            
            virtual bool Move(int dx, int dy);

            virtual bool GetBoundingLeft( int& left );
            virtual bool GetBoundingTop( int& top );
            virtual bool GetBoundingRight( int& right );
            virtual bool GetBoundingBottom( int& bottom );

            virtual DrawingElement* GetDrawingElementUnderLocation( int x, int y );

            virtual bool Contains( DrawingElement* element );

            DrawingElementOrderEnum GetOrder( DrawingElement* first, DrawingElement* second );

            virtual DrawingElementDescription* GetDescription();
            virtual bool SetFromDescription( DrawingElementDescription* description );

            PageElement* GetParent( DrawingElement* child );

        protected:

        private:
            Group( Group &right);
            const Group & operator = (Group &right);

            // Data members
            ElementList< DrawingElement > m_DrawingElementList;

            int m_alpha;
    };
}

//===========================================================================
// Inlines
//===========================================================================



#endif                                  // End conditional inclusion

