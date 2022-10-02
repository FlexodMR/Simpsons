//===========================================================================
// Copyright (C) 2000 Radical Entertainment Ltd.  All rights reserved.
//
// Component:   FE Builder Data Structure
//
// Description: This contains the PageSaver class.
//
// Authors:     Eric Tong
//
//===========================================================================

// Recompilation protection flag.
#ifndef __PAGESAVER_H
#define __PAGESAVER_H


//===========================================================================
// Nested Includes
//===========================================================================

//===========================================================================
// Forward References
//===========================================================================
namespace FeData
{
    class Page;
}

class PascalCString;

//===========================================================================
// Constants, Typedefs, and Macro Definitions (needed by external clients)
//===========================================================================

//===========================================================================
// Interface Definitions
//===========================================================================

//===========================================================================
//
// Description: This class is used save a Page to a file.
//
// Constraints: None
//
//===========================================================================

namespace FeData
{
    class PageSaver
    {
        public:
            PageSaver();
            ~PageSaver();

            bool Save( Page* thePage );

        protected:

        private:
            // Create this methods as private so they can not be used
            PageSaver(const PageSaver &right);
            const PageSaver & operator = (const PageSaver &right);

            bool StripResourcePath( Page* thePage, PascalCString &fileName );
            
    };
}

//===========================================================================
// Inlines
//===========================================================================



#endif                                  // End conditional inclusion

