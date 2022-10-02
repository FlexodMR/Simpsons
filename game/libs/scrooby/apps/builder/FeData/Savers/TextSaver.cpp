//===========================================================================
// Copyright (C) 2000 Radical Entertainment Ltd.  All rights reserved.
//
// Component:   FE Builder Data Structure
//
// Description: This contains the TextSaver class.
//
// Authors:     Eric Tong
//
//===========================================================================

//===========================================================================
// Includes
//===========================================================================

#include "TextSaver.h"
#include "BoxDrawingElementSaver.h"
#include "..\Loaders\TextLoader.h"
#include "..\Loaders\BoxDrawingElementLoader.h"
#include "..\NamedElements\Text.h"
#include "XMLSaver.h"

//===========================================================================
// Local Constants, Typedefs, and Macros
//===========================================================================

//===========================================================================
// Global Data, Local Data, Local Classes
//===========================================================================

//===========================================================================
// Member Functions
//===========================================================================

namespace FeData
{

//===========================================================================
// TextSaver::TextSaver
//===========================================================================
// Description: TextSaver's constructor
//
// Constraints:    None
//
// Parameters:    None
//
// Return:      Nothing
//
//===========================================================================

TextSaver::TextSaver()
{
}


//===========================================================================
// TextSaver::~TextSaver
//===========================================================================
// Description: TextSaver's destructor
//
// Constraints:    None
//
// Parameters:    None
//
// Return:      Nothing
//
//===========================================================================

TextSaver::~TextSaver()
{
}


//===========================================================================
// TextSaver::Save
//===========================================================================
// Description: This is used to save a Text to a file.
//
// Constraints:    None
//
// Parameters:    None
//
// Return:      true  - if the element could be added
//              false - otherwise.
//
//===========================================================================

bool TextSaver::Save( Text* theText, XMLSaver& theSaver )
{
    bool returnValue = true;
    
    PascalCString buffer;

    theSaver.PushElement( g_TextTag );

    theSaver.AddAttribute( g_BoxDrawingElementTagName, theText->GetName() );

    // Save the common settings
    BoxDrawingElementSaver saver;
    saver.Save( theText, theSaver );

    // Save the text style
    theText->GetTextStyleName( buffer );
    theSaver.PushElement( g_TextTagTextStyle );
    theSaver.AddAttribute( g_TextTagTextStyleName, buffer );
    theSaver.PopElement();

    // Save the shadow attributes
    theSaver.PushElement( g_TextTagShadow );
    theSaver.AddAttribute( ::g_TextTagShadowEnabled, theText->IsShadowEnabled() );
    theSaver.AddAttribute( ::g_TextTagShadowRed, theText->GetShadowRed() );
    theSaver.AddAttribute( ::g_TextTagShadowGreen, theText->GetShadowGreen() );
    theSaver.AddAttribute( ::g_TextTagShadowBlue, theText->GetShadowBlue() );
    theSaver.AddAttribute( ::g_TextTagShadowAlpha, theText->GetShadowAlpha() );
    theSaver.AddAttribute( ::g_TextTagShadowOffsetX, theText->GetXShadowOffset() );
    theSaver.AddAttribute( ::g_TextTagShadowOffsetY, theText->GetYShadowOffset() );
    theSaver.PopElement();

    // Save the text
    TextTypeEnum textType;
    theSaver.PushElement( g_TextTagString );

    if( theText->GetTextType( 0, textType ) == false )
    {
        g_OutputMessage.Add( "TextSaver::Save - Invalid text name, default to blank!", ErrorOutputMessage );
        theSaver.AddAttribute( g_TextTagStringHardCodedString, buffer );
        returnValue = false;
    }
    else
    {
        if( textType == HardCodedString )
        {
            theText->GetHardCodedString( 0, buffer );
            theSaver.AddAttribute( g_TextTagStringHardCodedString, buffer );
        }
        else
        {
            if( !theText->GetTextBibleName( 0, buffer ) )
            {
                g_OutputMessage.Add( "TextSaver::Save - Could not get text bible name, default to blank!", ErrorOutputMessage );
                theSaver.AddAttribute( g_TextTagStringTextBible, "" );
                returnValue = false;
            }
            else
            {
                theSaver.AddAttribute( g_TextTagStringTextBible, buffer );
            }

            theText->GetTextBibleString( 0, buffer );
            theSaver.AddAttribute( g_TextTagStringStringId, buffer );
        }
    }
    theSaver.PopElement();

    theSaver.PopElement();  // End text

    return returnValue;
}


} // End NameSpace
