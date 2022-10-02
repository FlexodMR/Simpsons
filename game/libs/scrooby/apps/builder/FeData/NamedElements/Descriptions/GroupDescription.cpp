//===========================================================================
// Copyright (C) 2000 Radical Entertainment Ltd.  All rights reserved.
//
// Component:   FE Builder Data Structure
//
// Description: This contains the GroupDescription class.
//
// Authors:     Ryan Bedard
//
//===========================================================================

//===========================================================================
// Includes
//===========================================================================

#include "GroupDescription.h"
#include "..\Group.h"
#include "..\Page.h"
#include "..\Project.h"
#include "..\..\Helpers\DescriptionManager.h"
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
// GroupDescription::GroupDescription
//===========================================================================
// Description: GroupDescription's constructor
//
// Constraints:    None
//
// Parameters:    None
//
// Return:      Nothing
//
//===========================================================================

GroupDescription::GroupDescription() :
m_alpha( 0 )
{
}


//===========================================================================
// GroupDescription::~GroupDescription
//===========================================================================
// Description: GroupDescription's destructor
//
// Constraints:    None
//
// Parameters:    None
//
// Return:      Nothing
//
//===========================================================================

GroupDescription::~GroupDescription()
{
    for( int i = 0; i < m_DescriptionList.GetNumberOfElements() ; i++ )
    {
        DrawingElementDescription* drawingElementDescription = m_DescriptionList.GetElement( i );

        if( drawingElementDescription != NULL )
        {
            delete drawingElementDescription;
            drawingElementDescription = NULL;
        }
    }
}

//===========================================================================
// GroupDescription::AddToTokenList
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
bool GroupDescription::AddToTokenList( TokenList& tokenList )
{
    tokenList.Add( g_GroupDescriptionHeader );
    
    if( !DrawingElementDescription::AddToTokenList( tokenList ) )
    {
        return false;
    }

    tokenList.Add( m_alpha );

    // Add the drawing elements
    tokenList.Add( m_DescriptionList.GetNumberOfElements() );

    for( int i = 0; i < m_DescriptionList.GetNumberOfElements(); i++ )
    {
        DrawingElementDescription* description = m_DescriptionList.GetElement( i );
        description->AddToTokenList( tokenList );
    }

    tokenList.Add( g_GroupDescriptionFooter );
    return true;
}


//===========================================================================
// GroupDescription::SetFromTokenList
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
bool GroupDescription::SetFromTokenList( TokenList& tokenList )
{
    PascalCString temp;
    int tempInt = 0;
    
    // Get the header
    if( !tokenList.GetNext( temp ) )
    {
        g_OutputMessage.Add( "GroupDescription::AddToTokenList: Cannot get header.",
                             DebugOutputMessage );
        return false;
    }

    if( temp != g_GroupDescriptionHeader )
    {
        g_OutputMessage.Add( "GroupDescription::AddToTokenList: Invalid header.",
                             DebugOutputMessage );
        return false;
    }


    if( !DrawingElementDescription::SetFromTokenList( tokenList ) )
    {
        return false;
    }


    // Get the alpha
    if( !tokenList.GetNext( m_alpha ) )
    {
        g_OutputMessage.Add( "GroupDescription::AddToTokenList: Cannot get alpha.",
                             DebugOutputMessage );
        return false;
    }


    // Get the number of elements
    int numberOfElements = 0;
    if( !tokenList.GetNext( numberOfElements ) )
    {
        g_OutputMessage.Add( "GroupDescription::AddToTokenList: Cannot get the number of elements.",
                             DebugOutputMessage );
        return false;
    }

    // Get the vertexs
    DescriptionManager descriptionManager;
    for( int i = 0; i < numberOfElements; i++ )
    {
        DrawingElementDescription* description = descriptionManager.GetNextDrawingElementDescription( tokenList );
        if( description != NULL )
        {
            m_DescriptionList.AddElementToBack( description );
        }
        else
        {
            return false;
        }
    }

    // Get the footer
    if( !tokenList.GetNext( temp ) )
    {
        g_OutputMessage.Add( "GroupDescription::AddToTokenList: Cannot get footer.",
                             DebugOutputMessage );
        return false;
    }

    if( temp != g_GroupDescriptionFooter )
    {
        g_OutputMessage.Add( "GroupDescription::AddToTokenList: Invalid footer.",
                             DebugOutputMessage );
        return false;
    }

    // All done
    return true;
}


//===========================================================================
// GroupDescription::AddDescription
//===========================================================================
// Description: This adds a description to the list.
//
// Constraints:    None
//
// Parameters:    description - The description to add
//
// Return:      true  - if it was successfull,
//              false - otherwise
//
//===========================================================================

bool GroupDescription::AddDescription( DrawingElementDescription* description )
{
    if( description == NULL )
    {
        return false;
    }
    else
    {
        return m_DescriptionList.AddElementToBack( description );
    }
}

//===========================================================================
// GroupDescription::GetNumberOfDescriptions
//===========================================================================
// Description: This returns the number of descriptions.
//
// Constraints:    None
//
// Parameters:    None
//
// Return:      number of descriptions
//
//===========================================================================

int GroupDescription::GetNumberOfDescriptions()
{
    return m_DescriptionList.GetNumberOfElements();
}


//===========================================================================
// GroupDescription::CreateHierarchyElement
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

DrawingElement* GroupDescription::CreateHierarchyElement( Page* page )
{
    Project* project = page->GetProject();
    BaseFactory* objectFactory = project->GetObjectFactory();

    Group* group = objectFactory->NewGroup();
    if( group == NULL )
    {
        g_OutputMessage.Add( "GroupDescription::CreateHierarchyElement: Out of Memory!",
                             DebugOutputMessage );
        return NULL;
    }

    group->SetPage( page );
    group->SetFromDescription( dynamic_cast<DrawingElementDescription*>( this ) );
    return group;
}


//===========================================================================
// GroupDescription::CreateHierarchyChildElement
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

DrawingElement* GroupDescription::CreateHierarchyChildElement( int index, Page* page )
{
    DrawingElementDescription* drawingElementDescription = m_DescriptionList.GetElement( index );
    if( drawingElementDescription != NULL )
    {
        return drawingElementDescription->CreateHierarchyElement( page );
    }
    else
    {
        return NULL;
    }
}


//===========================================================================
// GroupDescription::GetAlpha
//===========================================================================
// Description: Get alpha value
//
// Constraints:    None
//
// Parameters:    None
//
// Return:      Alpha value
//
//===========================================================================
int GroupDescription::GetAlpha() const
{
    return m_alpha;
}

//===========================================================================
// GroupDescription::SetAlpha
//===========================================================================
// Description: Get vertex from list
//
// Constraints:    None
//
// Parameters:    alpha - the alpha
//
// Return:      None
//
//===========================================================================
void GroupDescription::SetAlpha( int alpha )
{
    m_alpha = alpha;
}


} // End NameSpace
