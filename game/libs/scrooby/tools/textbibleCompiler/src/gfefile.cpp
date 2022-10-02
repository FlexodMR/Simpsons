// @doc

//=============================================================================
//
// @module GFEFILE.CPP |
// Copyright <cp> 1997 Radical Entertainment Ltd. All rights reserved.
//
// Class(es):   <c GfeFile>
//
// Parent(s):   None
//
// This file contains the representation of a *.GFE file. It provides appropriate 
// stream operations to clean up the file reading and writing that exists in other 
// classes.
//
// Authors:     Kevin M. Loken (KML)
//
//============================================================================= <nl>
//  Version    Author    CR       Date      Brief Description                   <nl>
//----------------------------------------------------------------------------- <nl>
//  00.90.00    KML     ----    07-Oct-97   File creation.                      <nl>
//  00.90.44    KML     ----    19-Dec-97   Fixed all file comments.            <nl>
//============================================================================= <nl>

//=============================================================================
// Include files
//=============================================================================
#include "stdgfe.h"
#include "gfefile.h"

//=============================================================================
//
// @mfunc Constructor. Create a GfeFile object that has an associated handle
//        to a "Windows" file.
//
// @parm HANDLE | hfile | The "Windows" file that we are associating with this object.
// @parm HWND | hwndParent | The parent of the progress dialog
// @parm const char* | szFilename | The name of the file we are loading
//
GfeFile::GfeFile( HANDLE hfile, HWND hwndParent, const char* szFilename )
:
  m_hfile( hfile ),
  m_dwPos( 0 ),
  m_dwSize( 0 )
{
    if( hwndParent )
    {
        m_dwSize = ::SetFilePointer( m_hfile, 0, 0, FILE_END );
        ::SetFilePointer( m_hfile, 0, 0, FILE_BEGIN );
    }
}

//=============================================================================
//
// @mfunc Destructor. This closes the file that is associated with this object.
//
GfeFile::~GfeFile()
{
    ::CloseHandle( m_hfile );
}


//=============================================================================
//
// @mfunc Get the current position (relative to the beginning of the file) for
//        this file.
//
// @rdesc Returns an unsigned long value that is the zero-based offset from the 
//        beginning of the file.
//
DWORD GfeFile::CurrentPosition() const
{
    return
    (
        ::SetFilePointer
        (
            m_hfile,        // handle of file 
            0,                // number of bytes to move file pointer 
            0,                // address of high-order word of distance to move  
            FILE_CURRENT    // how to move 
        )
    );
}

//=============================================================================
//
// @mfunc Get the current position (relative to the beginning of the file) for
//        this file.
//
// @parm DWORD | dwOffset | The zero-based offset relative to the beginning of the file
//
void GfeFile::SetPosition( DWORD dwOffset )
{
    ::SetFilePointer
    (
        m_hfile,    // handle of file 
        dwOffset,   // number of bytes to move file pointer 
        0,            // address of high-order word of distance to move  
        FILE_BEGIN  // how to move 
    );
}

//=============================================================================
//
// @mfunc Read data for this object from the specified data file.
//
// @syntax operator>>( BYTE& b );
// @syntax operator>>( WORD& w );
// @syntax operator>>( DWORD& dw );
// @syntax operator>>( char& ch );
// @syntax operator>>( short& s );
// @syntax operator>>( int& i );
// @syntax operator>>( unsigned int& ui );
// @syntax operator>>( long& l );
// @syntax operator>>( POINT& pt );
// @syntax operator>>( RECT& rect );
//
// @parm BYTE& | b | A reference to the byte that we are going to read
// @parm WORD& | w | A reference to the word that we are going to read
// @parm DWORD& | dw | A reference to the double word that we are going to read
// @parm char& | ch | A reference to the char that we are going to read
// @parm short& | s | A reference to the short that we are going to read
// @parm int& | i | A reference to the int that we are going to read
// @parm unsigned int& | ui | A reference to the int that we are going to read
// @parm long& | l | A reference to the long that we are going to read
// @parm POINT& | pt | A reference to the point we are reading.
// @parm RECT& | rect | A reference to the rect we are reading.
//
// @rdesc Returns a non-const reference to the same file object. 
//
GfeFile& GfeFile::operator>>( BYTE& b )
{
    // Variables to hold the number of requested bytes and the actual bytes
    // that were read from the file.
    DWORD dwBytesRead;
    DWORD dwBytesToRead = sizeof(BYTE);

    ::ReadFile
    ( 
        m_hfile,        // handle of file to read 
        (LPVOID)&b,     // address of buffer that receives data  
        dwBytesToRead,  // number of bytes to read 
        &dwBytesRead,   // address of number of bytes read 
        0               // address of structure for data (must be non-zero if
                        // m_hfile is created with FILE_FLAG_OVERLAPPED set.
    );

    // The number of bytes actually read MUST equal the number of bytes requested,
    // otherwise we have some bad data (or a bad data file).
    ASSERT( dwBytesRead == dwBytesToRead );

    return( *this );
}

