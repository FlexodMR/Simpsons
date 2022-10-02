//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


#include <windows.h>
#include <stdio.h>
#include <assert.h>
#include <radsoundmath.hpp>
#include <radsoundtools.hpp>
#include <file/file.hpp>
#include <wav/waveinfo.hpp>
#include <output/output.hpp>
#include <radsound_hal.hpp>

bool rstGetWaveInfo
(
    const char * pFilename,                 /* [in] */
    unsigned long * pDataSize,        /* [out] */
    unsigned long * pDataOffset,       /* [out] */
    unsigned long * pNumberOfSamples, /* [out] */
    
    unsigned long * pSamplingRate,    /* [out] */
    unsigned long * pBitResolution,   /* [out] */
    unsigned long * pChannels,        /* [out] */
	WAVEFORMATEX  * pWaveFormatEx
)
{
    *pNumberOfSamples = 0;
    *pDataOffset = 0;
    *pDataOffset = 0;

    HRESULT hr = E_FAIL;
    HMMIO hSource = NULL;

    MMCKINFO pckInRIFF; // header chunk
    MMCKINFO ckIn; // general use
    PCMWAVEFORMAT pcmWaveFormat;

    // Open the source file using windows multi-media file functions

    hSource = ::mmioOpen( const_cast< char * >( pFilename ), NULL, MMIO_ALLOCBUF | MMIO_READ );

    if ( hSource == NULL )
    {
        return printError( "WAV: Couldn't open source .wav file." );           
    }

    // Get the header chunk    

    if ( mmioDescend( hSource, & pckInRIFF, NULL, 0 ) != MMSYSERR_NOERROR )
    {
        printError( "WAV: Couldn't descend into first riff chunk." );
        goto ABORT;
    }

    // Make sure this ".wav" file is really a wave file

    if( ( pckInRIFF.ckid != FOURCC_RIFF ) ||
        ( pckInRIFF.fccType != mmioFOURCC('W', 'A', 'V', 'E') ) )
    {
        printError( "WAV: file doesn't appear to really be a .wav file." );
        goto ABORT;
    }

    // Get the format chunk
   
    ckIn.ckid = mmioFOURCC('f', 'm', 't', ' ');    
    if ( mmioDescend(hSource, &ckIn, & pckInRIFF, MMIO_FINDCHUNK) != MMSYSERR_NOERROR )
    {
        printError( "WAV: Can't find [fmt ] chunk in .wav file." );      
        goto ABORT;
    }

    // Expect the 'fmt' chunk to be at least as large as <PCMWAVEFORMAT>, if
    // not the file is not PCM data and we will abort anyhow.

    if( ckIn.cksize < (LONG) sizeof(PCMWAVEFORMAT) )
    {
        printError( "WAV: [fmt ] chunk in .wav file is corrupted or unrecognized." );
        goto ABORT;
    } 

    // Read the 'fmt ' chunk into <pcmWaveFormat>.

    if( mmioRead( hSource, (HPSTR) &pcmWaveFormat, sizeof( pcmWaveFormat ) ) != sizeof(pcmWaveFormat) )
    {
        printError( "WAV: Couldn't read [fmt ] chunk of .wav file." );
        goto ABORT;
    }

    // Check if the format is regular uncompressed PCM

    if( pcmWaveFormat.wf.wFormatTag != WAVE_FORMAT_PCM )
    {
        printError( "WAV: File must be uncompressed PCM data." );
        goto ABORT;
    }

    // Ascend the input file out of the 'fmt ' chunk.

    if ( mmioAscend( hSource, &ckIn, 0 ) != MMSYSERR_NOERROR  )
    {
        printError( "WAV: Couldn't ascend out of the [fmt ] chunk." );
        goto ABORT;
    }

    // Seek to the data

    if( -1 == mmioSeek( hSource, pckInRIFF.dwDataOffset + sizeof(FOURCC), SEEK_SET ) )
    {
        printError( "WAV: Couldn't seek to the data area in file." );
        goto ABORT;
    }

    // Search the input file for for the 'data' chunk.

    ckIn.ckid = mmioFOURCC('d', 'a', 't', 'a');
    if( 0 != mmioDescend( hSource, & ckIn, & pckInRIFF, MMIO_FINDCHUNK ) )
    {
        printError( "WAV: Couldn't find the [data] chunk in file.");
        goto ABORT;
    }

    *pDataSize = ckIn.cksize;
    *pBitResolution = pcmWaveFormat.wBitsPerSample;
    *pChannels = pcmWaveFormat.wf.nChannels;
    *pNumberOfSamples = *pDataSize / ( ( ( *pBitResolution ) / 8 ) * (*pChannels) );
    *pDataOffset = ckIn.dwDataOffset;
    *pSamplingRate = pcmWaveFormat.wf.nSamplesPerSec;

    if ( ( *pDataSize % ( ( *pBitResolution / 8 ) * *pChannels ) ) != 0 )
    {
        printError( "WAV: Source file is corrupted.  Data is not block aligned" );
        goto ABORT;
    }

    printInfoSilent(
        "Bytes: [%d] DataOffset: [%d] Samples: [%d]\n"
        "Rate: [%d] BitRes: [%d] Channels: [%d]\n",
        *pDataSize, *pDataOffset, *pNumberOfSamples, *pSamplingRate, *pBitResolution, *pChannels
    );

    printInfoSilent( "---------------------------------------------------------------------------\n");

	if ( pWaveFormatEx != NULL )
	{
		assert( sizeof( WAVEFORMATEX ) >= sizeof( PCMWAVEFORMAT ) );

		memcpy( pWaveFormatEx, & pcmWaveFormat, sizeof( pcmWaveFormat ) );

		pWaveFormatEx->cbSize = 0;
	}

	::mmioClose( hSource, 0 );

    return true;

    ABORT:

    ::mmioClose( hSource, 0 );

    return false;
}

