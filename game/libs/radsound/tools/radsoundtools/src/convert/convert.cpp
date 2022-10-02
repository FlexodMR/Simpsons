//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================



#include <time.h>
#include <windows.h>
#include <assert.h>
#include <string.h>
#include <stdio.h>
#include <encvag.h>
#include <convert/gcadpcm/convertgcadpcm.hpp>
#include <convert/vag/convertvag.hpp>
#include <convert/imaadpcm/convertimaadpcm.hpp>
#include <convert/radicaladpcm/radicaladpcm.hpp>
#include <file/file.hpp>
#include <file/InterleavedStream.hpp>
#include <radsoundfile.hpp>
#include <wav/waveinfo.hpp>
#include <file/createDir.hpp>
#include <file/recurse.hpp>
#include <radsoundtools.hpp>
#include <output/output.hpp>

#define COPY_BUFFER_SIZE ( 1024 * 1024 )

// For GAMECUBE adpcm data:
// 14 sample per frame, 8 bytes per frame, 1 frame per block
const int GCN_INTERLEAVE_BLOCK_SIZE = 8;

char g_ModuleFileName[ 256 ];

void fill_file_header( char header[ RSD_FILE_DATA_OFFSET ], const char * pDataType, unsigned int channels, unsigned int bitResolution, unsigned int samplingRate )
{
    ::memset( header, '-', RSD_FILE_DATA_OFFSET );
    
    radSoundHalFileHeader * p_h = (radSoundHalFileHeader*) header;

    ::memset( p_h, '*', sizeof( *p_h ) );
    
    memcpy( p_h->m_RsdDataTag, RADSOUNDHAL_FILE_VERSION, 4 );
    memcpy( p_h->m_SoundDataType, pDataType, 4 );
    p_h->m_Channels = channels;
    p_h->m_BitResolution = bitResolution;
    p_h->m_SamplingRate = samplingRate;
    
}