GfeFile& GfeFile::operator>>( WORD& w )
{
    // Variables to hold the number of requested bytes and the actual bytes
    // that were read from the file.
    DWORD dwBytesRead;
    DWORD dwBytesToRead = sizeof(WORD);

    ::ReadFile
    ( 
        m_hfile,        // handle of file to read 
        (LPVOID)&w,     // address of buffer that receives data  
        dwBytesToRead,  // number of bytes to read 
        &dwBytesRead,   // address of number of bytes read 
        0               // address of structure for data (must be non-zero if
                        // m_hfile is created with FILE_FLAG_OVERLAPPED set.
    );

    // The number of bytes actually read MUST equal the number of bytes requested,
    // otherwise we have some bad data (or a bad data file).
    ASSERT( dwBytesRead == dwBytesToRead );

    return( *this );
}

GfeFile& GfeFile::operator>>( DWORD& dw )
{
    // Variables to hold the number of requested bytes and the actual bytes
    // that were read from the file.
    DWORD dwBytesRead;
    DWORD dwBytesToRead = sizeof(DWORD);

    ::ReadFile
    ( 
        m_hfile,        // handle of file to read 
        (LPVOID)&dw,    // address of buffer that receives data  
        dwBytesToRead,  // number of bytes to read 
        &dwBytesRead,   // address of number of bytes read 
        0               // address of structure for data (must be non-zero if
                        // m_hfile is created with FILE_FLAG_OVERLAPPED set.
    );

    // The number of bytes actually read MUST equal the number of bytes requested,
    // otherwise we have some bad data (or a bad data file).
    ASSERT( dwBytesRead == dwBytesToRead );

    return( *this );
}

GfeFile& GfeFile::operator>>( char& ch )
{
    // Variables to hold the number of requested bytes and the actual bytes
    // that were read from the file.
    DWORD dwBytesRead;
    DWORD dwBytesToRead = sizeof(char);

    ::ReadFile
    ( 
        m_hfile,        // handle of file to read 
        (LPVOID)&ch,    // address of buffer that receives data  
        dwBytesToRead,  // number of bytes to read 
        &dwBytesRead,   // address of number of bytes read 
        0               // address of structure for data (must be non-zero if
                        // m_hfile is created with FILE_FLAG_OVERLAPPED set.
    );

    // The number of bytes actually read MUST equal the number of bytes requested,
    // otherwise we have some bad data (or a bad data file).
    ASSERT( dwBytesRead == dwBytesToRead );

    return( *this );
}

GfeFile& GfeFile::operator>>( short& s )
{
    // Variables to hold the number of requested bytes and the actual bytes
    // that were read from the file.
    DWORD dwBytesRead;
    DWORD dwBytesToRead = sizeof(short);

    ::ReadFile
    ( 
        m_hfile,        // handle of file to read 
        (LPVOID)&s,     // address of buffer that receives data  
        dwBytesToRead,  // number of bytes to read 
        &dwBytesRead,   // address of number of bytes read 
        0               // address of structure for data (must be non-zero if
                        // m_hfile is created with FILE_FLAG_OVERLAPPED set.
    );

    // The number of bytes actually read MUST equal the number of bytes requested,
    // otherwise we have some bad data (or a bad data file).
    ASSERT( dwBytesRead == dwBytesToRead );

    return( *this );
}

