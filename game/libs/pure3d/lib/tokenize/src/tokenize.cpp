//===========================================================================
// Copyright ©2001 Radical Entertainment Ltd.  All rights reserved.
//
// Created:     November 26, 2001
//
// Component:   
//
// Description: 
//
// Creator:     Bryan Ewert
//
//===========================================================================
//===========================================================================
// Includes
//===========================================================================

#include "../inc/tokenize.h"

#include <ctype.h>
#include <memory.h>

#include <bewert_debug.h>   // enables memory leak tracking

//===========================================================================
// Local Constants, Typedefs, and Macros
//===========================================================================

//===========================================================================
// Global Data, Local Data, Local Classes
//===========================================================================

//===========================================================================
// Constructor / Destructor
//===========================================================================

CTokenize::CTokenize()
{
}

CTokenize::CTokenize( const char* buf )
{
    Tokenize( buf );
}

CTokenize::~CTokenize()
{
    Clear();
}

//===========================================================================
// COPY Constructor / Assignment
//===========================================================================

//===========================================================================
// Operator Overloads
//===========================================================================

const char* CTokenize::operator[]( unsigned int index ) const
{
    if ( index >= mTokens.NumItems() ) return NULL;

    return mTokens[index];
}

std::ostream& operator << ( std::ostream& os, const CTokenize& tokens )
{
    unsigned int                        token_index = 0;

    os << "{" << std::endl;;

    for( token_index = 0; token_index < tokens.NumTokens(); token_index++ )
    {
        os << "\t[" << token_index << "] \"" << tokens[token_index] << "\"" << std::endl;    
    }

    os << "}" << std::endl;;

    return os;
}

//===========================================================================
// Member Functions
//===========================================================================

//===========================================================================
// CTokenize::Clear
//===========================================================================
// Description: Clears the token array.
//
// Constraints: 
//
// Parameters:  (void)
//
// Return:      (void)
//
//===========================================================================
void CTokenize::Clear( void )
{
    unsigned int numTokens = mTokens.NumItems();
    while ( numTokens-- )
    {
        delete [] mTokens[numTokens];
    }
    mTokens.Clear();
}

//===========================================================================
// CTokenize::Tokenize
//===========================================================================
// Description: Interprets the provided string buffer and allocates and stores
//              the extracted tokens.
//
//              All white space is skipped, and the buffer is added as
//              tokens following the first non-white space character.
//
//              If at any point a C++-style comment is encountered the
//              buffer is advanced to the first newline character; 
//              the comment is not added to the tokens array.
//
// Constraints: 
//
// Parameters:  const char* buf: NULL-terminated string buffer.  May contain
//                               control characters, newlines, etc.
//
// Return:      (unsigned int): The number of tokens extracted from the buffer.
//
//===========================================================================
unsigned int CTokenize::Tokenize( const char* buf )
{
    Clear();

    if ( buf != NULL )
    {
        const char*                         pos = buf;

        while ( *pos )
        {
            while ( *pos && ( isspace( *pos ) || iscntrl( *pos ) ) )
            {
                pos++;
            }

            if ( ( *pos == '/' ) && ( *(pos+1) == '/' ) )
            {
                while ( *pos && ( *pos != '\n' ) )
                {
                    pos++;
                }

                continue;
            }

            if ( !AddToken( &pos ) )
            {
                break;
            }
        }    
    }

    return mTokens.NumItems();   
}

//===========================================================================
// CTokenize::AddToken
//===========================================================================
// Description: Adds the next token to the tokens array based on the current
//              pointer position into the buffer.
//
//              The first character at the buffer position determines how the 
//              scan will be interpreted.
//
//              If the character is a numeric digit then the scan will accept 
//              all numeric characters, including the '.' decimal point, hex 
//              characters (e.g. 'A' through 'F') and the 'x' character 
//              (e.g. "0x<hex>").
//              
//              If the character is punctuation (e.g. ';') then the scan will
//              accept only punctuation characters.              
//              
//              If the character was an alpha character, all alpha-numeric
//              characters are accepted for the scan.
//
//              If at any point a C++-style comment is encountered the
//              scan is terminated at the character immediately preceeding
//              the comment character.  The comment is not added to the tokens array.
//              
//              The scan is terminated when a character is encountered which
//              does not match the type which was initially interpreted,
//              or as soon as white space is encountered.
//
// Constraints: 
//
// Parameters:  const chat** pBuf: Pointer to a pointer for the NULL-terminated
//                                 string buffer.  The pointer for the NULL-
//                                 terminated string buffer is advanced during
//                                 processing.
//
// Return:      (bool): TRUE if a token was added; else FALSE.
//
//===========================================================================
bool CTokenize::AddToken( const char** pBuf )
{
    bool                                bTokenAdded = false;

    bool                                bQuoteMode = false;

    int alpha = isalpha( **pBuf );
    int digit = isdigit( **pBuf );      // Must _start_ with digit; e.g. "42" or "0x<hex>"
    int punct = ispunct( **pBuf );
    const char*                         startpos = *pBuf;

    if ( **pBuf == '\"' )
    {
        bQuoteMode = true;
        startpos++;
        (*pBuf)++;
    }

    while ( **pBuf)
    {
        char c = **pBuf;

        // If in Quote mode, we're looking for another quote.
        if ( bQuoteMode && c == '\"' )
        {
            break;
        }

        // If in Quote mode, everything's legal until the
        // closing quote character is found.. no breaks.    
        if ( !bQuoteMode )
        {
            if ( ( **pBuf == '/' ) && ( *(*pBuf+1) == '/' ) )
            {
                (*pBuf)--;

                break;
            }

            if ( !bQuoteMode && ( isspace( **pBuf ) || iscntrl( **pBuf ) ) )
            {
                break;
            }

            // Started on Alpha.. looking for non-alpha
            if ( alpha && !isalpha( **pBuf ) && !isdigit( **pBuf ) && !(**pBuf == '_' ) )
            {
                break;   
            }
        
            // Expecting numeric.. allow '.' for float; 'a'-'f' and 'A'-'F' and 'x' or 'X' for hex.
            else if ( digit && !isxdigit( **pBuf ) && !(**pBuf == '.') && !( (**pBuf == 'x') || (**pBuf == 'X') ) )
            {
                break;
            }

            else if ( punct && !ispunct( **pBuf ) )
            {
                break;
            }
        }

        (*pBuf)++;
    }

    // If valid characters for a token were found, add the token.
    // * Allow empty string in quote mode *
    if ( ( *pBuf > startpos ) || bQuoteMode )
    {
        char*                           newBuf;
        int                             chars = ( (*pBuf) - startpos );
        newBuf = new char [ chars + 1 ];
        memcpy( newBuf, startpos, ( chars ) );
        newBuf[chars] = '\0';
        mTokens.AddItem( newBuf );
        bTokenAdded = true;
    }

    // If token added in quote mode the scan pointer will be
    // pointing at the terminating quote character.. advance it
    // so we don't trigger quote mode coming back for the next token.
    if ( bQuoteMode && ( **pBuf == '\"' ) )
    {
        (*pBuf)++;
    }

    return bTokenAdded;
}

//===========================================================================
// CTokenize::NumTokens     (const)
//===========================================================================
// Description: Returns the number of tokens in the tokens array.
//
// Constraints: 
//
// Parameters:  (void)
//
// Return:      (unsigned int): The number of tokens in the tokens array. 
//
//===========================================================================
unsigned int CTokenize::NumTokens( void ) const
{
    return mTokens.NumItems();
}
