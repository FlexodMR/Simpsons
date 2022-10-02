//===========================================================================
// Copyright (C) 2000 Radical Entertainment Ltd.  All rights reserved.
//
// Component:   FE Builder Data Structure
//
// Description: This contains the MultiTextDescription class.
//
// Authors:     Ryan Bedard
//
//===========================================================================

//===========================================================================
// Includes
//===========================================================================

#include "MultiTextDescription.h"
#include "..\MultiText.h"
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
// MultiTextDescription::MultiTextDescription
//===========================================================================
// Description: MultiTextDescription's constructor
//
// Constraints:    None
//
// Parameters:    None
//
// Return:      Nothing
//
//===========================================================================

MultiTextDescription::MultiTextDescription() :
m_TextList(),
m_CurrentText( 0 )
{
}


//===========================================================================
// MultiTextDescription::~MultiTextDescription
//===========================================================================
// Description: MultiTextDescription's destructor
//
// Constraints:    None
//
// Parameters:    None
//
// Return:      Nothing
//
//===========================================================================

MultiTextDescription::~MultiTextDescription()
{
    while( m_TextList.GetNumberOfElements() > 0 )
    {
        TextDescription* TextDescription = m_TextList.GetElement( 0 );
        if( TextDescription != NULL )
        {
            delete TextDescription;
            TextDescription = NULL;
        }
        m_TextList.RemoveElement( 0 );
    }
}


//===========================================================================
// MultiTextDescription::AddToTokenList
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
bool MultiTextDescription::AddToTokenList( TokenList& tokenList )
{
    tokenList.Add( g_MultiTextDescriptionHeader );
    
    if( !BoxDrawingElementDescription::AddToTokenList( tokenList ) )
    {
        return false;
    }
   
    // Add the Text names
    tokenList.Add( m_TextList.GetNumberOfElements() );

    for( int i = 0; i < m_TextList.GetNumberOfElements(); i++ )
    {
        TextDescription* TextDescription = m_TextList.GetElement( i );
        if( TextDescription != NULL )
        {
            tokenList.Add( TextDescription->m_TextType );
            tokenList.Add( TextDescription->m_TextBibleName );
            tokenList.Add( TextDescription->m_TextBibleFileName );
            tokenList.Add( TextDescription->m_TextBibleStringName );
            tokenList.Add( TextDescription->m_HardCodedString );
        }
    }

    tokenList.Add( m_CurrentText );

    tokenList.Add( m_TextStyleName );
    tokenList.Add( m_TextStyleFileName );

    tokenList.Add( g_MultiTextDescriptionFooter );
    return true;
}


//===========================================================================
// MultiTextDescription::SetFromTokenList
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
bool MultiTextDescription::SetFromTokenList( TokenList& tokenList )
{
    PascalCString temp;
    
    // Get the header
    if( !tokenList.GetNext( temp ) )
    {
        g_OutputMessage.Add( "MultiTextDescription::AddToTokenList: Cannot get header.",
                             DebugOutputMessage );
        return false;
    }

    if( temp != g_MultiTextDescriptionHeader )
    {
        g_OutputMessage.Add( "MultiTextDescription::AddToTokenList: Invalid header.",
                             DebugOutputMessage );
        return false;
    }


    if( !BoxDrawingElementDescription::SetFromTokenList( tokenList ) )
    {
        return false;
    }


    // Get the number of vertexs
    int numberOfTexts = 0;
    if( !tokenList.GetNext( numberOfTexts ) )
    {
        g_OutputMessage.Add( "MultiTextDescription::AddToTokenList: Cannot get the number of Texts.",
                             DebugOutputMessage );
        return false;
    }

    // Get the Texts
    for( int i = 0; i < numberOfTexts; i++ )
    {
        int textType;
        PascalCString textBibleName;
        PascalCString textBibleFileName;
        PascalCString textBibleStringName;
        PascalCString hardCodedString;

        if( !tokenList.GetNext( textType ) || 
            !tokenList.GetNext( textBibleName ) || 
            !tokenList.GetNext( textBibleFileName ) || 
            !tokenList.GetNext( textBibleStringName ) || 
            !tokenList.GetNext( hardCodedString ) )
        {
            g_OutputMessage.Add( "MultiTextDescription::AddToTokenList: Cannot get the Text information.",
                                 DebugOutputMessage );
            return false;
        }

        AddTextDescription( (TextTypeEnum)textType,
                            textBibleName,
                            textBibleFileName,
                            textBibleStringName,
                            hardCodedString );
    }

    if( !tokenList.GetNext( m_CurrentText ) )
    {
        g_OutputMessage.Add( "MultiTextDescription::AddToTokenList: Cannot get current Text.",
                             DebugOutputMessage );
        return false;
    }


    // Get the text style info
    if( !tokenList.GetNext( m_TextStyleName ) ||
        !tokenList.GetNext( m_TextStyleFileName ) )
    {
        g_OutputMessage.Add( "MultiTextDescription::AddToTokenList: Cannot get text style info.",
                             DebugOutputMessage );
        return false;
    }


    // Get the footer
    if( !tokenList.GetNext( temp ) )
    {
        g_OutputMessage.Add( "MultiTextDescription::AddToTokenList: Cannot get footer.",
                             DebugOutputMessage );
        return false;
    }

    if( temp != g_MultiTextDescriptionFooter )
    {
        g_OutputMessage.Add( "MultiTextDescription::AddToTokenList: Invalid footer.",
                             DebugOutputMessage );
        return false;
    }

    // All done
    return true;
}


