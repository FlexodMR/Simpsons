//===========================================================================
// Copyright (C) 2000 Radical Entertainment Ltd.  All rights reserved.
//
// Component:   FE Builder Data Structure
//
// Description: This contains the GroupLoader class.
//
// Authors:     Eric Tong
//
//===========================================================================

// Recompilation protection flag.
#ifndef __GROUPLOADER_H
#define __GROUPLOADER_H


//===========================================================================
// Nested Includes
//===========================================================================

//===========================================================================
// Forward References
//===========================================================================
namespace FeData
{
    class Group;
    class Page;
}
class XMLTree;

//===========================================================================
// Constants, Typedefs, and Macro Definitions (needed by external clients)
//===========================================================================

const char* const g_GroupTag                  = "Group";
const char* const g_GroupTagName              = "Name";
const char* const g_GroupTagAlpha             = "Alpha";
const char* const g_GroupTagDrawingElements   = "DrawingElements";

//===========================================================================
// Interface Definitions
//===========================================================================

//===========================================================================
//
// Description: This class is used load a Group from the file.
//
// Constraints: None
//
//===========================================================================

namespace FeData
{
    class GroupLoader
    {
        public:
            GroupLoader();
            ~GroupLoader();

            Group* Load( XMLTree &loadTree, Page* thePage );

        protected:

        private:
            // Create this methods as private so they can not be used
            GroupLoader(const GroupLoader &right);
            const GroupLoader & operator = (const GroupLoader &right);

            // Data members
    };
}

//===========================================================================
// Inlines
//===========================================================================



#endif                                  // End conditional inclusion

