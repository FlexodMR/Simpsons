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

#include <radsound.hpp>
#include <radfile.hpp>
#include <radthread.hpp>
#include <radplatform.hpp>
//#include "..\..\source\recurse.hpp"
#include <radsoundtools.hpp>
#include <radmoviefile.hpp>
#include <errno.h>

//============================================================================
// Definitions
//============================================================================

//
// Argument codes
//

#define VIDEO "-v"
#define AUDIO_0 "-a0"
#define AUDIO_1 "-a1"
#define AUDIO_2 "-a2"
#define AUDIO_3 "-a3"
#define AUDIO_4 "-a4"
#define AUDIO_5 "-a5"
#define AUDIO_6 "-a6"
#define AUDIO_7 "-a7"
#define TARGET  "-t"
#define PLATFORM "-plat"
#define FRAMERATE "-f"

//
// Platform codes
//

#define PLAT_GCN "gcn"
#define PLAT_PS2 "ps2"
#define PLAT_XBOX "xbox"
#define PLAT_PC "pc"

//
// MAX SECTOR ALIGNMENT
//

#define MAX_SECTOR_ALIGNED 2048


//============================================================================
// ::PrintTitler
//============================================================================

void PrintTitle
(
    void
)
{
    printf("===========================================================================\n" );
    printf("RmvMaker V1.0.0| (C) 2002 Radical Entertainment | Maintained: Robert Sparks\n");
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
    printf( "\n\n");

    PrintTitle( );

    printf( "Converts sony .ipu movie files to Radical's .rmv format\n\n");
    printf( "Usage: rmvmaker.exe -plat platformcode -v source.ipu -a0 audiotrack0.rsd \n"
            "                    -a1 audiotrack1.rsd -f framerate -t target.rmv\n\n" );
    printf( "       0 to 8 audio tracks can be specified\n" );
    printf( "       platformcode: %s %s %s %s\n", PLAT_GCN, PLAT_PS2, PLAT_XBOX, PLAT_PC );
    printf( "       framerate: frames / Hectoseconds (100 seconds). Default=3000 (30fps)\n\n" );
}

struct IpuFileHeader
{
    char m_Id[ 4 ];   // 'i' 'p' 'u' 'm'
    unsigned int   m_DataSize;
    unsigned short m_Width;
    unsigned short m_Height;
    unsigned int   m_NumFrames;
};

//
// I got this file version info from the documation
//

char * HVQM4_FILEVERSION = "HVQM4 1.5";

//
// A switch to turn on and off big endian mode
//

bool g_IsHeaderBigEndian = false;


/****************************************************************************
  HVQM4VideoInfo
 ****************************************************************************/
typedef struct {
  __int16  width;				/* Image width in pixels */
  __int16  height;				/* Image height in pixels */
  __int8   h_sampling_rate;		/* Color difference horizontalsubsampling interval */
  __int8   v_sampling_rate;		/* Color difference verticalsubsampling interval */
  __int8   video_mode;
  __int8   user_define;
} HVQM4VideoInfo;

/****************************************************************************
  HVQM4AudioInfo
 ****************************************************************************/
typedef struct {
  __int8  channels;				/* Number of audio channels */
  __int8  sample_bits;			/* Number of bits per sample for one channel */
  __int8  audio_codec;		/* Audio codec type */
  __int8  multi_track;		/* multi-track info. */
  __int32 samples_per_sec;		/* Number of audio samples per second */
} HVQM4AudioInfo;

/****************************************************************************
  HVQM4Header : File information
 ****************************************************************************/
