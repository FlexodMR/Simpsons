//===========================================================================
// Copyright (C) 2000 Radical Entertainment Ltd.  All rights reserved.
//
// Component:   FE Builder Data Structure
//
// Description: This contains the TextLoader class.
//
// Authors:     Eric Tong
//
//===========================================================================

// Recompilation protection flag.
#ifndef __TEXTLOADER_H
#define __TEXTLOADER_H


//===========================================================================
// Nested Includes
//===========================================================================

//===========================================================================
// Forward References
//===========================================================================
namespace FeData
{
    class Text;
    class Page;
}
class XMLTree;

//===========================================================================
// Constants, Typedefs, and Macro Definitions (needed by external clients)
//===========================================================================

const char* const g_TextTag                       = "Text";
const char* const g_TextTagFont                   = "Font";
const char* const g_TextTagFontName               = "name";
const char* const g_TextTagTextStyle              = "TextStyle";
const char* const g_TextTagTextStyleName          = "name";
const char* const g_TextTagString                 = "String";
const char* const g_TextTagStringTextBible        = "textBible";
const char* const g_TextTagStringStringId         = "stringId";
const char* const g_TextTagStringHardCodedString  = "hardCodedString";
const char* const g_TextTagShadow                 = "Shadow";
const char* const g_TextTagShadowEnabled          = "enabled";
const char* const g_TextTagShadowRed              = "red";
const char* const g_TextTagShadowGreen            = "green";
const char* const g_TextTagShadowBlue             = "blue";
const char* const g_TextTagShadowAlpha            = "alpha";
const char* const g_TextTagShadowOffsetX          = "x";
const char* const g_TextTagShadowOffsetY          = "y";

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
    class TextLoader
    {
        public:
            TextLoader();
            ~TextLoader();

            Text* Load( XMLTree &loadTree, Page* thePage );

        protected:

        private:
            // Create this methods as private so they can not be used
            TextLoader(const TextLoader &right);
            const TextLoader & operator = (const TextLoader &right);

            // Data members
    };
}

//===========================================================================
// Inlines
//===========================================================================



#endif                                  // End conditional inclusion

