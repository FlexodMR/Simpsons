//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


//============================================================================
// Class: File
//============================================================================

#include <file/file.hpp>
#include <radsoundtools.hpp>
#include <output/output.hpp>

File::File( void )
    :
    m_hFile( INVALID_HANDLE_VALUE )
{
    strcpy( m_Filename, "badfilename" );
}
      
File::File( const char * pFilename )
    :
    m_hFile( INVALID_HANDLE_VALUE )
{
    strcpy( m_Filename, pFilename );
}

/* virtual */ File::~File( void )
{
	if ( m_hFile != INVALID_HANDLE_VALUE )
	{
		Close( );
	}
}

void File::SetFileName( const char * pFilename )
{
    strcpy( m_Filename, pFilename );
}

const char * File::GetFullFileName( void )
{
    return m_Filename;
}

void File::GetFileName( char * pBuffer, unsigned int size )
{
    char ext[256];

    ::_splitpath( m_Filename, NULL, NULL, pBuffer, ext );

    strcat( pBuffer, ext );
}

bool File::GetSize( unsigned int * size )
{	
	*size = GetFileSize(
		m_hFile,
		NULL
	);
	
	if ( *size == 0xFFFFFFFF )
	{
        return printError( "::GetFileSize failed on file: [%s]", m_Filename );
	}

    return true;
}

bool File::Open( bool write )
{
    if ( write )
    {
        rstCreateDirectoryRecursive( m_Filename );
    }

	m_hFile = ::CreateFile(
		m_Filename,
		write ? GENERIC_WRITE | GENERIC_READ: GENERIC_READ,
		FILE_SHARE_READ | FILE_SHARE_WRITE,
		NULL,
		write ? CREATE_ALWAYS : OPEN_EXISTING,
		FILE_ATTRIBUTE_NORMAL,
		0
	);

	if ( m_hFile == INVALID_HANDLE_VALUE )
	{
        return printError( "::CreateFile failed on file: [%s]", m_Filename );
   	}

    return true;
}

bool File::WriteBytes( char * pBytes, unsigned int bytes )
{
	DWORD bytesWritten;

	BOOL ret = WriteFile(
		m_hFile,
		pBytes,
		bytes,
		& bytesWritten,
		NULL
	);

	if ( ret == FALSE || bytesWritten != bytes )
	{
        return printError( "::WriteBytes failed on file: [%s]", m_Filename );
	}

    return true;
}

bool File::SetPosition( unsigned int position )
{
	DWORD ret = SetFilePointer(
		m_hFile,
		position,
		NULL,
		FILE_BEGIN
	);
 
	if ( ret == 0xFFFFFFFF )
	{
        return printError( "::SetFilePointer failed on file: [%s]", m_Filename );
	}

    return true;
}

bool File::GetPosition( unsigned int * position )
{
	*position = SetFilePointer(
		m_hFile,
		0,
		NULL,
		FILE_CURRENT
	);

    if ( *position == 0xFFFFFFFF )
    {
        return printError( "::SetFilePointer failed on file: [%s]", m_Filename );
    }

    return true;
}

bool File::ReadBytes( char * pBytes, unsigned int bytes )
{
	DWORD bytesRead;

	BOOL ret = ReadFile(
		m_hFile,
		pBytes,
		bytes,
		& bytesRead,
		NULL
	);

	if ( ret == FALSE || bytesRead != bytes )
	{
        return printError( "::ReadFile failed on file: [%s]", m_Filename );		
	}

    return true;
}

bool File::ReadToken( char * pToken, unsigned int bytes )
{
    char * pSearch = pToken;

    char byte;

    while( 1 )
    {
        if ( ! ReadBytes( & byte, 1 ) )
        {
            return false;
        }

        if ( byte != '\t' && byte != ' ' && byte != 13 && byte != 10 )
        {
           *pSearch = byte;
            pSearch++;
            break;
        }
    }

    while( 1 )
    {
        if ( pSearch >= ( pToken + bytes ) )
        {
            break;
        }

        if ( ReadBytes( pSearch, 1 ) )
        {
            if ( *pSearch == '\t' || *pSearch == ' ' || *pSearch == 13 || *pSearch == 10 )
            {
                break;
            }
        }
        else
        {
            break;
        }

        pSearch++;
    }

    *pSearch = 0;

    return true;
}

bool File::Delete ( void )
{
    if ( ! ::DeleteFile( m_Filename ) )
    {
        return printError( "Couldn't delete file: [%s]", m_Filename );        
    }

    return true;
}

bool File::Close( void )
{
	BOOL ret = ::CloseHandle( m_hFile );

	if ( ret == FALSE )
	{
        return printError( "Close File Failed: [%s]", m_Filename );
    }

	m_hFile = INVALID_HANDLE_VALUE;
		    
    return true;
} 
