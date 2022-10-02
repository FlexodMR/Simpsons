//===========================================================================
// Copyright (C) 2000 Radical Entertainment Ltd.  All rights reserved.
//
// Component:   FE Builder Data Structure
//
// Description: This contains the Polygon class which represents a Polygon.
//
// Authors:     Ryan Bedard, Eric Tong
//
//===========================================================================

// Recompilation protection flag.
#ifndef __POLYGON_H
#define __POLYGON_H


//===========================================================================
// Nested Includes
//===========================================================================

#include "DrawingElement.h"
#include "..\Helpers\ElementList.h"
#include "..\Helpers\Vertex.h"
#include "..\Helpers\EnumConversion.h"

//===========================================================================
// Forward References
//===========================================================================

namespace FeData
{
    class PolygonDescription;
}

//===========================================================================
// Constants, Typedefs, and Macro Definitions (needed by external clients)
//===========================================================================

//===========================================================================
// Interface Definitions
//===========================================================================

//===========================================================================
//
// Description: This class is used to represent a front-end polygon.
//
// Constraints: None
//
//===========================================================================

namespace FeData
{
    class Polygon : public DrawingElement
    {
        public:
            Polygon();
            virtual ~Polygon();

            int GetNumberOfVertexes();
            
            bool AddVertex( Vertex* newVertex );
            bool RemoveVertex( int index );
            const Vertex* GetVertex( int index );
            virtual tlDataChunk* MakeChunk() const;

            TranslucencyEnum GetTranslucency();
            void SetTranslucency( TranslucencyEnum translucency );

            virtual bool Move( int dx, int dy );

            bool SetVertexXY( int index, int x, int y );
            bool SetVertexRed( int index, int red );
            bool SetVertexBlue( int index, int blue );
            bool SetVertexGreen( int index, int green );
            bool SetVertexAlpha( int index, int alpha );

            virtual bool GetBoundingLeft( int& left );
            virtual bool GetBoundingTop( int& top );
            virtual bool GetBoundingRight( int& right );
            virtual bool GetBoundingBottom( int& bottom );

            virtual DrawingElementDescription* GetDescription();
            virtual bool SetFromDescription( DrawingElementDescription* description);

        protected:

        private:
            // Create this methods as private so they can not be used
            Polygon(const Polygon &right);
            const Polygon & operator = (const Polygon &right);

            void RecalcBorder();

            // Data members
            ElementList< Vertex > m_VertexList;
            TranslucencyEnum m_translucency;

            int m_top;
            int m_bottom;
            int m_left;
            int m_right;
    };
}

//===========================================================================
// Inlines
//===========================================================================



#endif                                  // End conditional inclusion

