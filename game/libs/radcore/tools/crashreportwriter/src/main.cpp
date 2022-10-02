//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


//=============================================================================
//
// File:        main.cpp
//
// Subsystem:	RadSound WavToRsd Conversion Tool
//
// Description:	Console application for the conversion tool
//
//
// Revisions:   Oct 24, 2001
//
//=============================================================================

#include <windows.h>
#include <stdio.h>

#include <radobject.hpp>
#include <radfile.hpp>
#include <radtime.hpp>

#include "textfilewriter.hpp"
#include "gcncrashreporter.hpp"
#include "ps2crashreporter.hpp"
#include "xboxcrashreporter.hpp"

//============================================================================
// ::PrintTitle
//============================================================================

void PrintTitle
(
    void
)
{
    printf("===========================================================================\n" );
    printf("CrashReportWriter V1.00|(C) 2002 Radical Entertainment|Maint: Robert Sparks\n");
    printf("===========================================================================\n" );
}

//============================================================================
// ::DumpUsage
//============================================================================

void DumpUsage
(
    void
)
{
    PrintTitle( );

    printf( "Use this program in conjunction with the radCrashHandler and the radCrashReportExtractor:\n");
    printf( "   1) radCrashHandler generates a binary crash report on a memory card\n");
    printf( "   2) radCrashReportExtractor moves the report from the memory card to the host computer\n");
    printf( "   3) radCrashReportWriter translates the binary report\n");
    printf( "\nUsage: crashreportwriter.exe [platform] [inputfile] [outputreport] [crashing executable]\n\n" );
    printf( "platform = xbox, gamecube, ps2, or ps2mw\n\n" );
}


int main( int argc, char * argv[ ] )
{
    ::radMemoryInitialize( );
    ::radTimeInitialize( );
    ::radFileInitialize( );

    PrintTitle( );

    if ( argc <= 4 )
    {
        DumpUsage( );
        return 0;
    }
     
    // Assume that the platform is the first argument

    char * pPlatform = argv[ 1 ];

    // Assume that the input file is the second argument
    // And the executable is the fourth argument

    char * pInputFileName = argv[ 2 ];
    char * pExecutableFileName = argv[ 4 ];

    ref< IRadFile > pInputFile;
    ::radFileOpen( & pInputFile, pInputFileName, false, OpenExisting );
    rAssert( pInputFile != NULL );
    pInputFile->WaitForCompletion( );

    ref< IRadCrashReporter > pICrashReporter = NULL;
   
    if( strcmp( "xbox", pPlatform ) == 0 )
    {
        pICrashReporter = new( RADMEMORY_ALLOC_DEFAULT )radCrashReporterXBox( pInputFile, pExecutableFileName );
    }
    else if( strcmp( "gamecube", pPlatform ) == 0 )
    {
        pICrashReporter = new( RADMEMORY_ALLOC_DEFAULT )radCrashReporterGcn( pInputFile, pExecutableFileName );
    }
    else if( strcmp( "ps2", pPlatform ) == 0 )
    {
        pICrashReporter = new( RADMEMORY_ALLOC_DEFAULT )radCrashReporterPs2( pInputFile, pExecutableFileName );
    }
    else
    {
        DumpUsage( );
        return -1;
    }

    // Assume that the output file is the third argument

    char * pOutputFileName = argv[ 3 ];

    ref< IRadFile > pOutputFile;
    ::radFileOpen( & pOutputFile, pOutputFileName, true, CreateAlways );
    rAssert( pOutputFile != NULL );

    ref< textFileWriter > pTextFileWriter = new( RADMEMORY_ALLOC_DEFAULT )textFileWriter( pOutputFile, pICrashReporter );
    pTextFileWriter->OutputFile( );


    pInputFile = NULL;
    pOutputFile = NULL;
    pICrashReporter = NULL;
    pTextFileWriter = NULL;

    ::radFileTerminate( );
    ::radTimeTerminate( );
    ::radMemoryTerminate( );

    return 0;
}
