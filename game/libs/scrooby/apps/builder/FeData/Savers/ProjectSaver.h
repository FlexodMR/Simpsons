//===========================================================================
// Copyright (C) 2000 Radical Entertainment Ltd.  All rights reserved.
//
// Component:   FE Builder Data Structure
//
// Description: This contains the ProjectSaver class.
//
// Authors:     Ryan Bedard
//
//===========================================================================

// Recompilation protection flag.
#ifndef __PROJECTSAVER_H
#define __PROJECTSAVER_H


//===========================================================================
// Nested Includes
//===========================================================================

//===========================================================================
// Forward References
//===========================================================================
namespace FeData
{
    class Project;
}

class tlDataChunk;
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
    class ProjectSaver
    {
        public:
            ProjectSaver();
            ~ProjectSaver();

            bool Save( Project* theProject );

        protected:

        private:
            // Create this methods as private so they can not be used
            ProjectSaver(const ProjectSaver &right);
            const ProjectSaver & operator = (const ProjectSaver &right);

            //gets a history chunk for this file
            tlDataChunk* ProjectSaver::HistoryChunk();

            // Data members
    };
}

//===========================================================================
// Inlines
//===========================================================================



#endif                                  // End conditional inclusion

