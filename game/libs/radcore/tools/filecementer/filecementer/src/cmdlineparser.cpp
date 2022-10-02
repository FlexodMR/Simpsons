//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


//=============================================================================
//
// File:        cmdlineparser.cpp
//
// Subsystem:   Radical Cement File Tool - Command line parser
//
// Description: This file implements the command line parser that takes in a list
//              of options, and parses the command line in order to carry them out.
//
// Revisions:   V1.00   May 28, 2001        Creation
//
//=============================================================================

//=============================================================================
// Include Files
//=============================================================================

#include <sys/stat.h>
#include <stdlib.h>
#include <direct.h>
#include <raddebug.hpp>
#include <radfile.hpp>
#include <radmemory.hpp>
#include <radObject.hpp>
#include <radObjectList.hpp>
#include <radString.hpp>

#include <rcfEncoder.hpp>

#include "cmdlineoption.hpp"
#include "cmdlineparser.hpp"

//=============================================================================
// Global variables
//=============================================================================

// The tool version
#define TOOL_VERSION_MAJOR "2"
#define TOOL_VERSION_MINOR "0"

//=============================================================================
// Class Members
//=============================================================================

//=============================================================================
// Function:    CCmdLineParser::AddOption
//=============================================================================
// Description: This member adds an option to the command line parser
//
// Return:      n/a
//------------------------------------------------------------------------------

void CCmdLineParser::AddOption( IRadCmdLineOption* pOption )
{
    //
    // Add the option to the option list
    //
    m_xIOl_Options->AddObject( reinterpret_cast< IRefCount * >( pOption ) );
}

//=============================================================================
// Function:    CCmdLineParser::SetDefaultOption
//=============================================================================
// Description: This member sets the default option
//
// Return:      n/a
//------------------------------------------------------------------------------

void CCmdLineParser::SetDefaultOption( IRadCmdLineOption* pOption )
{
    m_pDefaultOption = pOption;
    m_pDefaultOption->AddRef( );
}

//=============================================================================
// Function:    CCmdLineParser::DoParse
//=============================================================================
// Description: This member parses the command line
//
// Parameters:  pModifiedLibrary - a pointer to the modified file
//              argc - the number of arguments to parse
//              argv - an array of strings that make up the arguments
//
// Return:      n/a
//------------------------------------------------------------------------------

void CCmdLineParser::DoParse( IRadRCFEncoder* pEncoder, int argc, char* argv[ ] )
{
    rAssert( m_pDefaultOption != NULL );

    //
    // Create a pointer to an option
    //
    IRadCmdLineOption* pOption = NULL;

    //
    // Use this to make sure we don't enter an infinite loop
    //
    int lastArgc = argc + 1;

    //
    // Go through each option and interpret what to do
    //
    while( argc > 0 )
    {
        //
        // Initially, we don't know what option to use...
        //
        pOption = NULL;

        //
        // Match with an option
        //
        if( IRadCmdLineOption::IsScriptFile( argv[ 0 ] ) )
        {
            //
            // We have a script file... parse it
            //
            ParseScriptFile( pEncoder, argv[ 0 ] + 1 );

            //
            // Step to the next option
            //
            argc--;
            argv++;
        }
        else
        {
            if( IRadCmdLineOption::IsOption( argv[ 0 ] ) )
            {
                //
                // If it is an option, find it
                //
                if( m_pDefaultOption->OptionsMatch( argv[ 0 ] ) )
                {
                    pOption = m_pDefaultOption;
                }
                m_xIOl_Options->Reset( );    
                IRadCmdLineOption* pTempOption = NULL;
                while ( pTempOption = reinterpret_cast< IRadCmdLineOption* >(  m_xIOl_Options->GetNext( ) ) )
                {
                    rAssert( m_xIOl_Options != NULL );
                    if( pTempOption->OptionsMatch( argv[ 0 ] ) )
                    {
                        if( pOption != NULL )
                        {
                            ::rcfErrorOutput( RCF_BADARGS, "Ambiguous option %s", argv[ 0 ] );
                        }
                        else
                        {
                            pOption = pTempOption;
                        }
                    }
                }
                if( pOption == NULL )
                {
                    ::rcfErrorOutput( RCF_BADARGS, "Unrecognized option %s", argv[ 0 ] );
                }
            
                //
                // Step to the option's arguments
                //
                argc--;
                argv++;
            }
            else
            {
                //
                // We'll default to the default option
                // Notice that the default option MUST take arguments to make sense
                //
                pOption = m_pDefaultOption;
            }        

            //
            // Perform the option
            //
            if( !pEncoder->IsWriteable( ) && pOption->GetAltersFile( ) )
            {
                // We can't run this option!!!!!!!
                ::rcfErrorOutput
                (
                    RCF_BADARGS,
                    "Option %s tries to alter a read-only cement library",
                    pOption->GetOptionName( )
                );
            }
            else
            {
                pOption->Parse( pEncoder, &argc, &argv );
                if( !::radRCFGetGeneralInfo( )->m_AlteringLibrary && pOption->GetAltersFile( ) )
                {
                    ::radRCFGetGeneralInfo( )->m_AlteringLibrary = true;
                }
            }
        }

        //
        // Do some debug checking for bad options
        //
#ifdef RAD_DEBUG
        rAssert( lastArgc > argc );
        lastArgc = argc;
#endif
    }
}

