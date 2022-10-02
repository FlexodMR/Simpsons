//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


//=============================================================================
//
// File:        Main.cpp
//
// Subsystem:   Radical Cement File Tool - Main
//
// Description: This file contains code to help run the file cementer tool.
//
// Revisions:   V1.00   May 28, 2001        Creation
//
//=============================================================================

//=============================================================================
// Include Files
//=============================================================================

#include <stdlib.h>
#include <io.h>
#include <time.h>
#include <string.h>
#include <raddebug.hpp>
#include <radtime.hpp>
#include <radmemory.hpp>
#include <radobjectlist.hpp>

#include "cmdlineoption.hpp"
#include "cmdlineparser.hpp"
#include "filecementertool.hpp"

//=============================================================================
// Public Functions
//=============================================================================

//=============================================================================
// Function:    main
//=============================================================================
// Description: Main entry point. Platform specific entry.
//
// Parameters:  argc - the number of arguments given (including command name)
//              argv - an array of arguments from 0 to argc-1
//
// Returns:     zero     - everything went OK
//              non-zero - an error occurred
//------------------------------------------------------------------------------
int main
(
    int argc,
    char* argv[ ]
)
{
    //
    // Display a banner message.
    //
    rDebugString( "Foundation Tech - File Cementer Tool\n" );

    //
    // Set up radcore stuff
    //
    ::radTimeInitialize( );
    ::radRCFEncoderInitialize( RADMEMORY_ALLOC_DEFAULT );
    ::radRCFGeneralInfoInitialize( RADMEMORY_ALLOC_DEFAULT );

    //
    // Start a counter to display the total execution time
    //
    unsigned int startTimeOfProgram = ::radTimeGetMilliseconds( );

    //
    // Set up the error number
    //
    int errorNum = 0;

    //
    // Store the library name here
    //
    const char* libraryname = NULL;

    //
    // Create the command line parser and add all available options to it
    //
    CCmdLineParser cmdLineParser;
    cmdLineParser.SetDefaultOption( new rcfOptionUpdate( ) );
    cmdLineParser.AddOption( new rcfOptionHelp( ) );
    cmdLineParser.AddOption( new rcfOptionQuiet( ) );
    cmdLineParser.AddOption( new rcfOptionInfo( ) );
    cmdLineParser.AddOption( new rcfOptionBasedir( ) );
    cmdLineParser.AddOption( new rcfOptionAlignment( ) );
    cmdLineParser.AddOption( new rcfOptionPadNetSize( ) );
    cmdLineParser.AddOption( new rcfOptionLittleEndian( ) );
    cmdLineParser.AddOption( new rcfOptionBigEndian( ) );
    cmdLineParser.AddOption( new rcfOptionAdd( ) );
    cmdLineParser.AddOption( new rcfOptionRemove( ) );
    cmdLineParser.AddOption( new rcfOptionExport( ) );
    cmdLineParser.AddOption( new rcfOptionMultiExport( ) );
    cmdLineParser.AddOption( new rcfOptionList( ) );
    cmdLineParser.AddOption( new rcfOptionSync( ) );
    cmdLineParser.AddOption( new rcfOptionFix( ) );

    //
    // Allocate structures for storing file information
    //
    IRadRCFEncoder* pEncoder = NULL;
    ::radRCFEncoderCreate( &pEncoder, RADMEMORY_ALLOC_DEFAULT );
    rAssert( pEncoder != NULL );

    //
    // Register the callbacks
    //
    ::radRCFInfoGet( )->RegisterErrorCallback( ::radRCFGetGeneralInfo( ), NULL );
    ::radRCFInfoGet( )->RegisterActivityProcessingCallback( ::radRCFGetGeneralInfo( ), NULL );

    //
    // Try and catch any errors
    //
    try
    {
        //
        // Remove the tool name
        //
        argc--;
        argv++;

        //
        // Get the library name
        //
        if( argc < 1 || IRadCmdLineOption::IsOption( argv[ 0 ] ) )
        {
            ::rcfErrorOutput
            (
                RCF_OK,
                "Need to specify a cement library name for the tool to work"
            );
        }
        libraryname = argv[ 0 ];
        
        //
        // Remove the library name from the available options
        //
        argc--;
        argv++;
        
        //
        // Load the library file into the encoder
        //
        pEncoder->Initialize( libraryname );

        //
        // Do the parse on all remaining options
        //
        cmdLineParser.DoParse( pEncoder, argc, argv );

        //
        // Process the writeable options.
        //
        ::radRCFGetGeneralInfo( )->ProcessWriteable( pEncoder );

        //
        // Execute the tools
        //
        pEncoder->GenerateActivities( );
        if
        (
            pEncoder->IsWriteable( ) &&
            pEncoder->DoActivitiesRequireWrite( )
        )
        {
            pEncoder->Save( );
        }

        //
        // Process the readonly options.
        //
        ::radRCFGetGeneralInfo( )->ProcessReadOnly( pEncoder );

    }
    catch( CRcfException error )
    {
        //
        // If the tool cannot run, show the reason and the correct usage
        //
        if
        (
            ( error.GetErrorMessage( ) != NULL ) &&
            ( *error.GetErrorMessage( ) != '\0' )
        )
        {
            rDebugString( error.GetErrorMessage( ) );
            rDebugString( "\n" );

            printf( error.GetErrorMessage( ) );
            printf( "\n" );
        }
        if( error.GetShowUsage( ) )
        {
            cmdLineParser.ShowUsage( );
        }
        errorNum = error.GetErrorCode( );
    }

    //
    // Free encoder
    //
    pEncoder->Release( );

    //
    // Unregister error callback
    //
    ::radRCFInfoGet( )->UnregisterErrorCallback( ::radRCFGetGeneralInfo( ), NULL );
    ::radRCFInfoGet( )->UnregisterActivityProcessingCallback( ::radRCFGetGeneralInfo( ), NULL );

    //
    // Output the total execution time
    //
    unsigned int endTimeOfProgram = ::radTimeGetMilliseconds( );
    double elapsedTimeInSeconds = (double)( endTimeOfProgram - startTimeOfProgram ) / 1000.0;
    ::rcfOutput
    (
        "Total execution time is %.2f seconds.",
        elapsedTimeInSeconds
    );

    //
    // Clean up the command line parser and general info
    //
    cmdLineParser.Clean( );
    ::radRCFGetGeneralInfo( )->Clean( );

    //
    // Shut down radcore
    //
    ::radRCFGeneralInfoTerminate( );
    ::radRCFEncoderTerminate( );
    ::radTimeTerminate( );

    //
    // In a debug build we can dump all objects that may have been left stranded. Lets
    // do it to make sure everything cleaned up.
    //
#ifdef RAD_DEBUG
    radObject::DumpObjects( );
    if( radObject::s_pRadBaseObjectHead != NULL )
    {
        printf( "!DANGER!  A possible memory leak has been detected.\n" );
    }
#endif

    rDebugString( "File Cementer Tool - Terminates\n" );

    return( errorNum );
}


