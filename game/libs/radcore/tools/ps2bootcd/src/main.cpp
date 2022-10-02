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
#include <eekernel.h>
#include <libgraph.h>
#include <libdev.h>
#include <libdma.h>
#include <libpkt.h>
#include <libcdvd.h>
#include <sifcmd.h>
#include <string.h>

#include <radplatform.hpp>
#include <raddebugcommunication.hpp>
#include <radfile.hpp>
#include <radtime.hpp>

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

//
// Console defintions
//
#define SUNIT		0x01
#define PACKETSIZE	(0x100*SUNIT)
#define WORKSIZE	(0x80)
#define WORKBASE	0x70000000
#define SUPPER		(WORKBASE+WORKSIZE)
#define SLOWER		(WORKBASE+WORKSIZE+PACKETSIZE)

#define SCREEN_WIDTH    512
#define SCREEN_HEIGHT   224
#define OFFX		(((4096-SCREEN_WIDTH)/2)<<4)
#define OFFY		(((4096-SCREEN_HEIGHT)/2)<<4)
#define ConsW		(SCREEN_WIDTH/8) 
#define ConsH		26		 

static sceGsDBuff db;

//=============================================================================
// Static Data Defintions
//=============================================================================

IRadDrive* s_pDrive = NULL;

//=============================================================================
// Private Function Prototypes
//=============================================================================

bool LoadFile( const char* pFilename, void* pBuffer, unsigned int readSize, 
               unsigned int fileOffset, unsigned int* pAmountRead );

int  Gs_Initialize(void);
void Gs_SwapBuffer( void );
void ParseModuleSpec( const char * ModuleName, char * pArgData, char * ElfName, int * g_argc, char ** g_argv );

//=============================================================================
// Public Member Functions
//=============================================================================

//
// here's our arguments for the new program
//
static char g_argData[ 1024 ] = { 0 };      // where actual string is stored at
static int g_argc = 0;
static char * g_argv[ 128 ] = { 0 };

//=============================================================================
// Function:    main 
//=============================================================================
// Description: Main entry point. Load and run the target module.
// 
// Parameters:  PS2EE argc, number of command line argurments
//                    argv, array of pointes to these tokens.
//
// Returns:     0 success, non zero error.
//
// Notes:
//------------------------------------------------------------------------------

