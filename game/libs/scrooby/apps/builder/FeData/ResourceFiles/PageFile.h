//===========================================================================
// Copyright (C) 2000 Radical Entertainment Ltd.  All rights reserved.
//
// Component:   FE Builder Data Structure
//
// Description: This contains the PageFile class.
//
// Authors:     Ryan Bedard
//
//===========================================================================

// Recompilation protection flag.
#ifndef __PAGEFILE_H
#define __PAGEFILE_H


//===========================================================================
// Nested Includes
//===========================================================================

#include "ResourceFile.h"

//===========================================================================
// Forward References
//===========================================================================

namespace FeData
{
    class Page;
    class Project;
}

//===========================================================================
// Constants, Typedefs, and Macro Definitions (needed by external clients)
//===========================================================================

//===========================================================================
// Interface Definitions
//===========================================================================

//===========================================================================
//
// Description: This class is used to represent a front-end Image 
//              resource file.
//
// Constraints: None
//
//===========================================================================

namespace FeData
{
    class PageFile : public ResourceFile
    {
        public:
            PageFile( FileName &fileName );
            virtual ~PageFile();

            virtual bool Create( Project *project );
            virtual bool Load( Project *project );
            virtual bool Reload();

            virtual bool Save();

            Page* GetPage();

        protected:

        private:
            // Create this methods as private so they can not be used
            PageFile(const PageFile &right);
            const PageFile & operator = (const PageFile &right);

            // Data members
            Page*    m_Page;
            Project* m_Project;
    };
}

//===========================================================================
// Inlines
//===========================================================================



#endif                                  // End conditional inclusion

