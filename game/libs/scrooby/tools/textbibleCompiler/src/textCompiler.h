//=============================================================================
// Copyright (C) 1999 Radical Entertainment Ltd.  All rights reserved.
//
// Component:   Localization Pipeline
//
// Description: takes a loaded text bible, and compiles the runtime version
//
// Authors:     Ian Gipson
//
//=============================================================================

// Recompilation protection flag.
#ifndef __TEXTCOMPILER_H
#define __TEXTCOMPILER_H

#if _MSC_VER > 1000
#pragma once
#endif // _MSC_VER > 1000


//=============================================================================
// Nested Includes
//=============================================================================

//=============================================================================
// Forward References
//=============================================================================
class LanguageDatabase ;
class tlTextBible;

//=============================================================================
// Constants, Typedefs, and Macro Definitions (needed by external clients)
//=============================================================================

//=============================================================================
// Interface Definitions
//=============================================================================

//=============================================================================
//
// Description: class textCompiler  
//
// Constraints: 
//
//=============================================================================
class TextCompiler
{
public:
    TextCompiler( LanguageDatabase* ldb );
    virtual ~TextCompiler();


    bool Export() ;
    int HashingModulo( ) ;
    void SetDataPath( const char* path ) ;
    void SetHashingModulo( int m ) ;


protected:

    //=============================================================================
    // data members
    //=============================================================================

    char data_path[ 256 ];    // all data/headers are found/written here...    
    //IMPROVE: hardcoded string length
    int hashing_modulo;
    LanguageDatabase* ldb ;
    tlTextBible* textBible;

    //=============================================================================
    // protected functions
    //=============================================================================
    bool ExportLanguageFile( const char language ) const ;
};

#endif 
