
#include <io.h>
#include <stdio.h>
#include <radsoundfile.hpp>
#include "..\..\radmusic\tools\inc\radmusictools.hpp"
#include "compparser.hpp"
#include "..\..\..\..\radsound\tools\inc\radsoundtools.hpp"
#include <radmusic/radmusic.hpp>
#include "../../../../radmusic/tools/inc/music_schema_gen.hpp"
#include "../../../../radmusic/src/radmusic/music/music_composition.hpp"

static char g_pLastError [ 256 ] = { "OK" };
static bool g_Silent = false;
static bool g_CheckDate = false;

radMusicToolsTextCallback * g_pProgressCallback = NULL;

using namespace radmusic;
using namespace ods;

void Progress( const char *fmt, ... )
{
    if ( g_pProgressCallback != NULL )
    {
        va_list va_alist = {0}; 
        char    printfstr[ RAD_DEBUG_PRINT_MAX_LENGTH ];

        va_start( va_alist, fmt ); 

        ::_vsnprintf( printfstr, RAD_DEBUG_PRINT_MAX_LENGTH, fmt, va_alist );

        printfstr[ RAD_DEBUG_PRINT_MAX_LENGTH - 1 ] = '\0';

        va_end( va_alist ); 

        g_pProgressCallback( printfstr );
    }
}

void rstProgressCallback( const char * pMessage )
{
    Progress( pMessage );
}

bool radMusicWriteRsdMetaData(
    const char * pInputPath,
    const char * pOutputPath,
    rsd_file & ptr_rsd_file,
    IRadSoundHalAudioFormat::Encoding encoding )
{
    char crlf[ 3 ];
    crlf[ 0 ] = 13;
    crlf[ 1 ] = 10;
    crlf[ 2 ] = 0;
    
    FILE * pInputFile = 0;
    bool ret = true;

    char source_file_name[ 256 ];
    rsd_file_file_name( ptr_rsd_file, source_file_name, 256 ); 
    
    char fileSource[ 256 ];
    sprintf( fileSource, "%s%s.wav", pInputPath, source_file_name );
    char fileTarget[ 256 ];
    sprintf( fileTarget, "%s%s.rsd", pOutputPath, source_file_name );

    Progress( fileSource );

    if ( false == rstConvertFile( fileSource, fileTarget, encoding, g_CheckDate, g_Silent ) )
    {
        sprintf( g_pLastError, ": Failed to convert file: [%s] Reason: [%s]", fileSource, rstGetLastError( ) );
        goto BAIL;
    }

    pInputFile = ::fopen( fileTarget, "rb" );

    if ( pInputFile == NULL )
    {
        sprintf( g_pLastError, ": Failed to open target file: [%s]", fileTarget );
        goto BAIL;
    }
    
    radSoundHalFileHeader rshfh;

    if ( 1 != ::fread( & rshfh, sizeof( rshfh ), 1, pInputFile ) )
    {
        sprintf( g_pLastError, ": Failed to read from target file: [%s]", fileTarget );
        ::fclose( pInputFile );
    }

    if ( ::fseek( pInputFile, 0, SEEK_END ) != 0 )
    {
        sprintf( g_pLastError, ": Failed to seek to end of target file: [%s]", fileTarget );
        goto BAIL;
    }

    long fileSize = ::ftell( pInputFile ) ;

    if ( fileSize == -1L )
    {
        sprintf( g_pLastError, ": Failed to get size of target file: [%s]", fileTarget );
        goto BAIL;
    }


    if ( ::fseek( pInputFile, 0, SEEK_SET ) != 0 )
    {
        sprintf( g_pLastError, ": Failed to seek to start of target file: [%s]", fileTarget );
        goto BAIL;
    }

    audio_format_encoding( rsd_file_audio_format( ptr_rsd_file ), (uint32) encoding );
    audio_format_sampling_rate( rsd_file_audio_format( ptr_rsd_file ), rshfh.m_SamplingRate );
    audio_format_bit_resolution( rsd_file_audio_format( ptr_rsd_file ), rshfh.m_BitResolution );
    audio_format_channels( rsd_file_audio_format( ptr_rsd_file ), rshfh.m_Channels );
    rsd_file_size( ptr_rsd_file, fileSize );

    goto CLEAN;
    
    BAIL:
        
        ret = false;
            
    CLEAN:
    
        if ( pInputFile != 0 )
        {
            ::fclose( pInputFile );
        }

    return ret;
}

