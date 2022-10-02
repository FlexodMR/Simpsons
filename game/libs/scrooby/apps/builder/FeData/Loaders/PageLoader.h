//===========================================================================
// Copyright (C) 2000 Radical Entertainment Ltd.  All rights reserved.
//
// Component:   FE Builder Data Structure
//
// Description: This contains the PageLoader class.
//
// Authors:     Eric Tong
//
//===========================================================================

// Recompilation protection flag.
#ifndef __PAGELOADER_H
#define __PAGELOADER_H


//===========================================================================
// Nested Includes
//===========================================================================

//===========================================================================
// Forward References
//===========================================================================
namespace FeData
{
    class Page;
    class Project;
}
class XMLTree;

//===========================================================================
// Constants, Typedefs, and Macro Definitions (needed by external clients)
//===========================================================================
//IAN IMPROVE: it's bad form to have these string constants in a .h file
const char* const g_PageTag                    = "Page";
const char* const g_PageTagVersion             = "Version";
const char* const g_PageTagVersionValue        = "value";
const char* const g_PageTagResolution          = "Resolution";
const char* const g_PageTagResolutionWidth     = "width";
const char* const g_PageTagResolutionHeight    = "height";
const char* const g_PageTagResources           = "Resources";
const char* const g_PageTagResourcesImages     = "Images";
const char* const g_PageTagResourcesImage      = "Image";
const char* const g_PageTagResourcesMovieClips = "MovieClips";
const char* const g_PageTagResourcesMovieClip  = "MovieClip";
const char* const g_PageTagResourcesPure3dFiles= "Pure3dFiles";
const char* const g_PageTagResourcesPure3dFile = "Pure3dFile";
const char* const g_PageTagResourcesTextBibles = "TextBibles";
const char* const g_PageTagResourcesTextBible  = "TextBible";
const char* const g_PageTagResourcesTextStyles = "TextStyles";
const char* const g_PageTagResourcesTextStyle  = "TextStyle";
const char* const g_PageTagResourcesName       = "name";
const char* const g_PageTagResourcesData       = "data";
const char* const g_PageTagResourcesP3dInvent  = "Pure3dInventoryName";
const char* const g_PageTagResourcesP3dCamera  = "Pure3dCameraName";
const char* const g_PageTagResourcesP3dAnim  = "Pure3dAnimationName";
const char* const g_PageTagResourcesInventory  = "inventoryName";
const char* const g_PageTagLayers              = "Layers";

//===========================================================================
// Interface Definitions
//===========================================================================

//===========================================================================
//
// Description: This class is used load a page file.
//
// Constraints: None
//
//===========================================================================

namespace FeData
{
    class PageLoader
    {
        public:
            PageLoader();
            ~PageLoader();

            Page* Load( XMLTree &loadTree, Project* theProject );

        protected:

        private:
            // Create this methods as private so they can not be used
            PageLoader(const PageLoader &right);
            const PageLoader & operator = (const PageLoader &right);

            // Data members
    };
}

//===========================================================================
// Inlines
//===========================================================================



#endif                                  // End conditional inclusion

