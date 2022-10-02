//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


#include "pch.hpp"
#include "obMemoryDataStream.hpp"


obMemoryDataStream::obMemoryDataStream( const void * pMemory, unsigned int bytes )
	:
	m_pMemory( (const char*) pMemory ),
	m_pEnd( m_pMemory + bytes )
{
}
	
bool obMemoryDataStream::Read( void * pBytes, unsigned int numBytes )
{
	if ( (m_pMemory + numBytes) > m_pEnd )
	{
		return false;
	}	
	else
	{
		memcpy( pBytes, m_pMemory, numBytes );
		m_pMemory += numBytes;
		return true;
	}
}

bool obMemoryDataStream::Write( const void * pBytes, unsigned int numBytes )
{
	return false;
}