GfeFile& GfeFile::operator>>( int& i )
{
    // Variables to hold the number of requested bytes and the actual bytes
    // that were read from the file.
    DWORD dwBytesRead;
    DWORD dwBytesToRead = sizeof(int);

    ::ReadFile
    ( 
        m_hfile,        // handle of file to read 
        (LPVOID)&i,     // address of buffer that receives data  
        dwBytesToRead,  // number of bytes to read 
        &dwBytesRead,   // address of number of bytes read 
        0               // address of structure for data (must be non-zero if
                        // m_hfile is created with FILE_FLAG_OVERLAPPED set.
    );

    // The number of bytes actually read MUST equal the number of bytes requested,
    // otherwise we have some bad data (or a bad data file).
    ASSERT( dwBytesRead == dwBytesToRead );

    return( *this );
}

GfeFile& GfeFile::operator>>( unsigned int& ui )
{
    // Variables to hold the number of requested bytes and the actual bytes
    // that were read from the file.
    DWORD dwBytesRead;
    DWORD dwBytesToRead = sizeof(unsigned int);

    ::ReadFile
    ( 
        m_hfile,        // handle of file to read 
        (LPVOID)&ui,    // address of buffer that receives data  
        dwBytesToRead,  // number of bytes to read 
        &dwBytesRead,   // address of number of bytes read 
        0               // address of structure for data (must be non-zero if
                        // m_hfile is created with FILE_FLAG_OVERLAPPED set.
    );

    // The number of bytes actually read MUST equal the number of bytes requested,
    // otherwise we have some bad data (or a bad data file).
    ASSERT( dwBytesRead == dwBytesToRead );

    return( *this );
}

GfeFile& GfeFile::operator>>( long& l )
{
    // Variables to hold the number of requested bytes and the actual bytes
    // that were read from the file.
    DWORD dwBytesRead;
    DWORD dwBytesToRead = sizeof(long);


    ::ReadFile
    ( 
        m_hfile,        // handle of file to read 
        (LPVOID)&l,     // address of buffer that receives data  
        dwBytesToRead,  // number of bytes to read 
        &dwBytesRead,   // address of number of bytes read 
        0               // address of structure for data (must be non-zero if
                        // m_hfile is created with FILE_FLAG_OVERLAPPED set.
    );

    // The number of bytes actually read MUST equal the number of bytes requested,
    // otherwise we have some bad data (or a bad data file).
    ASSERT( dwBytesRead == dwBytesToRead );

    return( *this );
}

GfeFile& GfeFile::operator>>( POINT& pt )
{
    // Variables to hold the number of requested bytes and the actual bytes
    // that were read from the file.
    DWORD dwBytesRead;
    DWORD dwBytesToRead = sizeof(POINT);

    ::ReadFile
    ( 
        m_hfile,        // handle of file to read 
        (LPVOID)&pt,    // address of buffer that receives data  
        dwBytesToRead,  // number of bytes to read 
        &dwBytesRead,   // address of number of bytes read 
        0               // address of structure for data (must be non-zero if
                        // m_hfile is created with FILE_FLAG_OVERLAPPED set.
    );

    // The number of bytes actually read MUST equal the number of bytes requested,
    // otherwise we have some bad data (or a bad data file).
    ASSERT( dwBytesRead == dwBytesToRead );

    return( *this );
}

GfeFile& GfeFile::operator>>( RECT& rect )
{
    // Variables to hold the number of requested bytes and the actual bytes
    // that were read from the file.
    DWORD dwBytesRead;
    DWORD dwBytesToRead = sizeof(RECT);

    ::ReadFile
    ( 
        m_hfile,        // handle of file to read 
        (LPVOID)&rect,  // address of buffer that receives data  
        dwBytesToRead,  // number of bytes to read 
        &dwBytesRead,   // address of number of bytes read 
        0               // address of structure for data (must be non-zero if
                        // m_hfile is created with FILE_FLAG_OVERLAPPED set.
    );

    // The number of bytes actually read MUST equal the number of bytes requested,
    // otherwise we have some bad data (or a bad data file).
    ASSERT( dwBytesRead == dwBytesToRead );

    return( *this );
}

