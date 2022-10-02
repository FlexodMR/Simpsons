//===========================================================================
// Copyright (C) 2000 Radical Entertainment Ltd.  All rights reserved.
//
// Component:   FE Builder Data Structure
//
// Description: This contains the MultiTextSaver class.
//
// Authors:     Eric Tong
//
//===========================================================================

//===========================================================================
// Includes
//===========================================================================

#include "MultiTextSaver.h"
#include "BoxDrawingElementSaver.h"
#include "..\Loaders\MultiTextLoader.h"
#include "..\Loaders\BoxDrawingElementLoader.h"
#include "..\NamedElements\MultiText.h"
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
// MultiTextSaver::MultiTextSaver
//===========================================================================
// Description: MultiTextSaver's constructor
//
// Constraints:    None
//
// Parameters:    None
//
// Return:      Nothing
//
//===========================================================================

MultiTextSaver::MultiTextSaver()
{
}


//===========================================================================
// MultiTextSaver::~MultiTextSaver
//===========================================================================
// Description: MultiTextSaver's destructor
//
// Constraints:    None
//
// Parameters:    None
//
// Return:      Nothing
//
//===========================================================================

MultiTextSaver::~MultiTextSaver()
{
}


//===========================================================================
// MultiTextSaver::Save
//===========================================================================
// Description: This is used to save a MultiText to a file.
//
// Constraints:    None
//
// Parameters:    None
//
// Return:      true  - if the element could be added
//              false - otherwise.
//
//===========================================================================

bool MultiTextSaver::Save( MultiText* theMultiText, XMLSaver& theSaver )
{
    bool returnValue = true;
    PascalCString buffer;

    theSaver.PushElement( g_MultiTextTag );

    theSaver.AddAttribute( g_BoxDrawingElementTagName, theMultiText->GetName() );

    // Save the common settings
    BoxDrawingElementSaver saver;
    saver.Save( theMultiText, theSaver );

    // Save text style
    theSaver.PushElement( g_MultiTextTagTextStyle );
    theMultiText->GetTextStyleName( buffer );
    theSaver.AddAttribute( g_MultiTextTagTextStyleName, buffer );
    theSaver.PopElement();

    // Save the shadow attributes
    theSaver.PushElement( g_MultiTextTagShadow );
    theSaver.AddAttribute( ::g_MultiTextTagShadowEnabled, theMultiText->IsShadowEnabled() );
    theSaver.AddAttribute( ::g_MultiTextTagShadowRed, theMultiText->GetShadowRed() );
    theSaver.AddAttribute( ::g_MultiTextTagShadowGreen, theMultiText->GetShadowGreen() );
    theSaver.AddAttribute( ::g_MultiTextTagShadowBlue, theMultiText->GetShadowBlue() );
    theSaver.AddAttribute( ::g_MultiTextTagShadowAlpha, theMultiText->GetShadowAlpha() );
    theSaver.AddAttribute( ::g_MultiTextTagShadowOffsetX, theMultiText->GetXShadowOffset() );
    theSaver.AddAttribute( ::g_MultiTextTagShadowOffsetY, theMultiText->GetYShadowOffset() );
    theSaver.PopElement();

    // Save the current index
    theSaver.PushElement( g_MultiTextTagCurrentIndex );
    theSaver.AddAttribute( g_MultiTextTagCurrentIndexValue, theMultiText->GetCurrentText() );
    theSaver.PopElement();

    // Save the strings
    theSaver.PushElement( g_MultiTextTagStrings );

    for( int i = 0; i < theMultiText->GetNumberOfTexts(); i++ )
    {
        TextTypeEnum textType;
        theSaver.PushElement( g_MultiTextTagString );
        
        if( theMultiText->GetTextType( i, textType ) == false )
        {
            g_OutputMessage.Add( "MultiTextSaver::Save - Invalid text name, default to blank!", ErrorOutputMessage );
            theSaver.AddAttribute( g_MultiTextTagStringHardCodedString, buffer );
            returnValue = false;
        }
        else
        {
            if( textType == HardCodedString )
            {
                theMultiText->GetHardCodedString( i, buffer );
                theSaver.AddAttribute( g_MultiTextTagStringHardCodedString, buffer );
            }
            else
            {
                if( !theMultiText->GetTextBibleName( i, buffer ) )
                {
                    g_OutputMessage.Add( "MultiTextSaver::Save - Could not get text bible name, default to blank!", ErrorOutputMessage );
                    theSaver.AddAttribute( g_MultiTextTagStringTextBible, "" );
                    returnValue = false;
                }
                else
                {
                    theSaver.AddAttribute( g_MultiTextTagStringTextBible, buffer );
                }

                theMultiText->GetTextBibleString( i, buffer );
                theSaver.AddAttribute( g_MultiTextTagStringStringId, buffer );
            }
        }
        theSaver.PopElement();  // End String
    }

    theSaver.PopElement();  // End Strings

    theSaver.PopElement(); // End multi text

    return returnValue;
}


} // End NameSpace
