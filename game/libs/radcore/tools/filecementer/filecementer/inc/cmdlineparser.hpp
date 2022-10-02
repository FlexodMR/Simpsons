//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


//=============================================================================
//
// File:        cmdlineparser.hpp
//
// Subsystem:   Radical Cement File Tool - Contain classes for command line parsing
//
// Description: This file contains the class definitions for command line options,
//              and prototypes for general functions used in the file cementer tool.
//
// Revisions:   V1.00   May 28, 2001        Creation
//
//=============================================================================

#ifndef  CMDLINEPARSER_HPP
#define  CMDLINEPARSER_HPP

//=============================================================================
// Include Files
//=============================================================================

#include <string.h>
#include <stdlib.h>
#include <raddebug.hpp>
#include <radobject.hpp>
#include <radfile.hpp>
#include <radmemory.hpp>
#include <rcfEncoder.hpp>

#include "cmdlineoption.hpp"
#include "filecementertool.hpp"


//=============================================================================
// Class Declarations
//=============================================================================

//
// This class is used to parse the command line and call upon given options.
//
class CCmdLineParser
{
public:

    //
    // Constructor
    //
    CCmdLineParser( )
        :
        m_pDefaultOption( NULL )
    {
        ::radObjectListCreate( &m_xIOl_Options, RADMEMORY_ALLOC_DEFAULT );
        rAssert( m_xIOl_Options != NULL );        
    }

    //
    // Destructor
    //
    ~CCmdLineParser( void )
    {
        Clean( );
    }

    void AddOption( IRadCmdLineOption* pOption );
    void SetDefaultOption( IRadCmdLineOption* pOption );
    void DoParse( IRadRCFEncoder* pEncoder, int argc, char* argv[ ] );
    void ParseScriptFile( IRadRCFEncoder* pEncoder, const char* scriptFileName );
    void ShowUsage( ) const;
    void Clean( );
    
protected:
    bool IsWhitespace( char c );
    unsigned int SkipWhitespace
    (
        char* pData, 
        unsigned int index,
        unsigned int fileLength,
        bool clean
    );
    bool IsComment( char c );
    unsigned int SkipComment
    (
        char* pData, 
        unsigned int index,
        unsigned int fileLength,
        bool clean
    );

private:
    
    //
    // The default option
    //
    IRadCmdLineOption* m_pDefaultOption;

    //
    // Options list
    //
    ref< IRadObjectList > m_xIOl_Options;

};


#endif //CMDLINEPARSER_HPP

