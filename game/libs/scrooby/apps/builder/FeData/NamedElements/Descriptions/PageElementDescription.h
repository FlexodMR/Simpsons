//===========================================================================
// Copyright (C) 2000 Radical Entertainment Ltd.  All rights reserved.
//
// Component:   FE Builder Data Structure
//
// Description: This contains the PageElement class.
//
// Authors:     Ryan Bedard
//
//===========================================================================

// Recompilation protection flag.
#ifndef __PAGEELEMENTDESCRIPTIION_H
#define __PAGEELEMENTDESCRIPTIION_H


//===========================================================================
// Nested Includes
//===========================================================================

#include "NamedElementDescription.h"

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
// Description: This is an element that contains a Page.  This class is 
//              used a the parent for classes that need access to a Page.
//
// Constraints: None
//
//===========================================================================

namespace FeData
{
    class PageElementDescription : public NamedElementDescription
    {
        public:
            PageElementDescription();
            virtual ~PageElementDescription();

            virtual bool AddToTokenList( TokenList& tokenList );
            virtual bool SetFromTokenList( TokenList& tokenList );

        protected:

        private:
            // Create this methods as private so they can not be used
            PageElementDescription(const PageElementDescription &right);
            const PageElementDescription & operator = (const PageElementDescription &right);
    };
}

//===========================================================================
// Inlines
//===========================================================================



#endif                                  // End conditional inclusion

