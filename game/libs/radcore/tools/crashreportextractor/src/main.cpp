//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


//=============================================================================
//
// File:        Main.cpp
//
// Subsystem:   Foundation Technologies CrashReportExtractor
//
// Description: This file implements the CrashReportExtractor, which works
//              in conjunction with the CrashHandler and CrashReportWriter.
//              Use this tool to extract binary CrashHandler files from your
//              memory card and make available for the CrashReportWriter
//
// Creation:    April 1, 2002  RWS
//
//=============================================================================

//=============================================================================
// Include Files
//=============================================================================

#include <radstacktrace.hpp>

#include <raddebug.hpp>
#include <radfile.hpp>
#include <radtime.hpp>
#include <radplatform.hpp>
#include <raddebugcommunication.hpp>
#include "../../../src/radcrashhandler/crashrecords.hpp"

//=============================================================================
// Definitions
//=============================================================================

#ifdef RAD_GAMECUBE
#define MEMORY_CARD "MEMCARDCHANNELA:"
#endif

#ifdef RAD_PS2
#define MEMORY_CARD "MEMCARDSLOT1:"
#endif

//=============================================================================
// Public Functions
//=============================================================================

#ifdef RAD_GAMECUBE

//
// Gamecube currently requires that operators new and delete be implemented.
//

void* operator new( size_t size )
{
    return( radMemoryAlloc( RADMEMORY_ALLOC_DEFAULT, size ) );
}

void* operator new[ ]( size_t size )
{
    return( radMemoryAlloc( RADMEMORY_ALLOC_DEFAULT, size ) );
}

void operator delete( void* ptr )
{
    radMemoryFree( ptr );
}

inline void operator delete[ ]( void* ptr )
{
    radMemoryFree( ptr );
}

#endif  // RAD_GAMECUBE

//=============================================================================
// Function:    main
//=============================================================================
// Description: Main entry point. Platform specific entry.
//
//------------------------------------------------------------------------------

#if defined RAD_PS2 || defined RAD_GAMECUBE
int main( void )
#endif
{
    rDebugString( "CrashReportExtractor V1.00\n" );
  
    //
    // FTech Initialization
    //

    ::radMemoryInitialize();
    ::radPlatformInitialize
    (
        #ifdef RAD_PS2
		    "IRX\\", IOPMediaHost
        #endif
    );
    ::radTimeInitialize( );
    ::radDbgComTargetInitialize
    (
        #if defined RAD_PS2
            Deci
        #elif defined RAD_XBOX || defined RAD_WIN32
            WinSocket
        #elif defined RAD_GAMECUBE
            HostIO
        #endif
    );
    ::radFileInitialize( );

    //
    // Tool 
    //

    // Get the memory card drive

    ref< IRadDrive > pMemoryCard = NULL;
    radDriveOpen( & pMemoryCard, MEMORY_CARD, NormalPriority, RADMEMORY_ALLOC_DEFAULT );
    rAssert( pMemoryCard != NULL );
    pMemoryCard->WaitForCompletion( );

    // Get some info about the card

    IRadDrive::MediaInfo mediaInfo;
    pMemoryCard->GetMediaInfoAsync( & mediaInfo );
    pMemoryCard->WaitForCompletion( );

    // Get the remote drive

    ref< IRadDrive > pRemoteDrive = NULL;
    radDriveOpen( & pRemoteDrive, "REMOTEDRIVE:", NormalPriority, RADMEMORY_ALLOC_DEFAULT );
    rAssert( pRemoteDrive != NULL );
    pRemoteDrive->WaitForCompletion( );

    //
    // Step through all of the crash handler files on the memory card
    // and write them to the remote drive
    //

    IRadDrive::DirectoryInfo directoryInfo;
    sprintf( directoryInfo.m_Name, "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX" );


    ref< IRadFile > pInputFile = NULL;
    ref< IRadFile > pOutputFile = NULL;    

    pMemoryCard->FindFirstAsync( "*.crh", & directoryInfo );
    pMemoryCard->WaitForCompletion( );

//
//
//  WHY CAN'T I ENUMERATE ALL OF THE FILES?????
//
//
//    while( directoryInfo.m_Type != IRadDrive::DirectoryInfo::IsDone )
    {
        if( directoryInfo.m_Type == IRadDrive::DirectoryInfo::IsFile )
        {
            // Open file on memory card

            pMemoryCard->FileOpen( & pInputFile, directoryInfo.m_Name, 
                false, OpenExisting, NormalPriority, 0, 
                RADMEMORY_ALLOC_DEFAULT, radMemorySpace_Local );
            rAssert( pInputFile != NULL );
            pMemoryCard->WaitForCompletion( );
            pInputFile->WaitForCompletion( );
           
            // Read the report

            void * pBuffer = ::radMemoryAllocAligned( RADMEMORY_ALLOC_TEMP, pInputFile->GetSize( ), 1024 );
            pInputFile->ReadAsync( pBuffer, pInputFile->GetSize( ), radMemorySpace_Local );
            pInputFile->WaitForCompletion( );

            // Create a files on the remote drive

            pRemoteDrive->FileOpen( & pOutputFile, directoryInfo.m_Name, 
                true, CreateAlways, NormalPriority, 0, 
                RADMEMORY_ALLOC_DEFAULT, radMemorySpace_Local );
            rAssert( pOutputFile != NULL );
            pRemoteDrive->WaitForCompletion( );

            // Write out the report to the remote drive

            pOutputFile->WriteAsync( pBuffer, pInputFile->GetSize( ), radMemorySpace_Local );
            pOutputFile->WaitForCompletion( );

            // Close the files

           ::radMemoryFreeAligned( RADMEMORY_ALLOC_TEMP, pBuffer );
           pBuffer = NULL;
           pInputFile = NULL;
           pOutputFile = NULL;
        }

        
        // Move on to the next file

//      pMemoryCard->FindNextAsync( & directoryInfo );
//      pMemoryCard->WaitForCompletion( );
    }

    //
    // Tool Termination
    //

    pInputFile = NULL;
    pOutputFile = NULL;
    pMemoryCard = NULL;
    pRemoteDrive = NULL;

    //
    // FTech Termination
    //

    ::radFileTerminate( );
    ::radDbgComTargetTerminate( );
    ::radTimeTerminate( );
    ::radPlatformTerminate( );
    ::radMemoryTerminate( );

    return 0;
}


