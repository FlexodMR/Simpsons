//===========================================================================
// Copyright (C) 2000 Radical Entertainment Ltd.  All rights reserved.
//
// Component:   FE Builder Data Structure
//
// Description: This contains the TextStyleFile class.
//
// Authors:     Victor Medrano
//
//===========================================================================

//===========================================================================
// Includes
//===========================================================================

#include "TextStyleFile.h"
#include "..\Helpers\OutputMessage.h"
#include "XMLTree.h"
#include "XMLSaver.h"
#include <toollib.hpp>


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
// TextStyleFile::TextStyleFile
//===========================================================================
// Description: TextStyleFile's constructor
//
// Constraints:    None
//
// Parameters:    fileName - The name of the resource file.
//
// Return:      Nothing
//
//===========================================================================

TextStyleFile::TextStyleFile( FileName &fileName ) : 
ResourceFile( fileName ),
m_fontData( NULL )
{
}


//===========================================================================
// TextStyleFile::~TextStyleFile
//===========================================================================
// Description: TextStyleFile's destructor
//
// Constraints:    None
//
// Parameters:    None
//
// Return:      Nothing
//
//===========================================================================

TextStyleFile::~TextStyleFile()
{
}


//===========================================================================
// TextStyleFile::Load
//===========================================================================
// Description: This is used to load the resource file.
//
// Constraints:    None
//
// Parameters:    None
//
// Return:      true  - there is enough memory
//              false - if there is not enough memory to load the picture.
//
//===========================================================================

bool TextStyleFile::Load()
{
    PascalCString message( "Loading TextStyle file: " );
    PascalCString fileName;
    m_FileName.Get( fileName );
    message += fileName;
    g_OutputMessage.Add( message );

    tlDataChunk::RegisterDefaultChunks();
    
    if( fileName.JustExtension() == "ts" )
    {
        fileName.Replace( ".ts", ".p3d" );
    }

    m_FileName.Set( fileName );

    tlFile input( new tlFileByteStream( fileName, omREAD ), tlFile::FROMFILE );
    if( !input.IsOpen() ) 
    {
        return false;
    }

    tlDataChunk* inchunk = new tlDataChunk(&input);
    
    input.Close();
    
    int ch;
    for(ch=0; ch < inchunk->SubChunkCount() && !m_fontData; ch++)
    {
        tlDataChunk* sub = inchunk->GetSubChunk(ch);
        switch(sub->ID())
        {
        case Pure3D::Font::TEXTURE_FONT:
            if( (m_InventoryName == "") || (sub->GetName() == m_InventoryName) )
            {
                m_fontData = new tlTextureFont(sub);
                m_InventoryName = m_fontData->GetName();
            }
            break;
        default:            
            break;
        }
    }

    if( m_fontData )
    {
        // MIKE IMPROVE : this is a hack that will disable all fonts in the builder
        m_font = m_fontData->GetName();
        m_InventoryName = m_fontData->GetName();
        m_style = "";

        m_size = m_fontData->GetFontSize();
        m_red = m_blue = m_green = m_alpha = 0xff;

        RemakeFont();
        return true;
    }

    return false;
}


//===========================================================================
// TextStyleFile::Reload
//===========================================================================
// Description: This is used to reload the resource file.
//
// Constraints:    None
//
// Parameters:    None
//
// Return:      true  - if the file was the correct type and loaded fine
//              false - otherwise
//
//===========================================================================

bool TextStyleFile::Reload()
{
    return Load();
}

//===========================================================================
// TextStyleFile::Save
//===========================================================================
// Description: This is used to save the resource file.
//
// Constraints:    None
//
// Parameters:    None
//
// Return:      true  - there is enough memory
//              false - if there is not enough memory to load the picture.
//
//===========================================================================

