//===========================================================================
// Copyright (C) 2000 Radical Entertainment Ltd.  All rights reserved.
//
// Component:   FE Builder Data Structure
//
// Description: This contains the MultiTextLoader class.
//
// Authors:     Eric Tong
//
//===========================================================================

// Recompilation protection flag.
#ifndef __MULTITEXTLOADER_H
#define __MULTITEXTLOADER_H


//===========================================================================
// Nested Includes
//===========================================================================

//===========================================================================
// Forward References
//===========================================================================
namespace FeData
{
    class MultiText;
    class Page;
}
class XMLTree;

//===========================================================================
// Constants, Typedefs, and Macro Definitions (needed by external clients)
//===========================================================================

const char* const g_MultiTextTag                       = "MultiText";
const char* const g_MultiTextTagCurrentIndex           = "CurrentIndex";
const char* const g_MultiTextTagCurrentIndexValue      = "value";
const char* const g_MultiTextTagFont                   = "Font";
const char* const g_MultiTextTagFontName               = "name";
const char* const g_MultiTextTagTextStyle              = "TextStyle";
const char* const g_MultiTextTagTextStyleName          = "name";
const char* const g_MultiTextTagStrings                = "Strings";
const char* const g_MultiTextTagString                 = "String";
const char* const g_MultiTextTagStringTextBible        = "textBible";
const char* const g_MultiTextTagStringStringId         = "stringId";
const char* const g_MultiTextTagStringHardCodedString  = "hardCodedString";
const char* const g_MultiTextTagShadow                 = "Shadow";
const char* const g_MultiTextTagShadowEnabled          = "enabled";
const char* const g_MultiTextTagShadowRed              = "red";
const char* const g_MultiTextTagShadowGreen            = "green";
const char* const g_MultiTextTagShadowBlue             = "blue";
const char* const g_MultiTextTagShadowAlpha            = "alpha";
const char* const g_MultiTextTagShadowOffsetX          = "x";
const char* const g_MultiTextTagShadowOffsetY          = "y";

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
    class MultiTextLoader
    {
        public:
            MultiTextLoader();
            ~MultiTextLoader();

            MultiText* Load( XMLTree &loadTree, Page* thePage );

        protected:

        private:
            // Create this methods as private so they can not be used
            MultiTextLoader(const MultiTextLoader &right);
            const MultiTextLoader & operator = (const MultiTextLoader &right);

            // Data members
    };
}

//===========================================================================
// Inlines
//===========================================================================



#endif                                  // End conditional inclusion

