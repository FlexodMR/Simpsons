//===========================================================================
// Copyright (C) 2000 Radical Entertainment Ltd.  All rights reserved.
//
// Component:   FE Builder Data Structure
//
// Description: This contains the TextLoader class.
//
// Authors:     Eric Tong, Ryan Bedard
//
//===========================================================================

//===========================================================================
// Includes
//===========================================================================

#include "..\..\stdafx.h"
#include "TextLoader.h"
#include "..\NamedElements\Text.h"
#include "..\Helpers\OutputMessage.h"
#include "XML\XMLTree.h"
#include "..\Factories\BaseFactory.h"
#include "..\NamedElements\Project.h"
#include "..\NamedElements\Page.h"

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
// TextLoader::TextLoader
//===========================================================================
// Description: TextLoader's constructor
//
// Constraints:    None
//
// Parameters:    None
//
// Return:      Nothing
//
//===========================================================================

TextLoader::TextLoader()
{
}


//===========================================================================
// TextLoader::~TextLoader
//===========================================================================
// Description: TextLoader's destructor
//
// Constraints:    None
//
// Parameters:    None
//
// Return:      Nothing
//
//===========================================================================

TextLoader::~TextLoader()
{
}


//===========================================================================
// TextLoader::Load
//===========================================================================
// Description: This is used to load a Text from a file.
//
// Constraints:    None
//
// Parameters:    None
//
// Return:      A pointer to a newly created Text or NULL if an error
//              occured.
//
//===========================================================================

Text* TextLoader::Load( XMLTree &loadTree, Page* thePage )
{
    PascalCString buffer;

    // Get the project
    Project* theProject = thePage->GetProject();
    
    // Get the object factory
    BaseFactory* objectFactory = theProject->GetObjectFactory();

    // Create the new Text
    Text* newText = objectFactory->NewText();

    if( newText == NULL )
    {
        g_OutputMessage.Add( "ProjectLoader::Load: Out of memory!",
                             ErrorOutputMessage );
        return NULL;
    }

    // Set the project
    newText->SetPage( thePage );

    
    // Load the font name
    PascalCString FontName;
    if( loadTree.SetCurrentElementByName( g_TextTagFont ) )
    {
        if( loadTree.GetAttribute( g_TextTagFontName, FontName ) )
        {
         //   newText->SetFontName( FontName );
        }
    }

    ResourceManager* resourceManager = thePage->GetResourceManager();

    // Load the text style
    PascalCString textStyleName;
    if( loadTree.SetCurrentElementByName( g_TextTagTextStyle ) )
    {
        if( loadTree.GetAttribute( g_TextTagTextStyleName, textStyleName ) )
        {
            TextStyle* textStyle = resourceManager->GetTextStyle( textStyleName );
            newText->SetTextStyle( textStyle );
        }
    }

    if( loadTree.SetCurrentElementByName( g_TextTagShadow ) )
    {
        PascalCString shadowEnabled;
        if( loadTree.GetAttribute( g_TextTagShadowEnabled, shadowEnabled ) )
        {
            newText->SetShadowEnabled( shadowEnabled.EqualsInsensitive( "true" ) );
        }
        int r, g, b, a;
        if( loadTree.GetAttribute( g_TextTagShadowRed, &r ) &&
            loadTree.GetAttribute( g_TextTagShadowGreen, &g ) &&
            loadTree.GetAttribute( g_TextTagShadowBlue, &b ) &&
            loadTree.GetAttribute( g_TextTagShadowAlpha, &a ) )
        {
            newText->SetShadowColor( r, g, b, a );
        }
        int x, y;
        if( loadTree.GetAttribute( g_TextTagShadowOffsetX, &x ) &&
            loadTree.GetAttribute( g_TextTagShadowOffsetY, &y ) )
        {
            newText->SetShadowOffset( x, y );
        }
    }

    // Load the string (determine if it is hardcoded or text bible
    PascalCString hardCodedString;
    if( loadTree.SetCurrentElementByName( g_TextTagString ) )
    {
        if( loadTree.GetAttribute( g_TextTagStringHardCodedString, hardCodedString ) )
        {
            newText->AddHardCodedString( hardCodedString );
        }
        else
        {
            // If hardcoded string is blank, then assume it's a text bible stirng
            PascalCString textBibleName;
            PascalCString textBibleStringId;
            
            loadTree.GetAttribute( g_TextTagStringTextBible, textBibleName );
            loadTree.GetAttribute( g_TextTagStringStringId, textBibleStringId );

            TextBible* textBible = resourceManager->GetTextBible( textBibleName );
            newText->AddTextBibleString( textBible, textBibleStringId );
        }
    }

    return newText;
}


} // End NameSpace