bool rstCheckWavSamplingFormat( const char * pFilename, bool * pOk )
{
    unsigned long dataSize;
    unsigned long dataOffset;
    unsigned long numberOfSamples;

    unsigned long samplingRate;
    unsigned long bitResolution;
    unsigned long channels;

	WAVEFORMATEX wfex;

    *pOk = true;

    if ( ! rstGetWaveInfo( pFilename, & dataSize, & dataOffset, & numberOfSamples, & samplingRate, & bitResolution, & channels, &wfex ) )
    {
        return false;
    }

    // Print out a warning if the sampling rate is less than ideal

    if( ::radSoundIsSampleRateOptimal( ( float ) samplingRate, 48000.0f ) == false )
    {
        printWarning( "WARNING: [%s] Rate [%dHz] not optimal for [32000Hz/48000Hz] playback\n\n", pFilename, samplingRate );
        *pOk = false;
    }

    return true;

}

bool rstCheckWavEndCrossings_Sample( File & f, unsigned int channels, unsigned int bitResolution, bool start, bool * pOk )
{
    for( unsigned int channel = 0; channel < channels; channel ++ )
    {
        if ( bitResolution == 8 )
        {
            unsigned char c;

            if ( ! f.ReadBytes( (char*) & c, sizeof( c ) ) )
            {
                return false;
            }

            if ( c != PCM_SILENCE_8_BIT )
            {
                char fname[ 256 ];
                f.GetFileName( fname, 256 );

                *pOk = false;
                printWarning( "WARNING: [%s] of [%s] channel: [%d] is [%d], not [%d], sample will click and/or pop\n",
                    start ? "start" : "end", fname, channel, c, PCM_SILENCE_8_BIT );
            }
        }
        else if ( bitResolution == 16 )
        {
            short s;

            if ( ! f.ReadBytes( (char*) & s, sizeof( s ) ) )
            {
                return false;
            }

            if ( (s > 3276) || (s < -3276) )
            {
                char fname[ 256 ];
                f.GetFileName( fname, 256 );

                *pOk = false;
                printWarning( "WARNING: [%s] of [%s] channel: [%d] is [%d], > 10 percent error!, sample will click and/or pop\n",
                    start ? "start" : "end", fname, channel, (int) s );
            }
        }
    }

    return true;
}

bool rstCheckWavEndCrossings( const char * pFilename, bool * pOk )
{
    unsigned long dataSize;
    unsigned long dataOffset;
    unsigned long numberOfSamples;

    unsigned long samplingRate;
    unsigned long bitResolution;
    unsigned long channels;

	WAVEFORMATEX wfex;

    *pOk = true;

    if ( ! rstGetWaveInfo( pFilename, & dataSize, & dataOffset, & numberOfSamples, & samplingRate, & bitResolution, & channels, &wfex ) )
    {
        return false;
    }

    File f( pFilename );

    if ( f.Open( false ) )
    {
        if( f.SetPosition( dataOffset ) )
        {
            if ( rstCheckWavEndCrossings_Sample( f, channels, bitResolution, true, pOk ) )
            {
                if ( f.SetPosition( dataOffset + ( dataSize - ( ( bitResolution / 8 ) * channels ) ) ) )
                {
                    if ( rstCheckWavEndCrossings_Sample( f, channels, bitResolution, false, pOk ) )
                    {
                        return true;
                    }
                }
            }
        }
    }

    return false;

}

