//-----------------------------------------------------------------------------
//
//  Copyright (C) 2003 Radical Technology Inc.
//  All Rights Reserved.
// 
//-----------------------------------------------------------------------------

//-----------------------------------------------------------------------------
// Includes
//-----------------------------------------------------------------------------

#include "radicaladpcm.hpp"
#include <wav/waveinfo.hpp>
#include <radsoundfile.hpp>
#include <convert/convert.hpp>

#include <../src/radsound/radicaladpcm.hpp>

bool ConvertToRadcialAdpcm(
    const char * pSource,
    const char * pTarget )
{
    //fprintf( stderr, "MAKING RADICALADPCM: [%s]\n", pTarget );
    
    unsigned int dataSize;
    unsigned int dataOffset;
    unsigned int numberOfSamples;
    
    unsigned int samplingRate;
    unsigned int bitResolution;
    unsigned int channels;
	WAVEFORMATEX  wfex;
    
    bool ok = rstGetWaveInfo(
        pSource,
        (unsigned long*) & dataSize,
        (unsigned long*)& dataOffset,
        (unsigned long*)& numberOfSamples,
        (unsigned long*)& samplingRate,
        (unsigned long*)& bitResolution,
        (unsigned long*)& channels,
        & wfex );
    
    if ( ! ok )
    {
        return false;
    }
    
    if ( bitResolution != 16 )
    {
        fprintf( stderr, "File: [%s] is not 16 bit", pSource );
        return false;
    }
    
    if ( ok )
    {
        FILE* pInStream = fopen( pSource, "rb" );
        
        if ( ! pInStream )
        {
            fprintf( stderr, "Failed to open input file [%s]", pSource );
        }
        else
        {
            FILE* pOutStream = fopen( pTarget, "wb" );
            
            if ( ! pOutStream )
            {
                fprintf( stderr, "Failed to open output file [%s]", pTarget );
            }
            else
            {
                char header[ RSD_FILE_DATA_OFFSET ] ;
                
                fill_file_header(
                    header,
                    "RADP",
                    channels,
                    bitResolution,
                    samplingRate );
                
                ok = ( 1 == fwrite( header, sizeof( header ), 1, pOutStream ) );
                
                if ( ! ok )
                {
                    fprintf( stderr, "Failed to write header to output file: [%s]", pTarget );
                }
                else
                {
                    for( unsigned int i = 0; i < dataOffset && ok ; i ++ )
                    {
                        char dummy;
                        
                        ok = ( 1 == fread( & dummy, sizeof( dummy ), 1, pInStream ) );
                    }
                    
                    if ( ! ok )
                    {
                        fprintf( stderr, "Failed to skip header: [%s]", pTarget );
                    }
                    
                    unsigned int adpcmFrameSize = RADICAL_ADPCM_FRAME_SIZE * channels;
                    unsigned int pcmFrameBytes = RADICAL_ADPCM_SAMPLES_PER_FRAME * channels * 2;
                    
                    unsigned int numFrames = numberOfSamples / RADICAL_ADPCM_SAMPLES_PER_FRAME;

                    unsigned int lastBlockSamples = numberOfSamples % RADICAL_ADPCM_SAMPLES_PER_FRAME;
                    
                    if ( lastBlockSamples > 0 )
                    {
                        numFrames++;
                    }
                    else
                    {
                        lastBlockSamples = RADICAL_ADPCM_SAMPLES_PER_FRAME;
                    }
                    
                    char readBuffer[ 2048 ];                        
                    char writeBuffer[ 2048 ];                   
                    
                    RadicalAdpcmState headers[ 32 ];
                    ::memset( headers, 0, sizeof( headers ) );
                                            
                    for( unsigned int b = 0; b < numFrames && ok; b ++ )
                    {
                        //OdsStreamPrintf( pStreams->pSpw, "\rConverting: [%s] - [%d%%]", pSource, (int) ( ( (float) (b + 1) / (float) numFrames ) * 100.0f ) );
                    
                        char* pWrite = writeBuffer;
                        
                        if ( b < ( numFrames - 1 ) )
                        {
                             ok = ( 1 == fread( readBuffer, pcmFrameBytes, 1, pInStream ) );
                        }
                        else
                        {
                            unsigned int extraBytes = lastBlockSamples * channels * 2;
                            ::memset( readBuffer + extraBytes, 0, pcmFrameBytes - extraBytes );
                            
                            ok = ( 1 == fread( readBuffer, lastBlockSamples * channels * 2, 1, pInStream ) );
                        }
                        
                        if ( ok )
                        {
                            for( unsigned int c = 0; c < channels; c ++ )
                            {
                                *((RadicalAdpcmState*)pWrite) = headers[ c ];
                                pWrite += sizeof( RadicalAdpcmState );                            
                            }
                             
                            short* pRead  = (short*) readBuffer;
                                                                    
                            for( unsigned int s = 0; s < RADICAL_ADPCM_SAMPLES_PER_FRAME; s += 2 )
                            {
                                for( unsigned int c = 0; c < channels; c ++ )
                                {
                                    int sample1 = (int) *pRead;                                                                        
                                    int sample2 = (int) *(pRead + channels);
                                    
                                    int index = headers[ c ].index;
                                    int prev  = headers[ c ].prev;
                                    
                                    char nibble1 = (char) RadicalAdpcmEncode( sample1, & index, & prev );
                                    char nibble2 = (char) RadicalAdpcmEncode( sample2, & index, & prev );
                                                                        
                                    headers[ c ].index = index;
                                    headers[ c ].prev  = prev;
                                    
                                    *pWrite = nibble1 | ( nibble2 << 4 );
                                    pWrite += 1;
                                }

                                pRead += ( 2 * channels );
                            }
                            
                            ok = ( 1 == fwrite( writeBuffer, adpcmFrameSize, 1, pOutStream ) );                            
                            
                            if ( ! ok )
                            {
                                fprintf( stderr, "Failed to write adpcm block to: [%s]", pTarget );
                            }
                        }
                    }
                    
                }
                
                fclose( pOutStream);
            }
            
            fclose( pInStream );
        }
    }        

    return ok;
}

