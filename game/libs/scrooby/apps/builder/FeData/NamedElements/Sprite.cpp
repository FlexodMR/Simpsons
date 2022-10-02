//===========================================================================
// Copyright (C) 2000 Radical Entertainment Ltd.  All rights reserved.
//
// Component:   FE Builder Data Structure
//
// Description: This contains the Sprite class.
//
// Authors:     Ryan Bedard
//
//===========================================================================

//===========================================================================
// Includes
//===========================================================================

#include "Sprite.h"
#include "Descriptions\SpriteDescription.h"

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
// Sprite::Sprite
//===========================================================================
// Description: Sprite's constructor
//
// Constraints:    None
//
// Parameters:    None
//
// Return:      Nothing
//
//===========================================================================

Sprite::Sprite()
{
}


//===========================================================================
// Sprite::~Sprite
//===========================================================================
// Description: Sprite's destructor
//
// Constraints:    None
//
// Parameters:    None
//
// Return:      Nothing
//
//===========================================================================

Sprite::~Sprite()
{
}


//===========================================================================
// Sprite::GetImage
//===========================================================================
// Description: Get the image
//
// Constraints:    None
//
// Parameters:    None
//
// Return:      A pointer to the image or NULL if the image was not found.
//
//===========================================================================

Image* Sprite::GetImage()
{
    return MultiSprite::GetImage( 0 );
}


//===========================================================================
// Sprite::SetImage
//===========================================================================
// Description: Set the image
//
// Constraints:    None
//
// Parameters:    theImage - A pointer to the image to add
//
// Return:      true  - if it could be added,
//              false - otherwise
//
//===========================================================================
         
bool Sprite::SetImage( Image* theImage )
{
    if( GetNumberOfImages() != 0 )
    {
        if( !RemoveImage( 0 ) )
        {
            return false;
        }
    }

    return AddImage( theImage );
}


//===========================================================================
// Sprite::GetDescription
//===========================================================================
// Description: This returns a description of the object without any pointers
//              to other objects.
//
// Constraints:    None
//
// Parameters:    None
//
// Return:      The pointer to a newly created description (this must be 
//              deleted by the caller),
//              or NULL if the description could not be made.
//
//===========================================================================

DrawingElementDescription* Sprite::GetDescription()
{
    SpriteDescription* description = new SpriteDescription;
    if( description == NULL )
    {
        g_OutputMessage.Add( "Sprite::GetDescription: Out of Memory!", 
                             ErrorOutputMessage );
        return NULL;
    }

    MultiSprite::FillInDescription( description );

    return description;
}


} // End NameSpace
