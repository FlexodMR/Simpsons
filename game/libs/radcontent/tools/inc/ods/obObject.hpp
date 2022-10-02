//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


#ifndef OBOBJECT_HPP
#define OBOBJECT_HPP

#include <stdlib.h>
#include "obUtilString.hpp"
#include "obMemory.hpp"


class obObject
{
	public:

		void * operator new ( size_t size )
		{
			return obMalloc( size );
		}

		void operator delete( void * pMemory )
		{
			obFree( pMemory );
		}

};

/* class obRefCounted : public obObject
{
    public:
        
        obRefCounted( void ) : m_RefCount( 0 ) { }
        virtual ~obRefCounted( void ) { }

        void AddRef( void ) { m_RefCount++; }
        void Release( void ) { m_RefCount--; if ( m_RefCount == 0 ) { delete this; } }

    private:

        unsigned int m_RefCount;
}; */

#endif // OBOBJECT_HPP


