//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


//=============================================================================
//
// File:        videodatasourcegcn.cpp
//
// Subsystem:	Foundation Technologies - Movie
//
// Description:	This file contains the implementation for the read buffer for
//              the GCN movie player
//
// Date:    	September 10, 2001
//
//=============================================================================

//=============================================================================
// Include Files
//=============================================================================

#include <radoptions.hpp>

#ifndef RAD_MOVIEPLAYER_USE_BINK

#include <string.h>
#include <radFile.hpp>
#include "videodatasourcegcn.hpp"
#include "../common/radmoviefile.hpp"

//=============================================================================
// Local Definitions
//=============================================================================

//=============================================================================
// Static Data Definitions
//=============================================================================

//=============================================================================
// Public Member Functions
//=============================================================================

//=============================================================================
// Function:    MovieReadBuffer::MovieReadBuffer
//=============================================================================
// Description: Constructor. Initiates the asynchronous open of the movie file
//              and initializes data structures. 
//
// Parameters:  pFilename - name of movie to read
//              cacheSize - size of buffer to use for data cache.
//              threshold - amout of data that must be in cache or nread read will
//              be issued. 
//
// Returns:     n/a
//
// Notes:
//------------------------------------------------------------------------------

MovieReadBuffer::MovieReadBuffer
( 
    unsigned int    cacheSize,
    unsigned int    threshold
)
    :
    radRefCount( 0 ),
    m_BufferSize( cacheSize ),      
    m_Threshold( threshold ),
    m_StartFilePosition( 0 ),
    m_refIRadFile( NULL ),
    m_refIRadFile_Stale( NULL )
{
    rAssert( cacheSize >= threshold );

    //
    // First lets allocate the memory for the circular buffer. Keep it aligned to 32 to 
    // improve performance of some of our reads.
    //
  	m_pBuffer = (unsigned char*) radMemoryAllocAligned( GetThisAllocator( ), m_BufferSize, radFileOptimalMemoryAlignment );
    rAssert( m_pBuffer != NULL );
}

//=============================================================================
// Function:    MovieReadBuffer::~MovieReadBuffer
//=============================================================================
// Description: Destructor. Just free up resources. By design, there are no
//              outstanding file requests.
//
// Parameters:  n/a
//
// Returns:     n/a
//
// Notes:
//------------------------------------------------------------------------------

MovieReadBuffer::~MovieReadBuffer( void )
{
    //
    // Free the buffer.
    //
    radMemoryFreeAligned( GetThisAllocator( ), m_pBuffer );
}

void MovieReadBuffer::SetSource( IRadFile * pIRadFile, unsigned int startPosition )
{
    rAssert( pIRadFile != NULL );
    rAssert( m_refIRadFile == NULL );

    if( pIRadFile != NULL )
    {
        m_refIRadFile = pIRadFile;

        rAssert( m_refIRadFile->IsOpen( ) == true );
        
        //
        // Set up our data structures to manage the queue.
        //

        m_pBufferRead = m_pBuffer;
        m_pBufferWrite = m_pBuffer;
        m_BytesInBuffer = 0;
        m_TotalBytesReadFromFile = 0;
        m_CurrentFileReadSize = 0;
        m_StartFilePosition = startPosition;

        //
        // If we're not waiting for another file to be cleanedup
        // initiate the first request.  Otherwise wait until the
        // other file is done with.
        //
        
        if( m_refIRadFile_Stale == NULL )
        {
            m_OutstandingFileRequest = true;
            m_refIRadFile->SetPositionAsync( m_StartFilePosition );
            m_refIRadFile->AddCompletionCallback( this, NULL );
        }
        else
        {
            // We don't do anything here.
        }
    }
}

bool MovieReadBuffer::CanReadBytes( unsigned int bytes )
{
    return( ( m_BytesInBuffer >= bytes ) == true );
}

