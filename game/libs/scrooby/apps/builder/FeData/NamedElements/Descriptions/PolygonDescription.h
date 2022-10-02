
//===========================================================================
// Copyright (C) 2000 Radical Entertainment Ltd.  All rights reserved.
//
// Component:   FE Builder Data Structure
//
// Description: This contains the PolygonDescription class which represents a PolygonDescription.
//
// Authors:     Ryan Bedard, Eric Tong
//
//===========================================================================

// Recompilation protection flag.
#ifndef __POLYGONDESCRIPTIION_H
#define __POLYGONDESCRIPTIION_H


//===========================================================================
// Nested Includes
//===========================================================================

#include "DrawingElementDescription.h"
#include "..\..\Helpers\ElementList.h"
#include "..\..\Helpers\Vertex.h"
#include "..\..\Helpers\EnumConversion.h"

//===========================================================================
// Forward References
//===========================================================================

namespace FeData
{
    class TokenList;
}

//===========================================================================
// Constants, Typedefs, and Macro Definitions (needed by external clients)
//===========================================================================

const char* const g_PolygonDescriptionHeader = "<Polygon>";
const char* const g_PolygonDescriptionFooter = "</Polygon>";

//===========================================================================
// Interface Definitions
//===========================================================================

//===========================================================================
//
// Description: This class is used to represent a front-end PolygonDescription.
//
// Constraints: None
//
//===========================================================================

namespace FeData
{
    class PolygonDescription : public DrawingElementDescription
    {
        public:
            PolygonDescription();
            virtual ~PolygonDescription();

            virtual bool AddToTokenList( TokenList& tokenList );
            virtual bool SetFromTokenList( TokenList& tokenList );

            virtual DrawingElement* CreateHierarchyElement( Page* page );

            int GetNumberOfVertexes();
            
            bool AddVertex( Vertex* newVertex );
            bool RemoveVertex( int index );
            const Vertex* GetVertex( int index );

            TranslucencyEnum GetTranslucency();
            void SetTranslucency( TranslucencyEnum translucency );

        protected:

        private:
            // Create this methods as private so they can not be used
            PolygonDescription(const PolygonDescription &right);
            const PolygonDescription & operator = (const PolygonDescription &right);

            // Data members
            ElementList< Vertex > m_VertexList;
            TranslucencyEnum m_translucency;
    };
}

//===========================================================================
// Inlines
//===========================================================================



#endif                                  // End conditional inclusion