typedef struct {
  __int8   file_version[16];	/* File version */

  __int32  hdr_size;			/* Size of HVQMovieHeader [byte] */
  __int32  dat_size;			/* HVQM data size [byte] */

  __int32  gop_total;			/* Total count of GOPs */
  __int32  video_total;			/* Total count of video records */
  __int32  audio_total;			/* Total count of audio records */

  __int32  usec_per_frame;		/* Image frame interval [usec] */
  __int32  max_frame_size;		/* Maximum video record size */
  __int32  max_sp_packets;		/* Maximum packet count required for SP FIFO */
  __int32  max_audio_record_size;	/* Maximum audio record size (excluding header) */
  
  HVQM4VideoInfo  videoinfo;	/* HVQM4 file header */
  HVQM4AudioInfo  audioinfo;	/* ADPCM file header */
} HVQM4Header;

unsigned int rmvConvertEndian32( unsigned int value )
{
    if( g_IsHeaderBigEndian == false )
    {
        return value;
    }       
    else
    {
        unsigned int otherEndian;
	    
	    ( ( char * ) & otherEndian )[ 0 ] = ( ( char * ) & value )[ 3 ];
        ( ( char * ) & otherEndian )[ 1 ] = ( ( char * ) & value )[ 2 ];
        ( ( char * ) & otherEndian )[ 2 ] = ( ( char * ) & value )[ 1 ];
        ( ( char * ) & otherEndian )[ 3 ] = ( ( char * ) & value )[ 0 ];

        return otherEndian;
    }
}

unsigned short rmvConvertEndian16( unsigned short value )
{
    if( g_IsHeaderBigEndian == false )
    {
        return value;
    }       
    else
    {
        unsigned int otherEndian;
	    
	    ( ( char * ) & otherEndian )[ 0 ] = ( ( char * ) & value )[ 1 ];
        ( ( char * ) & otherEndian )[ 1 ] = ( ( char * ) & value )[ 0 ];

        return otherEndian;
    }
}

bool rmvProcessSourceVideoHeaderPs2( IRadFile * pIRadFile, RadMovieFileHeader * pRadMovieFileHeader, unsigned int frameRate )
{
    //
    // Read in the ipu file header
    //

    IpuFileHeader ipuFileHeader;
    ::memset( & ipuFileHeader, 0, sizeof( IpuFileHeader ) );

    rAssert( pIRadFile->GetSize( ) > sizeof( IpuFileHeader ) );

    pIRadFile->ReadAsync( & ipuFileHeader, sizeof( IpuFileHeader ), radMemorySpace_Local );
    pIRadFile->WaitForCompletion( );
    
    //
    // Make sure that this looks like a real file and that it hasn't been corrupted
    //

    if
    (
        ipuFileHeader.m_Id[ 0 ] != 'i' ||
        ipuFileHeader.m_Id[ 1 ] != 'p' ||
        ipuFileHeader.m_Id[ 2 ] != 'u' ||
        ipuFileHeader.m_Id[ 3 ] != 'm' ||
        ipuFileHeader.m_DataSize != pIRadFile->GetSize( ) - 8
    )
    {
        printf( "\n  ERROR: [%s] doesn't match to IPU file format\n", pIRadFile->GetFilename( ) );
        return false;;
    }

    //
    // Get mad if the movie is too big, i.e. it's longer than 0xFFFFFFFF milliseconds.
    //
    unsigned int maxFrames = ( 0xFFFFFFFF / 100000 ) * frameRate + 
                             ( 0xFFFFFFFF % 100000 ) * frameRate / 100000;

    if ( ipuFileHeader.m_NumFrames > maxFrames )
    {
        printf( "\n ERROR: movie is too long. Only movies under 0xFFFFFFFF ms long are supported.\n" );
        return false;
    }

    //
    // Prepare a rad movie file header and fill it up
    //
    
    ::memset( pRadMovieFileHeader, 0, sizeof( RadMovieFileHeader ) );

    pRadMovieFileHeader->m_Id[ 0 ] = 'r';
    pRadMovieFileHeader->m_Id[ 1 ] = 'm';
    pRadMovieFileHeader->m_Id[ 2 ] = 'v';
    pRadMovieFileHeader->m_Id[ 3 ] = 'p';
    pRadMovieFileHeader->m_Id[ 4 ] = 's';
    pRadMovieFileHeader->m_Id[ 5 ] = '2';
    pRadMovieFileHeader->m_Id[ 6 ] = '1';
    pRadMovieFileHeader->m_Id[ 7 ] = '2';
    pRadMovieFileHeader->m_Width = ipuFileHeader.m_Width;
    pRadMovieFileHeader->m_Height = ipuFileHeader.m_Height;
    pRadMovieFileHeader->m_NumFrames = ipuFileHeader.m_NumFrames;
    pRadMovieFileHeader->m_DataPosition = RAD_MOVIE_FILE_DATA_POSITION;
    pRadMovieFileHeader->m_FrameRate = frameRate;
    return true;
}

