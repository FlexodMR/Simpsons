//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


#include "pch.hpp"
#include "obStdFileDataStream.hpp"

obStdFileDataStream::obStdFileDataStream( void )
    :
    m_pFile( NULL )
{
}

obStdFileDataStream::~obStdFileDataStream( void )
{
    if ( m_pFile != NULL )
    {
        fclose( m_pFile );
    }
}

bool obStdFileDataStream::Open( const char * pFileName, bool write )
{
    m_pFile = ::fopen( pFileName, write ? "wb" : "rb" );
    
    return m_pFile != NULL;     
}

bool obStdFileDataStream::Read( void * pBytes, unsigned int numBytes )
{
    return fread( pBytes, numBytes, 1, m_pFile ) == 1;
}

bool obStdFileDataStream::Write( const void * pBytes, unsigned int numBytes )
{
    return fwrite( pBytes, numBytes, 1, m_pFile ) == 1;
}

