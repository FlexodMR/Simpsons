//===========================================================================
// Copyright (C) 2000 Radical Entertainment Ltd.  All rights reserved.
//
// Component:   FE Builder Data Structure
//
// Description: This contains the MultiText class.
//
// Authors:     Ryan Bedard, Eric Tong
//
//===========================================================================

//===========================================================================
// Includes
//===========================================================================
#include <assert.h>
#include "MultiText.h"
#include "Page.h"
#include "Descriptions\MultiTextDescription.h"
#include "Strings\UnicodeString.h"
#include "..\Helpers\NameManager.h"
#include "..\Helpers\OutputMessage.h"
#include "..\Helpers\ResourceManager.h"
#include "..\Resources\TextBible.h"
#include "..\Resources\TextStyle.h"
#include "..\ResourceFiles\TextBibleFile.h"
#include <tlColour.hpp>
#include <tlScroobyProjectChunk.hpp>

//===========================================================================
// Local Constants, Typedefs, and Macros
//===========================================================================

//===========================================================================
// Global Data, Local Data, Local Classes
//===========================================================================
int g_MultiTextVersion = 17;

//===========================================================================
// Member Functions
//===========================================================================

namespace FeData
{

//===========================================================================
// MultiText::MultiText
//===========================================================================
// Description: MultiText's constructor
//
// Constraints:    None
//
// Parameters:    None
//
// Return:      Nothing
//
//===========================================================================

MultiText::MultiText() :
m_TextList(),
m_FontName( "" ),
m_CurrentText( 0 ),
m_TextStyle( NULL ),
m_ShadowEnabled( false ),
m_xShadowOffset( -1 ),
m_yShadowOffset( -2 )
{
    m_ShadowColour.Set( 0, 0, 0, 0x80 );
    
}


//===========================================================================
// MultiText::~MultiText
//===========================================================================
// Description: MultiText's destructor
//
// Constraints:    None
//
// Parameters:    None
//
// Return:      Nothing
//
//===========================================================================

MultiText::~MultiText()
{
    ClearTextList();

    Page* page = GetPage();
    ResourceManager* resourceManager = page->GetResourceManager();

    if( m_TextStyle != NULL )
    {
         resourceManager->Release( (Resource**)&m_TextStyle );
    }
}


//===========================================================================
// MultiText::GetNumberOfTexts
//===========================================================================
// Description: Returns the number of text strings in the list
//
// Constraints:    None
//
// Parameters:    None
//
// Return:      int - the number
//
//===========================================================================

int MultiText::GetNumberOfTexts()
{
    return m_TextList.GetNumberOfElements();
}


//===========================================================================
// MultiText::AddTextBibleString
//===========================================================================
// Description: Add a Text to the list
//
// Constraints:    None
//
// Parameters:    textBible - a pointer to the text bible to use
//              string    - the name of the text from the text bible to use
//
// Return:      bool - whether action was successful
//
//===========================================================================
bool MultiText::AddTextBibleString( TextBible* textBible, PascalCString& string )
{
    TextStruct* text = new TextStruct;
    if( text == NULL )
    {
        g_OutputMessage.Add( "MultiText::AddTextBibleString: Out of Memory!", 
                             ErrorOutputMessage );
        return false;
    }

    text->m_hardCodedStringName = "";
    text->m_textBible = textBible;
    text->m_textBibleStringName = string;
    text->m_textType = TextBibleString;

    return m_TextList.AddElementToBack( text );
}


//===========================================================================
// MultiText::AddHardCodedString
//===========================================================================
// Description: Add a Text to the list
//
// Constraints:    None
//
// Parameters:    string - the hardcoded string to use
//
// Return:      bool - whether action was successful
//
//===========================================================================
bool MultiText::AddHardCodedString( PascalCString& string )
{
    TextStruct* text = new TextStruct;
    if( text == NULL )
    {
        g_OutputMessage.Add( "MultiText::AddHardCodedString: Out of Memory!", 
                             ErrorOutputMessage );
        return false;
    }

    text->m_hardCodedStringName = string;
    text->m_textBible = NULL;
    text->m_textBibleStringName = "";
    text->m_textType = HardCodedString;

    return m_TextList.AddElementToBack( text );
}


//===========================================================================
// MultiText::RemoveText
//===========================================================================
// Description: Remove a Text from the list
//
// Constraints:    None
//
// Parameters:    index - the index from the list to remove
//
// Return:      bool - whether action was successful
//
//===========================================================================
bool MultiText::RemoveText( int index )
{
    Page* page = GetPage();
    ResourceManager* resourceManager = page->GetResourceManager();

    TextStruct* text = m_TextList.GetElement( index );

    if( text != NULL )
    {
        if( text->m_textBible != NULL )
        {
            resourceManager->Release( (Resource**)&text->m_textBible );
        }

        delete text;
        text = NULL;
    }

    return m_TextList.RemoveElement( index );
}


//===========================================================================
// MultiText::GetString
//===========================================================================
// Description: Retrieve a string from the list.  This works no matter what
//              the type of the string is.
//
// Constraints:    None
//
// Parameters:    index  - the index of the string to get
//              string - place to put the string
//
// Return:      true  - everything was found fine,
//              false - otherwise
//
//===========================================================================
bool MultiText::GetString( int index, UnicodeString &string )
{
    TextTypeEnum type;

    if( !GetTextType( index, type ) )
    {
        return false;
    }

    if( type == TextBibleString )
    {
        TextBible* textBible = GetTextBible( index );
        if( textBible == NULL )
        {
            return false;
        }

        PascalCString textBibleStringName;
        if( !GetTextBibleString( index, textBibleStringName ) )
        {
            return false;
        }

        TextBibleFile* textBibleFile = dynamic_cast<TextBibleFile*>(textBible->GetResourceFile());
        if( textBibleFile == NULL )
        {
            return false;
        }

        return textBibleFile->GetString( textBibleStringName, string );
    }
    else
    {
        PascalCString hardCodedString;

        if( !GetHardCodedString( index, hardCodedString ) )
        {
            return false;
        }

        string.ReadAscii( hardCodedString );
        return true;
    }
}

//===========================================================================
// MultiText::GetTextDescription
//===========================================================================
// Description: Retrieve a discription of a string from the list.
//
// Constraints:    None
//
// Parameters:    index  - the index of the string to get
//              description - place to put the description
//
// Return:      true  - everything was found fine,
//              false - otherwise
//
//===========================================================================
bool MultiText::GetTextDescription( int index, PascalCString &description )
{
    TextTypeEnum type;

    if( !GetTextType( index, type ) )
    {
        return false;
    }

    if( type == TextBibleString )
    {
        PascalCString textBibleName;
        if( !GetTextBibleName( index, textBibleName ) )
        {
            return false;
        }

        PascalCString textBibleStringName;
        if( !GetTextBibleString( index, textBibleStringName ) )
        {
            return false;
        }

        description = textBibleName;
        description += " - ";
        description += textBibleStringName;
        return true;
    }
    else
    {
        PascalCString hardCodedString;

        if( !GetHardCodedString( index, hardCodedString ) )
        {
            return false;
        }

        description = hardCodedString;
        return true;
    }
}


//===========================================================================
// MultiText::GetTextBible
//===========================================================================
// Description: Retrieve a text bible from the list
//
// Constraints:    None
//
// Parameters:    index - the index from the list to get
//
// Return:      the text bible from the list, or NULL if there is not text
//              bible
//
//===========================================================================
TextBible* MultiText::GetTextBible( int index )
{
    TextStruct* text = m_TextList.GetElement( index );

    if( text == NULL )
    {
        return NULL;
    }

    return text->m_textBible;
}



//===========================================================================
// MultiText::GetTextBibleName
//===========================================================================
// Description: Retrieve a text bible name from the list
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
bool MultiText::GetTextBibleName( int index, PascalCString &name )
{
    TextStruct* text = m_TextList.GetElement( index );

    if( (text == NULL) || (text->m_textBible == NULL) )
    {
        return false;
    }
    else
    {
        name = text->m_textBible->GetName();
        return true;
    }
}


//===========================================================================
// MultiText::GetTextBibleString
//===========================================================================
// Description: Retrieve a text string name from the list
//
// Constraints:    None
//
// Parameters:    index - the index from the list to get
//              bibleString - the text bible string to return
//
// Return:      bool - whether action was successful
//
//===========================================================================
bool MultiText::GetTextBibleString( int index, PascalCString& bibleString )
{
    TextStruct* text = m_TextList.GetElement( index );

    if( text == NULL )
    {
        return false;
    }

    bibleString = text->m_textBibleStringName;
    return true;
}


//===========================================================================
// MultiText::GetHardCodedString
//===========================================================================
// Description: Retrieve a text string name from the list
//
// Constraints:    None
//
// Parameters:    index - the index from the list to get
//              bibleString - the hard coded string to return
//
// Return:      bool - whether action was successful
//
//===========================================================================
bool MultiText::GetHardCodedString( int index, PascalCString& hardCodedString )
{
    TextStruct* text = m_TextList.GetElement( index );

    if( text == NULL )
    {
        return false;
    }

    hardCodedString = text->m_hardCodedStringName;
    return true;
}


//===========================================================================
// MultiText::GetTextType
//===========================================================================
// Description: Retrieve a text type from the list
//
// Constraints:    None
//
// Parameters:    index - the index from the list to get
//              type - the text type
//
// Return:      bool - whether action was successful
//
//===========================================================================
bool MultiText::GetTextType( int index, TextTypeEnum& type )
{
    TextStruct* text = m_TextList.GetElement( index );

    if( text == NULL )
    {
        return false;
    }

    type = text->m_textType;
    return true;
}

//===========================================================================
// MultiText::MakeChunk
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
tlDataChunk* MultiText::MakeChunk() const
{
    tlScroobyMultiTextChunk* chunk = new tlScroobyMultiTextChunk;
    chunk->SetName( this->GetName() );
    chunk->SetVersion( g_MultiTextVersion );
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
    chunk->SetTextStyleName( this->GetTextStyleName() );
    chunk->SetShadowEnabled( static_cast<char>(IsShadowEnabled()) );
    tlColour shadowColour( GetShadowRed(), GetShadowGreen(), GetShadowBlue(), GetShadowAlpha() );
    chunk->SetShadowColour( shadowColour.ULong() );
    chunk->SetShadowOffsetX( GetXShadowOffset() );
    chunk->SetShadowOffsetY( GetYShadowOffset() );
    chunk->SetCurrentText( GetCurrentText() );

    int size = m_TextList.GetNumberOfElements();
    int i;
    for( i = 0; i < size; i++ )
    {
        TextStruct* text = m_TextList[ i ];
        tlDataChunk* subChunk = text->MakeChunk();
        assert( subChunk != NULL );
        chunk->AppendSubChunk( subChunk );
    }
    return chunk;
}

//===========================================================================
// MultiText::GetTextStyleName
//===========================================================================
// Description: Gets text style to use
//
// Constraints:    None
//
// Parameters:    textStyleName - the name of the text style to use
//
// Return:      bool - whether action was successful
//
//===========================================================================
bool MultiText::GetTextStyleName( PascalCString& textStyleName )
{
    if( m_TextStyle != NULL )
    {
        textStyleName = m_TextStyle->GetName();
        return true;
    }
    return false;
}

//===========================================================================
// MultiText::GetTextStyleName
//===========================================================================
// Description: Gets text style to use
//
// Constraints:    None
//
// Parameters:    None
//
// Return:      the text style name
//
//===========================================================================
PascalCString MultiText::GetTextStyleName() const
{
    assert( m_TextStyle != NULL );
    return m_TextStyle->GetName();
}

//===========================================================================
// MultiText::GetTextStyle
//===========================================================================
// Description: Gets text style to use
//
// Constraints:    None
//
// Parameters:    None
//
// Return:      the pointer to the text style
//
//===========================================================================
TextStyle* MultiText::GetTextStyle()
{
    return m_TextStyle;
}

//===========================================================================
// MultiText::SetTextStyle
//===========================================================================
// Description: Sets text style to use
//
// Constraints:    None
//
// Parameters:    textStyle - the pointer to the text style
//
// Return:      bool - whether action was successful
//
//===========================================================================
bool MultiText::SetTextStyle( TextStyle* textStyle )
{
    if( m_TextStyle != NULL )
    {
        Page* page = GetPage();
        ResourceManager* resourceManager = page->GetResourceManager();
        resourceManager->Release( (Resource**)&m_TextStyle );
    }

    m_TextStyle = textStyle;
    return true;
}


//===========================================================================
// MultiText::GetCurrentText
//===========================================================================
// Description: This gets the index of the current text.
//
// Constraints:    None
//
// Parameters:    None
//
// Return:      the index of the current text
//
//===========================================================================

int MultiText::GetCurrentText() const
{
    return m_CurrentText;
}


//===========================================================================
// MultiText::SetCurrentText
//===========================================================================
// Description: This sets the index of the current text.
//
// Constraints:    None
//
// Parameters:    index - the index of the text to set
//
// Return:      Nothing
//
//===========================================================================

void MultiText::SetCurrentText( int index )
{
    if(( index < 0 ) || ( index >= m_TextList.GetNumberOfElements() ))
    {
        g_OutputMessage.Add( "MultiText::SetCurrentText: Bad Index!", 
                             DebugOutputMessage );
    }
    else
    {
        m_CurrentText = index;
    }
}


//===========================================================================
// MultiText::FillInTextList
//===========================================================================
// Description: This fills in the given textList to reflect the contents of
//              the MultiText.
//
// Constraints:    None
//
// Parameters:    textList - the text list to file
//
// Return:      true  - if the text list was filled successfully,
//              false - otherwise 
//
//===========================================================================

bool MultiText::FillInTextList( TextList& textList )
{
    textList.ClearTextList();

    for( int i = 0; i < GetNumberOfTexts(); i++ )
    {
        TextTypeEnum type;
        if( !GetTextType( i, type ) )
        {
            continue;
        }

        if( type == TextBibleString )
        {  
            PascalCString textBibleName;
            PascalCString textBibleString;
            if( GetTextBibleName( i, textBibleName ) &&
                GetTextBibleString( i, textBibleString ) )
            {
                textList.AddTextBibleString( textBibleName, textBibleString );
            }
        }
        else
        {
            PascalCString hardCodedString;
            if( GetHardCodedString( i, hardCodedString ) )
            {
                textList.AddHardCodedString( hardCodedString );
            }
        }
    }

    return true;
}


//===========================================================================
// MultiText::SetFromTextList
//===========================================================================
// Description: This sets the contents of the MulitText to reflect the given 
//              textList.
//
// Constraints:    None
//
// Parameters:    textList - the text list to file
//
// Return:      true  - if the MultiText was set successfully,
//              false - otherwise 
//
//===========================================================================

bool MultiText::SetFromTextList( TextList& textList )
{
    // Clear existing text list
    ClearTextList();

    Page* page = GetPage();
    ResourceManager* resourceManager = page->GetResourceManager();


    for( int i = 0; i < textList.GetNumberOfTexts(); i++ )
    {
        TextTypeEnum type;
        if( !textList.GetTextType( i, type ) )
        {
            continue;
        }

        if( type == TextBibleString )
        {  
            PascalCString textBibleName;
            PascalCString textBibleString;
            if( textList.GetTextBibleName( i, textBibleName ) &&
                textList.GetTextBibleString( i, textBibleString ) )
            {
                TextBible* textBible = resourceManager->GetTextBible( textBibleName );
                if( textBible != NULL )
                {
                    AddTextBibleString( textBible, textBibleString );
                }
            }
        }
        else
        {
            PascalCString hardCodedString;
            if( textList.GetHardCodedString( i, hardCodedString ) )
            {
                AddHardCodedString( hardCodedString );
            }
        }
    }

    return true;
}


//===========================================================================
// MultiText::GetDescription
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

DrawingElementDescription* MultiText::GetDescription()
{
    MultiTextDescription* description = new MultiTextDescription;
    if( description == NULL )
    {
        g_OutputMessage.Add( "MultiText::GetDescription: Out of Memory!", 
                             ErrorOutputMessage );
        return NULL;
    }

    MultiText::FillInDescription( description );
 
    return description;
}


//===========================================================================
// MultiText::SetFromDescription
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

bool MultiText::SetFromDescription( DrawingElementDescription* description ) 
{
    MultiTextDescription* multiTextDescription = dynamic_cast< MultiTextDescription* >( description );
    if( multiTextDescription == NULL )
    {
        g_OutputMessage.Add( "MultiText::SetFromDescription: Invalid description type!", 
                             DebugOutputMessage );
        return false;
    }

    // Remove the old list
    ClearTextList();

    // Set the parent settings
    if( !BoxDrawingElement::SetFromDescription( description ) )
    {
        return false;
    }

    // Set the MultiText settings
    ResourceManager* resMan = GetPage()->GetResourceManager();
       
    for( int i = 0; i < multiTextDescription->GetNumberOfTexts(); i++ )
    {
        TextTypeEnum  textType;
        PascalCString textBibleName;
        PascalCString textBibleFileName;
        PascalCString textBibleStringName;
        PascalCString hardCodedString;

        if( !multiTextDescription->GetTextDescription( i, 
                                                       textType,
                                                       textBibleName,
                                                       textBibleFileName,
                                                       textBibleStringName,
                                                       hardCodedString ) )
        {
            g_OutputMessage.Add( "MultiText::SetFromDescription: Cannot get text description!", 
                                  DebugOutputMessage );
            return false;
        }

        if( textType == TextBibleString )
        {
            FileName fileName;
            fileName.Set( textBibleFileName );

            TextBible* textBible = resMan->GetTextBibleWithoutCounting( textBibleName );
            bool haveToAddTextBible = false;
            if( textBible == NULL )
            {
                // No Text with this name, add the Text
                haveToAddTextBible = true;
            }
            else
            {
                FileName existingFileName = textBible->GetResourceFile()->GetFileName();
                if( existingFileName != fileName )
                {
                    // There is an Text with this name, however, the resource file differs.
                    NameManager nameManager;
                    if( !nameManager.MakeSureTextBibleNameIsUnique( textBibleName, GetPage() ) )
                    {
                        g_OutputMessage.Add( "MultiText::SetFromDescription: Cannot produce a unique text bible name!", 
                                             DebugOutputMessage );
                        return false;
                    }

                    // Add Text under new name
                    haveToAddTextBible = true;
                }
            }
        
            // Do we add the Text Bible
            if( haveToAddTextBible )
            {
                if( !resMan->AddTextBible( textBibleName, fileName, GetPage()->GetProject() ) )
                {
                    g_OutputMessage.Add( "MultiText::SetFromDescription: Cannot add new text bible!", 
                                         DebugOutputMessage );
                    return false;
                }
            }

            // Get a counted copy of the Text Bible
            textBible = resMan->GetTextBible( textBibleName );
            if( textBible == NULL )
            {
                g_OutputMessage.Add( "MultiText::SetFromDescription: Cannot get the text bible!", 
                                     DebugOutputMessage );
            }

            if( !AddTextBibleString( textBible, textBibleStringName ) )
            {
                return false;
            }
        }
        else
        {
            if( !AddHardCodedString( hardCodedString ) )
            {
                return false;
            }
        }
    }   

    SetCurrentText( multiTextDescription->GetCurrentText() );


    // Set the text style
    PascalCString textStyleName;
    PascalCString textStyleFileName;

    if( !multiTextDescription->GetTextStyleDescription( textStyleName,
                                                        textStyleFileName ) )
    {
        g_OutputMessage.Add( "MultiText::SetFromDescription: Cannot get text style description!", 
                              DebugOutputMessage );
        return false;
    }

    FileName fileName;
    fileName.Set( textStyleFileName );

    TextStyle* textStyle = resMan->GetTextStyleWithoutCounting( textStyleName );
    bool haveToAddTextStyle = false;
    if( textStyle == NULL )
    {
        // No Text with this name, add the Text
        haveToAddTextStyle = true;
    }
    else
    {
        FileName existingFileName = textStyle->GetResourceFile()->GetFileName();
        if( existingFileName != fileName )
        {
            // There is an Text with this name, however, the resource file differs.
            NameManager nameManager;
            if( !nameManager.MakeSureTextStyleNameIsUnique( textStyleName, GetPage() ) )
            {
                g_OutputMessage.Add( "MultiText::SetFromDescription: Cannot produce a unique text Style name!", 
                                     DebugOutputMessage );
                return false;
            }

            // Add Text under new name
            haveToAddTextStyle = true;
        }
    }

    // Do we add the Text Style
    if( haveToAddTextStyle )
    {
        if( !resMan->AddTextStyle( textStyleName, fileName, GetPage()->GetProject() ) )
        {
            g_OutputMessage.Add( "MultiText::SetFromDescription: Cannot add new text Style!", 
                                 DebugOutputMessage );
            return false;
        }
    }

    // Get a counted copy of the Text Style
    textStyle = resMan->GetTextStyle( textStyleName );
    if( textStyle == NULL )
    {
        g_OutputMessage.Add( "MultiText::SetFromDescription: Cannot get the text Style!", 
                             DebugOutputMessage );
    }

    if( !this->SetTextStyle( textStyle ) )
    {
        return false;
    }

    return true;
}


//===========================================================================
// MultiText::FillInDescription
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

bool MultiText::FillInDescription( DrawingElementDescription* description )
{
    MultiTextDescription* multiTextDescription = dynamic_cast<MultiTextDescription*>( description );
    if( multiTextDescription == NULL )
    {
        g_OutputMessage.Add( "MultiText::FillInDescription: Invalid description type!", 
                             DebugOutputMessage );
        return false;
    }

    // Fill in parent settings
    BoxDrawingElement::FillInDescription( description );

    // Set this class's settings
    for( int i = 0; i < m_TextList.GetNumberOfElements() ; i++ )
    {
        TextStruct* text = m_TextList.GetElement( i );
        if( text != NULL )
        {
            TextTypeEnum  textType            = text->m_textType;
            PascalCString textBibleName;
            PascalCString textBibleFileName;
            PascalCString textBibleStringName = text->m_textBibleStringName;
            PascalCString hardCodedString     = text->m_hardCodedStringName;

            if( text->m_textBible != NULL )
            {
                textBibleName = text->m_textBible->GetName();
                ResourceFile* resFile = text->m_textBible->GetResourceFile();
                if( resFile != NULL )
                {
                    FileName fileName = resFile->GetFileName();
                    fileName.Get( textBibleFileName );
                }
            }

            multiTextDescription->AddTextDescription( textType,
                                                      textBibleName,
                                                      textBibleFileName,
                                                      textBibleStringName,
                                                      hardCodedString );
        }
    }

    multiTextDescription->SetCurrentText( GetCurrentText() );

    if( m_TextStyle != NULL )
    {
        PascalCString textStyleName;
        PascalCString textStyleFileName;
        
        textStyleName = m_TextStyle->GetName();
        ResourceFile* resFile = m_TextStyle->GetResourceFile();
        if( resFile != NULL )
        {
            FileName fileName = resFile->GetFileName();
            fileName.Get( textStyleFileName );
        }
        
        multiTextDescription->SetTextStyleDescription( textStyleName, textStyleFileName );
    }

    return true;
}


//===========================================================================
// MultiText::ClearTextList
//===========================================================================
// Description: This clears the text list
//
// Constraints:    None
//
// Parameters:    None
//
// Return:      Nothing
//
//===========================================================================

void MultiText::ClearTextList()
{
    Page* page = GetPage();
    ResourceManager* resourceManager = page->GetResourceManager();

    while( m_TextList.GetNumberOfElements() > 0 )
    {
        TextStruct* text = m_TextList.GetElement(0);
        if( text != NULL )
        {
            if( text->m_textBible != NULL )
            {
                resourceManager->Release( (Resource**)&text->m_textBible );
            }

            delete text;
            text = NULL;
        }

        m_TextList.RemoveElement(0);
    }
}

//===========================================================================
// TextStruct::MakeChunk()
//===========================================================================
// Description: turns this into a chunk
//
// Constraints:    None
//
// Parameters:    None
//
// Return:      the chunk
//
//===========================================================================
tlDataChunk* TextStruct::MakeChunk() const
{
    //do we need to make a hardcoded chunk or a bible chunk
    if( this->m_textBible == NULL )
    {
        //this is a hardcoded chunk
        tlScroobyStringHardCodedChunk* chunk = new tlScroobyStringHardCodedChunk;
        chunk->SetString( this->m_hardCodedStringName );
        return chunk;
    }
    else
    {
        //this is a textBibleChunk
        tlScroobyStringTextBibleChunk* chunk = new tlScroobyStringTextBibleChunk;
        chunk->SetBibleName( this->m_textBible->GetName() );
        chunk->SetStringId( this->m_textBibleStringName );
        return chunk;
    }
}

void MultiText::SetShadowEnabled( bool enabled )
{
    m_ShadowEnabled = enabled;
}

bool MultiText::IsShadowEnabled() const
{
    return m_ShadowEnabled;
}

Color& MultiText::GetShadowColor()
{
    return m_ShadowColour;
}

void MultiText::SetShadowColor( Color& color )
{
    m_ShadowColour = color;
}

int MultiText::GetShadowRed() const
{
    return m_ShadowColour.GetRed();
}

int MultiText::GetShadowGreen() const
{
    return m_ShadowColour.GetGreen();
}

int MultiText::GetShadowBlue() const
{
    return m_ShadowColour.GetBlue();
}

int MultiText::GetShadowAlpha() const
{
    return m_ShadowColour.GetAlpha();
}

void MultiText::SetShadowColor( int r, int g, int b, int a )
{
    m_ShadowColour.Set( r, g, b, a );
}

int MultiText::GetXShadowOffset() const
{
    return m_xShadowOffset;
}

int MultiText::GetYShadowOffset() const
{
    return m_yShadowOffset;
}

void MultiText::SetShadowOffset( int x, int y )
{
    m_xShadowOffset = x;
    m_yShadowOffset = y;
}

} // End NameSpace
