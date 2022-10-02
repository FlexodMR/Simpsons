//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


#ifndef OBSTDFILEDATASTREAM_HPP
#define OBSTDFILEDATASTREAM_HPP

#include "obStream.hpp"

class obStdFileDataStream : public obDataStream
{
    public:
    
	    obStdFileDataStream( void );
	    virtual ~obStdFileDataStream( void );
	    bool Open( const char * pFileName, bool write );
    	
        virtual bool Read( void * pBytes, unsigned int numBytes );
        virtual bool Write( const void * pBytes, unsigned int numBytes );
        
    private:
    
        FILE * m_pFile;
};

#endif