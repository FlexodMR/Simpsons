//===========================================================================
// Copyright (C) 2000 Radical Entertainment Ltd.  All rights reserved.
//
// Component:   FE Builder Data Structure
//
// Description: This contains the TextBibleFile class.
//
// Authors:     Ryan Bedard
//
//===========================================================================

//===========================================================================
// Includes
//===========================================================================

#include "TextBibleFile.h"
#include "..\Helpers\OutputMessage.h"

#include "Strings\UnicodeString.h"
#include "Localization\LanguageDatabase.h"
#include <toollib.hpp>
#include "toollib/tlTextBible.hpp"

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
// TextBibleFile::TextBibleFile
//===========================================================================
// Description: TextBibleFile's constructor
//
// Constraints:    None
//
// Parameters:    fileName - The name of the resource file.
//
// Return:      Nothing
//
//===========================================================================

TextBibleFile::TextBibleFile( FileName &fileName ) : 
ResourceFile( fileName ),
m_textBible( NULL )
{
}


//===========================================================================
// TextBibleFile::~TextBibleFile
//===========================================================================
// Description: TextBibleFile's destructor
//
// Constraints:    None
//
// Parameters:    None
//
// Return:      Nothing
//
//===========================================================================

TextBibleFile::~TextBibleFile()
{
}


//===========================================================================
// TextBibleFile::Load
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

bool TextBibleFile::Load()
{
    PascalCString message( "Loading Text Bible: " );
    PascalCString fileName;
    m_FileName.Get( fileName );
    message += fileName;
    g_OutputMessage.Add( message, DebugOutputMessage );

    if( fileName.JustExtension() == "p3d" )
    {
        fileName.Replace( ".p3d", ".xls" );
    }

    LanguageDatabase db;
    if( db.Import( fileName ) )
    {
        m_IDs = db.GetAllRids();
    }

    fileName.Replace( ".xls", ".p3d" );

    m_FileName.Set( fileName );

    tlDataChunk::RegisterDefaultChunks();

    tlFile input( new tlFileByteStream( fileName, omREAD ), tlFile::FROMFILE );
    if( !input.IsOpen() ) 
    {
        return false;
    }

    tlDataChunk* inchunk = new tlDataChunk(&input);
    
    input.Close();
    
    int ch;
    for(ch=0; ch < inchunk->SubChunkCount() && !m_textBible; ch++)
    {
        tlDataChunk* sub = inchunk->GetSubChunk(ch);
        switch(sub->ID())
        {
        case Pure3D::Scrooby::TEXTBIBLE:
            if( (m_InventoryName == "") || (sub->GetName() == m_InventoryName) )
            {
                m_textBible = new tlTextBible( sub );
                m_InventoryName = m_textBible->GetName();
            }
            break;
        default:            
            break;
        }
    }

    m_FileLoaded = (m_textBible != NULL );

    return m_FileLoaded;
    
}


//===========================================================================
// TextBibleFile::Reload
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

bool TextBibleFile::Reload()
{
    return Load();
}


//===========================================================================
// TextBibleFile::GetNumberOfLanguages
//===========================================================================
// Description: This gets the number of languages supported by the textbible.
//
// Constraints:    None
//
// Parameters:    None
//
// Return:      number of languages
//
//===========================================================================

int TextBibleFile::GetNumberOfLanguages()
{
    if( !m_FileLoaded )
    {
        return 0;
    }

    return m_textBible->GetNumLanguages();
}


//===========================================================================
// TextBibleFile::GetString (English)
//===========================================================================
// Description: This is used to get a text bible string.
//
// Constraints:    None
//
// Parameters:    name   - name of the string to retrieve.
//              string - place to put the string.
//
// Return:      true  - if the string could be retrieved,
//              false - otherwise
//
//===========================================================================

bool TextBibleFile::GetString( const PascalCString& name,
                               UnicodeString& string )
{
    if( !m_FileLoaded )
    {
        return false;
    }

    return m_textBible->GetString( name, string );
}


//===========================================================================
// TextBibleFile::GetString (language index)
//===========================================================================
// Description: This is used to get a text bible string.
//
// Constraints:    None
//
// Parameters:    name   - name of the string to retrieve.
//              string - place to put the string.
//              language - index of the language to get.
//
// Return:      true  - if the string could be retrieved,
//              false - otherwise
//
//===========================================================================

bool TextBibleFile::GetString( const PascalCString& name,
                               UnicodeString& string,
                               int language )
{
    if( !m_FileLoaded )
    {
        return false;
    }
    
    return m_textBible->GetString( name, string, language );
}

//===========================================================================
// TextBibleFile::GetAllStringNames
//===========================================================================
// Description: This is used to get the names of all the strings.
//
// Constraints:    None
//
// Parameters:    theStringSet - place to put the string names
//
// Return:      true  - if the string names could be retrieved,
//              false - otherwise
//
//===========================================================================

bool TextBibleFile::GetAllStringNames( StringSet& theStringSet )
{
    if( !m_FileLoaded )
    {
        return false;
    }

    theStringSet = m_IDs;
    return true;
}


} // End NameSpace