bool ConvertToGCAdpcm
(
    const char * pSource,
    const char * pTarget
)
{
    unsigned long dataSize;
    unsigned long dataOffset;
    unsigned long numberOfSamples;

    unsigned long samplingRate;
    unsigned long bitResolution;
    unsigned long channels;

	bool ret = false;

	WAVEFORMATEX wfex;

    if ( ! rstGetWaveInfo( pSource, & dataSize, & dataOffset, & numberOfSamples, & samplingRate, & bitResolution, & channels, &wfex ) )
    {
        return false;
    }

    if ( bitResolution != 16 )
    {
        return printError("Error: Sample is not 16-bit; GameCube DSP-ADPCM format requires 16-bit PCM sample.\n" );
    }

    if ( channels > GCN_ADPCM_MAX_CHANNELS )
    {
        return printError("Error: Doesn't support more than [ %i ] channel at this time.\n", GCN_ADPCM_MAX_CHANNELS );
    }

    // Grab mono PCM data from each channel of the wave file.
    InterleavedStream * aChannelStreams = new InterleavedStream[ channels ];
    for ( unsigned int i = 0; i < channels; i ++ )
    {
        aChannelStreams[ i ].Initialize
        (
            pSource,
            dataOffset,
            i,
            channels, ( bitResolution / 8 ),
            dataSize
        );
    }

    //
    // Initalize ADPCM storage data
    //
    gcnADPCMHeaderStruct PcmInfo[ GCN_ADPCM_MAX_CHANNELS ] = { 0 };   // header
    unsigned char * pCompressedData[ GCN_ADPCM_MAX_CHANNELS ] = { NULL }; // compressed data
    unsigned int uADPCMDataSize = ::getBytesForAdpcmBuffer( numberOfSamples );  // size of compressed data

    //
    // align each channel to 32 bytes size
    //
    if ( uADPCMDataSize % 32 )
    {
        uADPCMDataSize += 32 - ( uADPCMDataSize % 32 );
    }

    assert( ( uADPCMDataSize % 32 ) == 0 );

    //
    // Convert each channel
    //
    for ( i = 0; i < channels; i ++ )
    {
        printInfoSilent("Converting GameCube DSP-ADPCM Channel: [%d] ... \n", i );

        // get the size of raw wave data
        unsigned int uWaveDataSize = 0;
        if ( !aChannelStreams[ i ].GetSize( & uWaveDataSize ) )
        {
            ret = false;
            break;
        }

        // get raw wave data in PCM
        char * pWaveData = new char[ uWaveDataSize ];
        if ( !aChannelStreams[ i ].ReadBytes( pWaveData, uWaveDataSize ) )
        {
            delete pWaveData;
            ret = false;
            break;
        }

        pCompressedData[ i ] = new unsigned char[ uADPCMDataSize ];
        ZeroMemory( pCompressedData[ i ], uADPCMDataSize );

        //
        // encode data
        //
        ::encode( (short*)pWaveData, pCompressedData[ i ], & PcmInfo[ i ], numberOfSamples );
        ::getLoopContext( pCompressedData[ i ], & PcmInfo[ i ], 0 );    // we always loop from begin of the file


        printInfoSilent( "---------------------------------------------------------------------------\n");

        delete pWaveData;
        ret = true;
    }

    unsigned int nBlockCount = uADPCMDataSize / GCN_INTERLEAVE_BLOCK_SIZE;
    
    //
    // Now write each chunk of the target file. 0/1/0/1/0/1/0/1/0/1
    //
    if ( ret == true )
    {
        printInfoSilent( "Writing Target File...\n" );

        File * pTargetFile = new File( pTarget );

        if ( pTargetFile->Open( true ) )
        {
            char header_and_pad[ RSD_FILE_DATA_OFFSET ];

            fill_file_header( header_and_pad, "GADP", channels, bitResolution, samplingRate );

            radSoundHalFileHeader * p_h = (radSoundHalFileHeader*) header_and_pad;
            //
            // fill in GAMECUBE specific header
            //
            for ( i = 0; i < channels; i ++ )
            {
                p_h->m_gcnAdpcmInfo[ i ] = PcmInfo[ i ];
            }
            
            int nTotalBytes = 0;
            //
            // write header
            //
            if ( ! pTargetFile->WriteBytes( header_and_pad, RSD_FILE_DATA_OFFSET ) )
            {
                ret = false;
            }

            nTotalBytes += RSD_FILE_DATA_OFFSET;
            
            // write interleaved data blocks to target file
            for ( unsigned int block = 0; block < nBlockCount; block ++ )
            {
                for ( i = 0; i < channels; i++ )
                {
                    if ( ! pTargetFile->WriteBytes( (char*) & pCompressedData[ i ][ block * GCN_INTERLEAVE_BLOCK_SIZE ], GCN_INTERLEAVE_BLOCK_SIZE ) )
                    {
                        ret = false;
                        break;
                    }
                    nTotalBytes += GCN_INTERLEAVE_BLOCK_SIZE;
                }
            }
        }

        pTargetFile->Close( );
        delete pTargetFile;
    }

    delete[] aChannelStreams;

    for ( i = 0; i < channels; i ++ )
    {
        delete[] pCompressedData[ i ];
    }

    return ret;
}

#define XBOX_ADPCM_SAMPLES_PER_BLOCK    64

