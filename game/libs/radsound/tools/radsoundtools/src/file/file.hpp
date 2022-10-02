//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


//============================================================================
// Class: File
//============================================================================

#ifndef FILE_H
#define FILE_H

#include <windows.h>
#include <stdio.h>
#include <stdlib.h>
#include <file/idatastream.hpp>

class File
    :
    public IDataStream
{
    public:
        
        File( void );
        File( const char * pFilename );
        virtual ~File( void );

        void SetFileName( const char * pFilename );
        const char * GetFullFileName( void );
        void GetFileName( char * pBuffer, unsigned int size );

        virtual bool Open( bool write );
        virtual bool Close( void );
        virtual bool Delete( void );

        virtual bool GetSize( unsigned int * pSize );
	    virtual bool ReadBytes( char * pBytes, unsigned int numberOfBytes );
        virtual bool WriteBytes( char * pBytes, unsigned int numberOfBytes );
	    virtual bool SetPosition( unsigned int position );
	    virtual bool GetPosition( unsigned int * pPosition );

        // Text functions

        virtual bool ReadToken( char * pToken, unsigned int bytes );

    private:

    HANDLE m_hFile;
    char m_Filename[ _MAX_PATH ];
};

#endif FILE_H