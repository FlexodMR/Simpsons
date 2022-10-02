// @doc

//=============================================================================
//
// File: GFEFILE.H |
// Copyright (c) 1997 Radical Entertainment Ltd. All rights reserved.
//
// Class(es):   GfeFile
//
// Parent(s):   None
//
// This file contains the representation of a *.GFE file. It provides appropriate 
// stream operations to clean up the file reading and writing that exists in other 
// classes.
//
// Authors:     Kevin M. Loken (KML)
//
//=============================================================================
//  Version    Author    CR       Date      Brief Description
//-----------------------------------------------------------------------------
//  00.90.00    KML     ----    07-Oct-97   File creation.
//  00.90.44    KML     ----    19-Dec-97   Fixed all file comments.
//=============================================================================

//=============================================================================
// Prevent multiple inclusion
//=============================================================================
#ifndef __GFEFILE_H
#define __GFEFILE_H

//=============================================================================
// Nested includes
//=============================================================================
#include "stdgfe.h"

//=============================================================================
//
// @class GfeFile | This class encapsulates a Windows file handle and provides
//        the standard iostream operators for that file.
//
class GfeFile
{
    // @access Public Members

    public:
        // @member GfeFile | Constructor.
        GfeFile( HANDLE hfile, HWND hwndParent = 0, const char* szFilename = 0 );

        // @member ~GfeFile | Destructor.
        ~GfeFile();

        // @member CurrentPosition | Get the current position of the file pointer 
        //         within the file.
        DWORD CurrentPosition( void ) const;

        // @member SetPosition | Set the current position of the file pointer 
        //         within the file, relative to the beginning of the file.
        void SetPosition( DWORD dwOffset );

        // @member operator>> | A number of overloaded operators to read the 
        //         various basic data types.
        GfeFile& operator>>( BYTE& b );
        GfeFile& operator>>( WORD& w );
        GfeFile& operator>>( DWORD& dw );
        GfeFile& operator>>( char& ch );
        GfeFile& operator>>( short& s );
        GfeFile& operator>>( int& i );
        GfeFile& operator>>( unsigned int& ui );
        GfeFile& operator>>( long& l );
        GfeFile& operator>>( POINT& pt );
        GfeFile& operator>>( RECT& rect );

        // @member Read | Read a buffer of the specified number of bytes.
        void Read( void* pv, unsigned long size );

        // @member operator\<\< | A number of overloaded operators to write 
        //         the various basic data types.
        GfeFile& operator<<( BYTE& b );
        GfeFile& operator<<( WORD& w );
        GfeFile& operator<<( DWORD& dw );
        GfeFile& operator<<( char& ch );
        GfeFile& operator<<( short& s );
        GfeFile& operator<<( int& i );
        GfeFile& operator<<( unsigned int& ui );
        GfeFile& operator<<( long& l );
        GfeFile& operator<<( POINT& pt );
        GfeFile& operator<<( RECT& rect );

        // @member Write | Write a buffer of the specfied number of bytes.
        void Write( void* pv, unsigned long size );

    // @access Private Members

    private:
        // @member GfeFile | Default constructor. Private to prevent accidental 
        //         invocation.
        GfeFile();

        // @member GfeFile | Prevent copying. Decalre but don't define.
        GfeFile( const GfeFile& );

        // @member operator= | Prevent assignment. Declare but don't define.
        GfeFile& operator=( const GfeFile& );

        // @member m_hfile | The handle to the file that is actually represented
        //         by this class.
        HANDLE m_hfile;

        // @member m_dwPos | The current position within the file.
        DWORD m_dwPos;

        // @member m_dwSize | The size of the file we are reading.
        DWORD m_dwSize;
};

#endif // End of conditional inclusion