bool ConvertToXAdpcm
(
    const char * pSource,
    const char * pTarget
)
{
    unsigned long dataSize;
    unsigned long dataOffset;
    unsigned long numberOfSamples;

    unsigned long samplingRate;
    unsigned long bitResolution;
    unsigned long channels;
	
	bool ret = false;

	WAVEFORMATEX wfex;

    if ( rstGetWaveInfo( pSource, & dataSize, & dataOffset, & numberOfSamples, & samplingRate, & bitResolution, & channels, &wfex ) )
    {
        if ( bitResolution < 16 )
        {
            printInfoSilent("Warning: Sample is < 16-bit; consider using a higher quality sample.\n" );
        }

		File * pSourceFile = new File( pSource );
		
		if ( pSourceFile->Open( false ) )
		{
            File * pTargetFile = new File( pTarget );

			if ( pSourceFile->SetPosition( dataOffset ) )
			{
				if ( pTargetFile->Open( true ) )
				{
				    printInfoSilent( "Opening ADPCM Codec ...\n" );

					IMAADPCMWAVEFORMAT wfxEncode;

					CImaAdpcmCodec codec;
					codec.CreateImaAdpcmFormat( (unsigned short ) channels, samplingRate, XBOX_ADPCM_SAMPLES_PER_BLOCK, &wfxEncode );

					// Calculate number of ADPCM blocks and length of ADPCM data

					unsigned int blockSize = ( wfex.nBlockAlign * XBOX_ADPCM_SAMPLES_PER_BLOCK );
					unsigned int numberOfDestinationBlocks = dataSize / blockSize;
					unsigned int extraBytes = dataSize % blockSize;

					if( extraBytes != 0 )
					{
						extraBytes = blockSize - extraBytes;

						printInfoSilent( "Block Size is: [%d]\n", blockSize );
						printInfoSilent( "Source Data is [%d] bytes short of a full (uncompressed) ADPCM block...\n", extraBytes );

						numberOfDestinationBlocks++;
					}

					unsigned int destinationLength = numberOfDestinationBlocks * wfxEncode.wfx.nBlockAlign;

					unsigned char * pSourceData = new unsigned char[ dataSize + extraBytes ];

					::memset( pSourceData + dataSize, 0, extraBytes );
					
					if ( pSourceData == NULL )
					{
						printError("Failed to allocate memory" );		
					}
					else
					{
						printInfoSilent( "Reading Source File ...\n" );

						if ( pSourceFile->ReadBytes( (char*) pSourceData, dataSize ) )
						{
							// Allocate a buffer for encoded data
							unsigned char * pTargetData = new unsigned char[ destinationLength ];

							printInfoSilent( "Source Bytes: [%d]\n", dataSize + extraBytes );
							printInfoSilent( "Target Bytes: [%d]\n", destinationLength );
							printInfoSilent( "Compression Ratio Is: [%f]\n", (double) destinationLength / ( (double) ( dataSize + extraBytes ) ) );

							if ( pTargetData == NULL )
							{
								printError("Failed to allocate target memory" );
							}
							else
							{
							// Initialize the codec
								if( FALSE == codec.Initialize( &wfxEncode, TRUE ) )
								{
									printError("Couldn't initialize codec.\n" );
								}
								else
								{
									printInfoSilent( "Converting to ADPCM ...\n" );

									if( FALSE == codec.Convert( pSourceData, pTargetData, numberOfDestinationBlocks ) )
									{
										printError("XADPCM Codec failed.\n" );
									}
									else
									{
										printInfoSilent( "Writing target file ...\n" );

										char header_and_pad[ RSD_FILE_DATA_OFFSET ];

										fill_file_header( header_and_pad, "XADP", channels, bitResolution, samplingRate );

										if ( pTargetFile->WriteBytes( header_and_pad, RSD_FILE_DATA_OFFSET ) )
										{
											if ( pTargetFile->WriteBytes( (char*) pTargetData, destinationLength ) )
											{
												printInfoSilent( "Done ...\n" );
												ret = true;
											}
										}							
									}
								}

								delete [] pTargetData;
							}
						}

						delete [] pSourceData;
					}

					pTargetFile->Close( );
					delete pTargetFile;
				}
			}

			pSourceFile->Close( );
			delete pSourceFile;
		}
	}

	return ret;
}