bool rmvProcessSourceVideoHeaderGcn( IRadFile * pIRadFile, RadMovieFileHeader * pRadMovieFileHeader )
{
    //
    // Read in the hvqm4 header
    //

    HVQM4Header hvqm4Header;
    ::memset( & hvqm4Header, 0, sizeof( hvqm4Header ) );

    rAssert( pIRadFile->GetSize( ) > sizeof( hvqm4Header ) );

    pIRadFile->SetPositionAsync( 0 );
    pIRadFile->ReadAsync( & hvqm4Header, sizeof( hvqm4Header ), radMemorySpace_Local );
    pIRadFile->SetPositionAsync( 0 );
    pIRadFile->WaitForCompletion( );
    
    //
    // Make sure that this looks like a real file and that it hasn't been corrupted
    //

    if
    (
        hvqm4Header.file_version[ 0  ] == HVQM4_FILEVERSION[ 0  ] && 
        hvqm4Header.file_version[ 1  ] == HVQM4_FILEVERSION[ 1  ] &&
        hvqm4Header.file_version[ 2  ] == HVQM4_FILEVERSION[ 2  ] &&
        hvqm4Header.file_version[ 3  ] == HVQM4_FILEVERSION[ 3  ] &&
        hvqm4Header.file_version[ 4  ] == HVQM4_FILEVERSION[ 4  ] &&
        hvqm4Header.file_version[ 5  ] == HVQM4_FILEVERSION[ 5  ] &&
        hvqm4Header.file_version[ 6  ] == HVQM4_FILEVERSION[ 6  ] &&
        hvqm4Header.file_version[ 7  ] == HVQM4_FILEVERSION[ 7  ] &&
        hvqm4Header.file_version[ 8  ] == HVQM4_FILEVERSION[ 8  ] &&
        hvqm4Header.file_version[ 9  ] == HVQM4_FILEVERSION[ 9  ] &&
        hvqm4Header.file_version[ 10 ] == HVQM4_FILEVERSION[ 10 ] &&
        hvqm4Header.file_version[ 11 ] == HVQM4_FILEVERSION[ 11 ] &&
        hvqm4Header.file_version[ 12 ] == HVQM4_FILEVERSION[ 12 ] &&
        hvqm4Header.file_version[ 13 ] == HVQM4_FILEVERSION[ 13 ] &&
        hvqm4Header.file_version[ 14 ] == HVQM4_FILEVERSION[ 14 ] &&
        hvqm4Header.file_version[ 15 ] == HVQM4_FILEVERSION[ 15 ]
    )
    {
        printf( "\n  ERROR: [%s] doesn't match to HVQM4 file format\n", pIRadFile->GetFilename( ) );
        return false;;
    }

    // ++++++++++++++++++++++++++++
    // Don't forget that this is all big endian
    // ++++++++++++++++++++++++++++


    // The number of frames needs to fit in an unsigned short
    // At 30fps 0xffff is about 36 minutes
    rAssert( (unsigned short)hvqm4Header.video_total == 0 );

    //
    // Prepare a rad movie file header and fill it up
    //
    
    ::memset( pRadMovieFileHeader, 0, sizeof( RadMovieFileHeader ) );

    pRadMovieFileHeader->m_Id[ 0 ] = 'r';
    pRadMovieFileHeader->m_Id[ 1 ] = 'm';
    pRadMovieFileHeader->m_Id[ 2 ] = 'v';
    pRadMovieFileHeader->m_Id[ 3 ] = 'g';
    pRadMovieFileHeader->m_Id[ 4 ] = 'c';
    pRadMovieFileHeader->m_Id[ 5 ] = 'n';
    pRadMovieFileHeader->m_Id[ 6 ] = '1';
    pRadMovieFileHeader->m_Id[ 7 ] = '0';
    pRadMovieFileHeader->m_Width = hvqm4Header.videoinfo.width;
    pRadMovieFileHeader->m_Height = hvqm4Header.videoinfo.height;
    pRadMovieFileHeader->m_NumFrames = ::rmvConvertEndian16( ( unsigned short ) ::rmvConvertEndian32( hvqm4Header.video_total ) );
    pRadMovieFileHeader->m_DataPosition = ::rmvConvertEndian32(  RAD_MOVIE_FILE_DATA_POSITION ); 
    return true;
}

