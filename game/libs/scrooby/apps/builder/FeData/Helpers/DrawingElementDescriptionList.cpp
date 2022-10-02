//===========================================================================
// Copyright (C) 2000 Radical Entertainment Ltd.  All rights reserved.
//
// Component:   FE Builder Helper Classes
//
// Description: This contains the DrawingElementDescriptionList class.
//
// Authors:     Ryan Bedard
//
//===========================================================================

//===========================================================================
// Includes
//===========================================================================

#include "DrawingElementDescriptionList.h"
#include "DescriptionManager.h"
#include "OutputMessage.h"
#include "TokenList.h"

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
// DrawingElementDescriptionList::DrawingElementDescriptionList
//===========================================================================
// Description: DrawingElementDescriptionList's constructor
//
// Constraints:    None
//
// Parameters:    None
//
// Return:      Nothing
//
//===========================================================================

DrawingElementDescriptionList::DrawingElementDescriptionList() :
m_List()
{
}


//===========================================================================
// DrawingElementDescriptionList::~DrawingElementDescriptionList
//===========================================================================
// Description: DrawingElementDescriptionList's destructor
//
// Constraints:    None
//
// Parameters:    None
//
// Return:      Nothing
//
//===========================================================================

DrawingElementDescriptionList::~DrawingElementDescriptionList()
{
    while( m_List.GetNumberOfElements() > 0 )
    {
        DrawingElementDescription* description = m_List.GetElement( 0 );
        if( description != NULL )
        {
            delete description;
            description = NULL;
        }
        m_List.RemoveElement( 0 );
    }
}


//===========================================================================
// DrawingElementDescriptionList::SetFromTokenList
//===========================================================================
// Description: This sets up the list from the given token list.
//
// Constraints:    None
//
// Parameters:    tokenList - token list to construct the list from
//
// Return:      true  - if successful,
//              false - otherwise
//
//===========================================================================

bool DrawingElementDescriptionList::SetFromTokenList( TokenList& tokenList )
{
    PascalCString descriptionType;

    // Find the element type
    if( !tokenList.PeekNext( descriptionType ) )
    {
        g_OutputMessage.Add( "DrawingElementDescriptionList::SetFromTokenList: Cannot get the type of the element from the token list!",
                             DebugOutputMessage );
        return false;
    }

    // Add all the elements in the token list
    DescriptionManager descriptionManager;

    do
    {
        DrawingElementDescription* description = descriptionManager.GetNextDrawingElementDescription( tokenList );
        if( description == NULL )
        {
            return false;
        }
        else
        {
            // Add the new description to the list
            m_List.AddElementToBack( description );
        }
    } 
    while( tokenList.PeekNext( descriptionType ) );

    return true;
}


//===========================================================================
// DrawingElementDescriptionList::GetNumberOfDescriptions
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

int DrawingElementDescriptionList::GetNumberOfDescriptions()
{
    return m_List.GetNumberOfElements();
}


//===========================================================================
// PolygonDescription::CreateHierarchyElement
//===========================================================================
// Description: This create a new hierarchy element based on the description.
//              Note: The caller is responsible for deleting the element
//
// Constraints:    None
//
// Parameters:    index - the index of the description to use for the creation.
//              objectFactory - object factory used to make the element.
//
// Return:      A pointer to the new element, or NULL if an error occurred.
//
//===========================================================================

DrawingElement* DrawingElementDescriptionList::CreateHierarchyElement( int index, Page* page )
{
    DrawingElementDescription* description = m_List.GetElement( index );
    if( description != NULL )
    {
        return description->CreateHierarchyElement( page );
    }
    else
    {
        return NULL;
    }
}



} // End NameSpace
