//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================



#ifndef INTERLEAVEDSTREAM_H
#define INTERLEAVEDSTREAM_H

#include <file/file.hpp>
#include <file/idatastream.hpp>

class WavData;

class InterleavedStream
    :
    public IDataStream
{
    public:
        
        InterleavedStream( void );
        virtual ~InterleavedStream( void );

        bool Initialize( const char * pFilename, unsigned int fileOffset, unsigned int leaf, unsigned int totalLeafs, unsigned int leafSize, unsigned int totalSize );

        virtual bool GetSize( unsigned int * pSize );
	    virtual bool ReadBytes( char * pBytes, unsigned int numberOfBytes );
        virtual bool WriteBytes( char * pBytes, unsigned int numberOfBytes );
	    virtual bool SetPosition( unsigned int position );
	    virtual bool GetPosition( unsigned int * pPosition );

    private:

    File * m_pFile;

    unsigned int m_FileSize;
    unsigned int m_FileOffset;
    unsigned int m_Leaf;
    unsigned int m_TotalLeafs;
    unsigned int m_LeafSize;
    unsigned int m_TotalSize;
    unsigned int m_Position;
    char * m_pCache;
    unsigned int m_CacheStartPosition;
    unsigned int m_BytesInCache;
    
};

#endif INTERLEAVEDSTREAM_H