bool TextStyleFile::Save()
{
    PascalCString message( "Saving project file: " );
    PascalCString fileName;
    m_FileName.Get( fileName );
    message += fileName;
    g_OutputMessage.Add( message );

    XMLSaver theSaver;
    if( !theSaver.OpenFile( fileName ) )
    {
        g_OutputMessage.Add( "TextStyleFile::Save: Could not open TextStyle file.",
            ErrorOutputMessage );
        return false;
    }

    theSaver.PushElement( g_TextStyleTag );

    theSaver.PushElement( g_TextStyleTagFont );
    theSaver.AddAttribute( g_TextStyleTagFontName, m_font );
    theSaver.PopElement();

    theSaver.PushElement( g_TextStyleTagStyle );
    theSaver.AddAttribute( g_TextStyleTagStyleValue, m_style );
    theSaver.PopElement();

    theSaver.PushElement( g_TextStyleTagSize );
    theSaver.AddAttribute( g_TextStyleTagSizeValue, m_size );
    theSaver.PopElement();

    theSaver.PushElement( g_TextStyleTagColor );
    theSaver.AddAttribute( g_TextStyleTagColorRed, m_red );
    theSaver.AddAttribute( g_TextStyleTagColorGreen, m_green );
    theSaver.AddAttribute( g_TextStyleTagColorBlue, m_blue );
    theSaver.AddAttribute( g_TextStyleTagColorAlpha, m_alpha );
    theSaver.PopElement();

    theSaver.PopElement(); // TextStyle

    theSaver.CloseFile();

    return true;
}

//===========================================================================
// TextStyleFile::Gets
//===========================================================================
// Description: The following functions are used to get the data members of
//              TextStyleFile.
//
// Constraints:    None
//
// Parameters:    None
//
// Return:      The data member.
//
//===========================================================================

bool TextStyleFile::GetFontName( PascalCString& fontName )
{
    fontName = m_font;
    return true;
}

bool TextStyleFile::GetStyleValue( PascalCString& styleValue )
{
    styleValue = m_style;
    return true;
}

int TextStyleFile::GetSize()
{
    return m_size;
}

int TextStyleFile::GetRed()
{
    return m_red;
}

int TextStyleFile::GetBlue()
{
    return m_blue;
}

int TextStyleFile::GetGreen()
{
    return m_green;
}

int TextStyleFile::GetAlpha()
{
    return m_alpha;
}

//===========================================================================
// TextStyleFile::Sets
//===========================================================================
// Description: The following functions are used to set the data members of
//              TextStyleFile.
//
// Constraints:    None
//
// Parameters:    The value the data member should be set to.
//
// Return:      Nothing
//
//===========================================================================

bool TextStyleFile::SetFontName( PascalCString& fontName )
{
    m_font = fontName;
    RemakeFont();
    return true;
}

bool TextStyleFile::SetStyleValue( PascalCString& styleValue )
{
    m_style = styleValue;
    RemakeFont();
    return true;
}

void TextStyleFile::SetSize( int size )
{
    m_size = size;
    RemakeFont();
}

void TextStyleFile::SetRed( int red )
{
    m_red = red;
}

void TextStyleFile::SetBlue( int blue )
{
    m_blue = blue;
}

void TextStyleFile::SetGreen( int green )
{
    m_green = green;
}

void TextStyleFile::SetAlpha( int alpha )
{
    m_alpha = alpha;
}


//===========================================================================
// TextStyleFile::GetStringExtent
//===========================================================================
// Description: This retieves the size of a text if displayed with this 
//              TextStyle.
//
// Constraints:    None
//
// Parameters:    string - String to get the size for
//              width - place to put the width
//              height - place to put the height
//
// Return:      true  - if the width and hight could be retrieved,
//              false - if an error occured.
//
//===========================================================================

bool TextStyleFile::GetStringExtent( UnicodeString& string, int& width, int& height )
{
    return false;
}


//===========================================================================
// TextStyleFile::RemakeFont
//===========================================================================
// Description: This is used to remake the font.
//
// Constraints:    None
//
// Parameters:    None
//
// Return:      Nothing
//
//===========================================================================

void TextStyleFile::RemakeFont()
{
}

tlTextureFont* TextStyleFile::GetTextureFont()
{
    return m_fontData;
}

} // End NameSpace
