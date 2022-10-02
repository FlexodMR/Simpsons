//===========================================================================
// Copyright (C) 2000 Radical Entertainment Ltd.  All rights reserved.
//
// Component:   FE Builder Helper Classes
//
// Description: This contains the TestList class.
//
// Authors:     Ryan Bedard
//
//===========================================================================

// Recompilation protection flag.
#ifndef __TEXTLIST_H
#define __TEXTLIST_H


//===========================================================================
// Nested Includes
//===========================================================================

#include "ElementList.h"
#include "EnumConversion.h"
#include "Strings\PCString.h"

//===========================================================================
// Forward References
//===========================================================================

//===========================================================================
// Constants, Typedefs, and Macro Definitions (needed by external clients)
//===========================================================================

namespace FeData
{
    struct TextListStruct
    {
        PascalCString m_textBibleName;
        PascalCString m_textBibleStringName;
        PascalCString m_hardCodedStringName;
        TextTypeEnum m_textType;
    };
}

//===========================================================================
// Interface Definitions
//===========================================================================

//===========================================================================
//
// Description: This class is used to represent a front-end multi sprite.
//
// Constraints: None
//
//===========================================================================

namespace FeData
{
    class TextList
    {
        public:
            TextList();
            virtual ~TextList();

            const TextList & operator = (const TextList &right);
            bool operator==( const TextList& right ) const;
            bool operator!=( const TextList& right ) const;

            int GetNumberOfTexts() const;

            bool AddTextBibleString( PascalCString& textBible, PascalCString& string );
            bool AddHardCodedString( PascalCString& string );

            bool RemoveText( int index );
            bool MoveText( int fromIndex, int toIndex );

            bool GetTextBibleName( int index, PascalCString &name ) const;
            bool GetTextBibleString( int index, PascalCString& bibleString ) const;
            bool GetHardCodedString( int index, PascalCString& hardCodedString ) const;
            bool GetTextType( int index, TextTypeEnum& type ) const;

            bool SetTextBibleName( int index, PascalCString &name );
            bool SetTextBibleString( int index, PascalCString& bibleString );
            bool SetHardCodedString( int index, PascalCString& hardCodedString );
            bool SetTextType( int index, TextTypeEnum& type );

            void ClearTextList();

        protected:

        private:
            // Create this methods as private so they can not be used
            TextList(const TextList &right);

            // Data members
            ElementList< TextListStruct > m_TextList;
    };
}

//===========================================================================
// Inlines
//===========================================================================



#endif                                  // End conditional inclusion