bool ConvertToWav
(
    const char * pSource,
    const char * pTarget,
    bool convertEndian
)
{
    unsigned long dataSize;
    unsigned long dataOffset;
    unsigned long numberOfSamples;

    unsigned long samplingRate;
    unsigned long bitResolution;
    unsigned long channels;

    bool ret = false;

    if ( rstGetWaveInfo( pSource, & dataSize, & dataOffset, & numberOfSamples, & samplingRate, & bitResolution, & channels, NULL ) )
    {
        if ( bitResolution < 16 )
        {
            printInfoSilent("Warning: Sample is < 16-bit; consider using a higher quality sample.\n" );
        }

        File sourceFile( pSource );
        
        if ( sourceFile.Open( false ) )
        {
            File targetFile( pTarget );

            if ( targetFile.Open( true ) )
            {
                char header_and_pad[ RSD_FILE_DATA_OFFSET ];            

                fill_file_header( header_and_pad, convertEndian ? "PCMB" : "PCM ", channels, bitResolution, samplingRate );
                    
                if ( targetFile.WriteBytes( header_and_pad, RSD_FILE_DATA_OFFSET ) )
                {                    
                    if ( sourceFile.SetPosition( dataOffset ) )
                    {                        
                        if ( dataSize > 0 )
                        {
                            printInfoSilent( "Writing Target File... \n" );

                            char * buffer = new char [COPY_BUFFER_SIZE ];

                            unsigned int chunksToWrite = dataSize / COPY_BUFFER_SIZE;
                            unsigned int lastChunkSize = dataSize % COPY_BUFFER_SIZE;

                            if ( lastChunkSize > 0 )
                            {
                                chunksToWrite++;
                            }

                            ret = true;

                            for( unsigned int i = 0; i < chunksToWrite; i ++ )
                            {
                                printInfoSilent( "\rProgress: [%d%%]", (int) ( ( (float) (i + 1) / (float) chunksToWrite ) * 100.0f ) );

                                printProgress( "Converting: [%s] - [%d%%]", pSource, (int) ( ( (float) (i + 1) / (float) chunksToWrite ) * 100.0f ) );

                                unsigned int thisChunkSize = ( i == chunksToWrite - 1 ) ? ( lastChunkSize ) : ( COPY_BUFFER_SIZE );

                                if ( sourceFile.ReadBytes( buffer, thisChunkSize  ) )
                                {
                                    //
                                    // Convert endian (gamecube)
                                    //

                                    if ( ( convertEndian == true ) && ( bitResolution > 8 ) )
                                    {
                                        unsigned int shortsToConvert = thisChunkSize / 2;

                                        short * pShorts = (short*) buffer;

                                        for( unsigned int i = 0; i < shortsToConvert; i ++ )
                                        {
                                            short temp;

                                            ((char*)&temp)[ 0 ] = ((char*)( & (pShorts[i]) ))[ 1 ];
                                            ((char*)&temp)[ 1 ] = ((char*)( & (pShorts[i]) ))[ 0 ];

                                            pShorts[ i ] = temp;
                                        }
                                    }

                                    // Write buffer out

                                    if ( !targetFile.WriteBytes( buffer, ( i == chunksToWrite - 1 ) ? ( lastChunkSize ) : ( COPY_BUFFER_SIZE ) ) )
                                    {
                                        ret = false;
                                        break;
                                    }
                                }
                                else
                                {
                                    ret = false;
                                    break;
                                }
                            }
                            
                            printInfoSilent( "\nDone...\n" );

                                                        
                            delete [] buffer;                               
                                
                        }
                        else
                        {
                            printError("Size of data in source file is zero" );
                        }
                    }
                }

				targetFile.Close( );
            }

            sourceFile.Close( );
        }
    }
    
    return ret;        
}

//============================================================================
// Class: VagConverter
//============================================================================
       
