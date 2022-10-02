//===========================================================================
// Copyright (C) 2000 Radical Entertainment Ltd.  All rights reserved.
//
// Component:   FE Builder Data Structure
//
// Description: This contains the Pure3dObjectLoader class.
//
// Authors:     Ian Gipson
//
//===========================================================================

// Recompilation protection flag.
#ifndef __PURE3DOBJECTLOADER_H
#define __PURE3DOBJECTLOADER_H


//===========================================================================
// Nested Includes
//===========================================================================

//===========================================================================
// Forward References
//===========================================================================
namespace FeData
{
    class Pure3dObject;
    class Page;
}
class XMLTree;

//===========================================================================
// Constants, Typedefs, and Macro Definitions (needed by external clients)
//===========================================================================

const char* const g_Pure3dObjectTag                  = "Pure3dObject";
const char* const g_Pure3dObjectTagResource          = "Pure3dFile";
const char* const g_Pure3dObjectTagResourceName      = "name";


//===========================================================================
// Interface Definitions
//===========================================================================

//===========================================================================
//
// Description: This class is used load a layer from the file.
//
// Constraints: None
//
//===========================================================================

namespace FeData
{
    class Pure3dObjectLoader
    {
        public:
            Pure3dObjectLoader();
            ~Pure3dObjectLoader();

            Pure3dObject* Load( XMLTree &loadTree, Page* thePage );

        protected:

        private:
            // Create this methods as private so they can not be used
            Pure3dObjectLoader(const Pure3dObjectLoader &right);
            const Pure3dObjectLoader & operator = (const Pure3dObjectLoader &right);

            // Data members
    };
}

//===========================================================================
// Inlines
//===========================================================================



#endif                                  // End conditional inclusion

