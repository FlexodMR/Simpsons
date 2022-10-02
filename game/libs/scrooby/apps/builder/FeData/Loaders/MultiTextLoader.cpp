//===========================================================================
// Copyright (C) 2000 Radical Entertainment Ltd.  All rights reserved.
//
// Component:   FE Builder Data Structure
//
// Description: This contains the MultiTextLoader class.
//
// Authors:     Eric Tong, Ryan Bedard
//
//===========================================================================

//===========================================================================
// Includes
//===========================================================================

#include "..\..\stdafx.h"
#include "MultiTextLoader.h"
#include "..\NamedElements\MultiText.h"
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
// MultiTextLoader::MultiTextLoader
//===========================================================================
// Description: MultiTextLoader's constructor
//
// Constraints:    None
//
// Parameters:    None
//
// Return:      Nothing
//
//===========================================================================

MultiTextLoader::MultiTextLoader()
{
}


//===========================================================================
// MultiTextLoader::~MultiTextLoader
//===========================================================================
// Description: MultiTextLoader's destructor
//
// Constraints:    None
//
// Parameters:    None
//
// Return:      Nothing
//
//===========================================================================

MultiTextLoader::~MultiTextLoader()
{
}


//===========================================================================
// MultiTextLoader::Load
//===========================================================================
// Description: This is used to load a MultiText from a file.
//
// Constraints:    None
//
// Parameters:    None
//
// Return:      A pointer to a newly created MultiText or NULL if an error
//              occured.
//
//===========================================================================

MultiText* MultiTextLoader::Load( XMLTree &loadTree, Page* thePage )
{
    PascalCString buffer;

    // Get the project
    Project* theProject = thePage->GetProject();

    // Get the object factory
    BaseFactory* objectFactory = theProject->GetObjectFactory();

    // Create the new Text
    MultiText* newMultiText = objectFactory->NewMultiText();
    
    if( newMultiText == NULL )
    {
        g_OutputMessage.Add( "MultiTextLoader::Load: Out of memory!",
                             ErrorOutputMessage );
        return NULL;
    }

    // Set the page
    newMultiText->SetPage( thePage );

    // Load the font name
    PascalCString FontName;
    if( loadTree.SetCurrentElementByName( g_MultiTextTagFont ) )
    {
        if( loadTree.GetAttribute( g_MultiTextTagFontName, FontName ) )
        {
         //   newMultiText->SetFontName( FontName );
        }
    }

    ResourceManager* resourceManager = thePage->GetResourceManager();

    // Load the text style
    PascalCString textStyleName;
    if( loadTree.SetCurrentElementByName( g_MultiTextTagTextStyle ) )
    {
        if( loadTree.GetAttribute( g_MultiTextTagTextStyleName, textStyleName ) )
        {
            TextStyle* textStyle = resourceManager->GetTextStyle( textStyleName );
            newMultiText->SetTextStyle( textStyle );
        }
    }

    if( loadTree.SetCurrentElementByName( g_MultiTextTagShadow ) )
    {
        PascalCString shadowEnabled;
        if( loadTree.GetAttribute( g_MultiTextTagShadowEnabled, shadowEnabled ) )
        {
            newMultiText->SetShadowEnabled( shadowEnabled.EqualsInsensitive( "true" ) );
        }
        int r, g, b, a;
        if( loadTree.GetAttribute( g_MultiTextTagShadowRed, &r ) &&
            loadTree.GetAttribute( g_MultiTextTagShadowGreen, &g ) &&
            loadTree.GetAttribute( g_MultiTextTagShadowBlue, &b ) &&
            loadTree.GetAttribute( g_MultiTextTagShadowAlpha, &a ) )
        {
            newMultiText->SetShadowColor( r, g, b, a );
        }
        int x, y;
        if( loadTree.GetAttribute( g_MultiTextTagShadowOffsetX, &x ) &&
            loadTree.GetAttribute( g_MultiTextTagShadowOffsetY, &y ) )
        {
            newMultiText->SetShadowOffset( x, y );
        }
    }

    // Load the list of text
    PascalCString hardCodedString;
    PascalCString textBibleName;
    PascalCString textBibleStringId;

    XMLTree* stringsTree = loadTree.GetSubTreeByName( g_MultiTextTagStrings );
    if( stringsTree != NULL )
    {
        int i = 0;
        while( stringsTree->SetCurrentElementByIndex( i ) )
        {
            if( stringsTree->GetAttribute( g_MultiTextTagStringHardCodedString, hardCodedString ) )
            {
                newMultiText->AddHardCodedString( hardCodedString );
            }
            else
            {
                // If hardcoded string is blank, then assume it's a text bible stirng
                stringsTree->GetAttribute( g_MultiTextTagStringTextBible, textBibleName );
                stringsTree->GetAttribute( g_MultiTextTagStringStringId, textBibleStringId );

                TextBible* textBible = resourceManager->GetTextBible( textBibleName );
                newMultiText->AddTextBibleString( textBible, textBibleStringId );
            }
            i++;
        }

        delete stringsTree;
    }

    // Load the current index
    int currentIndex;
    if( loadTree.SetCurrentElementByName( g_MultiTextTagCurrentIndex ) )
    {
        if( loadTree.GetAttribute( g_MultiTextTagCurrentIndexValue, &currentIndex ) )
        {
            newMultiText->SetCurrentText( currentIndex );
        }
    }

    return newMultiText;
}


} // End NameSpace