rstWavFile::rstWavFile( void )
    :
    m_pWaveFormatEx( NULL ),
    m_DataSize( 0 ),
    m_pData( NULL ),
    m_pUnknownHead( NULL ),
    m_pCueHead( NULL ),
    m_pRstWavLabelHead( NULL ),
    m_pRstWavLabeledTextHead( NULL )
{
}

rstWavFile::~rstWavFile( void )
{
}

bool rstWavFile::ParseFmtChunk( File & f, unsigned int size )
{
    if ( size < sizeof (WAVEFORMAT) )
    {
        return printError( "rstWaveFile: fmt chunk is < sizeof( WAVEFORMAT)" );        
    }

    unsigned allocSize;

    if ( size < sizeof( WAVEFORMATEX ) )
    {
        allocSize = sizeof (WAVEFORMATEX);
    }
    else
    {
        allocSize = size;
    }
        
    m_pWaveFormatEx = (WAVEFORMATEX*) new char[ allocSize ];
    ::memset( m_pWaveFormatEx, 0, allocSize );

    if ( ! f.ReadBytes( (char*) m_pWaveFormatEx, size ) )
    {
        return printError( "rstWavFile: failed to read WAVEFORMATEX" );        
    }

    if ( size >= sizeof (WAVEFORMATEX) )
    {
        if ( m_pWaveFormatEx->cbSize != ( size - sizeof( WAVEFORMATEX ) ) )
        {
            return printError( "rstWavFile: Extra information in WAVEFORMAT structure is not of size specified in size field" );
        }
    }

    /*
    printf( "WAVEFORMAT:\n" );
    printf( "\twFormatTag:      [%d]\n", m_pWaveFormatEx->wFormatTag );
    printf( "\tnChannels:       [%d]\n", m_pWaveFormatEx->nChannels );
    printf( "\tnSamplesPerSec:  [%d]\n", m_pWaveFormatEx->nSamplesPerSec );
    printf( "\tnAvgBytesPerSec: [%d]\n", m_pWaveFormatEx->nAvgBytesPerSec );
    printf( "\tnBlockAlign:     [%d]\n", m_pWaveFormatEx->nBlockAlign );
    printf( "\twBiterPerSample: [%d]\n", m_pWaveFormatEx->wBitsPerSample );
    printf( "\tcbSize:          [%d]\n", m_pWaveFormatEx->cbSize );
    */

    return true;      
}

bool rstWavFile::ParseDataChunk( File & f, unsigned int chunkSize )
{
    if ( chunkSize == 0 )
    {
        printf( "Wave file contains empty 'data' chunk\n" );
    }
    else
    {
        m_DataSize = chunkSize;
        m_pData = new char [ chunkSize ];

        if ( ! f.ReadBytes( m_pData, chunkSize ) )
        {
            return printError( "rstWavFile: Failed to read data chunk data" );
        }
    }

    return true;
}

bool rstWavFile::ParseUnknownChunk( File & f, char chnk[ 4 ], unsigned int chunkSize )
{
    // printf( "This chunk type is not recognized...but will write back to .wav file\n" );

    rstWavFileChunk * pNew = new rstWavFileChunk( );
    
    ::memcpy( pNew->m_Id, chnk, 4 );
    pNew->m_ChunkSize = chunkSize;
    pNew->m_pChunkData = new char[ chunkSize ];
    pNew->m_pChunkNext = NULL;

    if ( ! f.ReadBytes( pNew->m_pChunkData, chunkSize ) )
    {
        printError( "Failed to read chunk data for unknown chunk" );
        delete pNew;
        return false;
    }

    rstWavFileChunk * pS = m_pUnknownHead;
    rstWavFileChunk * pP = NULL;

    while ( pS )
    {
        pP = pS;
        pS = pS->m_pChunkNext;
    }

    if ( pP == NULL )
    {
        m_pUnknownHead = pNew;
    }
    else
    {
        pP->m_pChunkNext = pNew;
    }

    return true;
}

