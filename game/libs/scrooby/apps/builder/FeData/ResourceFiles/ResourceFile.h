//===========================================================================
// Copyright (C) 2000 Radical Entertainment Ltd.  All rights reserved.
//
// Component:   FE Builder Data Structure
//
// Description: This contains the ResourceFile class.
//
// Authors:     Ryan Bedard
//
//===========================================================================

// Recompilation protection flag.
#ifndef __RESOURCEFILE_H
#define __RESOURCEFILE_H


//===========================================================================
// Nested Includes
//===========================================================================

#include "..\Helpers\FileName.h"

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
// Description: This class is parent class for all the FeData resource files.
//
// Constraints: None
//
//===========================================================================

namespace FeData
{
    class ResourceFile
    {
        public:
            ResourceFile( FileName &fileName );
            virtual ~ResourceFile();

            virtual bool Reload() = 0;

            FileName GetFileName() const;
            bool FileLoaded();
            bool FileDirty();
            void SetDirty( bool isDirty = true );
            const char* GetInventoryName() const;
            void SetInventoryName( const char* inventoryName );

        protected:
            // Data members
            FileName m_FileName;
            bool m_FileLoaded;
            bool m_FileDirty;
            PascalCString m_InventoryName;

        private:
            // Create this methods as private so they can not be used
            ResourceFile(const ResourceFile &right);
            const ResourceFile & operator = (const ResourceFile &right);
    };
}

//===========================================================================
// Inlines
//===========================================================================



#endif                                  // End conditional inclusion