int main( int argc, char* argv[ ] )
{
    //
    // Initialize the platform, debug com system and the file system.
    //
    radMemoryInitialize( );
     radPlatformInitialize( "irx\\", IOPMediaCDVD, GameMediaCD, "IOPRP254.IMG" );
    // commented out code is for testing purpose only
    // radPlatformInitialize( "usr\\local\\sce\\iop\\modules\\", IOPMediaHost );
    radTimeInitialize( );
    radDbgComTargetInitialize( FireWire );
    // commented out code is for testing purpose only
    // radDbgComTargetInitialize( Deci );
    radFileInitialize( );

    //
    // Initialize the graphic system and create a console.
    //
	Gs_Initialize();
    Gs_SwapBuffer( );
    sceDevConsInit();

    //
    // Display banner message.
    //
    int console = sceDevConsOpen(OFFX + (8<<4), OFFY + (8<<4), ConsW, ConsH);
	sceDevConsClear(console);
	sceDevConsLocate(console, 5, 10);
	sceDevConsPrintf(console, "Foundation Technologies Boot Loader V3.6 (Sony 2.54)\n" );
	sceDevConsDraw(console);
    Gs_SwapBuffer( );

    //
    // Lets set the connection time-out to a very large number in case the host does not
    // respond. Value is in milliseconds.
    //
    radFileSetConnectTimeOut( 0x6000000 );

    //
    // Display message that we are waiting for connection form host.
    //
  	sceDevConsLocate(console, 10, 12);
	sceDevConsPrintf(console, "Waiting for connection from host ..." );
	sceDevConsDraw(console);
    Gs_SwapBuffer( );

    //
    // Get the drive object to prevent re-connections from occuring.
    //
    radDriveOpen( &s_pDrive, "RemoteDrive:" );
    s_pDrive->WaitForCompletion( );

  	sceDevConsLocate(console, 10, 12);
	sceDevConsPrintf(console, "Connected to host                       ");
	sceDevConsDraw(console);
    Gs_SwapBuffer( );
    
    radFileSetConnectTimeOut( 0x3000 );
        
    //
    // Now load the configuration file. This file names the executable we are to load.
    // Current implementation assumes the file contains a single string specifying
    // the executable to load. Future implementations may contain the name of IOP 
    // modules to load as well.
    //
    char ModuleName[ 256 + 1];
    char ElfName[ 256 + 1 ];
    unsigned int AmountRead;

    if( !LoadFile( CONFIGURATION_FILENAME, ModuleName, 0, 0, &AmountRead ))
    {
        //
        // Failed to load configuration file. 
        //
      	sceDevConsLocate(console, 10, 14);
    	sceDevConsPrintf(console, "Failed to open module configuation file. Please reset ...");
	    sceDevConsDraw(console);
        Gs_SwapBuffer( );
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
    // construct argc and argv for exectuable
    //
    ParseModuleSpec( ModuleName, g_argData, ElfName, & g_argc, g_argv );

    //
    // Display executable to load
    //
    if( strlen( ModuleName ) != 0 )
    {
        char outbuf[ 200 ];
        sprintf( outbuf, "Loading %s ...", ModuleName );
	    sceDevConsLocate(console, 10, 14);
	    sceDevConsPrintf(console, outbuf );
	    sceDevConsDraw(console);
        Gs_SwapBuffer( );
    }
    else
    {
        char outbuf[ 200 ];
        sprintf( outbuf, "Failed to load module, Please reset");
	    sceDevConsLocate(console, 10, 14);
	    sceDevConsPrintf(console, outbuf );
	    sceDevConsDraw(console);
        Gs_SwapBuffer( );
        while( 1 );
    }

    //
    // First lets load up the elf header.
    //
    ElfHeader   elfHeader;
    if( !LoadFile( ElfName, &elfHeader, sizeof( ElfHeader ), 0, &AmountRead ) )
    {
      	sceDevConsLocate(console, 10, 16);
    	sceDevConsPrintf(console, "Failure loading. Please reset ..." );
	    sceDevConsDraw(console);
        Gs_SwapBuffer( );
        while( 1 );
    }

    //
    // Now read each program header and load the appropriate data.
    //
    for( int i = 0 ; i < elfHeader.m_NumberOfProgramHeaders ; i++ )
    {
        ProgramHeader programHeader;
        LoadFile( ElfName, &programHeader, sizeof( programHeader ), 
                  elfHeader.m_ProgramHeaderOffset + (sizeof(programHeader) * i ), &AmountRead );

        FlushCache( 0 );

        //
        // Now lets read the actual program into memory. We are linked high so hopefully this will not overwrite
        // ourself.
        //           
        LoadFile( ElfName, (void*) programHeader.m_VirtualAddress, programHeader.m_ImageSize, programHeader.m_ImageOffset, &AmountRead );
    }

    //
    // Display message 
    //
    char outbuf[ 200 ];
    sprintf( outbuf, "Load of %s complete.                    ", ModuleName );
	sceDevConsLocate(console, 10, 14);
	sceDevConsPrintf(console, outbuf );
	sceDevConsDraw(console);
    Gs_SwapBuffer( );

    sprintf( outbuf, "Executing module ..." );
	sceDevConsLocate(console, 10, 16);
	sceDevConsPrintf(console, outbuf );
	sceDevConsDraw(console);
    Gs_SwapBuffer( );

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
    radDbgComTargetTerminate( );
    radTimeTerminate( );
    radPlatformTerminate( );
    radMemoryTerminate( );

    sceDevConsClose( console );

    //
    // These two commands shut down systems. Very important to do so.
    //
    sceCdInit( SCECdEXIT );
    sceSifExitCmd( );

    //
    // Flush caches.
    //
    DI( );

    FlushCache( 0 );

    FlushCache( 2 );

    //
    // This is an undocumenented command. Second arg is GP setting which appears to be ignored and
    // the next two are argv and argc
    //
    ExecPS2( elfHeader.m_EntryPoint, NULL, g_argc, g_argv );

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

//=============================================================================
// Function:    Gs_Initialize
//=============================================================================
// Description: This routine was stollen from PS2 sample code. Note sure 
//              about it but seems to set up video just fine.
// 
// Parameters:  
//
// Returns:     
//
// Notes:
//------------------------------------------------------------------------------

int Gs_Initialize(void)
{
	int sindex;
	sceVif1Packet packet[2];
	sceDmaEnv env;
	sceDmaChan *p1;
	u_long giftagAD[2] = { SCE_GIF_SET_TAG(0, 1, 0, 0, 0, 1),
			 0x000000000000000eL };
	sceDevVif0Reset();
	sceDevVu0Reset();
	sceGsResetPath();
	sceDmaReset(1);

	sceVif1PkInit(&packet[0], (u_long128 *)SUPPER);
	sceVif1PkInit(&packet[1], (u_long128 *)SLOWER);

	sceDmaGetEnv(&env);
	env.notify = 1<<SCE_DMA_VIF1; /* notify channel */
	sceDmaPutEnv(&env);

	p1 = sceDmaGetChan(SCE_DMA_VIF1);
	p1->chcr.TTE = 1;

	sceGsResetGraph(0, SCE_GS_INTERLACE, SCE_GS_NTSC, SCE_GS_FRAME);
	sceGsSetDefDBuff(&db, SCE_GS_PSMCT32, SCREEN_WIDTH, SCREEN_HEIGHT,
		SCE_GS_ZGEQUAL, SCE_GS_PSMZ24, SCE_GS_CLEAR);

	db.clear0.rgbaq.R = 0x40;
	db.clear0.rgbaq.G = 0x40;
	db.clear0.rgbaq.B = 0x80;

	db.clear1.rgbaq.R = 0x40;
	db.clear1.rgbaq.G = 0x40;
	db.clear1.rgbaq.B = 0x80;

	FlushCache(0);

	sindex = 0;
	sceVif1PkReset(&packet[sindex]);
	sceVif1PkCnt(&packet[sindex], 0);
	sceVif1PkOpenDirectCode(&packet[sindex], 0);
	sceVif1PkOpenGifTag(&packet[sindex], *(u_long128*)&giftagAD[0]);

	sceVif1PkReserve(&packet[sindex],
		sceGsSetDefAlphaEnv((sceGsAlphaEnv *)packet[sindex].pCurrent,0)
		* 4);
	sceVif1PkCloseGifTag(&packet[sindex]);
	sceVif1PkCloseDirectCode(&packet[sindex]);
	sceVif1PkEnd(&packet[sindex], 0);
	sceVif1PkTerminate(&packet[sindex]);

	/* kick Gs initialize packet */
	sceDmaSend(p1,(u_int *)
		(((u_int)packet[sindex].pBase&0x0fffffff)|0x80000000));

	/* display next in odd field when interlace */
	while(!sceGsSyncV(0));

    return( 0 );
}


//=============================================================================
// Function:    Gs_SwapBuffer
//=============================================================================
// Description: This routine simply flips the drar buffer.
// 
// Parameters:  
//
// Returns:     
//
// Notes:
//------------------------------------------------------------------------------

void Gs_SwapBuffer( void )
{
    static int frame = 0;

	sceGsSyncPath(0,0);
	sceGsSwapDBuff(&db, frame);
	++frame;

	if(frame&0x01)
	{	/* interrace half pixcel adjust */
		sceGsSetHalfOffset(&db.draw1,2048,2048, sceGsSyncV(0)^0x01);
	}
	else
	{
		sceGsSetHalfOffset(&db.draw0,2048,2048, sceGsSyncV(0)^0x01);
	}
	FlushCache(0);
	sceGsSyncPath(0,0);
}

//=============================================================================
// Function:    Gs_SwapBuffer
//=============================================================================
// Description: This routine simply flips the drar buffer.
// 
// Parameters:  
//
// Returns:     
//
// Notes:
//------------------------------------------------------------------------------

void ParseModuleSpec( const char * ModuleName, char * pArgData, char * ElfName, int * pargc, char ** argv )
{
    strcpy( pArgData, ModuleName );
    int nDataSize = strlen( pArgData );

    char seps[] = " ";
    char * token = strtok( pArgData, seps );

    (*pargc) = 0;

    while( token != NULL )
    {
        argv[ *pargc ] = token;
        token = strtok( NULL, seps );
        (*pargc) ++;
    }
    strcpy( ElfName, argv[ 0 ] );
}