bool rstWavFile::ParseCueChunk( File & f, unsigned int chunkSize )
{
    unsigned int numPoints;

    if ( chunkSize < sizeof( numPoints ) )
    {
        return printError( "Corrupted 'cue' chunk" );        
    }

    if ( ! f.ReadBytes( (char*) & numPoints, sizeof( numPoints ) ) )
    {
        return printError( "failed to read number of cue points" );        
    }

    // printf( "Num Cue Points: [%d]\n", numPoints );

    for( unsigned int i = 0; i < numPoints; i ++ )
    {
        rstWavFileCue * pNewCue = new rstWavFileCue;
        pNewCue->m_pCueNext = NULL;

        if ( ! f.ReadBytes((char*) & ( pNewCue->m_CueData ), sizeof ( pNewCue->m_CueData ) ) )
        {
            printError( "Failed to read cue point number: [%d]", i );
            delete pNewCue;
            return false;
        }

        rstWavFileCue * pS = m_pCueHead;
        rstWavFileCue * pP = NULL;

        while ( pS )
        {
            pP = pS;
            pS = pS->m_pCueNext;
        }

        if ( pP )
        {
            pP->m_pCueNext = pNewCue;
        }
        else
        {
            m_pCueHead = pNewCue;
        }

        /* printf( "Cue: [%d]\n", i );
        printf( "\tdwIdentifier   : [%d]\n",  pNewCue->m_CueData.dwIdentifier   );
        printf( "\tdwPosition     : [%d]\n",  pNewCue->m_CueData.dwPosition     );     
        printf( "\tfccChunk[ 4 ]  : [%s]\n",  ChunkIdToString( pNewCue->m_CueData.fccChunk ) );
        printf( "\tdwChunkStart   : [%d]\n",  pNewCue->m_CueData.dwChunkStart   );
        printf( "\tdwBlockStart   : [%d]\n",  pNewCue->m_CueData.dwBlockStart   );   
        printf( "\tdwSampleOffset : [%d]\n",  pNewCue->m_CueData.dwSampleOffset );  */
    }


    return true;
}

bool rstWavFile::ParseListChunk( File & f, unsigned int chunkSize )
{
    char typeId[ 4 ];

    if ( chunkSize < sizeof( typeId ) )
    {
        return printError( "LIST chunk is corrupted" );
    }

    if ( ! f.ReadBytes( typeId, sizeof( typeId ) ) )
    {
        return printError( "Failed to read typeId of LIST chunk" );
    }

    if ( ::memcmp( typeId, "adtl", 4 ) != 0 )
    {
        printInfoLoud( "List type is not 'adtl', discarding" );

        unsigned int currentPos;

        if ( ! f.GetPosition( & currentPos ) )
        {
            return printError( "Failed to get current position of file" );
        }

        if ( ! f.SetPosition( currentPos + chunkSize - 4 ) )
        {
            return printError( "Failed to skip over not 'adtl' list" );
        }

        return true;
    }

    // Ok , this is an adtl list

    unsigned int currentPosition;

    if ( ! f.GetPosition( & currentPosition ) )
    {
        return printError( "Failed to get file position" );
    }

    unsigned int endListPosition = currentPosition + chunkSize - 4;

    while ( currentPosition < endListPosition )
    {
        char listItemId[ 4 ];
        unsigned int listItemSize;

        if ( ! f.ReadBytes( listItemId, 4 ) )
        {
            return printError( "Failed to read list item id" );
        }

        if ( ! f.ReadBytes( (char*) & listItemSize, sizeof( listItemSize ) ) )
        {
            return printError( "Failed to read list item size" );            
        }

        //printf( "\nParsing list item: [%s] Size: [%d]\n", rstWavFile::ChunkIdToString( listItemId ), listItemSize );

        if ( ::memcmp( listItemId, "labl", 4 ) == 0 )
        {
            if ( ! ParseListLablChunk( f, listItemSize ) )
            {
                return false;
            }
        }
        /*else if ( ::memcmp( listItemId, "note", 4 ) == 0 )
        {
        } */
        else if ( ::memcmp( listItemId, "ltxt", 4 ) == 0 )
        {
            if ( ! ParseListLabeledTextChunk( f, listItemSize ) )
            {
                return false;
            }
        }
        else
        { 
            unsigned cp;

            if ( ! f.GetPosition( & cp ) )
            {
                return false;
            }

            if ( ! f.SetPosition( cp + listItemSize ) )
            {
                return false;
            }

            printf( "Discarded unknown list item type\n" );
        }


        MoveFileToMultiple( f, 2 );

        if ( ! f.GetPosition( & currentPosition ) )
        {
            return false;
        }
    }

    if ( currentPosition != endListPosition )
    {
        return printError( "LIST block size does not match actuall content size" );
    }

    return true;
}