int main( int argc, char * argv[ ] )
{
    if( argc < 3 )
    {
        DumpUsage( );
        return -1;
    }

    //
    // Initialization
    //

    ::radThreadInitialize( );        
    ::radMemoryInitialize( );
    ::radTimeInitialize( );
    ::radFileInitialize( );

    //
    // Scan through the args.  Out of laziness I will assume
    // a fixed maximum number of arguments.
    //
    
    unsigned int videoFileNamePosition = 0;
    unsigned int audioFileNamePositions[ 8 ];
    unsigned int targetFileNamePosition = 0;
    unsigned int platformPosition = 0;
    unsigned int frameratePosition = 0;
    unsigned int videoFileCount = 0;
    unsigned int audioFileCount = 0;
    unsigned int targetFileCount = 0;
    unsigned int platformCount = 0;
    unsigned int framerateCount = 0;

    
    int argcounter = 1;
    bool isError = false;

    while( argcounter < argc )
    {
        //
        // Check for our identifiers
        //

        if( strcmp( argv[ argcounter ], VIDEO ) == 0 )
        {
            if( argcounter + 1 < argc )
            {
                // We found the name of a video file.  Remember where it is.

                argcounter++;
                videoFileCount++;
                videoFileNamePosition = argcounter;
            }
            else
            {
                isError = true;
                break;
            }
        }
        else if( strcmp( argv[ argcounter ], AUDIO_0 ) == 0 )
        {
            if( argcounter + 1 < argc )
            {
                // We found the name of an audio file.  Remember where it is.

                argcounter++;
                audioFileCount++;
                audioFileNamePositions[ 0 ] = argcounter;
            }
            else
            {
                isError = true;
                break;
            }
        }
        else if( strcmp( argv[ argcounter ], AUDIO_1 ) == 0 )
        {
            if( argcounter + 1 < argc )
            {
                // We found the name of an audio file.  Remember where it is.

                argcounter++;
                audioFileCount++;
                audioFileNamePositions[ 1 ] = argcounter;
            }
            else
            {
                isError = true;
                break;
            }
        }
        else if( strcmp( argv[ argcounter ], AUDIO_2 ) == 0 )
        {
            if( argcounter + 1 < argc )
            {
                // We found the name of an audio file.  Remember where it is.

                argcounter++;
                audioFileCount++;
                audioFileNamePositions[ 2 ] = argcounter;
            }
            else
            {
                isError = true;
                break;
            }
        }
        else if( strcmp( argv[ argcounter ], AUDIO_3 ) == 0 )
        {
            if( argcounter + 1 < argc )
            {
                // We found the name of an audio file.  Remember where it is.

                argcounter++;
                audioFileCount++;
                audioFileNamePositions[ 3 ] = argcounter;
            }
            else
            {
                isError = true;
                break;
            }
        }
        else if( strcmp( argv[ argcounter ], AUDIO_4 ) == 0 )
        {
            if( argcounter + 1 < argc )
            {
                // We found the name of an audio file.  Remember where it is.

                argcounter++;
                audioFileCount++;
                audioFileNamePositions[ 4 ] = argcounter;
            }
            else
            {
                isError = true;
                break;
            }
        }
        else if( strcmp( argv[ argcounter ], AUDIO_5 ) == 0 )
        {
            if( argcounter + 1 < argc )
            {
                // We found the name of an audio file.  Remember where it is.

                argcounter++;
                audioFileCount++;
                audioFileNamePositions[ 5 ] = argcounter;
            }
            else
            {
                isError = true;
                break;
            }
        }
        else if( strcmp( argv[ argcounter ], AUDIO_6 ) == 0 )
        {
            if( argcounter + 1 < argc )
            {
                // We found the name of an audio file.  Remember where it is.

                argcounter++;
                audioFileCount++;
                audioFileNamePositions[ 6 ] = argcounter;
            }
            else
            {
                isError = true;
                break;
            }
        }
        else if( strcmp( argv[ argcounter ], AUDIO_7 ) == 0 )
        {
            if( argcounter + 1 < argc )
            {
                // We found the name of an audio file.  Remember where it is.

                argcounter++;
                audioFileCount++;
                audioFileNamePositions[ 7 ] = argcounter;
            }
            else
            {
                isError = true;
                break;
            }
        }
        else if( strcmp( argv[ argcounter ], TARGET ) == 0 )
        {
            if( argcounter + 1 < argc )
            {
                // We found the name of an audio file.  Remember where it is.

                argcounter++;
                targetFileCount++;
                targetFileNamePosition = argcounter;
            }
            else
            {
                isError = true;
                break;
            }
        }
        else if( strcmp( argv[ argcounter ], PLATFORM ) == 0 )
        {
            if( argcounter + 1 < argc )
            {
                // We found the platform that we're working for

                argcounter++;
                platformCount++;
                platformPosition = argcounter;
            }
            else
            {
                isError = true;
                break;
            }
        }
        else if( strcmp( argv[ argcounter ], FRAMERATE ) == 0 )
        {
            if( argcounter + 1 < argc )
            {
                // We found the platform that we're working for

                argcounter++;
                framerateCount++;
                frameratePosition = argcounter;
            }
            else
            {
                isError = true;
                break;
            }
        }
        else
        {
            isError = true;
            break;
        }
        argcounter++;
    }

    if( isError == true )
    {
        printf( "\n  ERROR: Unrecognized token [%s]\n", argv[ argcounter ] );
        DumpUsage( );
        return -1;
    }

    // We require a video track, a target and not too many audio tracks

    if( platformCount == 0 || videoFileCount == 0 || targetFileCount == 0 || audioFileCount > RAD_MOVIE_FILE_MAX_AUDIO_TRACKS )
    {
        printf( "\n  ERROR: Require platform, video file, target file, and not too many audio file (max %d)\n", RAD_MOVIE_FILE_MAX_AUDIO_TRACKS );
        printf(   "         Detected [%d] video [%d] target [%d] audio [%d] platform\n", videoFileCount, targetFileCount, audioFileCount, platformCount );
        DumpUsage( );
        return -1;
    }

    // Parse the frame rate.
    unsigned int frameRate = 0;
    if ( strcmp( argv[ platformPosition ], PLAT_PS2 ) == 0  )
    {
        if ( framerateCount != 0 )
        {
            char* ptr = argv[ frameratePosition ];
            while ( *ptr != '\0' )
            {
                if ( *ptr >= '0' && *ptr <= '9' )
                {
                    frameRate = frameRate * 10 + ( *ptr - '0' );
                }
                else
                { 
                    frameRate = 0;
                    break;
                }
                ptr++;
            }

            if ( frameRate < 1 || frameRate > 6000 )
            {
                printf( "\n  ERROR: frame rate [%s] must be between 1 and 6000 frames / 100 seconds.\n", argv[ frameratePosition ] );
                return -1;
            }
        }
        else
        {
            frameRate = 3000;
        }

        if( framerateCount > 1  )
        {
            printf( "\n  ERROR: Only 1 frame rate (-f) can be specified per movie.\n" );
            return -1;
        }
    }
    else
    {
        if ( framerateCount != 0 )
        {
            printf( "\n ERROR: frame rate (-f) is only supported on PS2.\n" );
            return -1;
        }
    }

    if( strcmp( argv[ platformPosition ], PLAT_XBOX ) != 0 )
    {
        //
        // Process Video File Header
        //

        RadMovieFileHeader movieFileHeader;

        ref< IRadFile > refSourceVideoFile = NULL;
        ::radFileOpen( & refSourceVideoFile, argv[ videoFileNamePosition ], false, OpenExisting );

        if( refSourceVideoFile == NULL )
        {
            printf( "\n  ERROR: Could not open file [%s]\n", argv[ videoFileNamePosition ] );
            return -1;
        }
    
        refSourceVideoFile->WaitForCompletion( );

        if( refSourceVideoFile->IsOpen( ) == false )
        {
            printf( "\n  ERROR: Could not open file [%s]\n", argv[ videoFileNamePosition ] );
            return -1;
        }

        if( strcmp( argv[ platformPosition ], PLAT_PS2 ) == 0 )
        {
            if( ::rmvProcessSourceVideoHeaderPs2( refSourceVideoFile, & movieFileHeader, frameRate ) == false )
            {
                return -1;
            }
        }
        else if( strcmp( argv[ platformPosition ], PLAT_GCN ) == 0 )
        {
            g_IsHeaderBigEndian = true;

            if( ::rmvProcessSourceVideoHeaderGcn( refSourceVideoFile, & movieFileHeader ) == false )
            {
                return -1;
            }
        }
        else
        {
            rAssert( false );
        }

        //
        // Create an output file
        //

        ref< IRadFile > refIRadRmvFile = NULL;
        ::radFileOpen( & refIRadRmvFile, argv[ targetFileNamePosition ], true, CreateAlways );

        if( refIRadRmvFile == NULL )
        {
            printf( "\n  ERROR: Could not create file [%s]\n", argv[ 2 ] );
            return -1;
        }
    
        refIRadRmvFile->WaitForCompletion( );

        if( refIRadRmvFile->IsOpen( ) == false )
        {
            printf( "\n  ERROR: Could not open file [%s]\n", argv[ 2 ] );
            return -1;
        }

        //
        // Now put in some filler until we reach the data start position
        //

        unsigned int position = 0;
        refIRadRmvFile->GetPositionAsync( & position );
        refIRadRmvFile->WaitForCompletion( );

        void * pFill = ::radMemoryAlloc( RADMEMORY_ALLOC_DEFAULT, ::rmvConvertEndian32( movieFileHeader.m_DataPosition ) - position );
        ::memset( pFill, 0xAD, ::rmvConvertEndian32( movieFileHeader.m_DataPosition ) - position );

        refIRadRmvFile->WriteAsync( pFill, ::rmvConvertEndian32( movieFileHeader.m_DataPosition ) - position );
        refIRadRmvFile->WaitForCompletion( );

        ::radMemoryFree( pFill );

        //
        // Now read data from the source video file and put it into the new rmv file
        //

        unsigned int currentSrcPosition = 0;
        unsigned int currentRmvPosition = 0;

        refSourceVideoFile->GetPositionAsync( & currentSrcPosition );
        refSourceVideoFile->WaitForCompletion( );

        refIRadRmvFile->GetPositionAsync( & currentRmvPosition );
        refIRadRmvFile->WaitForCompletion( );

        rAssert( currentRmvPosition == ::rmvConvertEndian32( movieFileHeader.m_DataPosition ) );

        unsigned int transferBufferSize = 1024 * 1024;
        unsigned int bytesToTransfer = refSourceVideoFile->GetSize( ) - currentSrcPosition;
        void * pTransfer = ::radMemoryAlloc( RADMEMORY_ALLOC_DEFAULT, transferBufferSize );

        unsigned int bytesInBuffer = 0;

        while( bytesToTransfer > 0 )
        {
            if( bytesToTransfer > transferBufferSize )
            {
                bytesInBuffer = transferBufferSize;
            }
            else
            {
                bytesInBuffer = bytesToTransfer;
            }

            refSourceVideoFile->ReadAsync( pTransfer, bytesInBuffer );
            refSourceVideoFile->WaitForCompletion( );

            refIRadRmvFile->WriteAsync( pTransfer, bytesInBuffer );
            refIRadRmvFile->WaitForCompletion( );

            bytesToTransfer -= bytesInBuffer;
        }

        ::radMemoryFree( pTransfer );

        //
        // Now write the audio files to the rmv file
        //

        movieFileHeader.m_NumAudioTracks = ::rmvConvertEndian32( audioFileCount );

        for( unsigned int track = 0; track < audioFileCount; track++ )
        {
            //
            // Open the audio file
            //

            ref< IRadFile > refIRadRsdFile = NULL;
            ::radFileOpen( & refIRadRsdFile, argv[ audioFileNamePositions[ track ] ], false, OpenExisting );

            if( refIRadRsdFile == NULL )
            {
                printf( "\n  ERROR: Could not open file [%s]\n", argv[ audioFileNamePositions[ track ] ] );
                return -1;
            }

            refIRadRsdFile->WaitForCompletion( );

            if( refIRadRsdFile->IsOpen( ) == false )
            {
                printf( "\n  ERROR: Could not open file [%s]\n", argv[ audioFileNamePositions[ track ] ] );
                return -1;
            }

            unsigned int fileBytesRemaining = refIRadRsdFile->GetSize( );

            // Record this size in the header

            movieFileHeader.m_pAudioTrackSizes[ track ] = ::rmvConvertEndian32( fileBytesRemaining );

            // Transfer the data across

            unsigned int currentRsdPosition = 0;
            unsigned int currentRmvPosition = 0;

            refIRadRmvFile->GetPositionAsync( & currentRmvPosition );
            refIRadRmvFile->WaitForCompletion( );

            //
            // Make sure that the audio files are sector aligned
            //
    
            if( ( currentRmvPosition % MAX_SECTOR_ALIGNED ) != 0 )
            {
                unsigned int fillSize = MAX_SECTOR_ALIGNED - ( currentRmvPosition % MAX_SECTOR_ALIGNED );

                void * pFill = ::radMemoryAlloc( RADMEMORY_ALLOC_DEFAULT, fillSize );
                ::memset( pFill, 0xAD, fillSize );

                refIRadRmvFile->WriteAsync( pFill, fillSize );
                refIRadRmvFile->WaitForCompletion( );

                ::radMemoryFree( pFill );
            }

            refIRadRmvFile->GetPositionAsync( & currentRmvPosition );
            refIRadRmvFile->WaitForCompletion( );

            rAssert( ( currentRmvPosition % MAX_SECTOR_ALIGNED ) == 0 );

            //
            // Record this position in the header
            //

            movieFileHeader.m_pAudioTrackOffsets[ track ] = ::rmvConvertEndian32( currentRmvPosition );

            //
            // Now transfer the data
            //

            unsigned int transferBufferSize = 1024 * 1024;
            unsigned int bytesToTransfer = refIRadRsdFile->GetSize( );
            void * pTransfer = ::radMemoryAlloc( RADMEMORY_ALLOC_DEFAULT, transferBufferSize );

            unsigned int bytesInBuffer = 0;

            while( bytesToTransfer > 0 )
            {
                if( bytesToTransfer > transferBufferSize )
                {
                    bytesInBuffer = transferBufferSize;
                }
                else
                {
                    bytesInBuffer = bytesToTransfer;
                }

                refIRadRsdFile->ReadAsync( pTransfer, bytesInBuffer );
                refIRadRsdFile->WaitForCompletion( );

                refIRadRmvFile->WriteAsync( pTransfer, bytesInBuffer );
                refIRadRmvFile->WaitForCompletion( );

                bytesToTransfer -= bytesInBuffer;        
            }

            ::radMemoryFree( pTransfer );
        }

        //
        // Calculate the data size
        //

        unsigned int nowPosition = 0;
        refIRadRmvFile->GetPositionAsync( & nowPosition );
        refIRadRmvFile->WaitForCompletion( );

        movieFileHeader.m_DataSize = ::rmvConvertEndian32( refIRadRmvFile->GetSize( ) );

        //
        // Finally, Write the header to disk
        //

        refIRadRmvFile->SetPositionAsync( 0 );
        refIRadRmvFile->WriteAsync( ( void * ) & movieFileHeader, sizeof( RadMovieFileHeader ) );
        refIRadRmvFile->WaitForCompletion( );

        //
        // Print out a success message
        //

        printf( "... Done\n\n" );

        //
        // We're done
        //

        refSourceVideoFile = NULL;
        refIRadRmvFile = NULL;
    }
    else
    {
        //
        // The XBox currently just passes its arguments off to xmvtool
        //
        char cmdstring[ 2048 ] = { 0 };
        char * cmdexe = getenv( "COMSPEC" );
        char * xmvtool = "xmvtool";

        if ( cmdexe == NULL )
        {
            cmdexe = ( _osver & 0x8000 ) ? "command.com" : "cmd.exe";
        }

        //
        // Prepare the cmdstring with the video file and the target file
        //

        sprintf( cmdstring, "%s /c %s -v %s -o %s",
                 cmdexe, xmvtool, argv[ videoFileNamePosition ], argv[ targetFileNamePosition ] );

        //
        // Append audio file files to the cmdstring
        //

        for( unsigned int track = 0; track < audioFileCount; track++ )
        {
            strcat( strcat( cmdstring, " -a " ), argv[ audioFileNamePositions[ track ] ] );
        }

        STARTUPINFO StartupInfo;
        PROCESS_INFORMATION ProcessInformation;

        memset(&StartupInfo,0,sizeof(StartupInfo));
        StartupInfo.cb = sizeof(StartupInfo);
        StartupInfo.dwFlags = STARTF_USESHOWWINDOW;
        StartupInfo.wShowWindow = SW_HIDE | SW_SHOWMINIMIZED;


        if ( ! CreateProcess( cmdexe, cmdstring, NULL, NULL, TRUE, CREATE_NO_WINDOW, NULL, NULL, &StartupInfo, &ProcessInformation ) )
        {
            ULONG dosretval = GetLastError();

            if ( ( dosretval == ENOENT ) || ( dosretval == EACCES) )
            {
                // security access error
                printf( "\nError detected in xmvtool\n" );
            }

            printf( "\nUnable to launch the xbox xmvtool.exe.\n "
                    "     * Do you have the XDK installed?\n "
                    "     * Is the xbox/bin directory in your path?\n" );
        }
        else
        {
            WaitForSingleObject( ProcessInformation.hProcess, (DWORD)(-1L) );
            CloseHandle( ProcessInformation.hProcess);
            CloseHandle( ProcessInformation.hThread);
            printf( "...Done\n" );
        }
    }

    ::radFileTerminate( );
    ::radTimeTerminate( );
    ::radMemoryTerminate( );
    ::radThreadTerminate( );

    return 1;
}
