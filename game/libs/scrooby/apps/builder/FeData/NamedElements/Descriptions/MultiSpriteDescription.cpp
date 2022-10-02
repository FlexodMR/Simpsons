//===========================================================================
// Copyright (C) 2000 Radical Entertainment Ltd.  All rights reserved.
//
// Component:   FE Builder Data Structure
//
// Description: This contains the MultiSpriteDescription class.
//
// Authors:     Ryan Bedard
//
//===========================================================================

//===========================================================================
// Includes
//===========================================================================

#include "MultiSpriteDescription.h"
#include "..\MultiSprite.h"
#include "..\Page.h"
#include "..\Project.h"
#include "..\..\Helpers\OutputMessage.h"
#include "..\..\Helpers\TokenList.h"
#include "..\..\Factories\BaseFactory.h"

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
// MultiSpriteDescription::MultiSpriteDescription
//===========================================================================
// Description: MultiSpriteDescription's constructor
//
// Constraints:    None
//
// Parameters:    None
//
// Return:      Nothing
//
//===========================================================================

MultiSpriteDescription::MultiSpriteDescription() :
m_ImageList(),
m_CurrentImage( 0 )
{
}


//===========================================================================
// MultiSpriteDescription::~MultiSpriteDescription
//===========================================================================
// Description: MultiSpriteDescription's destructor
//
// Constraints:    None
//
// Parameters:    None
//
// Return:      Nothing
//
//===========================================================================

MultiSpriteDescription::~MultiSpriteDescription()
{
    while( m_ImageList.GetNumberOfElements() > 0 )
    {
        ImageDescription* imageDescription = m_ImageList.GetElement( 0 );
        if( imageDescription != NULL )
        {
            delete imageDescription;
            imageDescription = NULL;
        }
        m_ImageList.RemoveElement( 0 );
    }
}


//===========================================================================
// MultiSpriteDescription::AddToTokenList
//===========================================================================
// Description: This places the a tokenised version of the description after
//              the token list.
//
// Constraints:    None
//
// Parameters:    tokenList - token list to add to
//
// Return:      true  - if the copy was successfull,
//              false - otherwise
//
//===========================================================================
bool MultiSpriteDescription::AddToTokenList( TokenList& tokenList )
{
    tokenList.Add( g_MultiSpriteDescriptionHeader );
    
    if( !BoxDrawingElementDescription::AddToTokenList( tokenList ) )
    {
        return false;
    }
   
    // Add the image names
    tokenList.Add( m_ImageList.GetNumberOfElements() );

    for( int i = 0; i < m_ImageList.GetNumberOfElements(); i++ )
    {
        ImageDescription* imageDescription = m_ImageList.GetElement( i );
        if( imageDescription != NULL )
        {
            tokenList.Add( imageDescription->m_ImageName );
            tokenList.Add( imageDescription->m_ImageFileName );
        }
    }

    tokenList.Add( m_CurrentImage );

    tokenList.Add( g_MultiSpriteDescriptionFooter );
    return true;
}


//===========================================================================
// MultiSpriteDescription::SetFromTokenList
//===========================================================================
// Description: This sets up the description from the passed token list.
//
// Constraints:    None
//
// Parameters:    tokenList - token list to use to make description
//
// Return:      true  - if the setting was successfull,
//              false - otherwise
//
//===========================================================================
bool MultiSpriteDescription::SetFromTokenList( TokenList& tokenList )
{
    PascalCString temp;
    
    // Get the header
    if( !tokenList.GetNext( temp ) )
    {
        g_OutputMessage.Add( "MultiSpriteDescription::AddToTokenList: Cannot get header.",
                             DebugOutputMessage );
        return false;
    }

    if( temp != g_MultiSpriteDescriptionHeader )
    {
        g_OutputMessage.Add( "MultiSpriteDescription::AddToTokenList: Invalid header.",
                             DebugOutputMessage );
        return false;
    }


    if( !BoxDrawingElementDescription::SetFromTokenList( tokenList ) )
    {
        return false;
    }


    // Get the number of vertexs
    int numberOfImages = 0;
    if( !tokenList.GetNext( numberOfImages ) )
    {
        g_OutputMessage.Add( "MultiSpriteDescription::AddToTokenList: Cannot get the number of images.",
                             DebugOutputMessage );
        return false;
    }

    // Get the images
    for( int i = 0; i < numberOfImages; i++ )
    {
        PascalCString name;
        PascalCString fileName;

        if( !tokenList.GetNext( name ) || 
            !tokenList.GetNext( fileName ) )
        {
            g_OutputMessage.Add( "MultiSpriteDescription::AddToTokenList: Cannot get the image information.",
                                 DebugOutputMessage );
            return false;
        }

        AddImageDescription( name, fileName );
    }

    if( !tokenList.GetNext( m_CurrentImage ) )
    {
        g_OutputMessage.Add( "MultiSpriteDescription::AddToTokenList: Cannot get current image.",
                             DebugOutputMessage );
        return false;
    }


    // Get the footer
    if( !tokenList.GetNext( temp ) )
    {
        g_OutputMessage.Add( "MultiSpriteDescription::AddToTokenList: Cannot get footer.",
                             DebugOutputMessage );
        return false;
    }

    if( temp != g_MultiSpriteDescriptionFooter )
    {
        g_OutputMessage.Add( "MultiSpriteDescription::AddToTokenList: Invalid footer.",
                             DebugOutputMessage );
        return false;
    }

    // All done
    return true;
}


