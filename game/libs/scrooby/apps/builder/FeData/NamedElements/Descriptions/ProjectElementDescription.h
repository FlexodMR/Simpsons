//===========================================================================
// Copyright (C) 2000 Radical Entertainment Ltd.  All rights reserved.
//
// Component:   FE Builder Data Structure
//
// Description: This contains the ProjectElement class.
//
// Authors:     Ryan Bedard
//
//===========================================================================

// Recompilation protection flag.
#ifndef __PROJECTELEMENTDESCRIPTIION_H
#define __PROJECTELEMENTDESCRIPTIION_H


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
// Description: This is an element that contains a project.  This class is 
//              used a the parent for classes that need access to a project.
//
// Constraints: None
//
//===========================================================================

namespace FeData
{
    class ProjectElementDescription : public NamedElementDescription
    {
        public:
            ProjectElementDescription();
            virtual ~ProjectElementDescription();

        protected:

        private:
            // Create this methods as private so they can not be used
            ProjectElemenDescriptiont(const ProjectElementDescription &right);
            const ProjectElementDescription & operator = (const ProjectElementDescription &right);
    };
}

//===========================================================================
// Inlines
//===========================================================================



#endif                                  // End conditional inclusion

