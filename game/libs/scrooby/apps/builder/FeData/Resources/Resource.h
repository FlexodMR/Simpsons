//===========================================================================
// Copyright (C) 2000 Radical Entertainment Ltd.  All rights reserved.
//
// Component:   FE Builder Data Structure
//
// Description: This contains the Resource class.
//
// Authors:     Ryan Bedard
//
//===========================================================================

// Recompilation protection flag.
#ifndef __RESOURCE_H
#define __RESOURCE_H


//===========================================================================
// Nested Includes
//===========================================================================
#include "..\NamedElements\Chunkable.h"
#include "..\NamedElements\NamedElement.h"
#include "Strings\PCString.h"

//===========================================================================
// Forward References
//===========================================================================

namespace FeData
{
    class ResourceFile;
    class ResourceFileManager;
}

//===========================================================================
// Constants, Typedefs, and Macro Definitions (needed by external clients)
//===========================================================================

//===========================================================================
// Interface Definitions
//===========================================================================

//===========================================================================
//
// Description: This class is parent class for all the FeData resources.
//
// Constraints: None
//
//===========================================================================

namespace FeData
{
    class Resource 
    : 
        public NamedElement//,
//        virtual public Chunkable
    {
        public:
            Resource();
            virtual ~Resource();

            ResourceFile* GetResourceFile();
            const ResourceFile* GetResourceFile() const;
            void SetResourceFile( ResourceFile* resourceFile, 
                                  ResourceFileManager* resourceFileManager );
            void ReleaseResourceFile();

        protected:

        private:
            // Create this methods as private so they can not be used
            Resource(const Resource &right);
            const Resource & operator = (const Resource &right);

            // Data members
            ResourceFile* m_ResourceFile;
            ResourceFileManager* m_ResourceFileManager;
    };
}

//===========================================================================
// Inlines
//===========================================================================



#endif                                  // End conditional inclusion

