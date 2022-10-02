//===========================================================================
// Copyright (C) 2000 Radical Entertainment Ltd.  All rights reserved.
//
// Component:   FE Builder Data Structure
//
// Description: This contains the GroupSaver class.
//
// Authors:     Eric Tong
//
//===========================================================================

// Recompilation protection flag.
#ifndef __GROUPSAVER_H
#define __GROUPSAVER_H


//===========================================================================
// Nested Includes
//===========================================================================

//===========================================================================
// Forward References
//===========================================================================
namespace FeData
{
    class Group;
}
class XMLSaver;

//===========================================================================
// Constants, Typedefs, and Macro Definitions (needed by external clients)
//===========================================================================

//===========================================================================
// Interface Definitions
//===========================================================================

//===========================================================================
//
// Description: This class is used save a Group to a file.
//
// Constraints: None
//
//===========================================================================

namespace FeData
{
    class GroupSaver
    {
        public:
            GroupSaver();
            ~GroupSaver();

            bool Save( Group* theGroup, XMLSaver& theSaver );

        protected:

        private:
            // Create this methods as private so they can not be used
            GroupSaver(const GroupSaver &right);
            const GroupSaver & operator = (const GroupSaver &right);

            // Data members
    };
}

//===========================================================================
// Inlines
//===========================================================================



#endif                                  // End conditional inclusion

