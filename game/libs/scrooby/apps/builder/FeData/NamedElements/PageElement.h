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
#ifndef __PAGEELEMENT_H
#define __PAGEELEMENT_H


//===========================================================================
// Nested Includes
//===========================================================================

#include "Chunkable.h"
#include "NamedElement.h"

//===========================================================================
// Forward References
//===========================================================================

namespace FeData
{
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
// Description: This is an element that contains a Page.  This class is 
//              used a the parent for classes that need access to a Page.
//
// Constraints: None
//
//===========================================================================

namespace FeData
{
    class PageElement 
    : 
        public NamedElement,
        public Chunkable
    {
        public:
            PageElement();
            virtual ~PageElement();

            void SetPage( Page* thePage );
            Page* GetPage();

        protected:

        private:
            // Create this methods as private so they can not be used
            PageElement(const PageElement &right);
            const PageElement & operator = (const PageElement &right);

            // Data members
            Page* m_Page;
    };
}

//===========================================================================
// Inlines
//===========================================================================



#endif                                  // End conditional inclusion

