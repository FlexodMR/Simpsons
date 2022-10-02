//===========================================================================
// Copyright (C) 2000 Radical Entertainment Ltd.  All rights reserved.
//
// Component:   FE Builder Data Structure
//
// Description: This contains the MultiSpriteSaver class.
//
// Authors:     Eric Tong
//
//===========================================================================

//===========================================================================
// Includes
//===========================================================================

#include "MultiSpriteSaver.h"
#include "BoxDrawingElementSaver.h"
#include "..\Loaders\MultiSpriteLoader.h"
#include "..\Loaders\BoxDrawingElementLoader.h"
#include "..\NamedElements\MultiSprite.h"
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
// MultiSpriteSaver::MultiSpriteSaver
//===========================================================================
// Description: MultiSpriteSaver's constructor
//
// Constraints:    None
//
// Parameters:    None
//
// Return:      Nothing
//
//===========================================================================

MultiSpriteSaver::MultiSpriteSaver()
{
}


//===========================================================================
// MultiSpriteSaver::~MultiSpriteSaver
//===========================================================================
// Description: MultiSpriteSaver's destructor
//
// Constraints:    None
//
// Parameters:    None
//
// Return:      Nothing
//
//===========================================================================

MultiSpriteSaver::~MultiSpriteSaver()
{
}


//===========================================================================
// MultiSpriteSaver::Save
//===========================================================================
// Description: This is used to save a MultiSprite to a file.
//
// Constraints:    None
//
// Parameters:    None
//
// Return:      true  - if the element could be added
//              false - otherwise.
//
//===========================================================================

bool MultiSpriteSaver::Save( MultiSprite* theMultiSprite, XMLSaver& theSaver )
{
    bool returnValue = true;

    theSaver.PushElement( g_MultiSpriteTag );

    theSaver.AddAttribute( g_BoxDrawingElementTagName, theMultiSprite->GetName() );

    // Save the common settings
    BoxDrawingElementSaver saver;
    saver.Save( theMultiSprite, theSaver );

    // Save the current index
    theSaver.PushElement( g_MultiSpriteTagCurrentIndex );
    theSaver.AddAttribute( g_MultiSpriteTagCurrentIndexValue, theMultiSprite->GetCurrentImage() );
    theSaver.PopElement();

    // Save the images
    theSaver.PushElement( g_MultiSpriteTagImages );

    for( int i = 0; i < theMultiSprite->GetNumberOfImages(); i++ )
    {
        PascalCString spriteName;
    
        theSaver.PushElement( g_MultiSpriteTagImage );
        if( !theMultiSprite->GetSpriteName( i, spriteName ) )
        {
            g_OutputMessage.Add( "MultiSpriteSaver::Save - Could not get sprite name, default to blank!", ErrorOutputMessage );
            theSaver.AddAttribute( g_MultiSpriteTagImageName, "" );
            returnValue = false;
        }
        else
        {
            theSaver.AddAttribute( g_MultiSpriteTagImageName, spriteName );
        }
        theSaver.PopElement();
    }
    theSaver.PopElement();  // End Images


    theSaver.PopElement(); // End multi sprite

    return returnValue;
}


} // End NameSpace