void MovieReadBuffer::SkipData( unsigned int bytes )
{
    if( m_BytesInBuffer >= bytes )
    {
        //
        // We can meet the request. See if we can copy in using a single copy
        // or need to partion it due to the buffer wrap condition.
        //
        if( m_BufferSize + m_pBuffer - m_pBufferRead >= bytes )
        {
            //
            // Update state checking for wrap of read pointer.
            //
            m_pBufferRead += bytes;
            if( m_pBufferRead == m_BufferSize + m_pBuffer )
            {
                m_pBufferRead = m_pBuffer;
            }
    
            m_BytesInBuffer -= bytes;
        }
        else
        {
            //
            // Here we must do the copy in two stages, to deal with the wrap.
            //
            unsigned int partialCopySize = m_BufferSize + m_pBuffer - m_pBufferRead;

            m_pBufferRead = m_pBuffer;
            m_BytesInBuffer -= partialCopySize;

            //
            // Lets do the second part now.
            //
            partialCopySize = bytes - partialCopySize;

            m_pBufferRead += partialCopySize; 
            m_BytesInBuffer -= partialCopySize;
        }
    }
    else
    {
        rAssert( false );
    }

    if( !m_OutstandingFileRequest )
    {
        OnFileOperationsComplete( NULL );
    }
}

//=============================================================================
// Function:    MovieReadBuffer::ReadData
//=============================================================================
// Description: This member is invoked to read data from the cache. Will
//              return false if request cannot be meet. This routine is also
//              for keeping the cache full of data.
//
// Parameters:  pBuffer - where to copy the data.
//              numberOfBytes - amount of data to copy
//
// Returns:     n/a
//
// Notes:
//------------------------------------------------------------------------------

void MovieReadBuffer::ReadData
( 
    void*           pBuffer,
    unsigned int    bytesToRead
)
{
    //
    // Make sure the requested read is below threshold setting. If not, possible to get
    // into situation where read will not be satisfied.
    //
    rAssert( bytesToRead <= m_Threshold );

    //
    // First check if we can meet the clients request for data. 
    //

    if( m_BytesInBuffer >= bytesToRead )
    {
        //
        // We can meet the request. See if we can copy in using a single copy
        // or need to partion it due to the buffer wrap condition.
        //
        if( m_BufferSize + m_pBuffer - m_pBufferRead >= bytesToRead )
        {
            //
            // Do the tranfer using a single memory copy.
            //
            memcpy( pBuffer, m_pBufferRead, bytesToRead );

            //
            // Update state checking for wrap of read pointer.
            //
            m_pBufferRead += bytesToRead;
            if( m_pBufferRead == m_BufferSize + m_pBuffer )
            {
                m_pBufferRead = m_pBuffer;
            }
    
            m_BytesInBuffer -= bytesToRead;
        }
        else
        {
            //
            // Here we must do the copy in two stages, to deal with the wrap.
            //
            unsigned int partialCopySize = m_BufferSize + m_pBuffer - m_pBufferRead;
        
            memcpy( pBuffer, m_pBufferRead, partialCopySize );

            m_pBufferRead = m_pBuffer;
            m_BytesInBuffer -= partialCopySize;
            pBuffer = (unsigned char*) pBuffer + partialCopySize;

            //
            // Lets do the second part now.
            //
            partialCopySize = bytesToRead - partialCopySize;

            memcpy( pBuffer, m_pBufferRead, partialCopySize );

            m_pBufferRead += partialCopySize; 
            m_BytesInBuffer -= partialCopySize;
        }
    }
    else
    {
        rAssert( false );
    }

    //
    // Lets we if we can initiate a reading of more data. If no oustanding operations exist,
    // we can initiate a new one by simply invoking the file completion callback.
    //
    if( !m_OutstandingFileRequest )
    {
        OnFileOperationsComplete( NULL );
    }

}

//=============================================================================
// Function:    MovieReadBuffer::Reset
//=============================================================================
// Description: This member is invoked to reset the read buffer to the initial
//              conditions.
//
// Parameters:  n/a
//
// Returns:     n/a
//
// Notes:
//------------------------------------------------------------------------------

