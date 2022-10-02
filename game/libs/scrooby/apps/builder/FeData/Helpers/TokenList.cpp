//===========================================================================
// Copyright (C) 2000 Radical Entertainment Ltd.  All rights reserved.
//
// Component:   FE Builder Helper Classes
//
// Description: This contains the TokenList class.
//
// Authors:     Ryan Bedard
//
//===========================================================================

//===========================================================================
// Includes
//===========================================================================

#include "TokenList.h"
#include "OutputMessage.h"
#include "String.h"

//===========================================================================
// Local Constants, Typedefs, and Macros
//===========================================================================

const int bufferSize = 80;
const char* tokenSeparator = "\r\n";

//===========================================================================
// Global Data, Local Data, Local Classes
//===========================================================================

//===========================================================================
// Member Functions
//===========================================================================

namespace FeData
{

//===========================================================================
// TokenList::TokenList
//===========================================================================
// Description: TokenList's constructor
//
// Constraints:    None
//
// Parameters:    None
//
// Return:      Nothing
//
//===========================================================================

TokenList::TokenList() :
m_List(),
m_CurrentPosition( 0 )
{
}


//===========================================================================
// TokenList::~TokenList
//===========================================================================
// Description: TokenList's destructor
//
// Constraints:    None
//
// Parameters:    None
//
// Return:      Nothing
//
//===========================================================================

TokenList::~TokenList()
{
    while( m_List.GetNumberOfElements() > 0 )
    {
        PascalCString* string = m_List.GetElement( 0 );
        if( string != NULL )
        {
            delete string;
            string = NULL;
        }
        m_List.RemoveElement( 0 );
    }
}


//===========================================================================
// TokenList::ToString
//===========================================================================
// Description: This makes a string out of the token list
//
// Constraints:    None
//
// Parameters:    string - string to place the token list
//
// Return:      true  - if successful,
//              false - otherwise
//
//===========================================================================

bool TokenList::ToString( PascalCString& string )
{
    if( m_List.GetNumberOfElements() == 0 )
    {
        return false;
    }

    for( int i = 0; i < m_List.GetNumberOfElements(); i++ )
    {
        PascalCString* listString = m_List.GetElement( i );

        string += *listString;
        string += tokenSeparator;
    }
    return true;
}


//===========================================================================
// TokenList::FromString
//===========================================================================
// Description: This makes a token list out of a string
//
// Constraints:    None
//
// Parameters:    string - the string to construct the token list from
//
// Return:      true  - if successful,
//              false - otherwise
//
//===========================================================================

bool TokenList::FromString( PascalCString& string )
{
    char* stringPointer = string;

    int seperatorLength = strlen( tokenSeparator );
    
    int start = 0;
    int end = -seperatorLength;

    for( int i = 0; i < string.Length(); i++ )
    {
        bool foundSeparator = true;
        for( int j = 0; foundSeparator && (j < seperatorLength); j++ )
        {
            if( stringPointer[ i + j ] != tokenSeparator[ j ] )
            {
                foundSeparator = false;
            }
        }

        if( foundSeparator )
        {
            start = end + seperatorLength;
            end = i;

            PascalCString foundString( string.SubString( start, end - start ) );
            if( !Add( foundString ) )
            {
                return false;
            }
        }
    }

    return true;
}


//===========================================================================
// TokenList::Add( string )
//===========================================================================
// Description: This adds a string to the token list.
//
// Constraints:    None
//
// Parameters:    string - string to add
//
// Return:      true  - if successful,
//              false - otherwise
//
//===========================================================================

bool TokenList::Add( const PascalCString& string )
{
    PascalCString* newString = new PascalCString( string );
    if( newString == NULL )
    {
        g_OutputMessage.Add( "TokenList::Add: Out of memory!",
                             DebugOutputMessage );
        return false;
    }

    return m_List.AddElementToBack( newString );
}


//===========================================================================
// TokenList::Add( int )
//===========================================================================
// Description: This adds an int to the token list.
//
// Constraints:    None
//
// Parameters:    number - int to add
//
// Return:      true  - if successful,
//              false - otherwise
//
//===========================================================================

bool TokenList::Add( int number )
{
    char buffer[ bufferSize ];

    sprintf( buffer, "%i", number );

    if( strlen( buffer ) >= bufferSize )
    {
        g_OutputMessage.Add( "TokenList::Add( int ): Buffer overflow!",
                             ErrorOutputMessage );
        return false;
    }
    
    PascalCString* newString = new PascalCString( buffer );
    if( newString == NULL )
    {
        g_OutputMessage.Add( "TokenList::Add( int ): Out of memory!",
                             ErrorOutputMessage );
        return false;
    }

    return m_List.AddElementToBack( newString );
}


//===========================================================================
// TokenList::Add( double )
//===========================================================================
// Description: This adds a double to the token list.
//
// Constraints:    None
//
// Parameters:    number - double to add
//
// Return:      true  - if successful,
//              false - otherwise
//
//===========================================================================

bool TokenList::Add( double number )
{
    char buffer[ bufferSize ];

    sprintf( buffer, "%f", number );

    if( strlen( buffer ) >= bufferSize )
    {
        g_OutputMessage.Add( "TokenList::Add( double ): Buffer overflow!",
                             ErrorOutputMessage );
        return false;
    }
    
    PascalCString* newString = new PascalCString( buffer );
    if( newString == NULL )
    {
        g_OutputMessage.Add( "TokenList::Add( double ): Out of memory!",
                             ErrorOutputMessage );
        return false;
    }

    return m_List.AddElementToBack( newString );
}


//===========================================================================
// TokenList::ResetList
//===========================================================================
// Description: This resets the list so that the next GetNext call will 
//              reteive the first token.
//
// Constraints:    None
//
// Parameters:    None
//
// Return:      Nothing
//
//===========================================================================

void TokenList::ResetList()
{
    m_CurrentPosition = 0;
}

//===========================================================================
// TokenList::GetNext( string )
//===========================================================================
// Description: This gets the next token from the list and moves the curren
//              position up one place.
//
// Constraints:    None
//
// Parameters:    string - place to put the token
//
// Return:      true  - if successful,
//              false - otherwise
//
//===========================================================================

bool TokenList::GetNext( PascalCString& string )
{
    if( (m_CurrentPosition < 0) || (m_CurrentPosition >= m_List.GetNumberOfElements()) )
    {
        return false;
    }

    string = *(m_List.GetElement( m_CurrentPosition ));

    m_CurrentPosition++;
    return true;
}


//===========================================================================
// TokenList::GetNext( int )
//===========================================================================
// Description: This gets the next token from the list and moves the current
//              position up one place.
//
// Constraints:    None
//
// Parameters:    number - place to put the token
//
// Return:      true  - if successful,
//              false - otherwise
//
//===========================================================================

bool TokenList::GetNext( int& number )
{
    if( (m_CurrentPosition < 0) || (m_CurrentPosition >= m_List.GetNumberOfElements()) )
    {
        return false;
    }

    char* tempString = *(m_List.GetElement( m_CurrentPosition ));
    if( tempString == NULL )
    {
        return NULL;
    }

    number = atoi( tempString );

    m_CurrentPosition++;
    return true;
}


//===========================================================================
// TokenList::GetNext( double )
//===========================================================================
// Description: This gets the next token from the list and moves the current
//              position up one place.
//
// Constraints:    None
//
// Parameters:    number - place to put the token
//
// Return:      true  - if successful,
//              false - otherwise
//
//===========================================================================

bool TokenList::GetNext( double& number )
{
    if( (m_CurrentPosition < 0) || (m_CurrentPosition >= m_List.GetNumberOfElements()) )
    {
        return false;
    }

    char* tempString = *(m_List.GetElement( m_CurrentPosition ));
    if( tempString == NULL )
    {
        return NULL;
    }

    number = atof( tempString );

    m_CurrentPosition++;
    return true;
}


//===========================================================================
// TokenList::PeekNext( string )
//===========================================================================
// Description: This gets the next token from the list.  It does not changet 
//              the current position.
//
// Constraints:    None
//
// Parameters:    string - place to put the string
//
// Return:      true  - if successful,
//              false - otherwise
//
//===========================================================================

bool TokenList::PeekNext( PascalCString& string )
{
    if( (m_CurrentPosition < 0) || (m_CurrentPosition >= m_List.GetNumberOfElements()) )
    {
        return false;
    }

    string = *(m_List.GetElement( m_CurrentPosition ));
    return true;
}

} // End NameSpace
