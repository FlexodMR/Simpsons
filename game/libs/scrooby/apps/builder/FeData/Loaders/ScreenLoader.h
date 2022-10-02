//===========================================================================
// Copyright (C) 2000 Radical Entertainment Ltd.  All rights reserved.
//
// Component:   FE Builder Data Structure
//
// Description: This contains the ScreenLoader class.
//
// Authors:     Victor Medrano
//
//===========================================================================

// Recompilation protection flag.
#ifndef __SCREENLOADER_H
#define __SCREENLOADER_H


//===========================================================================
// Nested Includes
//===========================================================================

//===========================================================================
// Forward References
//===========================================================================
namespace FeData
{
    class Screen;
    class Project;
}
class XMLTree;

//===========================================================================
// Constants, Typedefs, and Macro Definitions (needed by external clients)
//===========================================================================

const char* const g_ScreenTag                  = "Screen";
const char* const g_ScreenTagVersion           = "Version";
const char* const g_ScreenTagVersionValue      = "value";
const char* const g_ScreenTagPage              = "Page";
const char* const g_ScreenTagPages             = "Pages";
const char* const g_ScreenTagPagesFile         = "file";
const char* const g_ScreenTagPagesExport       = "export";

//===========================================================================
// Interface Definitions
//===========================================================================

//===========================================================================
//
// Description: This class is used load a screen file.
//
// Constraints: None
//
//===========================================================================

namespace FeData
{
    class ScreenLoader
    {
        public:
            ScreenLoader();
            ~ScreenLoader();

            Screen* Load( XMLTree &loadTree, Project* theProject );

        protected:

        private:
            // Create this methods as private so they can not be used
            ScreenLoader(const ScreenLoader &right);
            const ScreenLoader & operator = (const ScreenLoader &right);

            // Data members
    };
}

//===========================================================================
// Inlines
//===========================================================================



#endif                                  // End conditional inclusion

