//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


#include <file/interleavedstream.hpp>
#include <string.h>
#include <output/output.hpp>

#define CACHE_SIZE 100000

InterleavedStream::InterleavedStream( void )
    :
    m_pFile( NULL ),
    m_FileSize( 0 ),
    m_FileOffset( 0 ),
    m_Leaf( 0 ),
    m_TotalLeafs( 0 ),
    m_LeafSize( 0 ),
    m_TotalSize( 0 ),
    m_Position( 0 ),
    m_pCache( NULL ),
    m_CacheStartPosition( 0 ),
    m_BytesInCache( 0 )
{

}

/* virtual */ InterleavedStream::~InterleavedStream( void )
{
    if ( m_pFile != NULL )
    {
        delete m_pFile;
    }

    if ( m_pCache != NULL )
    {
        delete m_pCache;
    }
}

bool InterleavedStream::Initialize
(
    const char * pFilename,
    unsigned int fileOffset,
    unsigned int leaf,
    unsigned int totalLeafs,
    unsigned int leafSize,
    unsigned int totalSize
)
{
    m_pFile = new File( pFilename );
    
    m_FileOffset = fileOffset;
    m_Leaf = leaf;
    m_TotalLeafs = totalLeafs;
    m_LeafSize = leafSize;
    m_TotalSize = totalSize;

    if ( m_TotalLeafs > 1 )
    {
        m_pCache = new char[ CACHE_SIZE ];
    }

    if ( m_pFile->Open( false ) )
    {
        if ( m_pFile->GetSize( & m_FileSize ) )
        {
            return true;
        }
    }

    return false;
    
}

/* virtual */ bool InterleavedStream::GetSize( unsigned int * pSize )
{
   *pSize = m_TotalSize / m_TotalLeafs;

   return true;
}

/* virtual */ bool InterleavedStream::ReadBytes( char * pBytes, unsigned int numberOfBytes )
{
    if ( m_TotalLeafs > 1 )
    {
        unsigned int bytesRead = 0;

        unsigned int leafToReadFrom = 0;
        unsigned int offsetIntoLeaf = 0;
        unsigned int filePosition = 0;

        while ( bytesRead < numberOfBytes )
        {   
            leafToReadFrom = 0;
            offsetIntoLeaf = m_Position;

            if ( m_Position > 0 )
            {    
                leafToReadFrom = m_Position / m_LeafSize;
                offsetIntoLeaf = m_Position % m_LeafSize;
            }

            filePosition = m_FileOffset + ( m_LeafSize * m_Leaf ) + ( leafToReadFrom * m_LeafSize * m_TotalLeafs) + offsetIntoLeaf;

            if ( ! ( ( filePosition >= m_CacheStartPosition ) && ( filePosition < ( m_CacheStartPosition + m_BytesInCache ) ) ) )
            {
                //
                // Cache Miss
                //

                if ( ( m_FileSize - filePosition ) < CACHE_SIZE )
                {
                    m_BytesInCache = m_FileSize - filePosition;
                }
                else
                {
                    m_BytesInCache = CACHE_SIZE;
                }
                m_CacheStartPosition = filePosition;
                
                if ( ! m_pFile->SetPosition( filePosition ) )
                {
                    return false;
                }
                
                if ( ! m_pFile->ReadBytes( m_pCache, m_BytesInCache ) )
                {
                    return false;
                }
            }


            memcpy( pBytes + bytesRead, m_pCache + filePosition - m_CacheStartPosition, 1 );

            bytesRead ++;
            m_Position++;
        }

        return true;
    }
    else
    {
        if ( m_pFile->SetPosition( m_FileOffset + m_Position ) )
        {
            m_Position += numberOfBytes;
                        
            if ( m_pFile->ReadBytes( pBytes, numberOfBytes ) )
            {
                return true;
            }
        }

        return false;
    }
                
}

/* virtual */ bool InterleavedStream::SetPosition( unsigned int position )
{
    m_Position = position;

    return true;
}

/* virtual */ bool InterleavedStream::GetPosition( unsigned int * pPosition )
{
    *pPosition = m_Position;

    return true;
}

/* virtual */ bool InterleavedStream::WriteBytes( char * pBytes, unsigned int numberOfBytes )
{
    return printError( "InterleavedStream::WriteBytes not supported" );
}
