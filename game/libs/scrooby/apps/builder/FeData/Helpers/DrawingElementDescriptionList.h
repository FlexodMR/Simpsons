//===========================================================================
// Copyright (C) 2000 Radical Entertainment Ltd.  All rights reserved.
//
// Component:   FE Builder Helper Classes
//
// Description: This contains the DrawingElementDescriptionList class which represents a DrawingElementDescriptionList.
//
// Authors:     Ryan Bedard
//
//===========================================================================

// Recompilation protection flag.
#ifndef __DrawingElementDescriptionList_H
#define __DrawingElementDescriptionList_H


//===========================================================================
// Nested Includes
//===========================================================================

#include "ElementList.h"
#include "..\NamedElements\Descriptions\DrawingElementDescription.h"

//===========================================================================
// Forward References
//===========================================================================

namespace FeData
{
    class TokenList;
    class Page;
}

//===========================================================================
// Constants, Typedefs, and Macro Definitions (needed by external clients)
//===========================================================================

//===========================================================================
// Interface Definitions
//===========================================================================

//===========================================================================
//
// Description: This class is used to represent a front-end DrawingElementDescriptionList.
//
// Constraints: None
//
//===========================================================================

namespace FeData
{
    class DrawingElementDescriptionList
    {
        public:
            DrawingElementDescriptionList();
            ~DrawingElementDescriptionList();

            bool SetFromTokenList( TokenList& tokenList );

            int GetNumberOfDescriptions();

            DrawingElement* CreateHierarchyElement( int index, Page* page );

        protected:

        private:
            DrawingElementDescriptionList( DrawingElementDescriptionList &right );
            const DrawingElementDescriptionList & operator = ( const DrawingElementDescriptionList &right );

            // Data members
            ElementList< DrawingElementDescription > m_List;
    };
}

//===========================================================================
// Inlines
//===========================================================================



#endif                                  // End conditional inclusion