//=============================================================================
// Function:    CCmdLineParser::IsWhitespace
//=============================================================================

bool CCmdLineParser::IsWhitespace( char c )
{
    return
    (
        c == ' '    ||
        c == '\r'   ||
        c == '\n'
    );
}

//=============================================================================
// Function:    CCmdLineParser::SkipWhitespace
//=============================================================================

unsigned int CCmdLineParser::SkipWhitespace
(
    char* pData, 
    unsigned int index,
    unsigned int fileLength,
    bool clean
)
{
    while( index < fileLength )
    {
        if( !IsWhitespace( pData[ index ] ) )
        {
            return index;
        }
        if( clean )
        {
            pData[ index ] = '\0';
        }
        index++;
    }
    return index;
}

//=============================================================================
// Function:    CCmdLineParser::IsComment
//=============================================================================

bool CCmdLineParser::IsComment( char c )
{
    return
    (
        c == '#'    ||
        c == ';'
    );
}

//=============================================================================
// Function:    CCmdLineParser::SkipComment
//=============================================================================

unsigned int CCmdLineParser::SkipComment
(
    char* pData, 
    unsigned int index,
    unsigned int fileLength,
    bool clean
)
{
    rAssert( index < fileLength );
    bool done = false;
    if( IsComment( pData[ index ] ) )
    {
        while( index < fileLength )
        {
            if( pData[ index ] == '\n' )
            {
                done = true;
            }
            if( clean )
            {
                pData[ index ] = '\0';
            }
            index++;
            if( done )
            {
                break;
            }
        }
    }
    return index;
}

//=============================================================================
// Function:    CCmdLineParser::ParseScriptFile
//=============================================================================
// Description: Parse a script file
//
// Parameters:  pModifiedLibrary - a pointer to the modified file
//              scriptFileName - the name of the script file to parse
//
// Return:      n/a
//------------------------------------------------------------------------------

