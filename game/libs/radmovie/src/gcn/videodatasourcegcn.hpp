//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


//=============================================================================
//
// File:        videodatasourcegcn.hpp
//
// Subsystem:	Foundation Technologies - Movie
//
// Description:	This file contains the declaration for the read buffer for
//              the GCN movie player. The intent of this object is to have data
//              being loaded form CD while decompression is occurring..
//
// Date:    	Sept 10, 2001
//
//=============================================================================

#ifndef VIDEODATASOURCEGCN_HPP
#define VIDEODATASOURCEGCN_HPP

//=============================================================================
// Include Files
//=============================================================================

#include <radoptions.hpp>

#ifndef RAD_MOVIEPLAYER_USE_BINK

#include <radfile.hpp>
#include <radmemory.hpp>
#include <radobject.hpp>

//=============================================================================
// Definitions
//=============================================================================

//=============================================================================
// Forward Class/Struct Declarations
//=============================================================================

//=============================================================================
// Interface Declarations
//=============================================================================

//
// Read Buffer Class definition,
//
class MovieReadBuffer : public IRadFileCompletionCallback,
                        public radRefCount
{
   public:
        
        IMPLEMENT_REFCOUNTED( "MovieReadBuffer" )

        //
        // Contructor. Pass the name of the file, the size of the memory buffer to use
        // for a cache and the threshold at which more data should be read from the CD.
        //
        MovieReadBuffer( unsigned int cacheSize,
                         unsigned int threshold );

        void SetSource( IRadFile * pIRadFile, unsigned int startPosition );
        bool CanReadBytes( unsigned int bytes );
        void SkipData( unsigned int bytes );

        //
        // Use this member to read data from the buffer. This routine will drive the reading
        // of more data into the memory cache if number of bytes is below the threshold. Returns
        // false if request could not be satisfied.
        //
        void ReadData( void* pBuffer, unsigned int bytesToRead );

        //
        // This member causes the file to be reset to the initial position and all data
        // flushed from the cache.
        //
        void Reset( void );

        //
        // File completion callback. Invoked by the file system.
        //
        void OnFileOperationsComplete( void* pUserData );

        //
        // Member used to check if outstanding read opertion is present.
        //
        bool IsFileReadOutstanding( void );

    private:

        ~MovieReadBuffer( void );

        //
        // Indicates we have an asynchronous file operation outstanding.
        //
        bool            m_OutstandingFileRequest;

        //
        // Used to maintain the circular buffer.
        //
        unsigned int    m_BufferSize;
        unsigned int    m_Threshold;
        unsigned char*  m_pBuffer;
        unsigned char*  m_pBufferRead;
        unsigned char*  m_pBufferWrite;
        unsigned int    m_BytesInBuffer;
        unsigned int    m_TotalBytesReadFromFile;
        unsigned int    m_CurrentFileReadSize;
        unsigned int    m_StartFilePosition;

        //
        // This is the file object used to obtain the data.
        //
        ref< IRadFile > m_refIRadFile;
        ref< IRadFile > m_refIRadFile_Stale;
};


#endif // ! RAD_MOVIEPLAYER_USE_BINK
#endif // VIDEODATASOURCEGCN_HPP