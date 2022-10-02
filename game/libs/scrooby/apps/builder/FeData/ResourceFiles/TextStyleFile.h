//===========================================================================
// Copyright (C) 2000 Radical Entertainment Ltd.  All rights reserved.
//
// Component:   FE Builder Data Structure
//
// Description: This contains the ImageFile class.
//
// Authors:     Victor Medrano
//
//===========================================================================

// Recompilation protection flag.
#ifndef __TEXTSTYLEFILE_H
#define __TEXTSTYLEFILE_H


//===========================================================================
// Nested Includes
//===========================================================================

#include "ResourceFile.h"

//===========================================================================
// Forward References
//===========================================================================
class tlTextureFont;


//===========================================================================
// Constants, Typedefs, and Macro Definitions (needed by external clients)
//===========================================================================

const char* const g_TextStyleTag                            = "TextStyle";
const char* const g_TextStyleTagFont                        = "Font";
const char* const g_TextStyleTagFontName                    = "name";
const char* const g_TextStyleTagStyle                       = "Style";
const char* const g_TextStyleTagStyleValue                  = "value";
const char* const g_TextStyleTagSize                        = "Size";
const char* const g_TextStyleTagSizeValue                   = "value";
const char* const g_TextStyleTagColor                       = "Colour";
const char* const g_TextStyleTagColorRed                    = "red";
const char* const g_TextStyleTagColorGreen                  = "green";
const char* const g_TextStyleTagColorBlue                   = "blue";
const char* const g_TextStyleTagColorAlpha                  = "alpha";

//===========================================================================
// Interface Definitions
//===========================================================================

//===========================================================================
//
// Description: This class is used to represent a front-end Image 
//              resource file.
//
// Constraints: None
//
//===========================================================================

namespace FeData
{
    class TextStyleFile : public ResourceFile
    {
        public:
            TextStyleFile( FileName &fileName );
            virtual ~TextStyleFile();

            virtual bool Load();
            virtual bool Reload();
            virtual bool Save();

            bool GetFontName( PascalCString& fontName );
            bool GetStyleValue( PascalCString& styleValue);
            int GetSize();
            int GetRed();
            int GetBlue();
            int GetGreen();
            int GetAlpha();

            bool SetFontName( PascalCString& fontName );
            bool SetStyleValue( PascalCString& styleValue );
            void SetSize(int size);
            void SetRed( int red );
            void SetBlue( int blue );
            void SetGreen( int green );
            void SetAlpha( int alpha );

            virtual bool GetStringExtent( UnicodeString& string, int& width, int& height );

            tlTextureFont* GetTextureFont();

        protected:
            virtual void RemakeFont();

            // Data members
            PascalCString m_font;
            PascalCString m_style;
            int m_size;
            int m_red;
            int m_blue;
            int m_green;
            int m_alpha;

            tlTextureFont* m_fontData;

        private:
            // Create this methods as private so they can not be used
            TextStyleFile(const TextStyleFile &right);
            const TextStyleFile & operator = (const TextStyleFile &right);
    };
}

//===========================================================================
// Inlines
//===========================================================================



#endif                                  // End conditional inclusion

