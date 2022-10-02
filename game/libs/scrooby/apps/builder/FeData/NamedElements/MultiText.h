//===========================================================================
// Copyright (C) 2000 Radical Entertainment Ltd.  All rights reserved.
//
// Component:   FE Builder Data Structure
//
// Description: This contains the MultiText class which represents a 
//              MultiText.
//
// Authors:     Ryan Bedard, Eric Tong
//
//===========================================================================

// Recompilation protection flag.
#ifndef __MULTITEXT_H
#define __MULTITEXT_H


//===========================================================================
// Nested Includes
//===========================================================================

#include "BoxDrawingElement.h"
#include "..\Helpers\ElementList.h"
#include "..\Helpers\EnumConversion.h"
#include "..\Helpers\TextList.h"

//===========================================================================
// Forward References
//===========================================================================

//===========================================================================
// Constants, Typedefs, and Macro Definitions (needed by external clients)
//===========================================================================

class UnicodeString;

namespace FeData
{
    class TextBible;
    class TextStyle;

    class TextStruct
    :
        public Chunkable
    {
    public:
        //turns this into a chunk
        tlDataChunk* MakeChunk() const;

        TextBible* m_textBible;
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
    class MultiText : public BoxDrawingElement
    {
        public:
            MultiText();
            virtual ~MultiText();

            virtual bool Draw( DrawingContext* theDrawingContext ) = 0;

            int GetNumberOfTexts();

            bool AddTextBibleString( TextBible* textBible, PascalCString& string );
            bool AddHardCodedString( PascalCString& string );
            bool RemoveText( int index );
            tlDataChunk* MakeChunk() const;

            bool GetString( int index, UnicodeString &string );
            bool GetTextDescription( int index, PascalCString &description );
            
            TextBible* GetTextBible( int index );
            bool GetTextBibleName( int index, PascalCString &name );
            bool GetTextBibleString( int index, PascalCString& bibleString );
            bool GetHardCodedString( int index, PascalCString& hardCodedString );
            bool GetTextType( int index, TextTypeEnum& type );
            bool GetTextStyleName( PascalCString& textStyleName );
            PascalCString GetTextStyleName() const;
            TextStyle* GetTextStyle();

            bool SetTextStyle( TextStyle* textStyle );

            int GetCurrentText() const;
            void SetCurrentText( int index );

            void SetShadowEnabled( bool enabled );
            bool IsShadowEnabled() const;

            Color& GetShadowColor();
            int GetShadowRed() const;
            int GetShadowGreen() const;
            int GetShadowBlue() const;
            int GetShadowAlpha() const;
            void SetShadowColor( Color& color );
            void SetShadowColor( int r, int g, int b, int a );

            int GetXShadowOffset() const;
            int GetYShadowOffset() const;
            void SetShadowOffset( int x, int y );

            bool FillInTextList( TextList& textList );
            bool SetFromTextList( TextList& textList );

            virtual DrawingElementDescription* GetDescription();
            virtual bool SetFromDescription( DrawingElementDescription* description);

        protected:
            virtual bool FillInDescription( DrawingElementDescription* description );

        private:
            // Create this methods as private so they can not be used
            MultiText(const MultiText &right);
            const MultiText & operator = (const MultiText &right);

            void ClearTextList();

            // Data members
            ElementList< TextStruct > m_TextList;
            PascalCString m_FontName;
            int m_CurrentText;
            TextStyle* m_TextStyle;

            bool m_ShadowEnabled;
            Color m_ShadowColour;
            int m_xShadowOffset;
            int m_yShadowOffset;
    };
}

//===========================================================================
// Inlines
//===========================================================================



#endif                                  // End conditional inclusion

