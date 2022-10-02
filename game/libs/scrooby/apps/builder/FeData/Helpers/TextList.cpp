//===========================================================================
// Copyright (C) 2000 Radical Entertainment Ltd.  All rights reserved.
//
// Component:   FE Builder Helper Classes
//
// Description: This contains the TestList class.
//
// Authors:     Ryan Bedard
//
//===========================================================================

//===========================================================================
// Includes
//===========================================================================

#include "TextList.h"
#include "..\Helpers\OutputMessage.h"

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
// TextList::TextList
//===========================================================================
// Description: TextList's constructor
//
// Constraints:    None
//
// Parameters:    None
//
// Return:      Nothing
//
//===========================================================================

TextList::TextList() :
m_TextList()
{
    
}


//===========================================================================
// TextList::~TextList
//===========================================================================
// Description: TextList's destructor
//
// Constraints:    None
//
// Parameters:    None
//
// Return:      Nothing
//
//===========================================================================

TextList::~TextList()
{
    ClearTextList();
}


//===========================================================================
// TextList::operator =
//===========================================================================
// Description: TextList's equals operator.
//
// Constraints:    None
//
// Parameters:    right - The TextList to copy from.
//
// Return:      A copy of this class
//
//===========================================================================

const TextList & TextList::operator = ( const TextList &right )
{
    ClearTextList();

    for( int i = 0; i < right.GetNumberOfTexts(); i++ )
    {
        TextTypeEnum type;
        if( !right.GetTextType( i, type ) )
        {
            continue;
        }

        if( type == TextBibleString )
        {
            PascalCString textBibleName;
            PascalCString textBibleString;
            if( right.GetTextBibleName( i, textBibleName ) &&
                right.GetTextBibleString( i, textBibleString ) )
            {
                AddTextBibleString( textBibleName, textBibleString );
            }
        }
        else
        {
            PascalCString hardCodedString;
            if( right.GetHardCodedString( i, hardCodedString ) )
            {
                AddHardCodedString( hardCodedString );
            }
        }
    }
    
    return *this;
}


//===========================================================================
// TextList::operator==
//===========================================================================
// Description: This compares two TextList.
//
// Constraints:    None
//
// Parameters:    right - The TextList name to compare with.
//
// Return:      true  - if the TextLists are the same.
//              false - otherwise
//
//===========================================================================

bool TextList::operator==( const TextList& right ) const
{
    if( GetNumberOfTexts() != right.GetNumberOfTexts() )
    {
        return false;
    }

    for( int i = 0; i < GetNumberOfTexts(); i++ )
    {
        TextTypeEnum thisType;
        TextTypeEnum rightType;
        if( GetTextType( i, thisType ) &&
            right.GetTextType( i, rightType ) )
        {
            if( thisType != rightType )
            {
                return false;
            }
        }
        else
        {
            return false;
        }

        if( thisType == TextBibleString )
        {
            PascalCString thisTextBibleName;
            PascalCString thisTextBibleString;
            PascalCString rightTextBibleName;
            PascalCString rightTextBibleString;
            if( GetTextBibleName( i, thisTextBibleName ) &&
                GetTextBibleString( i, thisTextBibleString ) &&
                right.GetTextBibleName( i, rightTextBibleName ) &&
                right.GetTextBibleString( i, rightTextBibleString ) )
            {
                if( (thisTextBibleName != rightTextBibleName) ||
                    (thisTextBibleString != rightTextBibleString) )
                {
                    return false;
                }
            }
            else
            {
                return false;
            }
        }
        else
        {
            PascalCString thisHardCodedString;
            PascalCString rightHardCodedString;
            if( GetHardCodedString( i, thisHardCodedString ) &&
                right.GetHardCodedString( i, rightHardCodedString ) )
            {
                if( thisHardCodedString != rightHardCodedString )
                {
                    return false;
                }
            }
            else
            {
                return false;
            }
        }
    }
    return true;
}


//===========================================================================
// TextList::operator!=
//===========================================================================
// Description: This compares two TextList.
//
// Constraints:    None
//
// Parameters:    right - The TextList name to compare with.
//
// Return:      true  - if the TextLists are the different.
//              false - otherwise
//
//===========================================================================

bool TextList::operator!=( const TextList& right ) const
{
    return !(*this == right );
}


//===========================================================================
// TextList::GetNumberOfTexts
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

int TextList::GetNumberOfTexts() const
{
    return m_TextList.GetNumberOfElements();
}


//===========================================================================
// TextList::AddTextBibleString
//===========================================================================
// Description: Add a Text to the list
//
// Constraints:    None
//
// Parameters:    textBible - the name of the text bible
//              string    - the name of the text from the text bible to use
//
// Return:      bool - whether action was successful
//
//===========================================================================
bool TextList::AddTextBibleString( PascalCString& textBible, PascalCString& string )
{
    TextListStruct* text = new TextListStruct;
    if( text == NULL )
    {
        g_OutputMessage.Add( "TextList::AddTextBibleString: Out of Memory!", 
                             ErrorOutputMessage );
        return false;
    }

    text->m_hardCodedStringName = "";
    text->m_textBibleName = textBible;
    text->m_textBibleStringName = string;
    text->m_textType = TextBibleString;

    return m_TextList.AddElementToBack( text );
}


