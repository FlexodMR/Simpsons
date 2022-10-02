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
#ifndef __PROJECTELEMENT_H
#define __PROJECTELEMENT_H


//===========================================================================
// Nested Includes
//===========================================================================

#include "NamedElement.h"

//===========================================================================
// Forward References
//===========================================================================

namespace FeData
{
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
// Description: This is an element that contains a project.  This class is 
//              used a the parent for classes that need access to a project.
//
// Constraints: None
//
//===========================================================================

namespace FeData
{
    class ProjectElement : public NamedElement
    {
        public:
            ProjectElement();
            virtual ~ProjectElement();

            void SetProject( Project* theProject );
            Project* GetProject();

        protected:

        private:
            // Create this methods as private so they can not be used
            ProjectElement(const ProjectElement &right);
            const ProjectElement & operator = (const ProjectElement &right);

            // Data members
            Project* m_Project;
    };
}

//===========================================================================
// Inlines
//===========================================================================



#endif                                  // End conditional inclusion

