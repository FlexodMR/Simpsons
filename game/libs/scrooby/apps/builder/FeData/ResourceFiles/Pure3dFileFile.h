//===========================================================================
// Copyright (C) 2000 Radical Entertainment Ltd.  All rights reserved.
//
// Component:   FE Builder Data Structure
//
// Description: This contains the Pure3dFileFile class.
//
// Authors:     Ian Gipson
//
//===========================================================================

// Recompilation protection flag.
#ifndef __PURE3DFILEFILE_H
#define __PURE3DFILEFILE_H


//===========================================================================
// Nested Includes
//===========================================================================

#include "ResourceFile.h"

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
// Description: This class is used to represent a front-end Pure3dFile 
//              resource file.
//
// Constraints: None
//
//===========================================================================

namespace FeData
{
    class Pure3dFileFile : public ResourceFile
    {
        public:
            Pure3dFileFile( FileName& fileName );
            virtual ~Pure3dFileFile();
            virtual bool Load();
            virtual bool Reload();
       protected:

        private:
            // Create this methods as private so they can not be used
            Pure3dFileFile(const Pure3dFileFile& right);
            const Pure3dFileFile & operator = (const Pure3dFileFile& right);

            // Data members
    };
}

//===========================================================================
// Inlines
//===========================================================================



#endif                                  // End conditional inclusion

