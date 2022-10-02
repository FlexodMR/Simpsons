//===========================================================================
// Copyright (C) 2000 Radical Entertainment Ltd.  All rights reserved.
//
// Component:   FE Builder Data Structure
//
// Description: This contains the DrawingElementDescription class which represents a 
//              DrawingElementDescription.
//
// Authors:     Ryan Bedard, Eric Tong
//
//===========================================================================

// Recompilation protection flag.
#ifndef __DRAWINGELEMENTDESCRIPTIION_H
#define __DRAWINGELEMENTDESCRIPTIION_H


//===========================================================================
// Nested Includes
//===========================================================================

#include "PageElementDescription.h"

//===========================================================================
// Forward References
//===========================================================================

namespace FeData
{
    class Page;
    class DrawingElement;
    class TokenList;
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
    class DrawingElementDescription : public PageElementDescription
    {
        public:
            DrawingElementDescription();
            virtual ~DrawingElementDescription();

            virtual bool AddToTokenList( TokenList& tokenList );
            virtual bool SetFromTokenList( TokenList& tokenList );

            virtual DrawingElement* CreateHierarchyElement( Page* page ) = 0;

        protected:

        private:
            DrawingElementDescription(const DrawingElementDescription &right);
            const DrawingElementDescription & operator = (const DrawingElementDescription &right);

            // Data members
    };
}

//===========================================================================
// Inlines
//===========================================================================



#endif                                  // End conditional inclusion

