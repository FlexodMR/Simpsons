//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


#include "pch.hpp"
#include "obParser.hpp"

static const char * WHITE = "\t \xA\xD";

obParser::obParser( obDataStream & dataStream )
	:
	m_pStart( 0 ),
	m_pEnd( 0 ),
	m_pCurrent( 0 ),
    m_LineCount( 0 )
{
   
    char byte;
    unsigned int size = 0;
    
    while( dataStream.Read( & byte, 1) )
    {
        size++;
        m_pStart = (char*) realloc( m_pStart, size );
        m_pStart[ size - 1 ] = byte;        
    }
    
    m_pEnd = m_pStart + size;
    m_pCurrent = m_pStart;
    
}

obParser::~obParser( void )
{
    free( m_pStart );
}


bool obParser::IsLetter( char c )
{
	if ( ( c >= 'a' && c <= 'z' ) || ( c >= 'A' && c <= 'Z' ) )
	{
		return true;
	}

	return false;
}

bool obParser::IsStartOfVarName( char c )
{
	if ( IsLetter( c ) || ( c == '_' ) )
	{
		return true;
	}

	return false;
}

bool obParser::IsMiddleOfVarName( char c )
{
	if ( IsStartOfVarName( c ) || IsNumber( c ) )
	{
		return true;
	}

	return false;
}



bool obParser::IsDelim( char c, const char * pDelim )
{
    while ( *pDelim != 0 )
    {
        if ( c == *pDelim )
        {
            return true;
        }
        
        pDelim++;
    }
    
    return false;
}

bool obParser::IsWhite( char c )
{
    return IsDelim( c, WHITE );
}

bool obParser::IsNumber( char c )
{
	if ( c >= '0' && c <= '9' )
	{
		return true;
	}

	return false;
}

void obParser::SkipWhite( void )
{
	while ( m_pCurrent < m_pEnd )
	{
		if ( IsWhite( *m_pCurrent ) )
		{
			NextChar( );
		}
		else
		{
			break;
		}
	}
}

bool obParser::IsToken( const char * pToken )
{
    SkipWhite( );

    return IsTokenNsw( pToken );
}

bool obParser::IsTokenNsw( const char * pToken )
{


	bool is = false;

	const char * p = m_pCurrent;

    int tokenLength = strlen( pToken );

	if ( p < m_pEnd )
	{
	    while( 1 )
	    {
		    if ( !IsWhite( *p ) && ( ( p - m_pCurrent) < tokenLength ) )
		    {
			    if ( *p != *pToken )
			    {
				    is = false;
				    break;
			    }
		    }
		    else
		    {
			    break;
		    }

            is = true;

		    p++;
		    pToken++;
        
		    if ( p >= m_pEnd )
		    {
			    break;
		    }
	    }
    }

	return is;
}

void obParser::SkipToken( void )
{
    SkipWhite( );

	while ( m_pCurrent < m_pEnd )
	{
		if ( ! IsWhite( *m_pCurrent ) )
		{
			NextChar( );
		}
		else
		{
			break;
		}
	}
}

bool obParser::SkipToken( const char * pToken )
{
    SkipWhite( );

    return SkipTokenNsw( pToken );
}

bool obParser::SkipTokenNsw( const char * pToken )
{
	if ( IsTokenNsw( pToken ) )
	{
		m_pCurrent += strlen( pToken );

		return true;
	}
	
	return false;
}

bool obParser::SkipChar( char c )
{
    SkipWhite( );

	if ( *m_pCurrent == c )
	{
		NextChar( );
		return true;
	}

	return false;
}

void obParser::SkipLine( void )
{
	while( m_pCurrent < m_pEnd )
	{
		if ( *m_pCurrent == 0x0A )
		{
			NextChar( );
			break;
		}

		NextChar( );
	}
}

