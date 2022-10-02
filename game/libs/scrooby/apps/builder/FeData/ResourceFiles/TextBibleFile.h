//===========================================================================
// Copyright (C) 2000 Radical Entertainment Ltd.  All rights reserved.
//
// Component:   FE Builder Data Structure
//
// Description: This contains the TextBibleFile class.
//
// Authors:     Ryan Bedard
//
//===========================================================================

// Recompilation protection flag.
#ifndef __TEXTBIBLEFILE_H
#define __TEXTBIBLEFILE_H


//===========================================================================
// Nested Includes
//===========================================================================

#include "ResourceFile.h"
#include "Localization\LanguageDatabase.h"

//===========================================================================
// Forward References
//===========================================================================

class UnicodeString;
class tlTextBible;

//===========================================================================
// Constants, Typedefs, and Macro Definitions (needed by external clients)
//===========================================================================

const int g_MaxNumberOfLanguages = 100;

//===========================================================================
// Interface Definitions
//===========================================================================

//===========================================================================
//
// Description: This class is used to represent a front-end TextBible 
//              resource file.
//
// Constraints: None
//
//===========================================================================

namespace FeData
{
    class TextBibleFile : public ResourceFile
    {
        public:
            TextBibleFile( FileName &fileName );
            virtual ~TextBibleFile();

            virtual bool Load();
            virtual bool Reload();

            virtual int GetNumberOfLanguages();

            virtual bool GetString( const PascalCString& name, 
                                    UnicodeString& string );
            virtual bool GetString( const PascalCString& name, 
                                    UnicodeString& string,
                                    int language );

            virtual bool GetAllStringNames( StringSet& theStringSet);

        protected:

        private:
            // Create this methods as private so they can not be used
            TextBibleFile(const TextBibleFile &right);
            const TextBibleFile & operator = (const TextBibleFile &right);

            // Data members
            tlTextBible* m_textBible;
            StringSet m_IDs;
    };
}

//===========================================================================
// Inlines
//===========================================================================



#endif                                  // End conditional inclusion