bool rstWavFile::ParseListLabeledTextChunk( File & f, unsigned int chunkSize )
{
    if ( chunkSize < sizeof( rstWavLabeledText::LabeledTextData ) )
    {
        return printError( "ltxt chunk is shorter than in should be" );
    }

    rstWavLabeledText * pNewLabeledText = new rstWavLabeledText( );

    pNewLabeledText->m_pRstWavLabeledTextNext = NULL;

    if ( ! f.ReadBytes( (char*) & pNewLabeledText->m_LabeledTextData, sizeof( pNewLabeledText->m_LabeledTextData ) ) )
    {
        return printError( "Failed to read labeled text data" );
    }

    unsigned int stringLen = chunkSize - sizeof( rstWavLabeledText::LabeledTextData );

    if ( stringLen > 0 )
    {
        char * pString = new char[ stringLen ];

        if ( ! f.ReadBytes( pString, stringLen ) )
        {
            return printError( "Failed to read ltxt text" );
        }

        if ( ( strlen( pString ) + 1 ) < stringLen )
        {
            return printError( "ltxt string is shorter than specified" );
        }

        pNewLabeledText->m_pText = pString;
    }
    else
    {
        pNewLabeledText->m_pText = NULL;
    }

    rstWavLabeledText * pS = m_pRstWavLabeledTextHead;
    rstWavLabeledText * pP = NULL;

    while ( pS )
    {
        pP = pS;
        pS = pS->m_pRstWavLabeledTextNext;
    }

    if ( pP != NULL )
    {
        pP->m_pRstWavLabeledTextNext = pNewLabeledText;
    }
    else
    {
        m_pRstWavLabeledTextHead = pNewLabeledText;
    }
    
    /*
    printf( "Labeled Text:\n" );
    printf( "\tdwIdentifier:   [%d]\n", pNewLabeledText->m_LabeledTextData.dwIdentifier );
    printf( "\tdwSampleLength: [%d]\n", pNewLabeledText->m_LabeledTextData.dwSampleLength );
    printf( "\tdwPurpose:      [%d][%s]\n", pNewLabeledText->m_LabeledTextData.dwPurpose, ChunkIdToString( (char*) & pNewLabeledText->m_LabeledTextData.dwPurpose ) );
    printf( "\twCountry:       [%d]\n", pNewLabeledText->m_LabeledTextData.wCountry );
    printf( "\twLanguage:      [%d]\n", pNewLabeledText->m_LabeledTextData.wLanguage );
    printf( "\twDialect:       [%d]\n", pNewLabeledText->m_LabeledTextData.wDialect );
    printf( "\twCodePage:      [%d]\n", pNewLabeledText->m_LabeledTextData.wCodePage );
    printf( "\tText:           [%s]\n", pNewLabeledText->m_pText ? pNewLabeledText->m_pText : "No Text" );
    */

    return true;
}

bool rstWavFile::ParseListLablChunk( File & f, unsigned int chunkSize )
{
    if ( chunkSize < 4 )
    {
        return printError(  "LISTlabl chunk is currupt" );
    }

    unsigned int id;
    
    if ( ! f.ReadBytes( (char*) & id , sizeof ( id ) ) )
    {
        return false;
    }

    unsigned int lengthOfString = chunkSize - sizeof( id );

    char * pString = NULL;
   
    if ( lengthOfString > 0 )
    {
        pString = new char [ lengthOfString ];

        if ( ! f.ReadBytes( pString, lengthOfString ) )
        {
            return printError( "failed to read LISTlabl string" );
        }

        if ( ( strlen( pString ) + 1 ) != lengthOfString )
        {
            return printError( "LISTlabl string is not of the size specified" );
        }
    }

    rstWavLabel * pNewLabel = new rstWavLabel( );

    pNewLabel->m_Identifier = id;
    pNewLabel->m_pText = pString;
    pNewLabel->m_pWavLabelNext = NULL;

    rstWavLabel * pS = m_pRstWavLabelHead;
    rstWavLabel * pP = NULL;

    while ( pS )
    {
        pP = pS;
        pS = pS->m_pWavLabelNext;
    }

    if ( pP != NULL )
    {
        pP->m_pWavLabelNext = pNewLabel;
    }
    else
    {
        m_pRstWavLabelHead = pNewLabel;
    }
    
    /*
    printf( "Label:\n" );
    printf( "\tIdentifier (Cue) : [%d]\n", pNewLabel->m_Identifier );
    printf( "\tText:              [%s]\n", pNewLabel->m_pText ? pNewLabel->m_pText : "No Text" );
    */
    return true;
}

