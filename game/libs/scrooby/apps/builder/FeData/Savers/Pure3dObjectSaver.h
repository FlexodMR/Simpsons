//===========================================================================
// Copyright (C) 2000 Radical Entertainment Ltd.  All rights reserved.
//
// Component:   FE Builder Data Structure
//
// Description: This contains the Pure3dObject class.
//
// Authors:     Ian Gipson
//
//===========================================================================

// Recompilation protection flag.
#ifndef __PURE3DOBJECTSAVER_H
#define __PURE3DOBJECTSAVER_H


//===========================================================================
// Nested Includes
//===========================================================================

//===========================================================================
// Forward References
//===========================================================================
namespace FeData
{
    class Pure3dObject;
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
// Description: This class is used save a Pure3dObject to a file.
//
// Constraints: None
//
//===========================================================================

namespace FeData
{
    class Pure3dObjectSaver
    {
        public:
            Pure3dObjectSaver();
            ~Pure3dObjectSaver();

            bool Save( Pure3dObject* theObject, XMLSaver& theSaver );

        protected:

        private:
            // Create this methods as private so they can not be used
            Pure3dObjectSaver(const Pure3dObjectSaver &right);
            const Pure3dObjectSaver& operator = (const Pure3dObjectSaver &right);

            // Data members
    };
}

//===========================================================================
// Inlines
//===========================================================================



#endif                                  // End conditional inclusion

