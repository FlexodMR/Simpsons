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

// Recompilation protection flag.
#ifndef __TOKENIZE_H  
#define __TOKENIZE_H  

//===========================================================================
// Nested Includes
//===========================================================================

#include <listArray/listArray.hpp>

#include <iostream>

//===========================================================================
// Forward References
//===========================================================================

//===========================================================================
// Constants, Typedefs, and Macro Definitions (needed by external clients)
//===========================================================================

//===========================================================================
// Interface Definitions
//===========================================================================

//===========================================================================
// Description:
//
// Constraints:
//
//===========================================================================

class CTokenize
{
public:
    unsigned int                        Tokenize( const char* buf );

    unsigned int                        NumTokens( void ) const;

    const char*                         operator[]( unsigned int index ) const;

    void                                Clear( void );

    friend std::ostream&                operator << ( std::ostream& os, const CTokenize& tokens );

// Constructor / Destructor
public:
    CTokenize();
    CTokenize( const char* buf );
    ~CTokenize();

protected:
    // No protected members.

private:
    bool                                AddToken( const char** pBuf );

private:
    CListArray<char*>                   mTokens;        // Array of tokens extracted from input string.
};

//===========================================================================
// Inlines
//===========================================================================

#endif // __TOKENIZE_H  