bool rstWavFile::ParseChunk( File & f, char chnk[ 4 ] )
{
    unsigned int chunkSize;
    
    char strChunk[ 5 ];
    memcpy( strChunk, chnk, 4 );
    strChunk[ 4 ] = 0;

    if ( ! f.ReadBytes( (char*) & chunkSize, sizeof( chunkSize ) ) )
    {
        return printError( "rstWavFile: Failed to read chunk size for chunk: [%s]", strChunk );
    }
    /*
    printf( "\nParsing [%s] chunk: [%d] Bytes\n", strChunk, chunkSize  );
    */

    if ( memcmp( chnk, "fmt ", 4 ) == 0 )
    {
        if ( ! ParseFmtChunk( f, chunkSize ) )
        {
            return false;
        }
    }
    else if ( memcmp( chnk, "data", 4 ) == 0 )
    {
        if ( ! ParseDataChunk( f, chunkSize ) )
        {
            return false;
        }
    }
    else if ( memcmp( chnk, "cue ", 4 ) == 0 )
    {
        if ( ! ParseCueChunk( f, chunkSize ) )
        {
            return false;
        }
    }
    else if ( memcmp( chnk, "LIST ", 4 ) == 0 )
    {
        if ( ! ParseListChunk( f, chunkSize ) )
        {
            return false;
        }
    }
    else
    {
        if ( ! ParseUnknownChunk( f, chnk, chunkSize ) )
        {
            return false;
        }
    }

    return true;
}


bool rstWavFile::Read( const char * pFileName )
{
    File f( pFileName );
    
    if ( ! f.Open( false ) )
    {
        return false;
    }

    char chnk[ 4 ];

    if ( ! f.ReadBytes( chnk, 4 ) || memcmp( chnk, "RIFF", 4 ) != 0 )
    {
        return printError( "rstWavFile: file: [%s] is not a wav file", pFileName );
    }

    // printf( "Found RIFF tag\n" );
    
    unsigned int size;

    if ( ! f.ReadBytes( (char*) & size, sizeof( size ) ) )
    {
        return printError( "rstWavFile: failed to read RIFF size file: [&s]\n", pFileName );
    }

    // printf( "RIFF chunk is [%d] bytes\n", size );

    if ( ! f.ReadBytes( chnk, 4 ) || memcmp( chnk, "WAVE", 4 ) != 0 )
    {
        return printError( "rstWavFile: file: [%s] is a RIFF file but not a WAVE file\n", pFileName );
    }

    while( f.ReadBytes( chnk, 4 ) )
    {
        if ( ! ParseChunk( f, chnk ) )
        {
            return false;
        }
    }

    return true;
}

