//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


//=============================================================================
//
// File:        Main.cpp
//
// Subsystem:   Radical Foundation Technologies Boot Loader
//
// Description:	This file contains the main entry point to the bootloader.
//
// Revisions:	V1.00	Jul 30, 2001    Creation
//
// Warning:     The loader should not output any data to the TTY system. If
//              if does, TTY output will not work for the loaded program. I
//              do not understand why but thats the way it is.
//
//=============================================================================

//=============================================================================
// Include Files
//=============================================================================

#include <stdlib.h>
#include <stdio.h>
#include <string.h>

#include <radplatform.hpp>
#include <raddebugcommunication.hpp>
#include <radtextdisplay.hpp>
#include <radfile.hpp>
#include <radtime.hpp>
#include <dolphin/vi.h>
#include <dolphin/os.h>

//=============================================================================
// Local Defintions
//=============================================================================

//
// This constant governs the the name of the configuration file used to specify
// the name of the module to load and run.
//
#define CONFIGURATION_FILENAME   "bootload.cfg"

//
// This strcuture defines the elf header found at the beginning of an elf file.
// Its definition was arrived at through reverse engineering,
//
struct ElfHeader
{
    unsigned char   m_Magic[ 16 ];              // Sixteen byte signature
    unsigned short  m_Type;                     // ?
    unsigned short  m_Machine;                  // ?
    unsigned int    m_Version;                  // Version
    void            (*m_EntryPoint)(void);      // Where to start program.
    unsigned int    m_ProgramHeaderOffset;      // Offset in file to program headers
    unsigned int    m_SectionHeaderOffset;      // Offset in file to section headers 
    unsigned int    m_Flags;                    // ?
    unsigned short  m_HeaderSize;               // Size of this header
    unsigned short  m_ProgramHeaderSize;        // Size of program headers
    unsigned short  m_NumberOfProgramHeaders;   // Number of program headers
    unsigned short  m_SectionHeaderSize;        // Size of section headers
    unsigned short  m_NumberOfSectionHeaders;   // Number of section headers
    unsigned short  m_StringTableIndex;         // ?
};

//
// Program Header. Reverse engineered.
//
struct ProgramHeader
{
    unsigned int    m_Type;                     // ?
    unsigned int    m_ImageOffset;              // Where in file load image is
    unsigned int    m_VirtualAddress;           // Where to load    
    unsigned int    m_PhysicalAddress;             
    unsigned int    m_ImageSize;                // Size of file image to load    
    unsigned int    m_MemorySize;               // Size of memory required for program
    unsigned int    m_Flags;                    // ?
    unsigned int    m_Alignment;                // ?
};

IRadTextDisplay* g_Screen = NULL;
 

//=============================================================================
// Static Data Defintions
//=============================================================================

IRadDrive* s_pDrive = NULL;

//=============================================================================
// Private Function Prototypes
//=============================================================================

bool LoadFile( const char* pFilename, void* pBuffer, unsigned int readSize, 
               unsigned int fileOffset, unsigned int* pAmountRead );

//============================================================================
// Local Functions
//=============================================================================

// The rVideoString and rVideoPrintf macros/functions defined below
// are used to clone important debugging output to the console video
// display if available.
#define rVideoString( str )           \
    {                                 \
        if( g_Screen != NULL )        \
        {                             \
            g_Screen->TextOut( str ); \
        }                             \
        rDebugString( str );          \
    }

//=============================================================================
// Public Member Functions
//=============================================================================

//=============================================================================
// Function:    main 
//=============================================================================
// Description: Main entry point. Load and run the target module.
// 
// Parameters:  PS2EE argc, number of command line argurments
//                    argv, array of pointes to these tokens.
//
// Returns:     0 success, non zero error.
//s
// Notes:
//------------------------------------------------------------------------------

