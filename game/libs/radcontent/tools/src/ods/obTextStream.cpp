//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


#include "pch.hpp"
#include "obTextStream.hpp"

obTextStream::obTextStream( obDataStream & dataStream )
    :
    m_ObDataStream( dataStream )
{
    
}

bool obTextStream::WriteString( const char * pString )
{
    return m_ObDataStream.Write( pString, strlen( pString ) );
}

obDataStream & obTextStream::Ds( )
{
    return m_ObDataStream;
}

bool obTextStream::WriteQuotedString( const char * pString )
{
    if ( WriteString( "\"" ) )
    {
        if ( WriteString( pString ) )
        {
            if ( WriteString( "\"" ) )
            {
                return true;
            }
        }
    }

    return false;
}

bool obTextStream::WriteFloat( float f )
{
    char buf[ 128 ];
    sprintf( buf, "%f", f );

    return WriteString( buf );
}

bool obTextStream::WriteInt( int i )
{
    char buf[ 128 ];
    sprintf( buf, "%d", i );

    return WriteString( buf );
}

bool obTextStream::WriteChar( char c )
{
    return m_ObDataStream.Write( & c, sizeof( c ) );
}

bool obTextStream::WriteCrlf( void )
{
    if ( WriteChar( 13 ) )
    {
        if ( WriteChar( 10 ) )
        {
            return true;
        }
    }

    return false;
}

bool obTextStream::ReadString( char * pString, unsigned int buf )
{
    char c;
    
    char * pEnd = pString + buf;
   
    while ( ( pString + 1 ) < pEnd )
    { 
        if ( ! m_ObDataStream.Read( & c, sizeof( char ) ) )
        {
            return false;
        }
        
        if ( ! IsWhite( c ) )
        {
            *pString = c;
            pString++;
        }
        else
        {
            break;
        }
    }
    
    *pString = 0;
    
    return true;
}

bool obTextStream::IsWhite( char c )
{
	if ( c == '\t' || c ==' '  || c == 10 || c == 13 )
	{
		return true;
	}

	return false;
}

bool obTextStream::Indent( unsigned int chars )
{
    for( unsigned int i = 0; i < chars; i ++ )
    {
        for( unsigned int j = 0; j < 4; j ++ )
        {
            if ( ! WriteChar( ' ' ) )
            {
                return false;
            }
        }
    }
    
    return true;
    
}

bool obTextStream::WriteLine( const char * pString )
{
    if ( ! WriteString( pString) )
    {
        return false;
    }
    
    return WriteCrlf( );
}