bool obParser::GetChar( char * pChar )
{
    SkipWhite( );

    if ( m_pCurrent < m_pEnd )
    {
        *pChar = *m_pCurrent;
        NextChar( );
        return true;
    }

    return false;        
}

bool obParser::GetTokenDelim( char * pBuffer, int size, const char * pDelim )
{
    SkipWhite( );

	const char *pOldBuf = pBuffer;

	while( m_pCurrent < m_pEnd )
	{
		if ( !IsDelim( *m_pCurrent, pDelim ) )
		{
			*pBuffer = *m_pCurrent;
			pBuffer++;
			NextChar( );
		}
		else
		{
			break;
		}
	}

	*pBuffer = '\0';

	if ( pOldBuf == pBuffer )
	{
		return false;
	}

	return true;
  
}
		
bool obParser::GetToken( char * pBuffer, int size )
{
    return GetTokenDelim( pBuffer, size, WHITE );
}

bool obParser::GetQuotedString( char * pBuffer, int size )
{
    SkipWhite( );

    if ( m_pCurrent >= m_pEnd )
    {
        return false;
    }

    if (*m_pCurrent != '\"' )
    {
        return false;
    }

    NextChar( );

    while ( 1 )
    {
        if ( m_pCurrent >= m_pEnd )
        {
            return false;
        }

        if ( *m_pCurrent == '\"' )
        {
            *pBuffer = 0;
            NextChar( );
            return true;
        }

        *pBuffer = *m_pCurrent;
        pBuffer++;

        NextChar( );
    }
}

int obParser::GetInteger( void )
{
    SkipWhite( );

	char intBuffer[ 128 ];
	
	char * pP = intBuffer;

	while( *m_pCurrent >= '0' && *m_pCurrent <= '9' )
	{
		*pP = *m_pCurrent;
		NextChar( );
		pP++;
	}

	*pP = '\0';

	return atoi( intBuffer);
}

float obParser::GetFloat( void )
{
    SkipWhite( );
    	
	char floatBuffer[ 128 ];
	
	char * pP = floatBuffer;

	while( (*m_pCurrent >= '0' && *m_pCurrent <= '9') || *m_pCurrent == '.' )
	{
		*pP = *m_pCurrent;
		NextChar( );
		pP++;
	}

    *pP = '\0';

    float result = (float) atof( floatBuffer );

	return result;
}

bool obParser::IsNumber( void )
{
    SkipWhite( );

	return IsNumber( *m_pCurrent );
}

bool obParser::GetVariableName( char * pBuffer, int size )
{
    SkipWhite( );

	char * pP = pBuffer;

	if ( ! IsStartOfVarName( *m_pCurrent ) )
	{
		return false;
	}

	*pP = *m_pCurrent;

	NextChar( );
	pP++;

	while ( IsMiddleOfVarName( *m_pCurrent ) )
	{
		*pP = *m_pCurrent;
		NextChar( );
		pP++;
	}

	*pP = '\0';

	return true;

}

bool obParser::GetCompositeVariableName( char * pBuffer, int size )
{
    SkipWhite( );

	char * pP = pBuffer;

	if ( ! IsStartOfVarName( *m_pCurrent ) )
	{
		return false;
	}

	*pP = *m_pCurrent;

	NextChar( );
	pP++;

	while ( IsMiddleOfVarName( *m_pCurrent ) || *m_pCurrent == '.' )
	{
		*pP = *m_pCurrent;
		NextChar( );
		pP++;
	}

	*pP = '\0';

	return true;
}

bool obParser::IsStartOfVarName( void )
{
    SkipWhite( );

	return IsStartOfVarName( *m_pCurrent );
}

bool obParser::IsEof( void )
{
    SkipWhite( );

	return m_pCurrent >= m_pEnd;
}

unsigned int obParser::GetLineCount( void )
{
    return m_LineCount;
}

void obParser::NextChar( void )
{
    if ( *m_pCurrent == 0x0a )
    {
        m_LineCount++;
    }

    m_pCurrent++;
}