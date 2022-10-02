//===========================================================================
// Copyright (C) 2000 Radical Entertainment Ltd.  All rights reserved.
//
// Component:   FE Builder Data Structure
//
// Description: This contains the Layer class which represents a layer.
//
// Authors:     Ryan Bedard, Eric Tong
//
//===========================================================================

// Recompilation protection flag.
#ifndef __LAYER_H
#define __LAYER_H


//===========================================================================
// Nested Includes
//===========================================================================

#include "PageElement.h"
#include "..\Helpers\ElementList.h"
#include "..\Helpers\EnumConversion.h"
#include "DrawingElement.h"

//===========================================================================
// Forward References
//===========================================================================

namespace FeData
{
    class DrawingContext;
    class DrawingElement;
}

//===========================================================================
// Constants, Typedefs, and Macro Definitions (needed by external clients)
//===========================================================================

//===========================================================================
// Interface Definitions
//===========================================================================

//===========================================================================
//
// Description: This class is used to represent a front-end layer.
//
// Constraints: None
//
//===========================================================================

namespace FeData
{
    class Layer : public PageElement
    {
        public:
            Layer();
            virtual ~Layer();

            int GetNumberOfDrawingElements() const;
            
            bool AddDrawingElement( DrawingElement* newDrawingElement );
            bool AddDrawingElementBefore( DrawingElement* newDrawingElement, 
                                          const DrawingElement* existingDrawingElement );
            bool AddDrawingElementAtEnd( DrawingElement* newDrawingElement );
            bool AddDrawingElementAtIndex( DrawingElement* newDrawingElement, int index );

            tlDataChunk* MakeChunk() const;

            bool RemoveDrawingElement( int index );
            bool RemoveDrawingElement( DrawingElement* existingDrawingElement );
            bool RemoveDrawingElementWithoutDelete( DrawingElement* existingDrawingElement );

            DrawingElement* GetDrawingElement( int index );
            const DrawingElement* GetDrawingElement( int index ) const;
            int GetDrawingElementIndex( DrawingElement* existingDrawingElement );

            bool IsVisible() const;
            bool IsEditable() const;
            int GetAlpha() const;

            void SetVisible( bool visible );
            void SetEditable( bool editable );
            void SetAlpha( int alpha );

            bool Draw( DrawingContext* theDrawingContext );
            DrawingElement* GetDrawingElementUnderLocation( int x, int y );

            DrawingElementOrderEnum GetOrder( DrawingElement* first, DrawingElement* second );

            PageElement* GetParent( DrawingElement* child );

        protected:

        private:
            Layer( Layer &right);
            const Layer & operator = (Layer &right);

            // Data members
            ElementList< DrawingElement > m_DrawingElementList;
            bool m_visible;
            bool m_editable;
            int m_alpha;
    };
}

//===========================================================================
// Inlines
//===========================================================================



#endif                                  // End conditional inclusion

