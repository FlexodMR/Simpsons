//===========================================================================
// Copyright (C) 2000 Radical Entertainment Ltd.  All rights reserved.
//
// Component:   FE Builder Data Structure
//
// Description: This contains the BoxDrawingElementDescription class which represents a 
//              BoxDrawingElementDescription.
//
// Authors:     Ryan Bedard, Eric Tong
//
//===========================================================================

// Recompilation protection flag.
#ifndef __BoxDrawingElementDescription_H
#define __BoxDrawingElementDescription_H


//===========================================================================
// Nested Includes
//===========================================================================

#include "DrawingElementDescription.h"
#include "..\..\Helpers\EnumConversion.h"
#include "..\..\Helpers\Color.h"

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
    class BoxDrawingElementDescription : public DrawingElementDescription
    {
        public:
            BoxDrawingElementDescription();
            virtual ~BoxDrawingElementDescription();

            virtual int GetX();
            virtual int GetY();
            virtual int GetWidth();
            virtual int GetHeight();
            JustificationEnum GetJustificationHorizontal();
            JustificationEnum GetJustificationVertical();
            TranslucencyEnum GetTranslucency();
            double GetRotation();
            virtual int GetRed();
            virtual int GetGreen();
            virtual int GetBlue();
            virtual int GetAlpha();

            void SetX( int x );
            void SetY( int y );
            void SetWidth( int width );
            void SetHeight( int height );
            void SetJustificationHorizontal( JustificationEnum justification );
            void SetJustificationVertical( JustificationEnum justification );
            void SetTranslucency( TranslucencyEnum translucency );
            void SetRotation( double rotation );
            void SetColor( int red, int green, int blue, int alpha );

            virtual bool AddToTokenList( TokenList& tokenList );
            virtual bool SetFromTokenList( TokenList& tokenList );

            virtual DrawingElement* CreateHierarchyElement( Page* page ) = 0;

        protected:


        private:
            // Create this methods as private so they can not be used
            BoxDrawingElementDescription(const BoxDrawingElementDescription &right);
            const BoxDrawingElementDescription & operator = (const BoxDrawingElementDescription &right);

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



#endif                                  // End conditional inclusion

