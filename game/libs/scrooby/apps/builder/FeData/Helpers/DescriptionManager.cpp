//===========================================================================
// Copyright (C) 2000 Radical Entertainment Ltd.  All rights reserved.
//
// Component:   FE Builder Helper Classes
//
// Description: This contains the DescriptionManager class.
//
// Authors:     Ryan Bedard
//
//===========================================================================

//===========================================================================
// Includes
//===========================================================================

#include "DescriptionManager.h"
#include "OutputMessage.h"
#include "TokenList.h"

#include "..\NamedElements\Descriptions\GroupDescription.h"
#include "..\NamedElements\Descriptions\MultiSpriteDescription.h"
#include "..\NamedElements\Descriptions\MultiTextDescription.h"
#include "..\NamedElements\Descriptions\PolygonDescription.h"
#include "..\NamedElements\Descriptions\SpriteDescription.h"

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
// DescriptionManager::DescriptionManager
//===========================================================================
// Description: DescriptionManager's constructor
//
// Constraints:    None
//
// Parameters:    None
//
// Return:      Nothing
//
//===========================================================================

DescriptionManager::DescriptionManager()
{
}


//===========================================================================
// DescriptionManager::~DescriptionManager
//===========================================================================
// Description: DescriptionManager's destructor
//
// Constraints:    None
//
// Parameters:    None
//
// Return:      Nothing
//
//===========================================================================

DescriptionManager::~DescriptionManager()
{
}


//===========================================================================
// DescriptionManager::SetFromTokenList
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

DrawingElementDescription* DescriptionManager::GetNextDrawingElementDescription( TokenList& tokenList )
{
    PascalCString descriptionType;

    // Find the element type
    if( !tokenList.PeekNext( descriptionType ) )
    {
        g_OutputMessage.Add( "DescriptionManager::GetNextDrawingElementDescription: Cannot get the type of the element from the token list!",
                             DebugOutputMessage );
        return NULL;
    }

    DrawingElementDescription* newDescription = NULL;

    // What kind of description should we make
    if( descriptionType == g_GroupDescriptionHeader )
    {
        newDescription = new GroupDescription;
    }
    else if( descriptionType == g_MultiSpriteDescriptionHeader )
    {
        newDescription = new MultiSpriteDescription;
    }
    else if( descriptionType == g_MultiTextDescriptionHeader )
    {
        newDescription = new MultiTextDescription;
    }
    else if( descriptionType == g_PolygonDescriptionHeader )
    {
        newDescription = new PolygonDescription;
    }
    else if( descriptionType == g_SpriteDescriptionHeader )
    {
        newDescription = new SpriteDescription;
    }
    else
    {
        g_OutputMessage.Add( "DescriptionManager::GetNextDrawingElementDescription: Invalid element type!",
                             DebugOutputMessage );
        return NULL;
    }

    // Did we run out of memory
    if( newDescription == NULL )
    {
        g_OutputMessage.Add( "DescriptionManager::GetNextDrawingElementDescription: Out of Memory!",
                             ErrorOutputMessage );
        return NULL;
    }

    if( !newDescription->SetFromTokenList( tokenList ) )
    {
        return NULL;
    }

    return newDescription;
}



} // End NameSpace