bool ConvertToVag( const char * pSource, const char * pTarget, bool looping, unsigned int chunkSize )
{
    unsigned long dataSize;
    unsigned long dataOffset;
    unsigned long numberOfSamples;

    unsigned long samplingRate;
    unsigned long bitResolution;
    unsigned long channels;

    if ( chunkSize <= 0 )
    {
        printError("Chunk size must be greater than zero" );
        return false;
    }

    if ( ( chunkSize % 16 ) != 0 )
    {
        printError("The .vag chunk size must be a multiple of 16" );
        return false;
    }

    bool ret = true;

    if ( rstGetWaveInfo( pSource, & dataSize, & dataOffset, & numberOfSamples, & samplingRate, & bitResolution, & channels, NULL ) )
    {
        if ( bitResolution != 16 )
        {
            printError("To create Rsd-Vag files, .wav source must be 16-bit" );
            return false;
        }

        InterleavedStream * aChannelStreams = new InterleavedStream[ channels ];
        File * aChannelTempFiles = new File[ channels ];

        for ( unsigned int i = 0; i < channels; i ++ )
        {
            aChannelStreams[ i ].Initialize
            (
                pSource,
                dataOffset,
                i,
                channels, ( bitResolution / 8 ),
                dataSize
            );

            char buffer[ _MAX_PATH ];
            sprintf( buffer, "%s-%d-%d.tmp", pTarget, i, rand() );

            aChannelTempFiles[ i ].SetFileName( buffer );
            aChannelTempFiles[ i ].Open( true );
        }

        //
        // Convert each channel
        //
        for ( i = 0; i < channels; i ++ )
        {
            printInfoSilent("Converting Vag Channel: [%d] ... \n", i );

            if ( ! ConvertVag( & aChannelStreams[ i ], & aChannelTempFiles[ i ], looping ) )
            {
                ret = false;
                break;
            }

            printInfoSilent( "---------------------------------------------------------------------------\n");

        }

        //
        // Now write each chunk of the target file. 0/1/0/1/0/1/0/1/0/1
        //

        if ( ret == true )
        {

            printInfoSilent( "Writing Target File...\n" );

            File * pTargetFile = new File( pTarget );
            if ( pTargetFile->Open( true ) )
            {
                char header_and_pad[ RSD_FILE_DATA_OFFSET ];
                fill_file_header( header_and_pad, "VAG ", channels, bitResolution, samplingRate );
                
                if ( pTargetFile->WriteBytes( header_and_pad, RSD_FILE_DATA_OFFSET ) )
                {
                    unsigned int channelSize = 0;

                    if ( aChannelTempFiles[ 0 ].GetSize( & channelSize ) )
                    {   
                        for ( i = 0; i < channels; i ++ )
                        {
                            if ( ! aChannelTempFiles[ i ].SetPosition( 0 ) )
                            {
                                ret = false;
                                break;
                            }
                        }

                        if ( ret == true )
                        {

                            unsigned int chunksToWrite = channelSize / chunkSize;
                            unsigned int lastBlockSize = channelSize % chunkSize;
                            if ( lastBlockSize != 0 )
                            {
                                chunksToWrite++;
                            }

                            char * pBuffer = new char[ chunkSize ];
            
                            unsigned int percentDone = 0;
                            unsigned int lastPercentDone = 0;

                            for ( i = 0; i < chunksToWrite; i ++ )
                            {
                                percentDone = (int) ( ( (float) (i + 1) / (float) chunksToWrite ) * 100.0f);
                                if ( percentDone != lastPercentDone )
                                {
                                    lastPercentDone = percentDone;
                                }

                                for ( unsigned int j = 0; j < channels; j ++ )
                                {
                                    if ( ! aChannelTempFiles[ j ].ReadBytes( pBuffer, ( i == chunksToWrite - 1 ) ? lastBlockSize : chunkSize ) )
                                    {
                                        ret = false;
                                        break;
                                    }
                
                                    pTargetFile->WriteBytes( pBuffer, ( i == chunksToWrite - 1 ) ? lastBlockSize : chunkSize  );
                                }
                            }

                            delete pBuffer;
                        }
                    }
                    else
                    {
                        ret = false;
                    }                
                }
                else
                {
                    ret = false;
                }
            }
            else
            {
                ret = false;
            }

            delete pTargetFile;
        }
        else
        {
            ret = false;
        }
        
        for ( i = 0; i < channels; i ++ )
        {
            if ( ! aChannelTempFiles[ i ].Close( ) )
            {
                ret = false;
            }
            if ( ! aChannelTempFiles[ i ].Delete( ) )
            {
                ret = false;
            }

        }

        delete [] aChannelStreams;
        delete [] aChannelTempFiles;

    }
    else 
    {
        ret = false;
    }

    return ret;
};