int main( int argc, char* argv[ ] )
{

    // The GBox will require channel 2.
    // For now using 0 as I'm testing on the DDH.
    
    radDbgComGameCubeInitInfo channelInfo;
    channelInfo.m_HioChannel = 2;
    
    //
    // Initialize the platform, debug com system and the file system.
    //
    radMemoryInitialize( );
    radPlatformInitialize( );
    radTimeInitialize( );
    radDbgComTargetInitialize( HostIO, radDbgComDefaultPort, &channelInfo );
    radFileInitialize( );
    
    //
    // Init video output screen for console.
    //
    radTextDisplayGet( &g_Screen );
        
    //
    // Display banner message.
    //
    rVideoString( "\n\nFoundation Technologies GC Boot Loader v1.0\n" );
   
    
    //
    // Lets set the connection time-out to a very large number in case the host does not
    // respond. Value is in milliseconds.
    //
    radFileSetConnectTimeOut( 0x6000000 );

    //
    // Display message that we are waiting for connection form host.
    //
    rVideoString( "Waiting for connection from host ...\n" );
    
    //
    // Get the drive object to prevent re-connections from occuring.
    //
    radDriveOpen( &s_pDrive, "RemoteDrive:" );
    s_pDrive->WaitForCompletion( );
  	
    rVideoString( "Connected to host                       \n" );
  
    radFileSetConnectTimeOut( 0x3000 );
        
    //
    // Now load the configuration file. This file names the executable we are to load.
    // Current implementation assumes the file contains a single string specifying
    // the executable to load. Future implementations may contain the name of IOP 
    // modules to load as well.
    //
    char ModuleName[ 256 + 1];
    unsigned int AmountRead;

    if( !LoadFile( CONFIGURATION_FILENAME, ModuleName, 0, 0, &AmountRead ))
    {
        //
        // Failed to load configuration file. 
        //
      	rVideoString( "Failed to open module configuation file. Please reset ...\n" );
        while( 1 );
    }
    
    //
    // Make sure the string is null terminated.
    //
    unsigned int index = 0;
    while( AmountRead > 0 )
    {
        if( (ModuleName[ index ] == 0x0d) || (ModuleName[ index ] == 0x0a) )
        {
            break;
        }
        index++;
        AmountRead--;
    }

    ModuleName[ index ] = '\0';

    //
    // Display executable to load
    //
    if( strlen( ModuleName ) != 0 )
    {
        char outbuf[ 200 ];
        sprintf( outbuf, "Loading %s ", ModuleName );
	    rVideoString( outbuf );
    }
    else
    {
        rVideoString( "Failed to load module, Please reset\n" );
        while( 1 );
    }

    //
    // First lets load up the elf header.
    //
    ElfHeader   elfHeader;
    if( !LoadFile( ModuleName, &elfHeader, sizeof( ElfHeader ), 0, &AmountRead ) )
    {
    	rVideoString( "Failure loading. Please reset ...\n" );
	    while( 1 );
    }

    //
    // Now read each program header and load the appropriate data.
    //
    for( int i = 0 ; i < elfHeader.m_NumberOfProgramHeaders ; i++ )
    {
        ProgramHeader programHeader;
        LoadFile( ModuleName, &programHeader, sizeof( programHeader ), 
                  elfHeader.m_ProgramHeaderOffset + (sizeof(programHeader) * i ), &AmountRead );

        //
        // Now lets read the actual program into memory. We are linked high so hopefully this will not overwrite
        // ourself.
        //           
    	if (programHeader.m_ImageSize == 0) continue;
        LoadFile( ModuleName, (void*) programHeader.m_VirtualAddress, programHeader.m_ImageSize, programHeader.m_ImageOffset, &AmountRead );
        DCFlushRange( (void*) programHeader.m_VirtualAddress, programHeader.m_ImageSize );
        rVideoString( "." );
    }

    //
    // Display message 
    //
    char outbuf[ 200 ];
    sprintf( outbuf, "Done\n", ModuleName );
	rVideoString( outbuf );

    //
    // Loop for a seconds.
    //
    unsigned int startTime = radTimeGetMilliseconds( );
    while( radTimeGetMilliseconds( ) - startTime < 1000 )
    {
        radFileService( );
    }

    //
    // Shutdown things.
    //
    s_pDrive->Release( );

    radFileTerminate( );

    //
    // Note: this function is not working properly.
    // It should not be commented out.  A bug has been logged 
    // in tracker.
    //    radDbgComTargetTerminate( );

    radTimeTerminate( );
    radPlatformTerminate( );
    radMemoryTerminate( );

    //
    // Flush caches
    // Note: there has to be a better way
    //    
    for( register unsigned i = 0x80000000; i < 0x80000000 + 48 * 1024 * 1024; i += 32 )
    {
        asm( "icbi 0, i" );
    }

	rVideoString( "Executing module ...\n" );

    asm( "sync" );      // wait for icbi operation to be globally performed
    asm( "isync" );     // remove copy in own instruction buffer
    
    elfHeader.m_EntryPoint();
    
    //
    // Release the RadTextDisplay interface
    //
    if( g_Screen != NULL )
    {
        g_Screen->Release( );
        g_Screen = NULL;
    }

    return( 0 );
    
}      

//=============================================================================
// Function:    LoadFile
//=============================================================================
// Description: This function will load a data from a file into a buffer
// 
// Parameters:  pFilename   - name of file
//              pBuffer     - where to copy data
//              readSize    - number of bytes( zero, if want to read entire file
//              fileOffset  - where in file to read from,
//              pAmountRead - bytes read
//
// Returns:     true - success, false - error
//
// Notes:
//------------------------------------------------------------------------------

bool LoadFile
( 
    const char*     pFilename,
    void*           pBuffer, 
    unsigned int    readSize, 
    unsigned int    fileOffset,
    unsigned int*   pAmountRead
)
{
    //
    // First open the file,
    //
    IRadFile* pFile;

    s_pDrive->FileOpen( &pFile, pFilename );
    pFile->WaitForCompletion( );

    if( !pFile->IsOpen( ) )
    {
        return( false );
    }
    
    //
    // Set position and initiate the read. If size is zero, read entire file.
    //
    if( readSize == 0 )
    {
        readSize = pFile->GetSize( );
    }
    *pAmountRead = readSize;

    pFile->SetPositionAsync( fileOffset );
    pFile->ReadAsync( pBuffer, readSize );

    pFile->WaitForCompletion( );

    pFile->Release( );

    radFileService( );

    return( true );
}