bool radMusicToolsCompileScript(
    bool reverse_endian,
    const char * pFileName,
    const char * pOutputFileName,
    IRadSoundHalAudioFormat::Encoding encoding,
    bool checkDate,
    bool silent )
{
    g_Silent = silent;
    g_CheckDate = checkDate;
        
    pointer ptr_project;
    comp ptr_comp;  
    
    ::radMemoryInitialize( );
    ::radTimeInitialize( );
    
    char inputDir[ 256 ];
    char inputDrive[ 256 ];
    char inputPath[ 256 ];

    char outputDir[ 256 ];
    char outputDrive[ 256 ];
    char outputPath[ 256 ];

    unsigned int i = 0;

    char * pFileMemory = NULL;
    FILE * pInputFile = NULL;
    
    long inputFileSize = 0;
    
    bool ret = false;

    if ( ! g_Silent )
    {
        printf( "compiling [%s]-->[%s]\n", pFileName, pOutputFileName );
    }

    Progress( "compiling [%s]-->[%s]\n", pFileName, pOutputFileName );

    _splitpath( pFileName, inputDrive, inputDir, NULL, NULL );
    _splitpath( pOutputFileName, outputDrive, outputDir, NULL, NULL );

    strcpy( inputPath, inputDrive );
    strcat( inputPath, inputDir );

    strcpy( outputPath, outputDrive );
    strcat( outputPath, outputDir );

    rstCreateDirectoryRecursive( outputPath );
    
    ptr_project = create_schema( "radmusic_comp", reverse_endian );
        
    radmusic_create_schema( );
        
    pInputFile = ::fopen( pFileName, "rb" );
   
    if ( pInputFile == NULL )
    {
        sprintf( g_pLastError, ": failed to open input file: [%s]", pFileName );
        goto BAIL;
    }

    if ( ::fseek( pInputFile, 0, SEEK_END ) != 0 )
    {
        sprintf( g_pLastError, ": fseek failed to get input file size: [%s]", pFileName );
        goto BAIL;
    }

    inputFileSize = ::ftell( pInputFile );

    if ( ::fseek( pInputFile, 0, SEEK_SET ) != 0 )
    {
        sprintf( g_pLastError, ": failed to seek to start of input file: [%s]", pFileName );
        goto BAIL;
    }

    if ( inputFileSize == -1L )
    {
        sprintf( g_pLastError, ": ftell failed to get input file size: [%s]", pFileName );
        goto BAIL;
    }

    pFileMemory = (char*) ::radMemoryAllocAligned( RADMEMORY_ALLOC_DEFAULT, inputFileSize, 128 );;

    if ( ::fread( pFileMemory, inputFileSize, 1, pInputFile ) != 1 )
    {
        sprintf( g_pLastError, ": failed to read from input file: [%s]", pFileName );
        goto BAIL;
    }
    

    if ( pInputFile != NULL )
    {
        ::fclose( pInputFile );
    }    

    ptr_comp =
        parse_comp(
            ptr_project,
            pFileMemory,
            inputFileSize );
    
    if ( is_null( ptr_comp ) )
    {
        sprintf( g_pLastError, ": Error in script: [%s]", parse_comp_get_last_error( ) );
        goto BAIL;
    }

    rstSetConvertFileProgressCallback( rstProgressCallback );

    for( i = 0; i < rsd_file_array_num_items( comp_rsd_files( ptr_comp ) ); i ++ )
    {
        rsd_file ptr_rsd_file = rsd_file_array_item_at( comp_rsd_files( ptr_comp ), i );
        
        if ( ! radMusicWriteRsdMetaData( inputPath, outputPath, ptr_rsd_file, encoding ) )
        {
            goto BAIL;
        }
    }
    
    stream_info si;
    si.p_sf = & stdio_stream_functions;
    si.p_stream = stdio_stream_open( pOutputFileName, true );
    
    if ( si.p_stream == 0 )
    {
        sprintf( g_pLastError, ": failed to open output file: [%s]", pOutputFileName );
        goto BAIL;    
    }
    
    
    if ( ! save_schema( & si ) )
    {
        sprintf( g_pLastError, ": failed to write to output file: [%s]", pOutputFileName );
        stdio_stream_close( si.p_stream );        
        goto BAIL;    
    }
    
    stdio_stream_close( si.p_stream );

    // dump_objects( );
    
    ret = true;
    
    goto CLEAN;

    BAIL:
    
        ret = false;

    /*	LPVOID lpMsgBuf;

		FormatMessage( 
			FORMAT_MESSAGE_ALLOCATE_BUFFER | 
			FORMAT_MESSAGE_FROM_SYSTEM | 
			FORMAT_MESSAGE_IGNORE_INSERTS,
			NULL,
			GetLastError(),
			MAKELANGID(LANG_NEUTRAL, SUBLANG_DEFAULT), // Default language
			(LPTSTR) &lpMsgBuf,
			0,
			NULL 
		);
		
		printf( "Last Windows Error: %s", lpMsgBuf ); */

        if ( pInputFile != NULL )
        {
            ::fclose( pInputFile );
        }

    CLEAN:
    
        radMemoryFreeAligned( RADMEMORY_ALLOC_DEFAULT, pFileMemory );
                
        ptr_comp = (comp) pointer_null;
        ptr_project     = pointer_null;        
        destroy_schema( );    
    
        ::radMemoryTerminate( );
        ::radTimeTerminate( );

    return ret;
}

const char * radMusicToolsGetLastError( void )
{
    return g_pLastError;
}

void radMusicToolsSetProgressCallback( radMusicToolsTextCallback * pFx )
{
    g_pProgressCallback = pFx;
}

void radMusicToolsSetWarningCallback( radMusicToolsTextCallback * pFx )
{
    ::rstSetConvertFileWarningCallback( pFx );
}