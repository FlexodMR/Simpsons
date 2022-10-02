//===========================================================================
// Copyright (C) 2000 Radical Entertainment Ltd.  All rights reserved.
//
// Component:   FE Builder Data Structure
//
// Description: This contains the BoxDrawingElement class which represents a 
//              BoxDrawingElement.
//
// Authors:     Ryan Bedard, Eric Tong
//
//===========================================================================

// Recompilation protection flag.
#ifndef __BOXDRAWINGELEMENT_H
#define __BOXDRAWINGELEMENT_H


//===========================================================================
// Nested Includes
//===========================================================================

#include "DrawingElement.h"
#include "..\Helpers\EnumConversion.h"
#include "..\Helpers\Color.h"

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
// Description: This class is used to represent a front-end box drawing 
//              element.
//
// Constraints: None
//
//===========================================================================

namespace FeData
{
    class BoxDrawingElement : public DrawingElement
    {
        public:
            BoxDrawingElement();
            virtual ~BoxDrawingElement();

            virtual bool Draw( DrawingContext* theDrawingContext ) = 0;

            virtual int GetX() const;
            virtual int GetY() const;
            virtual int GetWidth() const;
            virtual int GetHeight() const;
            virtual bool Move( int dx, int dy );
            JustificationEnum GetJustificationHorizontal() const;
            JustificationEnum GetJustificationVertical() const;
            TranslucencyEnum GetTranslucency() const    ;
            double GetRotation() const;
            virtual int GetRed() const;
            virtual int GetGreen() const;
            virtual int GetBlue() const;
            virtual int GetAlpha() const;
        
            void SetX( int x );
            void SetY( int y );
            void SetWidth( int width );
            void SetHeight( int height );
            void SetJustificationHorizontal( JustificationEnum justification );
            void SetJustificationVertical( JustificationEnum justification );
            void SetTranslucency( TranslucencyEnum translucency );
            void SetRotation( double rotation );
            void SetColor( int red, int green, int blue, int alpha );

            virtual DrawingElement* GetDrawingElementUnderLocation( int x, int y );

            virtual bool GetBoundingLeft( int& left );
            virtual bool GetBoundingTop( int& top );
            virtual bool GetBoundingRight( int& right );
            virtual bool GetBoundingBottom( int& bottom );

            virtual DrawingElementDescription* GetDescription() = 0;
            virtual bool SetFromDescription( DrawingElementDescription* description );

//            template < class T > void FillChunk( T chunk ) const;
// IAN IMPROVE: why the hell doesn't this member function template compile????! Dammit!


        protected:
            virtual bool FillInDescription( DrawingElementDescription* description );

        private:
            // Create this methods as private so they can not be used
            BoxDrawingElement(const BoxDrawingElement &right);
            const BoxDrawingElement & operator = (const BoxDrawingElement &right);

            // Data members
            int m_x;
            int m_y;
            int m_width;
            int m_height;
            JustificationEnum m_justificationHorizontal;
            JustificationEnum m_justificationVertical;
            TranslucencyEnum m_translucency;
            double m_rotation;
            Color m_color;
    };
}

//===========================================================================
// Inlines
//===========================================================================

//===========================================================================
// BoxDrawingElement::FillChunk
//===========================================================================
// Description: This fills in the elements of a particular chunk
//
// Constraints:    None
//
// Parameters:    chunk - the chunk to be filled up
//
// Return:      None
//
//===========================================================================
/*template < class T > void FeData::BoxDrawingElement::FillChunk( T chunk ) const
{
    assert( false );
}
*/
#endif                                  // End conditional inclusion