//=============================================================================
//
// @mfunc Read data for this object from the specified data file.
//
// @parm void* | pv | A pointer to a buffer to hold the data
// @parm DWORD | dwSize | The number of bytes to read
//
void GfeFile::Read( void* pv, DWORD dwSize )
{
    // Variables to hold the number of requested bytes and the actual bytes
    // that were read from the file.
    DWORD dwBytesRead;
    DWORD dwBytesToRead = dwSize;

    ::ReadFile
    ( 
        m_hfile,        // handle of file to read 
        pv,             // address of buffer that receives data  
        dwBytesToRead,  // number of bytes to read 
        &dwBytesRead,   // address of number of bytes read 
        0               // address of structure for data (must be non-zero if
                        // m_hfile is created with FILE_FLAG_OVERLAPPED set.
    );

    // The number of bytes actually read MUST equal the number of bytes requested,
    // otherwise we have some bad data (or a bad data file).
    ASSERT( dwBytesRead == dwBytesToRead );
}

//=============================================================================
//
// @mfunc Write data for this object to the specified data file.
//
// @syntax operator\<\<( BYTE& b );
// @syntax operator\<\<( WORD& w );
// @syntax operator\<\<( DWORD& dw );
// @syntax operator\<\<( char& ch );
// @syntax operator\<\<( short& s );
// @syntax operator\<\<( int& i );
// @syntax operator\<\<( unsigned int& ui );
// @syntax operator\<\<( long& l );
// @syntax operator\<\<( POINT& pt );
// @syntax operator\<\<( RECT& rect );
//
// @parm BYTE& | b | A reference to the byte that we are going to write
// @parm WORD& | w | A reference to the word that we are going to write
// @parm DWORD& | dw | A reference to the double word that we are going to write
// @parm char& | ch | A reference to the char that we are going to write
// @parm short& | s | A reference to the short that we are going to write
// @parm int& | i | A reference to the int that we are going to write
// @parm unsigned int& | ui | A reference to the int that we are going to write
// @parm long& | l | A reference to the long that we are going to write
// @parm POINT& | pt | A reference to the point we are writeing.
// @parm RECT& | rect | A reference to the rect we are writeing.
//
// @rdesc Returns a non-const reference to the same file object. 
//
GfeFile& GfeFile::operator<<( BYTE& b )
{
    // Variables to hold the number of bytes to write and the actual bytes
    // that were written to the file.
    DWORD dwBytesWritten;
    DWORD dwBytesToWrite = sizeof(BYTE);

    ::WriteFile
    ( 
        m_hfile,         // handle of file to write to
        (LPVOID)&b,      // pointer to data to write to file
        dwBytesToWrite,  // number of bytes to write 
        &dwBytesWritten, // pointer to number of bytes written 
        0                // address of structure for data (must be non-zero if
                         // m_hfile is created with FILE_FLAG_OVERLAPPED set.
    );

    // The number of bytes actually written MUST equal the number of bytes requested,
    // otherwise we have some bad data (or a bad data file).
    ASSERT( dwBytesWritten == dwBytesToWrite );

    return( *this );
}

GfeFile& GfeFile::operator<<( WORD& w )
{
    // Variables to hold the number of bytes to write and the actual bytes
    // that were written to the file.
    DWORD dwBytesWritten;
    DWORD dwBytesToWrite = sizeof(WORD);

    ::WriteFile
    ( 
        m_hfile,         // handle of file to write to
        (LPVOID)&w,      // pointer to data to write to file
        dwBytesToWrite,  // number of bytes to write 
        &dwBytesWritten, // pointer to number of bytes written 
        0                // address of structure for data (must be non-zero if
                         // m_hfile is created with FILE_FLAG_OVERLAPPED set.
    );

    // The number of bytes actually written MUST equal the number of bytes requested,
    // otherwise we have some bad data (or a bad data file).
    ASSERT( dwBytesWritten == dwBytesToWrite );

    return( *this );
}