bool rstWavFile::Write( const char * pFileName )
{
    File out( pFileName );

    if ( ! out.Open( true ) )
    {
        return false;
    }

    // Calculate the size of the format chunk.

    unsigned int sizeOfFormatChunk = 8 + sizeof( WAVEFORMATEX ) - 2;

    if ( m_pWaveFormatEx->cbSize != 0 )
    {
        sizeOfFormatChunk += m_pWaveFormatEx->cbSize + 4;
    }

    // Calculate the size of the data chunk

    unsigned int sizeOfDataChunk = 8 + m_DataSize;

    sizeOfDataChunk = sizeOfDataChunk + ( sizeOfDataChunk % 2 ); // round up.

    // Calculate the size of the unknown chunks.

    unsigned int sizeOfUnknownChunks = 0;

    rstWavFileChunk * pS = m_pUnknownHead;

    while ( pS )
    {
        sizeOfUnknownChunks += 8 + pS->m_ChunkSize;

        sizeOfUnknownChunks = sizeOfUnknownChunks + ( sizeOfUnknownChunks % 2 ); // round up.

        pS = pS->m_pChunkNext;
    }

    // Calculate the size of the cue chunks

    unsigned int sizeOfCueChunk = 12; // header + num to follow
    unsigned int numberOfCues = 0;

    rstWavFileCue * pCue = m_pCueHead;

    while( pCue )
    {
        numberOfCues++;

        pCue = pCue->m_pCueNext;
    }

    sizeOfCueChunk += numberOfCues * sizeof( rstWavFileCue::CueData );

    // Calcualte the size of the LIST chunk

    unsigned int sizeOfListChunk = 12;

    rstWavLabel * pLabel = m_pRstWavLabelHead;

    while ( pLabel )
    {
        sizeOfListChunk += 12 + ( pLabel->m_pText ? strlen( pLabel->m_pText ) + 1: 0 );

        sizeOfListChunk += ( sizeOfListChunk % 2 );

        pLabel = pLabel->m_pWavLabelNext;
    }

    rstWavLabeledText * pLabeledText = m_pRstWavLabeledTextHead;

    while ( pLabeledText )
    {
        sizeOfListChunk += 8 + sizeof ( rstWavLabeledText::LabeledTextData ) + ( pLabeledText->m_pText ? strlen( pLabeledText->m_pText ) + 1 : 0 );

        sizeOfListChunk += sizeOfListChunk % 2;

        pLabeledText = pLabeledText->m_pRstWavLabeledTextNext;
    }

    if ( ! out.WriteBytes( "RIFF", 4 ) )
    {
        return false;
    }

    unsigned int sizeOfRiffChunk = 4 + sizeOfListChunk + sizeOfDataChunk + sizeOfCueChunk + sizeOfFormatChunk + sizeOfUnknownChunks;

    if ( ! out.WriteBytes( (char*) & sizeOfRiffChunk, 4 ) )
    {
        return false;
    }

    if ( ! out.WriteBytes( "WAVE", 4 ) )
    {
        return false;
    }

    // Write format chunk

    unsigned int sizeOfFormatChunkData = sizeOfFormatChunk - 8;

    if ( ! out.WriteBytes( "fmt ", 4 ) || ! out.WriteBytes( (char*) & sizeOfFormatChunkData, 4 ) || ! out.WriteBytes( (char*) m_pWaveFormatEx, sizeOfFormatChunkData ) )
    {
        return false;
    }

    // Write data chunk

    if ( ! out.WriteBytes( "data", 4 ) || ! out.WriteBytes( (char*) & m_DataSize, 4 ) || ! out.WriteBytes( m_pData, m_DataSize ) )
    {
        return false;
    }

    // Write cue chunk

    unsigned int sizeOfCueChunkData = sizeOfCueChunk - 8;

    if ( ! out.WriteBytes( "cue ", 4 ) || ! out.WriteBytes( (char*) & sizeOfCueChunkData, 4 ) || ! out.WriteBytes( (char*) & numberOfCues, 4 ) )
    {
        return false;
    }

    pCue = m_pCueHead;

    while( pCue )
    {
        if ( ! out.WriteBytes( (char*) & pCue->m_CueData, sizeof( pCue->m_CueData ) ) )
        {
            return false;
        }

        pCue = pCue->m_pCueNext;
    }

    // Write list chunk

    unsigned int sizeOfListChunkData = sizeOfListChunk - 8;

    if ( ! out.WriteBytes( "LIST", 4 ) || ! out.WriteBytes( (char*) & sizeOfListChunkData, 4 ) || ! out.WriteBytes( "adtl", 4 ) )
    {
        return false;
    }

    pLabel = m_pRstWavLabelHead;

    while ( pLabel )
    {
        unsigned int size = 4;

        if ( pLabel->m_pText != NULL )
        {
            size += strlen( pLabel->m_pText ) + 1;
        }

        if ( ! out.WriteBytes( "labl", 4 ) || ! out.WriteBytes( (char*) & size, 4 ) || ! out.WriteBytes( (char*) & pLabel->m_Identifier, 4 ) )
        {
            return false;
        }

        if ( pLabel->m_pText != NULL )
        {
            if ( ! out.WriteBytes( pLabel->m_pText, strlen( pLabel->m_pText ) + 1 ) )
            {
                return false;
            }
        }

        if ( (size % 2 != 0 ) )
        {
            if ( ! out.WriteBytes( "", 1 ) )
            {
                return false;
            }
        }

        pLabel = pLabel->m_pWavLabelNext;
    }

    pLabeledText = m_pRstWavLabeledTextHead;

    while ( pLabeledText )
    {
        unsigned int size = sizeof( pLabeledText->m_LabeledTextData );

        if ( pLabeledText->m_pText != NULL )
        {
            size += strlen( pLabeledText->m_pText ) + 1; 
        }
 
        if ( ! out.WriteBytes( "ltxt", 4 ) || ! out.WriteBytes( (char*) & size, 4 ) )
        {
            return false;
        }

        if ( ! out.WriteBytes( (char*) & pLabeledText->m_LabeledTextData, sizeof ( pLabeledText->m_LabeledTextData ) ) )
        {
            return false;
        }

        if ( pLabeledText->m_pText != NULL )
        {
            if ( ! out.WriteBytes( pLabeledText->m_pText, strlen( pLabeledText->m_pText ) + 1 ) )
            {
                return false;
            }
        }

        if ( (size % 2 != 0 ) )
        {
            if ( ! out.WriteBytes( "", 1 ) )
            {
                return false;
            }
        }

        pLabeledText = pLabeledText->m_pRstWavLabeledTextNext;
    }

    // Write all of the unknown chunks

    rstWavFileChunk * pUnknown = m_pUnknownHead;

    while( pUnknown )
    {
        if ( ! out.WriteBytes( pUnknown->m_Id, 4 ) || ! out.WriteBytes( (char*) & pUnknown->m_ChunkSize, 4 ) || ! out.WriteBytes( pUnknown->m_pChunkData, pUnknown->m_ChunkSize ) )
        {
            return false;
        }

        if ( (pUnknown->m_ChunkSize % 2 != 0 ) )
        {
            if ( ! out.WriteBytes( "", 1 ) )
            {
                return false;
            }
        }


        pUnknown = pUnknown->m_pChunkNext;
    }





    return true;
}

