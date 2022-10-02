//===========================================================================
// Copyright (C) 2000 Radical Entertainment Ltd.  All rights reserved.
//
// Component:   FE Builder Data Structure
//
// Description: This contains the SpriteSaver class.
//
// Authors:     Eric Tong
//
//===========================================================================

//===========================================================================
// Includes
//===========================================================================

#include "SpriteSaver.h"
#include "BoxDrawingElementSaver.h"
#include "..\Loaders\SpriteLoader.h"
#include "..\Loaders\BoxDrawingElementLoader.h"
#include "..\NamedElements\Sprite.h"
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
// SpriteSaver::SpriteSaver
//===========================================================================
// Description: SpriteSaver's constructor
//
// Constraints:    None
//
// Parameters:    None
//
// Return:      Nothing
//
//===========================================================================

SpriteSaver::SpriteSaver()
{
}


//===========================================================================
// SpriteSaver::~SpriteSaver
//===========================================================================
// Description: SpriteSaver's destructor
//
// Constraints:    None
//
// Parameters:    None
//
// Return:      Nothing
//
//===========================================================================

SpriteSaver::~SpriteSaver()
{
}


//===========================================================================
// SpriteSaver::Save
//===========================================================================
// Description: This is used to save a Sprite to a file.
//
// Constraints:    None
//
// Parameters:    None
//
// Return:      true  - if the element could be added
//              false - otherwise.
//
//===========================================================================

bool SpriteSaver::Save( Sprite* theSprite, XMLSaver& theSaver )
{
    bool returnValue = true;

    theSaver.PushElement( g_SpriteTag );

    theSaver.AddAttribute( g_BoxDrawingElementTagName, theSprite->GetName() );

    // Save the common settings
    BoxDrawingElementSaver saver;
    saver.Save( theSprite, theSaver );

    // Save the image name
    PascalCString spriteName;
    
    theSaver.PushElement( g_SpriteTagImage );
    if( !theSprite->GetSpriteName( 0, spriteName ) )
    {
        g_OutputMessage.Add( "SpriteSaver::Save - Could not get sprite name, default to blank!", ErrorOutputMessage );
        theSaver.AddAttribute( g_SpriteTagImageName, "" );
        returnValue = false;
    }
    else
    {
        theSaver.AddAttribute( g_SpriteTagImageName, spriteName );
    }
    theSaver.PopElement();

    theSaver.PopElement(); // End sprite

    return returnValue;
}


} // End NameSpace
