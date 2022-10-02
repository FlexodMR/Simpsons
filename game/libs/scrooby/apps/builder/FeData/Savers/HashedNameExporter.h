//===========================================================================
// Copyright (C) 2000 Radical Entertainment Ltd.  All rights reserved.
//
// Component:   FE Builder Data Structure
//
// Description: This contains the HasedNamedExporter class.
//
// Authors:     Darwin Chau
//
//===========================================================================

// Recompilation protection flag.
#ifndef __HASHEDNAMEEXPORTER_H
#define __HASHEDNAMEEXPORTER_H


//===========================================================================
// Nested Includes
//===========================================================================
#define WIN32_LEAN_AND_MEAN
#include <windows.h>
#undef WIN32_LEAN_AND_MEAN

//===========================================================================
// Forward References
//===========================================================================
namespace FeData
{
    class Project;
    class Group;
}

class PascalCString;

//===========================================================================
// Constants, Typedefs, and Macro Definitions (needed by external clients)
//===========================================================================

//===========================================================================
// Interface Definitions
//===========================================================================

//===========================================================================
//
// Description: This class is used to export all the names of screens,
//              pages, layers and drawing elements used in the project
//              as hash values to a header file.  This header file can
//              then be used by the runtime to save on the code space
//              that would be needed by string names.
//
// Constraints: None
//
//===========================================================================

namespace FeData
{
    class HashedNameExporter
    {
        public:
            HashedNameExporter();
            ~HashedNameExporter();

            bool ExportHashedNames( Project* theProject );

        protected:

        private:

            void RecurseGroupMembers( Group* pGroup );

            void ExportScreenName( char* name );
            void ExportPageName( char* name );
            void ExportLayerName( char* name );
            void ExportDrawingElementName( char* name );

            void MakeDefineName( char* name, PascalCString& defineName ); 
            void PrintUID( char* name );
            
            bool CreateFile( const char* filename );
            bool CloseFile();

            bool Print( const char* string );

            // Create this methods as private so they can not be used
            HashedNameExporter( const HashedNameExporter &right );
            const HashedNameExporter & operator = ( const HashedNameExporter &right );

            // Data members
            HANDLE m_hFile;
    };
}

//===========================================================================
// Inlines
//===========================================================================



#endif                                  // End conditional inclusion

