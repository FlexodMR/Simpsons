//===========================================================================
// Copyright (C) 2000 Radical Entertainment Ltd.  All rights reserved.
//
// Component:   FE Builder Helper Classes
//
// Description: This contains the FileName class.
//
// Authors:     Ryan Bedard
//
//===========================================================================

// Recompilation protection flag.
#ifndef __FILENAME_H
#define __FILENAME_H


//===========================================================================
// Nested Includes
//===========================================================================

#include "strings/PCString.h"

//===========================================================================
// Forward References
//===========================================================================

//===========================================================================
// Constants, Typedefs, and Macro Definitions (needed by external clients)
//===========================================================================

namespace FeData
{
    const char g_GoodSlashChar = '\\';
    const char g_BadSlashChar = '/';

    const char* const g_GoodSlashString = "\\";
    const char* const g_BadSlashString = "/";
}

//===========================================================================
// Interface Definitions
//===========================================================================

//===========================================================================
//
// Description: This class is used store file names.
//
// Constraints: None
//
//===========================================================================

namespace FeData
{
    class FileName
    {
        public:
            FileName();
            FileName(const FileName &right);
            virtual ~FileName();

            const PascalCString& Get() const;
            bool Get( PascalCString &fileName ) const;
            bool GetPath( PascalCString &pathName );
            static bool IsCompliantPS2( const char* filename );
            bool operator!=( const FileName& right ) const;
            const FileName & operator = (const FileName &right);
            bool operator==( const FileName& right ) const;
            bool Set( const PascalCString &newFileName );

        protected:
            void FixSlashes();

        private:
            // Data members
            PascalCString m_FileName;
    };
}

//===========================================================================
// Inlines
//===========================================================================



#endif                                  // End conditional inclusion

