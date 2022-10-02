//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


#ifndef OBUTILSTRING_HPP
#define OBUTILSTRING_HPP

#include <stdio.h>
#include <stdarg.h>
#include <string.h>

#include "obMemory.hpp"

#define MAX_STR_LEN 256

class obUtilString
{
    public:

    obUtilString( void ) : m_pValue ( NULL )
    {
        Copy( "Uninitialize string value" );
    }

    obUtilString( const obUtilString & other ) : m_pValue( NULL )        
    {
        Copy( other.m_pValue );        
    }

    obUtilString( const char * pString ) : m_pValue( NULL )
    {
        Copy( pString );
    }

    ~obUtilString( void ) { obFree( m_pValue ); }

    obUtilString & operator= ( const char * pString )
    {
        Copy( pString );
        return *this;
    }

    const obUtilString & operator= ( const obUtilString & other )
    {
        Copy( other.m_pValue );

        return *this;
    }

    bool operator == ( const char * pString )
    {
        return strcmp( pString, m_pValue ) == 0;
    }
    
    bool operator != ( const char * pString )
    {
        return strcmp( pString, m_pValue ) != 0;
    }
    
    bool operator == ( obUtilString & o )
    {
        return strcmp( o.m_pValue, m_pValue ) == 0;
    }
    
    bool operator != ( obUtilString & o )
    {
        return strcmp( o.m_pValue, m_pValue ) != 0;
    }    

    operator const char * ( void )
    {
        return m_pValue;
    }

    static int rDebugVsnPrintf( char *buffer, size_t count, const char *format, va_list argptr )
    {
        #if defined (RAD_WIN32) || defined (RAD_XBOX)
            return _vsnprintf( buffer, count, format, argptr );
        #elif defined (RAD_GAMECUBE)
            return vsnprintf( buffer, count, format, argptr );
        #elif defined (RAD_PS2)
            return vsprintf( buffer, format, argptr );
        #endif
    }

    int Format( const char * fmt, ... )
    {
        char tempStr[ MAX_STR_LEN ];
        va_list va_alist = {0}; 
        va_start( va_alist, fmt ); 
        int retval = rDebugVsnPrintf( tempStr, MAX_STR_LEN, fmt, va_alist );
        va_end( va_alist ); 

        Copy( tempStr );

	    return retval;
    }

    private:

        void Copy( const char * pString )
        {
            if( m_pValue )
            {
                obFree( m_pValue );
            }
            
            if ( pString != NULL )
            {
                m_pValue = (char*) obMalloc( strlen( pString ) + 1 );
                strcpy( m_pValue, pString );
            }
            else
            {
                m_pValue = NULL;
            }
        }

    char * m_pValue;
};

#endif // OBUTILSTRING_HPP