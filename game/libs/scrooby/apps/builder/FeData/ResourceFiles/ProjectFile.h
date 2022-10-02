//===========================================================================
// Copyright (C) 2000 Radical Entertainment Ltd.  All rights reserved.
//
// Component:   FE Builder Data Structure
//
// Description: This contains the ProjectFile class.
//
// Authors:     Ryan Bedard
//
//===========================================================================

// Recompilation protection flag.
#ifndef __PROJECTFILE_H
#define __PROJECTFILE_H


//===========================================================================
// Nested Includes
//===========================================================================

#include "ResourceFile.h"

//===========================================================================
// Forward References
//===========================================================================

namespace FeData
{
    class Project;
    class BaseFactory;
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
    class ProjectFile : public ResourceFile
    {
        public:
            ProjectFile( FileName &fileName );
            virtual ~ProjectFile();

            virtual bool Create( BaseFactory* objectFactory );
            virtual bool Load( BaseFactory* objectFactory );
            virtual bool Reload();

            virtual bool Save();

            bool ExportHashedNames();

            Project* GetProject();

        protected:

        private:
            // Create this methods as private so they can not be used
            ProjectFile(const ProjectFile &right);
            const ProjectFile & operator = (const ProjectFile &right);

            // Data members
            Project* m_Project;
            BaseFactory* m_ObjectFactory;
    };
}

//===========================================================================
// Inlines
//===========================================================================



#endif                                  // End conditional inclusion

