//===========================================================================
// Copyright (C) 2000 Radical Entertainment Ltd.  All rights reserved.
//
// Component:   FE Builder Data Structure
//
// Description: This contains the ScreenFile class.
//
// Authors:     Ryan Bedard
//
//===========================================================================

// Recompilation protection flag.
#ifndef __SCREENFILE_H
#define __SCREENFILE_H


//===========================================================================
// Nested Includes
//===========================================================================

#include "ResourceFile.h"

//===========================================================================
// Forward References
//===========================================================================

namespace FeData
{
    class Screen;
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
    class ScreenFile : public ResourceFile
    {
        public:
            ScreenFile( FileName &fileName );
            virtual ~ScreenFile();

            virtual bool Create( Project* project );
            virtual bool Load( Project* project );
            virtual bool Reload();

            virtual bool Save();

            Screen* GetScreen();
            const Screen* GetScreen() const;

        protected:

        private:
            // Create this methods as private so they can not be used
            ScreenFile(const ScreenFile &right);
            const ScreenFile & operator = (const ScreenFile &right);

            // Data members
            Screen*  m_Screen;
            Project* m_Project;
    };
}

//===========================================================================
// Inlines
//===========================================================================



#endif                                  // End conditional inclusion