void MovieReadBuffer::Reset
( 
    void
)
{
    //
    // First lets clear variables used to maintain the circular queue. This does 
    // not present problems even if we have an outstanding read.
    //
    m_pBufferRead = m_pBuffer;
    m_pBufferWrite = m_pBuffer;
    m_BytesInBuffer = 0;
    m_TotalBytesReadFromFile = 0;
    m_CurrentFileReadSize = 0;

    if( m_OutstandingFileRequest == true )
    {
        //
        // If an outstanding file request is pending, we'll hang
        // on to the stale file until it's complete
        //

        m_refIRadFile->CancelAsync( );
        m_refIRadFile_Stale = m_refIRadFile;
    }
    
    m_refIRadFile = NULL;
    m_OutstandingFileRequest = false;
}

//=============================================================================
// Function:    MovieReadBuffer::OnFileOperationsComplete
//=============================================================================
// Description: This routine is invoked when our outstanding file operations
//              complete. By design, we never have more than one outstanding file
//              request.
//
// Parameters:  pUserData - not used.
//
// Returns:     n/a
//
// Notes:
//------------------------------------------------------------------------------

void MovieReadBuffer::OnFileOperationsComplete
( 
    void* pUserData
)
{
    if( m_refIRadFile_Stale != NULL )
    {
        //
        // This means there was an outstanding request on an old file.
        //
        
        m_refIRadFile_Stale = NULL;

        //
        // If a file is waiting to begin, then let it
        //

        if( m_refIRadFile != NULL )
        {
            m_OutstandingFileRequest = true;
            m_refIRadFile->SetPositionAsync( m_StartFilePosition );
            m_refIRadFile->AddCompletionCallback( this, NULL );
        }
    }
    else
    {

        //
        // Clear flag indicating that we don't have an outstanding request.
        //
        m_OutstandingFileRequest = false;

        //
        // Update the number of bytes in the buffer and the write pointer.
        // Note if we just did an open, this does not present a problem, as the current
        // read size was initialized to zero.
        //
        m_TotalBytesReadFromFile += m_CurrentFileReadSize;
        m_BytesInBuffer += m_CurrentFileReadSize;
        m_pBufferWrite += m_CurrentFileReadSize;
        if( m_pBufferWrite == m_pBuffer + m_BufferSize )
        {
            m_pBufferWrite = m_pBuffer;
        }
        //
        // Lets see if we can read some data. The criteria is that the amount of data
        // is below or equal to the threshold and the amount read does not exceed the 
        // file size.
        //
        m_CurrentFileReadSize = m_BufferSize - m_BytesInBuffer;
        m_CurrentFileReadSize = ::radMemoryRoundDown( m_CurrentFileReadSize, 32 );

        if( m_CurrentFileReadSize > 0 )
        {
            //
            // Check if a wrap will occur. If so read the amount only at the end of the
            // buffer.
            //
            if( m_pBuffer + m_BufferSize - m_pBufferWrite < m_CurrentFileReadSize )
            {
                m_CurrentFileReadSize = m_pBuffer + m_BufferSize - m_pBufferWrite;
            }

            //
            // Finally make sure we have data remaining in the file.
            //
            if( m_refIRadFile->GetSize( ) - m_TotalBytesReadFromFile < m_CurrentFileReadSize )
            {
                m_CurrentFileReadSize = m_refIRadFile->GetSize( ) - m_TotalBytesReadFromFile;
                m_CurrentFileReadSize = ::radMemoryRoundUp( m_CurrentFileReadSize, 32 );
            }

            m_OutstandingFileRequest = true;
            m_refIRadFile->ReadAsync( m_pBufferWrite, m_CurrentFileReadSize );
            m_refIRadFile->AddCompletionCallback( this, NULL );
        }
      

    }
}

//=============================================================================
// Function:    MovieReadBuffer::IsFileReadOutstanding
//=============================================================================
// Description: This routine is invoked to determine if an outstanding read is 
//              occurring. Needed when a resume from a pause occurs. We want
//              to make sure we have enough data buffered.
//
// Parameters:  n/a
//
// Returns:     true if read out
//
// Notes:
//------------------------------------------------------------------------------

bool MovieReadBuffer::IsFileReadOutstanding( void )
{
    return( m_OutstandingFileRequest );
}



#endif // ! RAD_MOVIEPLAYER_USE_BINK