struct FileNameNode
{
    const char * m_pFileName;

    FileNameNode * m_pNext;
};

bool rstRenameWavMarkers( const char * pTextFile, const char * pSourceFile, const char * pTargetFile )
{
    rstWavFile f;

    if ( ! f.Read( pSourceFile ) )
    {
        printf( "FAILED:[%s]\n", ::rstGetLastError( ) );

        return false;
    }

    File text( pTextFile );

    if ( ! text.Open( false ) )
    {
        return false;
    }

    unsigned int prevSample = 0xFFFFFFFF;

    rstWavLabel   * pFoundLabel = NULL;
    rstWavFileCue * pFoundCue   = NULL;
    rstWavLabeledText * pFoundLabeledText = NULL;

    do 
    {
        unsigned int lastSample = 0xFFFFFFFF;
        rstWavLabel * pSearch = f.m_pRstWavLabelHead;
        pFoundLabel = NULL;

        while( pSearch != NULL )
        {
            rstWavFileCue     * pCue = f.m_pCueHead;

            while ( pCue )
            {
                if( pCue->m_CueData.dwIdentifier == pSearch->m_Identifier )
                {
                    break;
                }

                pCue = pCue->m_pCueNext;
            }

            rstWavLabeledText * pLabeledText = f.m_pRstWavLabeledTextHead;

            while ( pLabeledText )
            {
                if ( pLabeledText->m_LabeledTextData.dwIdentifier == pSearch->m_Identifier )
                {
                    break;
                }

                pLabeledText = pLabeledText->m_pRstWavLabeledTextNext;
            }
                
            if ( pCue == NULL )
            {
                return printError( "Failed to find associated cue point for label" );
            }

            if ( (unsigned int) pCue->m_CueData.dwSampleOffset < lastSample && 
                 ( (unsigned int) pCue->m_CueData.dwSampleOffset > prevSample || prevSample == 0xFFFFFFFF ) )
            {              
                lastSample = pCue->m_CueData.dwSampleOffset;

                pFoundLabel = pSearch;
                pFoundCue   = pCue;
                pFoundLabeledText = pLabeledText;
            }

            pSearch = pSearch->m_pWavLabelNext;
        }

        if ( pFoundLabel )
        {
            prevSample = pFoundCue->m_CueData.dwSampleOffset;

            if ( pFoundLabeledText == NULL )
            {
                printf( "Cue: [%s] is a marker, not a region, skipping\n", pFoundLabel->m_pText );
            }
            else
            {                            
                char newName[ 256 ];
        
                if ( ! text.ReadToken( newName, 256 ) )
                {
                    sprintf( newName, "no_more_filenames" );
                }

                printf( "Renaming: [%s] --> [%s]\n", pFoundLabel->m_pText ? pFoundLabel->m_pText : "No name", newName );

                delete [] pFoundLabel->m_pText;
                pFoundLabel->m_pText = new char [ strlen( newName ) + 1 ];
                strcpy( pFoundLabel->m_pText, newName );
            }
        }
    }
    while( pFoundLabel );

    if ( ! f.Write( pTargetFile ) )
    {
        return false;
    }

    return true;
}

const char * rstWavFile::ChunkIdToString( char id[ 4 ] )
{
    static char str[ 5 ];
    ::memcpy( str, id, 4 );
    str[4] = 0;

    return str;
}

bool rstWavFile::MoveFileToMultiple( File & f, unsigned int multiple )
{
    unsigned int pos;

    if ( ! f.GetPosition( & pos ) )
    {
        return false;
    }

    unsigned int move = pos + ( pos % multiple );

    if ( move != 0 )
    {
        if ( ! f.SetPosition( move ) )
        {
            return false;
        }
    }

    return true;    
}
