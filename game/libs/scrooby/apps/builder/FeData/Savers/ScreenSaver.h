//===========================================================================
// Copyright (C) 2000 Radical Entertainment Ltd.  All rights reserved.
//
// Component:   FE Builder Data Structure
//
// Description: This contains the ScreenSaver class.
//
// Authors:     Victor Medrano
//
//===========================================================================

// Recompilation protection flag.
#ifndef __SCREENSAVER_H
#define __SCREENSAVER_H


//===========================================================================
// Nested Includes
//===========================================================================

//===========================================================================
// Forward References
//===========================================================================
namespace FeData
{
    class Screen;
}

//===========================================================================
// Constants, Typedefs, and Macro Definitions (needed by external clients)
//===========================================================================

//===========================================================================
// Interface Definitions
//===========================================================================

//===========================================================================
//
// Description: This class is used save a project to a file.
//
// Constraints: None
//
//===========================================================================

namespace FeData
{
    class ScreenSaver
    {
        public:
            ScreenSaver();
            ~ScreenSaver();

            bool Save( Screen* theScreen );

        protected:

        private:
            // Create these methods as private so they can not be used
            ScreenSaver(const ScreenSaver &right);
            const ScreenSaver & operator = (const ScreenSaver &right);

            // Data members
    };
}

//===========================================================================
// Inlines
//===========================================================================



#endif                                  // End conditional inclusion