//===========================================================================
// TextList::AddHardCodedString
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
bool TextList::AddHardCodedString( PascalCString& string )
{
    TextListStruct* text = new TextListStruct;
    if( text == NULL )
    {
        g_OutputMessage.Add( "TextList::AddHardCodedString: Out of Memory!", 
                             ErrorOutputMessage );
        return false;
    }

    text->m_hardCodedStringName = string;
    text->m_textBibleName = "";
    text->m_textBibleStringName = "";
    text->m_textType = HardCodedString;

    return m_TextList.AddElementToBack( text );
}


//===========================================================================
// TextList::RemoveText
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
bool TextList::RemoveText( int index )
{
    TextListStruct* text = m_TextList.GetElement( index );
    if( text != NULL )
    {
        delete text;
        text = NULL;
    }

    return m_TextList.RemoveElement( index );
}


//===========================================================================
// TextList::MoveText
//===========================================================================
// Description: Move a Text's position in the list
//
// Constraints:    None
//
// Parameters:    fromIndex - the index of the text to move
//              toIndex - the index of the desination
//
// Return:      bool - whether action was successful
//
//===========================================================================
bool TextList::MoveText( int fromIndex, int toIndex )
{
    return m_TextList.MoveElement( fromIndex, toIndex );
}


//===========================================================================
// TextList::GetTextBibleName
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
bool TextList::GetTextBibleName( int index, PascalCString &name ) const
{
    TextListStruct* text = m_TextList.GetElement( index );
    if( text == NULL )
    {
        return false;
    }

    name = text->m_textBibleName;
    return true;
}


//===========================================================================
// TextList::GetTextBibleString
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
bool TextList::GetTextBibleString( int index, PascalCString& bibleString ) const
{
    TextListStruct* text = m_TextList.GetElement( index );
    if( text == NULL )
    {
        return false;
    }

    bibleString = text->m_textBibleStringName;
    return true;
}


//===========================================================================
// TextList::GetHardCodedString
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
bool TextList::GetHardCodedString( int index, PascalCString& hardCodedString ) const
{
    TextListStruct* text = m_TextList.GetElement( index );
    if( text == NULL )
    {
        return false;
    }

    hardCodedString = text->m_hardCodedStringName;
    return true;
}


//===========================================================================
// TextList::GetTextType
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
bool TextList::GetTextType( int index, TextTypeEnum& type ) const
{
    TextListStruct* text = m_TextList.GetElement( index );
    if( text == NULL )
    {
        return false;
    }

    type = text->m_textType;
    return true;
}



//===========================================================================
// TextList::SetTextBibleName
//===========================================================================
// Description: Retrieve a text bible name from the list
//
// Constraints:    None
//
// Parameters:    index - the index from the list to Set
//              name  - string to place the name
//
// Return:      true  - if the name was found fine,
//              false - otherwise
//
//===========================================================================
bool TextList::SetTextBibleName( int index, PascalCString &name )
{
    TextListStruct* text = m_TextList.GetElement( index );
    if( text == NULL )
    {
        return false;
    }

    text->m_textBibleName = name;
    return true;
}


//===========================================================================
// TextList::SetTextBibleString
//===========================================================================
// Description: Retrieve a text string name from the list
//
// Constraints:    None
//
// Parameters:    index - the index from the list to Set
//              bibleString - the text bible string to return
//
// Return:      bool - whether action was successful
//
//===========================================================================
bool TextList::SetTextBibleString( int index, PascalCString& bibleString )
{
    TextListStruct* text = m_TextList.GetElement( index );
    if( text == NULL )
    {
        return false;
    }

    text->m_textBibleStringName = bibleString;
    return true;
}


//===========================================================================
// TextList::SetHardCodedString
//===========================================================================
// Description: Retrieve a text string name from the list
//
// Constraints:    None
//
// Parameters:    index - the index from the list to Set
//              bibleString - the hard coded string to return
//
// Return:      bool - whether action was successful
//
//===========================================================================
bool TextList::SetHardCodedString( int index, PascalCString& hardCodedString )
{
    TextListStruct* text = m_TextList.GetElement( index );
    if( text == NULL )
    {
        return false;
    }

    text->m_hardCodedStringName = hardCodedString;
    return true;
}


//===========================================================================
// TextList::SetTextType
//===========================================================================
// Description: Retrieve a text type from the list
//
// Constraints:    None
//
// Parameters:    index - the index from the list to Set
//              type - the text type
//
// Return:      bool - whether action was successful
//
//===========================================================================
bool TextList::SetTextType( int index, TextTypeEnum& type )
{
    TextListStruct* text = m_TextList.GetElement( index );
    if( text == NULL )
    {
        return false;
    }

    text->m_textType = type;
    return true;
}



//===========================================================================
// TextList::ClearTextList
//===========================================================================
// Description: This clears the list
//
// Constraints:    None
//
// Parameters:    None
//
// Return:      Nothing
//
//===========================================================================
void TextList::ClearTextList()
{
    while( GetNumberOfTexts() > 0 )
    {
        RemoveText( 0 );
    }
}


} // End NameSpace