//============================================================================
// Class: Converter
//============================================================================

bool ConvertFile(
    const char * pSource,
    const char * pTarget,
    IRadSoundHalAudioFormat::Encoding e,
    bool checkDate )
{
    printInfoSilent("\n==============================================================================\n" );
    printInfoSilent( "Source: [%s]\nTarget: [%s]\n", pSource, pTarget );

    bool ret = false;
	
    if ( ( checkDate == false ) || rstIsFileNewer( pSource, pTarget) || rstIsFileNewer( g_ModuleFileName, pTarget ) )
    {
        printInfoLoud( "Converting: (format:[%d]) [%s] ...\n", e, pTarget );

        bool ok;

        ::rstCheckWavEndCrossings( pSource, & ok );
        ::rstCheckWavSamplingFormat( pSource, & ok );
        
        if ( e == IRadSoundHalAudioFormat::VAG )
        {
            ret = ConvertToVag( pSource, pTarget, true, 16 );
        }
        else if ( e == IRadSoundHalAudioFormat::PCM )
        {
            ret = ConvertToWav( pSource, pTarget, false );
        }
        else if ( e == IRadSoundHalAudioFormat::PCM_BIGENDIAN )
        {
            ret = ConvertToWav( pSource, pTarget, true );
        }
		else if ( e == IRadSoundHalAudioFormat::XBOXADPCM )
		{
			ret = ConvertToXAdpcm( pSource, pTarget );
		}
        else if ( e == IRadSoundHalAudioFormat::GCNADPCM )
        {
            ret = ConvertToGCAdpcm( pSource, pTarget );
        }
        else if ( e == IRadSoundHalAudioFormat::RadicalAdpcm )
        {
            ret = ConvertToRadcialAdpcm( pSource, pTarget );
        }
        else
        {
            printError("Internal Error - unknown format enum\n" );
        }
    }
    else
    {
        ret = true;

        printInfoSilent( "Target File is up to date.\n" );
    }
    
        
    printInfoSilent("------------------------------------------------------------------------------\n" );
                    
    return ret;                    
}

BOOL WINAPI DllMain
(
  HINSTANCE hinstDLL,  // handle to DLL module
  DWORD fdwReason,     // reason for calling function
  LPVOID lpvReserved   // reserved
)
{
	if ( fdwReason == DLL_PROCESS_ATTACH )
	{
		return ::LoadGCAdpcmDLL( );
	}
	else if ( fdwReason == DLL_PROCESS_DETACH )
	{
		::UnloadGCAdpcmDLL( );
	}

	return TRUE;
}

bool rstConvertFile(
    const char * pInputFile,
    const char * pOutputFile,
    IRadSoundHalAudioFormat::Encoding encoding,
    bool checkDate,
    bool silent )
{
    printSetSilent( silent );

    printClearError( );

    char inputFile[ 256 ];
    char outputFile[ 256 ];

    strcpy( inputFile, pInputFile );
    strcpy( outputFile, pOutputFile );

    rstFlipSlashes( inputFile );
    rstFlipSlashes( outputFile );

    rstCreateDirectoryRecursive( outputFile );

	HMODULE hModule = GetModuleHandle(
	    #ifdef RAD_DEBUG
	        "radsoundtoolsd.dll"
	    #else
	        "radsoundtoolsr.dll"
	    #endif
	    );

	if ( hModule == NULL )
	{
	    printError("::GetModuleHandle() failed" );
        return false;
	}

	if ( GetModuleFileName( hModule, g_ModuleFileName, 256 ) == 0 )
	{
		printError("::GetModuleFileName failed" );
		
        return false;
	}

    return ConvertFile( inputFile, outputFile, encoding, checkDate );    
}


                