//===========================================================================
// MultiTextDescription::CreateHierarchyElement
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

DrawingElement* MultiTextDescription::CreateHierarchyElement( Page* page )
{
    Project* project = page->GetProject();
    BaseFactory* objectFactory = project->GetObjectFactory();

    MultiText* multiText = objectFactory->NewMultiText();
    if( multiText == NULL )
    {
        g_OutputMessage.Add( "MultiTextDescription::CreateHierarchyElement: Out of Memory!",
                             DebugOutputMessage );
        return NULL;
    }

    multiText->SetPage( page );
    multiText->SetFromDescription( this );
    return multiText;
}


//===========================================================================
// MultiTextDescription::AddTextDescription
//===========================================================================
// Description: Add an Text description to the list
//
// Constraints:    None
//
// Parameters:    textType            - the text type
//              textBibleName       - the resource name of the text bible
//              textBibleFileName   - the file name of the text bible
//              textBibleStringName - the name of the text bible string
//              hardCodedString     - the hard coded string
//
// Return:      true  - if successful,
//              false - otherwise
//
//===========================================================================

bool MultiTextDescription::AddTextDescription( TextTypeEnum  textType,
                                               PascalCString& textBibleName,
                                               PascalCString& textBibleFileName,
                                               PascalCString& textBibleStringName,
                                               PascalCString& hardCodedString )
{
    TextDescription* newTextDescription = new TextDescription;
    if( newTextDescription == NULL )
    {
        g_OutputMessage.Add( "MultiTextDescription::AddTextDescription: Out of Memory!", 
                             ErrorOutputMessage );
        return false;
    }

    newTextDescription->m_TextType            = textType;
    newTextDescription->m_TextBibleName       = textBibleName;
    newTextDescription->m_TextBibleFileName   = textBibleFileName;
    newTextDescription->m_TextBibleStringName = textBibleStringName;
    newTextDescription->m_HardCodedString     = hardCodedString;

    return m_TextList.AddElementToBack( newTextDescription );
}


//===========================================================================
// MultiTextDescription::GetCurrentText
//===========================================================================
// Description: This gets the index of the current Text.
//
// Constraints:    None
//
// Parameters:    None
//
// Return:      the index of the current Text
//
//===========================================================================

int MultiTextDescription::GetCurrentText()
{
    return m_CurrentText;
}


//===========================================================================
// MultiTextDescription::SetCurrentText
//===========================================================================
// Description: This sets the index of the current Text.
//
// Constraints:    None
//
// Parameters:    index - the index of the Text to set
//
// Return:      Nothing
//
//===========================================================================

void MultiTextDescription::SetCurrentText( int index )
{
    if(( index < 0 ) || ( index >= m_TextList.GetNumberOfElements() ))
    {
        g_OutputMessage.Add( "MultiTextDescription::SetCurrentText: Bad Index!", 
                             DebugOutputMessage );
    }
    else
    {
        m_CurrentText = index;
    }
}


//===========================================================================
// MultiTextDescription::GetNumberOfTexts
//===========================================================================
// Description: Returns the number of Texts in the list
//
// Constraints:    None
//
// Parameters:    None
//
// Return:      int - the number
//
//===========================================================================

int MultiTextDescription::GetNumberOfTexts()
{
    return m_TextList.GetNumberOfElements();
}


//===========================================================================
// MultiTextDescription::GetTextName
//===========================================================================
// Description: Retrieve an Text description from the list
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

bool MultiTextDescription::GetTextDescription( int index,
                                               TextTypeEnum&  textType,
                                               PascalCString& textBibleName,
                                               PascalCString& textBibleFileName,
                                               PascalCString& textBibleStringName,
                                               PascalCString& hardCodedString )
{
    TextDescription* TextDescription = m_TextList.GetElement( index );
    if( TextDescription != NULL )
    {
        textType            = TextDescription->m_TextType;
        textBibleName       = TextDescription->m_TextBibleName;
        textBibleFileName   = TextDescription->m_TextBibleFileName;
        textBibleStringName = TextDescription->m_TextBibleStringName;
        hardCodedString     = TextDescription->m_HardCodedString;
        return true;
    }
    else
    {
        return false;
    }
}


//===========================================================================
// MultiTextDescription::SetTextStyleDescription
//===========================================================================
// Description: This sets the text style description
//
// Constraints:    None
//
// Parameters:    textStyleName - text style name
//              textStyleFileName - text style file name
//
// Return:      true  - if successful,
//              false - otherwise
//
//===========================================================================

bool MultiTextDescription::SetTextStyleDescription( PascalCString& textStyleName,
                                                    PascalCString& textStyleFileName )
{
    m_TextStyleName = textStyleName;
    m_TextStyleFileName = textStyleFileName;
    return true;
}

//===========================================================================
// MultiTextDescription::GetTextStyleDescription
//===========================================================================
// Description: This sets the text style description
//
// Constraints:    None
//
// Parameters:    textStyleName - string to place the name
//              textStyleFileName - string to place the fileName
//
// Return:      true  - if successful,
//              false - otherwise
//
//===========================================================================

bool MultiTextDescription::GetTextStyleDescription( PascalCString& textStyleName,
                                                    PascalCString& textStyleFileName )
{
    textStyleName = m_TextStyleName;
    textStyleFileName = m_TextStyleFileName;
    return true;
}


} // End NameSpace
