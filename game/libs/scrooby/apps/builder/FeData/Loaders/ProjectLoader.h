//===========================================================================
// Copyright (C) 2000 Radical Entertainment Ltd.  All rights reserved.
//
// Component:   FE Builder Data Structure
//
// Description: This contains the ProjectLoader class.
//
// Authors:     Ryan Bedard
//
//===========================================================================

// Recompilation protection flag.
#ifndef __PROJECTLOADER_H
#define __PROJECTLOADER_H


//===========================================================================
// Nested Includes
//===========================================================================

//===========================================================================
// Forward References
//===========================================================================
namespace FeData
{
    class Project;
    class BaseFactory;
}
class XMLTree;

//===========================================================================
// Constants, Typedefs, and Macro Definitions (needed by external clients)
//===========================================================================

const char* const g_ProjectTag                  = "Project";
const char* const g_ProjectTagVersion           = "Version";
const char* const g_ProjectTagVersionValue      = "value";
const char* const g_ProjectTagResolution        = "Resolution";
const char* const g_ProjectTagResolutionWidth   = "width";
const char* const g_ProjectTagResolutionHeight  = "height";
const char* const g_ProjectTagPlatform          = "Platform";
const char* const g_ProjectTagPlatformValue     = "value";
const char* const g_ProjectTagScreenPath        = "ScreenPath";
const char* const g_ProjectTagScreenPathValue   = "value";
const char* const g_ProjectTagPagePath          = "PagePath";
const char* const g_ProjectTagPagePathValue     = "value";
const char* const g_ProjectTagResourcePath      = "ResourcePath";
const char* const g_ProjectTagResourcePathValue = "value";
const char* const g_ProjectTagScreens           = "Screens";
const char* const g_ProjectTagScreen            = "Screen";
const char* const g_ProjectTagScreensFile       = "file";


//===========================================================================
// Interface Definitions
//===========================================================================

//===========================================================================
//
// Description: This class is used load a project file.
//
// Constraints: None
//
//===========================================================================

namespace FeData
{
    class ProjectLoader
    {
        public:
            ProjectLoader();
            ~ProjectLoader();

            Project* Load( XMLTree &loadTree, BaseFactory* objectFactory );

        protected:

        private:
            // Create this methods as private so they can not be used
            ProjectLoader(const ProjectLoader &right);
            const ProjectLoader & operator = (const ProjectLoader &right);

            // Data members
    };
}

//===========================================================================
// Inlines
//===========================================================================



#endif                                  // End conditional inclusion

