//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


//=============================================================================
//
// File:        WavToRsd.hpp
//
// Subsystem:	RadSound - WavToRsd Conversion Tool
//
// Description:	This file contains definitions of the functions exported
//				by the WavToRsd tool library.
//
//
// Revisions:   Oct 24,2001        Creation
//
//=============================================================================

#ifndef RADSOUNDTOOLS_HPP
#define RADSOUNDTOOLS_HPP

#include <windows.h>
#include <mmsystem.h>
#include <radsound.hpp>

//=============================================================================
// Definitions
//=============================================================================


//=============================================================================
// Function Declarations
//=============================================================================

extern "C"
{
    // Global get last error

	__declspec( dllexport ) char * rstGetLastError( void );
       
    // single file conversion wav --> rsd.

    typedef void (rstMessageCallback)(const char * pMessage);

    __declspec( dllexport ) bool rstConvertFile(
        const char * pInputFile,
        const char * pOutputFile,
        IRadSoundHalAudioFormat::Encoding encoding,
        bool checkDate,
        bool silent );

    __declspec( dllexport ) void rstSetConvertFileProgressCallback( rstMessageCallback * pFx );
    __declspec( dllexport ) void rstSetConvertFileWarningCallback( rstMessageCallback * pFx );

    // reading the wav header

    __declspec( dllexport ) bool rstGetWaveInfo (
        const char * pFilename,                 /* [in] */
        unsigned long * pDataSize,        /* [out] */
        unsigned long * pDataOffset,       /* [out] */
        unsigned long * pNumberOfSamples, /* [out] */
    
        unsigned long * pSamplingRate,    /* [out] */
        unsigned long * pBitResolution,   /* [out] */
        unsigned long * pChannels,        /* [out] */
	    WAVEFORMATEX  * pWaveFormatEx ); // Can be NULL )

    __declspec( dllexport ) bool rstCheckWavEndCrossings( const char * pFilename, bool * pOk );
    __declspec( dllexport ) bool rstCheckWavSamplingFormat( const char * pFilename, bool * pOk );

    // Direcory creating
    
    __declspec( dllexport ) void rstFlipSlashes( char * pString );
    __declspec( dllexport ) bool rstCreateDirectoryRecursive( const char * pTargetFilePath );

    // File info

    __declspec( dllexport ) bool rstIsFileNewer( const char * pSourceFile, const char * pTargetFile );
    __declspec( dllexport ) bool rstFileExists( const char * pFileName );

    // Directory recursing functions

    __declspec( dllexport ) bool rstFindFiles( void ** ppFindHandle, const char * pFileName );
    __declspec( dllexport ) void rstFindReset( void * pFindHandle );
    __declspec( dllexport ) bool rstFindGetNext( void * pFindHandle, const char ** ppFileName );
    __declspec( dllexport ) void rstFindClose( void ** ppFindHandle );

    // rename wav markers

    __declspec( dllexport ) bool rstRenameWavMarkers( const char * pTextFile, const char * pSourceFile, const char * pTargetFile );
}

#endif // WAVTORSD_HPP