GfeFile& GfeFile::operator<<( DWORD& dw )
{
    // Variables to hold the number of bytes to write and the actual bytes
    // that were written to the file.
    DWORD dwBytesWritten;
    DWORD dwBytesToWrite = sizeof(DWORD);

    ::WriteFile
    ( 
        m_hfile,         // handle of file to write to
        (LPVOID)&dw,     // pointer to data to write to file
        dwBytesToWrite,  // number of bytes to write 
        &dwBytesWritten, // pointer to number of bytes written 
        0                // address of structure for data (must be non-zero if
                         // m_hfile is created with FILE_FLAG_OVERLAPPED set.
    );

    // The number of bytes actually written MUST equal the number of bytes requested,
    // otherwise we have some bad data (or a bad data file).
    ASSERT( dwBytesWritten == dwBytesToWrite );

    return( *this );
}

GfeFile& GfeFile::operator<<( char& ch )
{
    // Variables to hold the number of bytes to write and the actual bytes
    // that were written to the file.
    DWORD dwBytesWritten;
    DWORD dwBytesToWrite = sizeof(char);

    ::WriteFile
    ( 
        m_hfile,         // handle of file to write to
        (LPVOID)&ch,     // pointer to data to write to file
        dwBytesToWrite,  // number of bytes to write 
        &dwBytesWritten, // pointer to number of bytes written 
        0                // address of structure for data (must be non-zero if
                         // m_hfile is created with FILE_FLAG_OVERLAPPED set.
    );

    // The number of bytes actually written MUST equal the number of bytes requested,
    // otherwise we have some bad data (or a bad data file).
    ASSERT( dwBytesWritten == dwBytesToWrite );

    return( *this );
}

GfeFile& GfeFile::operator<<( short& s )
{
    // Variables to hold the number of bytes to write and the actual bytes
    // that were written to the file.
    DWORD dwBytesWritten;
    DWORD dwBytesToWrite = sizeof(short);

    ::WriteFile
    ( 
        m_hfile,         // handle of file to write to
        (LPVOID)&s,      // pointer to data to write to file
        dwBytesToWrite,  // number of bytes to write 
        &dwBytesWritten, // pointer to number of bytes written 
        0                // address of structure for data (must be non-zero if
                         // m_hfile is created with FILE_FLAG_OVERLAPPED set.
    );

    // The number of bytes actually written MUST equal the number of bytes requested,
    // otherwise we have some bad data (or a bad data file).
    ASSERT( dwBytesWritten == dwBytesToWrite );

    return( *this );
}

GfeFile& GfeFile::operator<<( int& i )
{
    // Variables to hold the number of bytes to write and the actual bytes
    // that were written to the file.
    DWORD dwBytesWritten;
    DWORD dwBytesToWrite = sizeof(int);

    ::WriteFile
    ( 
        m_hfile,         // handle of file to write to
        (LPVOID)&i,      // pointer to data to write to file
        dwBytesToWrite,  // number of bytes to write 
        &dwBytesWritten, // pointer to number of bytes written 
        0                // address of structure for data (must be non-zero if
                         // m_hfile is created with FILE_FLAG_OVERLAPPED set.
    );

    // The number of bytes actually written MUST equal the number of bytes requested,
    // otherwise we have some bad data (or a bad data file).
    ASSERT( dwBytesWritten == dwBytesToWrite );

    return( *this );
}

