//===========================================================================
// Copyright (C) 2000 Radical Entertainment Ltd.  All rights reserved.
//
// Component:   FE Builder Data Structure
//
// Description: This contains the MultiSprite class.
//
// Authors:     Ryan Bedard, Eric Tong
//
//===========================================================================

//===========================================================================
// Includes
//===========================================================================
#include <assert.h>
#include "MultiSprite.h"
#include "Page.h"
#include "Descriptions\MultiSpriteDescription.h"
#include "..\Helpers\FileName.h"
#include "..\Helpers\NameManager.h"
#include "..\Helpers\OutputMessage.h"
#include "..\Helpers\ResourceManager.h"
#include "..\ResourceFiles\ResourceFile.h"
#include <tlColour.hpp>
#include <tlScroobyProjectChunk.hpp>

//===========================================================================
// Local Constants, Typedefs, and Macros
//===========================================================================

//===========================================================================
// Global Data, Local Data, Local Classes
//===========================================================================
int g_MultiSpriteVersion = 1;

//===========================================================================
// Member Functions
//===========================================================================

namespace FeData
{

//===========================================================================
// MultiSprite::MultiSprite
//===========================================================================
// Description: MultiSprite's constructor
//
// Constraints:    None
//
// Parameters:    None
//
// Return:      Nothing
//
//===========================================================================

MultiSprite::MultiSprite() :
m_ImageList(),
m_CurrentImage( 0 )
{
}


//===========================================================================
// MultiSprite::~MultiSprite
//===========================================================================
// Description: MultiSprite's destructor
//
// Constraints:    None
//
// Parameters:    None
//
// Return:      Nothing
//
//===========================================================================

MultiSprite::~MultiSprite()
{
    Page* page = GetPage();
    ResourceManager* resourceManager = page->GetResourceManager();

    for( int i = 0; i < m_ImageList.GetNumberOfElements() ; i++ )
    {
        Image* image = m_ImageList.GetElement( i );
        resourceManager->Release( (Resource**)&image );
    }
}


//===========================================================================
// MultiSprite::GetNumberOfTexts
//===========================================================================
// Description: Returns the number of sprites in the list
//
// Constraints:    None
//
// Parameters:    None
//
// Return:      int - the number
//
//===========================================================================

int MultiSprite::GetNumberOfImages()
{
    return m_ImageList.GetNumberOfElements();
}


//===========================================================================
// MultiSprite::AddSprite
//===========================================================================
// Description: Add an image to the list
//
// Constraints:    None
//
// Parameters:    newImage - a pointer to the resource to add.
//
// Return:      bool - whether action was successful
//
//===========================================================================
bool MultiSprite::AddImage( Image* newImage )
{
    return m_ImageList.AddElementToBack( newImage );
}


//===========================================================================
// MultiSprite::GetImage
//===========================================================================
// Description: Get an image in the list
//
// Constraints:    None
//
// Parameters:    newImage - a pointer to the resource to add.
//
// Return:      A pointer to the image or NULL if the image was not found.
//
//===========================================================================
Image* MultiSprite::GetImage( int index )
{
    return m_ImageList.GetElement( index );
}


//===========================================================================
// MultiSprite::RemoveImage
//===========================================================================
// Description: Remove an image from the list
//
// Constraints:    None
//
// Parameters:    index - the index from the list to remove
//
// Return:      bool - whether action was successful
//
//===========================================================================
bool MultiSprite::RemoveImage( int index )
{
    Page* page = GetPage();
    ResourceManager* resourceManager = page->GetResourceManager();

    Image* image = m_ImageList.GetElement( index );
    resourceManager->Release( (Resource**)&image );

    if( !m_ImageList.RemoveElement( index ) )
    {
        return false;
    }

    // Make sure the current image index is still valid
    if( m_CurrentImage >= m_ImageList.GetNumberOfElements() )
    {
        m_CurrentImage = m_ImageList.GetNumberOfElements() - 1;

        if( m_CurrentImage < 0 )
        {
            m_CurrentImage = 0;
        }
    }

    return true;
}

//===========================================================================
// bool MultiSprite::RemoveAllImages();
//===========================================================================
// Description: Remove all images from the list
//
// Constraints:    NONE
//
// Parameters:    NONE
//
// Return:      bool - whether action was successful
//
//===========================================================================
bool MultiSprite::RemoveAllImages()
{
    bool success = true;
    int i = 0;
    int size = this->GetNumberOfImages();
    for( i = 0; i < size; i++ )
    {
        success &= this->RemoveImage( 0 );
    }
    return success;
}

//===========================================================================
// MultiSprite::GetCurrentImage
//===========================================================================
// Description: This gets the index of the current image.
//
// Constraints:    None
//
// Parameters:    None
//
// Return:      the index of the current image
//
//===========================================================================

int MultiSprite::GetCurrentImage()
{
    return m_CurrentImage;
}


//===========================================================================
// MultiSprite::SetCurrentImage
//===========================================================================
// Description: This sets the index of the current image.
//
// Constraints:    None
//
// Parameters:    index - the index of the image to set
//
// Return:      Nothing
//
//===========================================================================

void MultiSprite::SetCurrentImage( int index )
{
    if(( index < 0 ) || ( index >= m_ImageList.GetNumberOfElements() ))
    {
        g_OutputMessage.Add( "MultiSprite::SetCurrentImage: Bad Index!", 
                             DebugOutputMessage );
    }
    else
    {
        m_CurrentImage = index;
    }
}


//===========================================================================
// MultiSprite::GetSpriteName
//===========================================================================
// Description: Retrieve a sprite name from the list
//
// Constraints:    None
//
// Parameters:    index - the index from the list to get
//              name  - string to place the name
//
// Return:      true  - if the name was found fine,
//              false - otherwise
//
//===========================================================================
bool MultiSprite::GetSpriteName( int index, PascalCString &name )
{
    Image* image = m_ImageList.GetElement( index );
    if( image == NULL )
    {
        return false;
    }
    else
    {
        name = image->GetName();
        return true;
    }
}


//===========================================================================
// MultiSprite::MakeChunk
//===========================================================================
// Description: Makes a tlDataChunk out of the object
//
// Constraints:    None
//
// Parameters:    None
//
// Return:      the tlDataChunk
//
//===========================================================================
tlDataChunk* MultiSprite::MakeChunk() const
{
    tlScroobyMultiSpriteChunk* chunk = new tlScroobyMultiSpriteChunk;
    chunk->SetName( this->GetName() );
    chunk->SetVersion( g_MultiSpriteVersion );
    chunk->SetPositionX( this->GetX() );
    chunk->SetPositionY( this->GetY() );
    chunk->SetDimensionX( this->GetWidth() );
    chunk->SetDimensionY( this->GetHeight() );
    chunk->SetJustificationX( this->GetJustificationHorizontal() );
    chunk->SetJustificationY( this->GetJustificationVertical() );
    tlColour color( GetRed(), GetGreen(), GetBlue(), GetAlpha() );
    chunk->SetColor( color.ULong() );
    chunk->SetTranslucency( this->GetTranslucency() );
    chunk->SetRotationValue( this->GetRotation() );
    
    char* imageNames[ 256 ];
    int size = m_ImageList.GetNumberOfElements();
    chunk->SetNumberOfImages( size );
    int i;
    for( i = 0; i < size; i++ )
    {
        imageNames[ i ] = new char[ 256 ];
        Image* image = m_ImageList[ i ];
        strcpy( imageNames[ i ], image->GetName() );
    }
    chunk->SetImageNames( imageNames, size );

    //delete the pointers we just created
    for( i = 0; i < size; i++ )
    {
        delete[] imageNames[ i ];
    }
    return chunk;
}

//===========================================================================
// MultiSprite::GetDescription
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
DrawingElementDescription* MultiSprite::GetDescription()
{
    MultiSpriteDescription* description = new MultiSpriteDescription;
    if( description == NULL )
    {
        g_OutputMessage.Add( "MultiSprite::GetDescription: Out of Memory!", 
                             ErrorOutputMessage );
        return NULL;
    }

    FillInDescription( description );
 
    return description;
}


//===========================================================================
// MultiSprite::SetFromDescription
//===========================================================================
// Description: This sets the state of the element to match that of the
//              passed description.
//
// Constraints:    The page for this element must have been set before this can 
//              be called.
//
// Parameters:    description - Description to set from
//
// Return:      true  - if successful,
//              false - otherwize
//
//===========================================================================

bool MultiSprite::SetFromDescription( DrawingElementDescription* description ) 
{
    MultiSpriteDescription* multiSpriteDescription = dynamic_cast< MultiSpriteDescription* >( description );
    if( multiSpriteDescription == NULL )
    {
        g_OutputMessage.Add( "MultiSprite::SetFromDescription: Invalid description type!", 
                             DebugOutputMessage );
        return false;
    }

    // Remove the old images
    RemoveAllImages();

    // Set the parent settings
    if( !BoxDrawingElement::SetFromDescription( description ) )
    {
        return false;
    }

    // Set the MultiSprite settings
    ResourceManager* resMan = GetPage()->GetResourceManager();
       
    for( int i = 0; i < multiSpriteDescription->GetNumberOfImages(); i++ )
    {
        PascalCString name;
        PascalCString fileNameString;
        
        if( !multiSpriteDescription->GetImageDescription( i, name, fileNameString ) )
        {
            g_OutputMessage.Add( "MultiSprite::SetFromDescription: Cannot get image description!", 
                                  DebugOutputMessage );
            return false;
        }

        FileName fileName;
        fileName.Set( fileNameString );

        Image* image = resMan->GetImageWithoutCounting( name );
        bool haveToAddImage = false;
        if( image == NULL )
        {
            // No image with this name, add the image
            haveToAddImage = true;
        }
        else
        {
            FileName existingFileName = image->GetResourceFile()->GetFileName();
            if( existingFileName != fileName )
            {
                // There is an image with this name, however, the resource file differs.
                NameManager nameManager;
                if( !nameManager.MakeSureImageNameIsUnique( name, GetPage() ) )
                {
                    g_OutputMessage.Add( "MultiSprite::SetFromDescription: Cannot produce a unique image name!", 
                                         DebugOutputMessage );
                    return false;
                }

                // Add image under new name
                haveToAddImage = true;
            }
        }
        
        // Do we add the image
        if( haveToAddImage )
        {
            if( !resMan->AddImage( name, fileName, GetPage()->GetProject() ) )
            {
                g_OutputMessage.Add( "MultiSprite::SetFromDescription: Cannot add new image!", 
                                     DebugOutputMessage );
                return false;
            }
        }

        // Get a counted copy of the image
        image = resMan->GetImage( name );
        if( image == NULL )
        {
            g_OutputMessage.Add( "MultiSprite::SetFromDescription: Cannot get the image!", 
                                 DebugOutputMessage );
        }


        if( !AddImage( image ) )
        {
            return false;
        }
    }

    SetCurrentImage( multiSpriteDescription->GetCurrentImage() );
    return true;
}


//===========================================================================
// MultiSprite::FillInDescription
//===========================================================================
// Description: This fills in the description with settings from this class.
//
// Constraints:    None
//
// Parameters:    description - description to fill.
//
// Return:      true  - if successful,
//              false - otherwize
//
//===========================================================================

bool MultiSprite::FillInDescription( DrawingElementDescription* description )
{
    MultiSpriteDescription* multiSpriteDescription = dynamic_cast<MultiSpriteDescription*>( description );
    if( multiSpriteDescription == NULL )
    {
        g_OutputMessage.Add( "MultiSprite::FillInDescription: Invalid description type!", 
                             DebugOutputMessage );
        return false;
    }

    // Fill in parent settings
    BoxDrawingElement::FillInDescription( description );

    // Set this class's settings
    for( int i = 0; i < m_ImageList.GetNumberOfElements() ; i++ )
    {
        Image* image = m_ImageList.GetElement( i );
        if( image != NULL )
        {
            PascalCString name( image->GetName() );
            PascalCString fileNameString;

            FileName fileName = image->GetResourceFile()->GetFileName();
            fileName.Get( fileNameString );

            multiSpriteDescription->AddImageDescription( name, fileNameString );
        }
    }

    multiSpriteDescription->SetCurrentImage( GetCurrentImage() );
    return true;
}


} // End NameSpace