void CCmdLineParser::ParseScriptFile( IRadRCFEncoder* pEncoder, const char* scriptFileName )
{
    //
    // Open the script file
    //
    HANDLE hFile = ::CreateFile
    (
        scriptFileName,
        GENERIC_READ,
        FILE_SHARE_READ,
        NULL,
        OPEN_EXISTING,
        FILE_ATTRIBUTE_NORMAL,
        NULL
    );

    if( hFile != INVALID_HANDLE_VALUE )
    {
        DWORD fileLength = ::GetFileSize( hFile, NULL );
        if( fileLength > 0 )
        {
            //
            // Read the entire file into memory
            //
            char* pFileData =
                (char*) radMemoryAlloc
                (
                    RADMEMORY_ALLOC_DEFAULT,
                    fileLength + 1
                );
            
            DWORD bytesRead = 0;
            BOOL result = ::ReadFile
            (
                hFile,
                pFileData,
                fileLength,
                &bytesRead,
                NULL
            );
            rAssert( bytesRead == fileLength );
            pFileData[ fileLength ] = '\0';

            //
            // Convert all whitespace in the file data into NULLs, and point
            // to all option commands.
            //
            unsigned int i          = 0;
            int argc                = 0;
            unsigned int sizeOfArgv = 0;

            //
            // Find out how big the file is
            //
            while( true )
            {
                //
                // Skip over whitespace and comments
                //
                i = SkipWhitespace( pFileData, i, fileLength, false );
                if( i >= fileLength ) break;
                i = SkipComment( pFileData, i, fileLength, false );
                if( i >= fileLength ) break;

                //
                // Increase the size
                //
                if
                (
                    IsComment( pFileData[ i ] ) ||
                    IsWhitespace( pFileData[ i ] )
                )
                {
                    continue;
                }
                else
                {
                    sizeOfArgv++;
                }

                //
                // Skip until whitespace
                //
                while
                (
                    i < fileLength                  &&
                    !IsComment( pFileData[ i ] )    &&
                    !IsWhitespace( pFileData[ i ] )
                )
                {
                    i++;
                }
                if( i >= fileLength ) break;
            }

            // Reset the counter
            i = 0;

            char** argv =
                (char**) ::radMemoryAlloc
                (
                    RADMEMORY_ALLOC_DEFAULT,
                    sizeOfArgv * sizeof( char* )
                );

            //
            // Parse the file
            //
            while( true )
            {
                //
                // Skip over whitespace and comments
                //
                i = SkipWhitespace( pFileData, i, fileLength, true );
                if( i >= fileLength ) break;
                i = SkipComment( pFileData, i, fileLength, true );
                if( i >= fileLength ) break;

                //
                // Set the option
                //
                if
                (
                    IsComment( pFileData[ i ] ) ||
                    IsWhitespace( pFileData[ i ] )
                )
                {
                    continue;
                }
                else
                {
                    argv[ argc ] = pFileData + i;
                    argc++;
                }

                //
                // Skip until whitespace
                //
                while
                (
                    i < fileLength                  &&
                    !IsComment( pFileData[ i ] )    &&
                    !IsWhitespace( pFileData[ i ] )
                )
                {
                    i++;
                }
                if( i >= fileLength ) break;
            }

            //
            // Parse with this data
            //
            DoParse( pEncoder, argc, argv );

            //
            // Destroy the file data and argv pointer
            //
            ::radMemoryFree( RADMEMORY_ALLOC_DEFAULT, argv );
            ::radMemoryFree( RADMEMORY_ALLOC_DEFAULT, pFileData );
        }

        //
        // Close the file
        //
        ::CloseHandle( hFile );
    }
    else
    {
        //
        // Unable to open the desired script file
        //
        ::rcfErrorOutput
        (
            RCF_BADARGS,
            "Unable to open script file %s",
            scriptFileName
        );
    }
}

//=============================================================================
// Function:    CCmdLineParser::ShowUsage
//=============================================================================
// Description: This member displays the correct usage of the command line
//              program based on all options that it knows about
//
// Return:      n/a
//------------------------------------------------------------------------------

void CCmdLineParser::ShowUsage( ) const
{
    //
    // Show the general usage
    //
    int encoderMajor = 0;
    int encoderMinor = 0;
    ::GetRcfEncoderVersion( &encoderMajor, &encoderMinor );
    printf
    (
        "Encoder V%u.%u - Tool V"TOOL_VERSION_MAJOR"."TOOL_VERSION_MINOR"\n",
        encoderMajor,
        encoderMinor
    );
    printf( "filecementer libraryname.rcf [@scriptfile] [options]\n\n" );
    
    //
    // Show the default option
    //
    if( m_pDefaultOption != NULL )
    {
        printf( "default option:\n" );
        printf
        (
            "  [%s] %s\n",
            m_pDefaultOption->GetOptionName( ),
            m_pDefaultOption->GetUsage( )
        );
    }

    //
    // Show all options
    //
    printf( "options:\n" );
    m_xIOl_Options->Reset( );    
    IRadCmdLineOption* pOption;

    while ( pOption = reinterpret_cast< IRadCmdLineOption* >(  m_xIOl_Options->GetNext( ) ) )
    {
        rAssert( m_xIOl_Options != NULL );
        printf( "  [%s] %s\n", pOption->GetOptionName( ), pOption->GetUsage( ) );
    }
}

//=============================================================================
// Function:    CCmdLineParser::Clean
//=============================================================================
// Description: Cleans up any dynamically allocated or referenced data such as
//              the option list.
//
// Return:      n/a
//------------------------------------------------------------------------------

void CCmdLineParser::Clean( )
{
    //
    // Release the default option
    //
    if( m_pDefaultOption )
    {
        m_pDefaultOption->Release( );
        m_pDefaultOption = NULL;
    }

    //
    // Release and clean all members of the option list
    //
    m_xIOl_Options = NULL;
}
    