GfeFile& GfeFile::operator<<( unsigned int& ui )
{
    // Variables to hold the number of bytes to write and the actual bytes
    // that were written to the file.
    DWORD dwBytesWritten;
    DWORD dwBytesToWrite = sizeof(unsigned int);

    ::WriteFile
    ( 
        m_hfile,         // handle of file to write to
        (LPVOID)&ui,     // pointer to data to write to file
        dwBytesToWrite,  // number of bytes to write 
        &dwBytesWritten, // pointer to number of bytes written 
        0                // address of structure for data (must be non-zero if
                         // m_hfile is created with FILE_FLAG_OVERLAPPED set.
    );

    // The number of bytes actually written MUST equal the number of bytes requested,
    // otherwise we have some bad data (or a bad data file).
    ASSERT( dwBytesWritten == dwBytesToWrite );

    return( *this );
}

GfeFile& GfeFile::operator<<( long& l )
{
    // Variables to hold the number of bytes to write and the actual bytes
    // that were written to the file.
    DWORD dwBytesWritten;
    DWORD dwBytesToWrite = sizeof(long);

    ::WriteFile
    ( 
        m_hfile,         // handle of file to write to
        (LPVOID)&l,      // pointer to data to write to file
        dwBytesToWrite,  // number of bytes to write 
        &dwBytesWritten, // pointer to number of bytes written 
        0                // address of structure for data (must be non-zero if
                         // m_hfile is created with FILE_FLAG_OVERLAPPED set.
    );

    // The number of bytes actually written MUST equal the number of bytes requested,
    // otherwise we have some bad data (or a bad data file).
    ASSERT( dwBytesWritten == dwBytesToWrite );

    return( *this );
}

GfeFile& GfeFile::operator<<( POINT& pt )
{
    // Variables to hold the number of bytes to write and the actual bytes
    // that were written to the file.
    DWORD dwBytesWritten;
    DWORD dwBytesToWrite = sizeof(POINT);

    ::WriteFile
    ( 
        m_hfile,         // handle of file to write to
        (LPVOID)&pt,     // pointer to data to write to file
        dwBytesToWrite,  // number of bytes to write 
        &dwBytesWritten, // pointer to number of bytes written 
        0                // address of structure for data (must be non-zero if
                         // m_hfile is created with FILE_FLAG_OVERLAPPED set.
    );

    // The number of bytes actually written MUST equal the number of bytes requested,
    // otherwise we have some bad data (or a bad data file).
    ASSERT( dwBytesWritten == dwBytesToWrite );

    return( *this );
}

GfeFile& GfeFile::operator<<( RECT& rect )
{
    // Variables to hold the number of bytes to write and the actual bytes
    // that were written to the file.
    DWORD dwBytesWritten;
    DWORD dwBytesToWrite = sizeof(RECT);

    ::WriteFile
    ( 
        m_hfile,         // handle of file to write to
        (LPVOID)&rect,   // pointer to data to write to file
        dwBytesToWrite,  // number of bytes to write 
        &dwBytesWritten, // pointer to number of bytes written 
        0                // address of structure for data (must be non-zero if
                         // m_hfile is created with FILE_FLAG_OVERLAPPED set.
    );

    // The number of bytes actually written MUST equal the number of bytes requested,
    // otherwise we have some bad data (or a bad data file).
    ASSERT( dwBytesWritten == dwBytesToWrite );

    return( *this );
}

//=============================================================================
//
// @mfunc Write data for this object to the specified data file.
//
// @parm void* | pv | A pointer to the data we are going to write
// @parm DWORD | dwSize | The number of bytes to write
//
void GfeFile::Write( void* pv, DWORD dwSize )
{
    // Variables to hold the number of bytes to write and the actual bytes
    // that were written to the file.
    DWORD dwBytesWritten;
    DWORD dwBytesToWrite = dwSize;

    ::WriteFile
    ( 
        m_hfile,         // handle of file to write to
        pv,              // pointer to data to write to file
        dwBytesToWrite,  // number of bytes to write 
        &dwBytesWritten, // pointer to number of bytes written 
        0                // address of structure for data (must be non-zero if
                         // m_hfile is created with FILE_FLAG_OVERLAPPED set.
    );

    // The number of bytes actually written MUST equal the number of bytes requested,
    // otherwise we have some bad data (or a bad data file).
    ASSERT( dwBytesWritten == dwBytesToWrite );
}

