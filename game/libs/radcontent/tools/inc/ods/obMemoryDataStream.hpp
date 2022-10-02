//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


#ifndef OBMEMORYDATASTREAM_HPP
#define OBMEMORYDATASTREAM_HPP

#include "obStream.hpp"

class obMemoryDataStream : public obDataStream
{
	public:
	
		obMemoryDataStream( const void * pMemory, unsigned int bytes );
	
		virtual bool Read( void * pBytes, unsigned int numBytes );
		virtual bool Write( const void * pBytes, unsigned int numBytes );
		
	private:
	
		const char * m_pMemory;
		const char * m_pEnd;
};

#endif // OBMEMORYDATASTREAM