//===========================================================================
// MultiSpriteDescription::CreateHierarchyElement
//===========================================================================
// Description: This create a new hierarchy element based on the description.
//              Note: The caller is responsible for deleting the element
//
// Constraints:    None
//
// Parameters:    objectFactory - object factory used to make the element.
//
// Return:      A pointer to the new element, or NULL if an error occurred.
//
//===========================================================================

DrawingElement* MultiSpriteDescription::CreateHierarchyElement( Page* page )
{
    Project* project = page->GetProject();
    BaseFactory* objectFactory = project->GetObjectFactory();

    MultiSprite* multiSprite = objectFactory->NewMultiSprite();
    if( multiSprite == NULL )
    {
        g_OutputMessage.Add( "MultiSpriteDescription::CreateHierarchyElement: Out of Memory!",
                             DebugOutputMessage );
        return NULL;
    }

    multiSprite->SetPage( page );
    multiSprite->SetFromDescription( dynamic_cast<DrawingElementDescription*>( this ) );
    return multiSprite;
}


//===========================================================================
// MultiSpriteDescription::AddImageDescription
//===========================================================================
// Description: Add an image description to the list
//
// Constraints:    None
//
// Parameters:    name  - name to add
//              fileName  - fileName to add
//
// Return:      true  - if successful,
//              false - otherwise
//
//===========================================================================

bool MultiSpriteDescription::AddImageDescription( PascalCString &name, PascalCString &fileName )
{
    ImageDescription* newImageDescription = new ImageDescription;
    if( newImageDescription == NULL )
    {
        g_OutputMessage.Add( "MultiSpriteDescription::AddImageDescription: Out of Memory!", 
                             ErrorOutputMessage );
        return false;
    }

    newImageDescription->m_ImageName = name;
    newImageDescription->m_ImageFileName = fileName;

    return m_ImageList.AddElementToBack( newImageDescription );
}


//===========================================================================
// MultiSpriteDescription::GetCurrentImage
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

int MultiSpriteDescription::GetCurrentImage()
{
    return m_CurrentImage;
}


//===========================================================================
// MultiSpriteDescription::SetCurrentImage
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

void MultiSpriteDescription::SetCurrentImage( int index )
{
    if(( index < 0 ) || ( index >= m_ImageList.GetNumberOfElements() ))
    {
        g_OutputMessage.Add( "MultiSpriteDescription::SetCurrentImage: Bad Index!", 
                             DebugOutputMessage );
    }
    else
    {
        m_CurrentImage = index;
    }
}


//===========================================================================
// MultiSpriteDescription::GetNumberOfImages
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

int MultiSpriteDescription::GetNumberOfImages()
{
    return m_ImageList.GetNumberOfElements();
}


//===========================================================================
// MultiSpriteDescription::GetImageName
//===========================================================================
// Description: Retrieve an image description from the list
//
// Constraints:    None
//
// Parameters:    index - the index from the list to get
//              name  - string to place the name
//              fileName  - string to place the fileName
//
// Return:      true  - if successful,
//              false - otherwise
//
//===========================================================================

bool MultiSpriteDescription::GetImageDescription( int index, PascalCString &name, PascalCString &fileName )
{
    ImageDescription* imageDescription = m_ImageList.GetElement( index );
    if( imageDescription != NULL )
    {
        name = imageDescription->m_ImageName;
        fileName = imageDescription->m_ImageFileName;
        return true;
    }
    else
    {
        return false;
    }
}


} // End NameSpace
